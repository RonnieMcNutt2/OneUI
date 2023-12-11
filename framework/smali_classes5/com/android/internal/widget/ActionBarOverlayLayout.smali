.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/android/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/internal/widget/ActionBarOverlayLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/view/WindowInsets;

.field private final mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContent:Landroid/view/View;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private mInnerInsets:Landroid/view/WindowInsets;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private mLastBaseInnerInsets:Landroid/view/WindowInsets;

.field private mLastInnerInsets:Landroid/view/WindowInsets;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionBarBottom(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionBarTop(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBottomAnimatorListener(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAnimatorListener(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatingForFling(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentActionBarBottomAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentActionBarTopAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhaltActionBarHideOffsetAnimations(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 149
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$5;

    const-string v1, "actionBarHideOffset"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;

    .line 163
    const v0, 0x10102eb

    const v1, 0x1010059

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 80
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    .line 81
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    .line 82
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 83
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    .line 87
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 94
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 108
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 123
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 80
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    .line 81
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    .line 82
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 83
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    .line 87
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 94
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 108
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 123
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method private addActionBarHideOffset()V
    .registers 2

    .line 667
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 668
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 669
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 295
    .local v1, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_14

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_14

    .line 296
    const/4 v0, 0x1

    .line 297
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 299
    :cond_14
    if-eqz p4, :cond_21

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_21

    .line 300
    const/4 v0, 0x1

    .line 301
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 303
    :cond_21
    if-eqz p6, :cond_2e

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2e

    .line 304
    const/4 v0, 0x1

    .line 305
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 307
    :cond_2e
    if-eqz p5, :cond_3b

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3b

    .line 308
    const/4 v0, 0x1

    .line 309
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 311
    :cond_3b
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 598
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_8

    .line 599
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/DecorToolbar;

    return-object v0

    .line 600
    :cond_8
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_14

    .line 601
    move-object v0, p1

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 603
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haltActionBarHideOffsetAnimations()V
    .registers 2

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 642
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_11

    .line 644
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 646
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_18

    .line 647
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 649
    :cond_18
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 182
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 183
    if-nez v3, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_32

    move v1, v2

    :cond_32
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 189
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    .line 190
    return-void
.end method

.method private postAddActionBarHideOffset()V
    .registers 4

    .line 657
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .registers 4

    .line 652
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 653
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    return-void
.end method

.method private removeActionBarHideOffset()V
    .registers 2

    .line 662
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 664
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .registers 12
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 672
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    float-to-int v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 673
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 674
    .local v0, "finalY":I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .registers 2

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 369
    instance-of v0, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .registers 2

    .line 826
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 827
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 828
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 517
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_3d

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_28

    :cond_27
    move v0, v1

    .line 521
    .local v0, "top":I
    :goto_28
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 522
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 521
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    .end local v0    # "top":I
    :cond_3d
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 3

    .line 354
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 364
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 359
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .registers 2

    .line 624
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 693
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .registers 2

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .registers 2

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .registers 3
    .param p1, "windowFeature"    # I

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 699
    sparse-switch p1, :sswitch_data_1a

    goto :goto_18

    .line 707
    :sswitch_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_18

    .line 704
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    .line 705
    goto :goto_18

    .line 701
    :sswitch_12
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initProgress()V

    .line 702
    nop

    .line 710
    :goto_18
    return-void

    nop

    :sswitch_data_1a
    .sparse-switch
        0x2 -> :sswitch_12
        0x5 -> :sswitch_c
        0x9 -> :sswitch_7
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .registers 2

    .line 620
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 785
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 779
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 12
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    .line 319
    .local v0, "vis":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetsAsRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 322
    .local v8, "systemInsets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v9

    .line 323
    .local v9, "changed":Z
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_26

    .line 324
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v1

    or-int/2addr v9, v1

    .line 329
    :cond_26
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 330
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    .line 332
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2, v1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 333
    const/4 v9, 0x1

    .line 334
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    .line 336
    :cond_40
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 337
    const/4 v9, 0x1

    .line 338
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 341
    :cond_52
    if-eqz v9, :cond_57

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 349
    :cond_57
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 254
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 257
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 194
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 195
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 196
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 486
    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v1

    .line 488
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v2

    .line 489
    .local v2, "parentLeft":I
    sub-int v3, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 491
    .local v3, "parentRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    .line 492
    .local v4, "parentTop":I
    sub-int v5, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 494
    .local v5, "parentBottom":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c
    if-ge v6, v1, :cond_52

    .line 495
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 496
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4f

    .line 497
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 499
    .local v8, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 500
    .local v9, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 502
    .local v10, "height":I
    iget v11, v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v2

    .line 504
    .local v11, "childLeft":I
    iget-object v12, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-ne v7, v12, :cond_45

    .line 505
    sub-int v12, v5, v10

    iget v13, v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    .local v12, "childTop":I
    goto :goto_48

    .line 507
    .end local v12    # "childTop":I
    :cond_45
    iget v12, v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v4

    .line 510
    .restart local v12    # "childTop":I
    :goto_48
    add-int v13, v11, v9

    add-int v14, v12, v10

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 494
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "childLeft":I
    .end local v12    # "childTop":I
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 513
    .end local v6    # "i":I
    :cond_52
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 374
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, "maxHeight":I
    const/4 v8, 0x0

    .line 378
    .local v8, "maxWidth":I
    const/4 v9, 0x0

    .line 380
    .local v9, "childState":I
    const/4 v10, 0x0

    .line 381
    .local v10, "topInset":I
    const/4 v11, 0x0

    .line 383
    .local v11, "bottomInset":I
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 384
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 385
    .local v12, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 386
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 385
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 387
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 388
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 387
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 389
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 392
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_91

    .line 393
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 394
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 395
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 396
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 395
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 397
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 398
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 397
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 399
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    move-object v13, v12

    move v12, v9

    move v9, v8

    move v8, v6

    goto :goto_95

    .line 392
    :cond_91
    move-object v13, v12

    move v12, v9

    move v9, v8

    move v8, v6

    .line 402
    .end local v6    # "maxHeight":I
    .local v8, "maxHeight":I
    .local v9, "maxWidth":I
    .local v12, "childState":I
    .local v13, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    :goto_95
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v14

    .line 403
    .local v14, "vis":I
    and-int/lit16 v0, v14, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_a0

    const/4 v0, 0x1

    goto :goto_a1

    :cond_a0
    move v0, v1

    :goto_a1
    move v15, v0

    .line 405
    .local v15, "stable":Z
    if-eqz v15, :cond_b6

    .line 408
    iget v10, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 409
    iget-boolean v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v0, :cond_c6

    .line 410
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, "tabs":Landroid/view/View;
    if-eqz v0, :cond_b5

    .line 413
    iget v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v10, v2

    .line 415
    .end local v0    # "tabs":Landroid/view/View;
    :cond_b5
    goto :goto_c6

    .line 416
    :cond_b6
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_c6

    .line 419
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .line 422
    :cond_c6
    :goto_c6
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 424
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_db

    .line 425
    if-eqz v15, :cond_d7

    .line 426
    iget v11, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    goto :goto_db

    .line 428
    :cond_d7
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v11

    .line 437
    :cond_db
    :goto_db
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 439
    iget-boolean v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v2, :cond_103

    if-nez v15, :cond_103

    .line 440
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 441
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v11

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 443
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1, v10, v1, v11}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    goto :goto_122

    .line 446
    :cond_103
    nop

    .line 447
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 448
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v2, v10

    iget-object v3, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 449
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    iget-object v4, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 450
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    add-int/2addr v4, v11

    .line 446
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 453
    :goto_122
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 455
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142

    .line 459
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    .line 460
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 463
    :cond_142
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 464
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 465
    .end local v13    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .local v0, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 466
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 465
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 467
    .end local v9    # "maxWidth":I
    .local v1, "maxWidth":I
    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 468
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 467
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 469
    .end local v8    # "maxHeight":I
    .local v2, "maxHeight":I
    iget-object v3, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v12, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v3

    .line 472
    .end local v12    # "childState":I
    .local v3, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 479
    move/from16 v4, p1

    invoke-static {v1, v4, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v5

    shl-int/lit8 v6, v3, 0x10

    .line 480
    move/from16 v8, p2

    invoke-static {v2, v8, v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 479
    invoke-virtual {v7, v5, v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 482
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 574
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_18

    if-nez p4, :cond_7

    goto :goto_18

    .line 577
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 578
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    goto :goto_14

    .line 580
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    .line 582
    :goto_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 583
    return v0

    .line 575
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 553
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 555
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 542
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 544
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 545
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_13

    .line 546
    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 548
    :cond_13
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 534
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    .line 537
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0

    .line 535
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4
    .param p1, "target"    # Landroid/view/View;

    .line 559
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 560
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_1c

    .line 561
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_19

    .line 562
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_1c

    .line 564
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    .line 567
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_23

    .line 568
    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 570
    :cond_23
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 8
    .param p1, "visible"    # I

    .line 261
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 263
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    .line 264
    .local v0, "diff":I
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 265
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    .line 266
    .local v1, "barVisible":Z
    :goto_14
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    .line 267
    .local v4, "stable":Z
    :goto_1b
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_36

    .line 271
    if-nez v4, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    invoke-interface {v5, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 272
    if-nez v1, :cond_31

    if-nez v4, :cond_2b

    goto :goto_31

    .line 273
    :cond_2b
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_36

    .line 272
    :cond_31
    :goto_31
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 275
    :cond_36
    :goto_36
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_41

    .line 276
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_41

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 280
    :cond_41
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 284
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 285
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_c

    .line 287
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 289
    :cond_c
    return-void
.end method

.method pullChildren()V
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_30

    .line 588
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 589
    const v0, 0x10201c2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 591
    const v0, 0x10201c1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 592
    const v0, 0x10205db

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 595
    :cond_30
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 820
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 821
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 822
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 814
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 815
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 816
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .registers 7
    .param p1, "offset"    # I

    .line 628
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 630
    .local v0, "topHeight":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 631
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 632
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_37

    .line 634
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 635
    .local v1, "fOffset":F
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 636
    .local v2, "bOffset":I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 638
    .end local v1    # "fOffset":F
    .end local v2    # "bOffset":I
    :cond_37
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 199
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 204
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v0, :cond_1b

    .line 205
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 206
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 210
    .end local v0    # "newVis":I
    :cond_1b
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .registers 2
    .param p1, "hasNonEmbeddedTabs"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 230
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 3
    .param p1, "hideOnContentScroll"    # Z

    .line 609
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_12

    .line 610
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 611
    if-nez p1, :cond_12

    .line 612
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->stopNestedScroll()V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 617
    :cond_12
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 755
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 756
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 761
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 762
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 767
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 768
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 808
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 810
    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 803
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 804
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 4
    .param p1, "overlayMode"    # Z

    .line 213
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 219
    if-eqz p1, :cond_14

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 222
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .line 233
    if-eqz p1, :cond_10

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x500

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 245
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_14

    .line 248
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    .line 250
    :cond_14
    :goto_14
    return-void
.end method

.method public setUiOptions(I)V
    .registers 6
    .param p1, "uiOptions"    # I

    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "splitActionBar":Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 717
    .local v1, "splitWhenNarrow":Z
    :goto_8
    if-eqz v1, :cond_19

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110275

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 721
    :cond_19
    if-eqz v0, :cond_5b

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 723
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 724
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 725
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2, v0}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 726
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 728
    const v2, 0x10201c6

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContextView;

    .line 730
    .local v2, "cab":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 731
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 732
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .end local v2    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    goto :goto_5a

    .line 733
    :cond_50
    if-eqz v0, :cond_5a

    .line 734
    const-string v2, "ActionBarOverlayLayout"

    const-string v3, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 733
    :cond_5a
    :goto_5a
    nop

    .line 738
    :cond_5b
    :goto_5b
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 3
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 681
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 682
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 687
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 688
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 791
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
