.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final ONEUI_BLUR_POPUP_BACKGROUND_RES:[I


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsDecorViewBGNull:Z

.field private mIsDeviceDefault:Z

.field private mIsDropdown:Z

.field private mIsReplacedPoupBackground:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNavigationBarHeight:I

.field private mNotTouchModal:Z

.field private final mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpAppLocation:[I

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$IcLZyo2IQBnrh4KoWj7yaT7G80c(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/widget/PopupWindow;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$gjksbSG0rb2LhXigreOzOrdZZkU(Landroid/widget/PopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAboveAnchor(Landroid/widget/PopupWindow;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackCallback(Landroid/widget/PopupWindow;)Landroid/window/OnBackInvokedCallback;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnchorRootAttached(Landroid/widget/PopupWindow;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$malignToAnchor(Landroid/widget/PopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissImmediate(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedDispatcher;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetABOVE_ANCHOR_STATE_SET()[I
    .registers 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 247
    const v0, 0x10100aa

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 307
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/widget/PopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x10809b0
        0x10809af
        0x108094b
        0x108094a
        0x10809ce
        0x10809cd
        0x10809dd
        0x10809dc
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 424
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 425
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 338
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 156
    new-array v3, v2, [I

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 157
    new-array v3, v2, [I

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 190
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 191
    const/4 v4, 0x1

    iput v4, v0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 193
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 194
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 195
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 196
    const/4 v5, -0x1

    iput v5, v0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 200
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 201
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 204
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 205
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 212
    const/4 v6, -0x2

    iput v6, v0, Landroid/widget/PopupWindow;->mWidth:I

    .line 217
    iput v6, v0, Landroid/widget/PopupWindow;->mHeight:I

    .line 235
    const/16 v6, 0x3e8

    iput v6, v0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 240
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 242
    iput v5, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 245
    iput v3, v0, Landroid/widget/PopupWindow;->mGravity:I

    .line 251
    new-instance v6, Landroid/widget/PopupWindow$1;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 266
    new-instance v6, Landroid/widget/PopupWindow$2;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 282
    new-instance v6, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 285
    new-instance v6, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 301
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    .line 303
    iput v3, v0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 304
    iput v3, v0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 320
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    .line 356
    iput-object v1, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 357
    const-string/jumbo v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, v0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 359
    sget-object v6, Lcom/android/internal/R$styleable;->PopupWindow:[I

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual {v1, v7, v6, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 361
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 362
    .local v10, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, v0, Landroid/widget/PopupWindow;->mElevation:F

    .line 363
    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 368
    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 369
    invoke-virtual {v6, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 370
    .local v2, "animStyle":I
    const v11, 0x1030307

    if-ne v2, v11, :cond_a2

    .line 371
    iput v5, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_a4

    .line 373
    :cond_a2
    iput v2, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 375
    .end local v2    # "animStyle":I
    :goto_a4
    goto :goto_a7

    .line 376
    :cond_a5
    iput v5, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 379
    :goto_a7
    const/4 v2, 0x4

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 382
    .local v2, "enterTransition":Landroid/transition/Transition;
    const/4 v11, 0x5

    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v12

    if-eqz v12, :cond_c0

    .line 383
    invoke-virtual {v6, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-direct {v0, v11}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v11

    .local v11, "exitTransition":Landroid/transition/Transition;
    goto :goto_c8

    .line 386
    .end local v11    # "exitTransition":Landroid/transition/Transition;
    :cond_c0
    if-nez v2, :cond_c4

    const/4 v11, 0x0

    goto :goto_c8

    :cond_c4
    invoke-virtual {v2}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v11

    .line 391
    .restart local v11    # "exitTransition":Landroid/transition/Transition;
    :goto_c8
    const/4 v12, 0x0

    .line 392
    .local v12, "isOneUIBlurBackground":Z
    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 393
    .local v5, "popupBackgroundResId":I
    sget-object v13, Landroid/widget/PopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    array-length v14, v13

    move v15, v3

    :goto_d1
    if-ge v15, v14, :cond_dc

    aget v4, v13, v15

    .line 394
    .local v4, "popupBgResIds":I
    if-ne v4, v5, :cond_d8

    .line 395
    const/4 v12, 0x1

    .line 393
    .end local v4    # "popupBgResIds":I
    :cond_d8
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    goto :goto_d1

    .line 399
    :cond_dc
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 402
    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 403
    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    xor-int/lit8 v4, v12, 0x1

    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    .line 408
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 409
    .local v4, "themeValue":Landroid/util/TypedValue;
    iget-object v13, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x11200d7

    invoke-virtual {v13, v14, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 410
    iget v13, v4, Landroid/util/TypedValue;->data:I

    if-eqz v13, :cond_102

    const/4 v3, 0x1

    :cond_102
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    .line 412
    iget-object v3, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x10504f4

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 413
    iget-object v3, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x1050253

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 415
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "contentView"    # Landroid/view/View;

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 438
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 468
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .registers 8
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 156
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 157
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 191
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 193
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 194
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 195
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 196
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 200
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 201
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 204
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 205
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 212
    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 217
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 235
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 240
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 242
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 245
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 251
    new-instance v1, Landroid/widget/PopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 266
    new-instance v1, Landroid/widget/PopupWindow$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 282
    new-instance v1, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 285
    new-instance v1, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 301
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    .line 303
    iput v0, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 304
    iput v0, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 320
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    .line 483
    if-eqz p1, :cond_74

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 485
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 488
    :cond_74
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 489
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 490
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 491
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 492
    return-void
.end method

.method private alignToAnchor()V
    .registers 12

    .line 2758
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v9, v0

    .line 2759
    .local v9, "anchor":Landroid/view/View;
    if-eqz v9, :cond_54

    invoke-virtual {v9}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2760
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 2762
    .local v10, "p":Landroid/view/WindowManager$LayoutParams;
    iget v3, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v9

    move-object v2, v10

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2765
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_48

    .line 2766
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v0, :cond_5c

    .line 2767
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_5c

    .line 2770
    :cond_48
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_5c

    .line 2772
    .end local v10    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_54
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_5c

    .line 2773
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_5d

    .line 2772
    :cond_5c
    :goto_5c
    nop

    .line 2776
    :goto_5d
    return-void
.end method

.method private alignToAnchor(IIIIIIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "oldLeft"    # I
    .param p6, "oldTop"    # I
    .param p7, "oldRight"    # I
    .param p8, "oldBottom"    # I

    .line 2747
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_10

    .line 2748
    if-ne p1, p5, :cond_c

    if-ne p2, p6, :cond_c

    if-ne p3, p7, :cond_c

    if-eq p4, p8, :cond_13

    .line 2749
    :cond_c
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    goto :goto_13

    .line 2752
    :cond_10
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    .line 2754
    :cond_13
    :goto_13
    return-void
.end method

.method private computeAnimationResource()I
    .registers 3

    .line 1818
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 1819
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_15

    .line 1820
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_11

    .line 1821
    const v0, 0x10302fa

    goto :goto_14

    .line 1822
    :cond_11
    const v0, 0x10302f9

    .line 1820
    :goto_14
    return v0

    .line 1824
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 1826
    :cond_17
    return v0
.end method

.method private computeFlags(I)I
    .registers 5
    .param p1, "curFlags"    # I

    .line 1770
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1778
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_c

    .line 1779
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1781
    :cond_c
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1b

    .line 1782
    or-int/lit8 p1, p1, 0x8

    .line 1783
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1784
    or-int/2addr p1, v1

    goto :goto_21

    .line 1786
    :cond_1b
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 1787
    or-int/2addr p1, v1

    .line 1789
    :cond_21
    :goto_21
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_27

    .line 1790
    or-int/lit8 p1, p1, 0x10

    .line 1792
    :cond_27
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_2e

    .line 1793
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1795
    :cond_2e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_38

    .line 1796
    :cond_36
    or-int/lit16 p1, p1, 0x200

    .line 1798
    :cond_38
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1799
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1801
    :cond_41
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_47

    .line 1802
    or-int/lit16 p1, p1, 0x100

    .line 1804
    :cond_47
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_4e

    .line 1805
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1807
    :cond_4e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_54

    .line 1808
    or-int/lit8 p1, p1, 0x20

    .line 1810
    :cond_54
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_5b

    .line 1811
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1813
    :cond_5b
    return p1
.end method

.method private computeGravity()I
    .registers 3

    .line 1709
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_7

    const v0, 0x800033

    .line 1710
    .local v0, "gravity":I
    :cond_7
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_16

    .line 1711
    :cond_13
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 1713
    :cond_16
    return v0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .registers 7
    .param p1, "contentView"    # Landroid/view/View;

    .line 1631
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1633
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_f

    .line 1634
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_10

    .line 1636
    .end local v1    # "height":I
    :cond_f
    const/4 v1, -0x1

    .line 1639
    .restart local v1    # "height":I
    :goto_10
    new-instance v2, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1640
    .local v2, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1642
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1644
    return-object v2
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .registers 6
    .param p1, "contentView"    # Landroid/view/View;

    .line 1654
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1656
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_f

    .line 1657
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_10

    .line 1659
    .end local v1    # "height":I
    :cond_f
    const/4 v1, -0x1

    .line 1662
    .restart local v1    # "height":I
    :goto_10
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1663
    .local v2, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1664
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1665
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1667
    return-object v2
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .line 2381
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2382
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2385
    :cond_b
    if-eqz p2, :cond_10

    .line 2386
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2391
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2392
    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 2393
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2394
    return-void
.end method

.method private getAppRootView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;

    .line 2779
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2780
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2779
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    .line 2781
    .local v0, "appWindowView":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 2782
    return-object v0

    .line 2784
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .registers 5
    .param p1, "resId"    # I

    .line 579
    if-eqz p1, :cond_25

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_25

    .line 580
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 581
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 582
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_25

    .line 583
    instance-of v2, v1, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_21

    move-object v2, v1

    check-cast v2, Landroid/transition/TransitionSet;

    .line 584
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 585
    .local v2, "isEmpty":Z
    :goto_22
    if-nez v2, :cond_25

    .line 586
    return-object v1

    .line 590
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    .end local v2    # "isEmpty":Z
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 1952
    if-eqz p1, :cond_93

    if-nez p2, :cond_6

    goto/16 :goto_93

    .line 1956
    :cond_6
    const/4 v0, 0x0

    .line 1957
    .local v0, "isWindowPopupOutsideBound":Z
    const/4 v1, 0x0

    .line 1959
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1960
    .local v2, "vlp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v3, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_23

    instance-of v3, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_23

    .line 1961
    move-object v1, v2

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1963
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_21

    move v3, v4

    goto :goto_22

    :cond_21
    move v3, v5

    :goto_22
    move v0, v3

    .line 1966
    :cond_23
    const/4 v3, 0x0

    .line 1967
    .local v3, "hasStatusBar":Z
    if-eqz v1, :cond_3c

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_3c

    .line 1968
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v6, v7

    .line 1969
    .local v6, "systemUiVisibility":I
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_3a

    and-int/lit16 v7, v6, 0x404

    if-nez v7, :cond_3a

    goto :goto_3b

    :cond_3a
    move v4, v5

    :goto_3b
    move v3, v4

    .line 1973
    .end local v6    # "systemUiVisibility":I
    :cond_3c
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1974
    .local v4, "visibleDisplayFrame":Landroid/graphics/Rect;
    if-eqz v0, :cond_7e

    .line 1976
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1977
    .local v6, "dm":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1978
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1980
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1981
    if-eqz v3, :cond_57

    iget v5, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    :cond_57
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1982
    iget v5, v7, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1983
    iget v5, v7, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1985
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->NAVIBAR_ENABLED:Z

    if-eqz v5, :cond_7d

    iget-object v5, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_7d

    .line 1986
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 1987
    .local v5, "orientation":I
    const/4 v8, 0x2

    if-eq v5, v8, :cond_7d

    .line 1988
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 1991
    .end local v5    # "orientation":I
    .end local v6    # "dm":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    :cond_7d
    goto :goto_8f

    .line 1992
    :cond_7e
    invoke-virtual {p1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1998
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v5, :cond_8f

    if-eqz v3, :cond_8f

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_8f

    .line 1999
    iget v5, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2002
    :cond_8f
    :goto_8f
    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2003
    return-void

    .line 1953
    .end local v0    # "isWindowPopupOutsideBound":Z
    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "hasStatusBar":Z
    .end local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_93
    :goto_93
    return-void
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1680
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 1681
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1684
    :cond_a
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1685
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1687
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1689
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1691
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_20

    .line 1692
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1694
    :cond_20
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .registers 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 288
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->alignToAnchor(IIIIIIII)V

    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 13
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "width"    # I
    .param p3, "drawingLocationX"    # I
    .param p4, "screenLocationX"    # I
    .param p5, "displayFrameLeft"    # I
    .param p6, "displayFrameRight"    # I
    .param p7, "canResize"    # Z

    .line 2102
    const/4 v0, 0x1

    .line 2105
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 2106
    .local v1, "winOffsetX":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2108
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, p2

    .line 2109
    .local v2, "right":I
    if-le v2, p6, :cond_14

    .line 2111
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2114
    :cond_14
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, p5, :cond_24

    .line 2117
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2119
    sub-int v3, p6, p5

    .line 2120
    .local v3, "displayFrameWidth":I
    if-eqz p7, :cond_23

    if-le p2, v3, :cond_23

    .line 2121
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_24

    .line 2123
    :cond_23
    const/4 v0, 0x0

    .line 2127
    .end local v3    # "displayFrameWidth":I
    :cond_24
    :goto_24
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2129
    return v0
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 13
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "height"    # I
    .param p3, "drawingLocationY"    # I
    .param p4, "screenLocationY"    # I
    .param p5, "displayFrameTop"    # I
    .param p6, "displayFrameBottom"    # I
    .param p7, "canResize"    # Z

    .line 2051
    const/4 v0, 0x1

    .line 2053
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 2054
    .local v1, "winOffsetY":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2055
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2057
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, p2

    .line 2058
    .local v2, "bottom":I
    if-le v2, p6, :cond_16

    .line 2060
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2063
    :cond_16
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, p5, :cond_26

    .line 2066
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2068
    sub-int v3, p6, p5

    .line 2069
    .local v3, "displayFrameHeight":I
    if-eqz p7, :cond_25

    if-le p2, v3, :cond_25

    .line 2070
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_26

    .line 2072
    :cond_25
    const/4 v0, 0x0

    .line 2076
    .end local v3    # "displayFrameHeight":I
    :cond_26
    :goto_26
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2078
    return v0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1568
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_88

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_88

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_88

    .line 1573
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    .line 1574
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x1040b75

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1579
    :cond_1b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_22

    .line 1580
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1585
    :cond_22
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    .line 1586
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1587
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1589
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_42

    .line 1590
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_42

    .line 1594
    :cond_3e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1597
    :cond_42
    :goto_42
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1598
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    .line 1601
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_64

    .line 1602
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    .line 1603
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_6b

    .line 1606
    :cond_64
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v3, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    .line 1612
    :goto_6b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1614
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1615
    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7a

    goto :goto_7b

    :cond_7a
    move v1, v2

    :goto_7b
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1618
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    if-eqz v0, :cond_87

    .line 1619
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1622
    :cond_87
    return-void

    .line 1569
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLayoutDirectionFromAnchor()V
    .registers 4

    .line 1697
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    .line 1698
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1700
    .local v0, "anchor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 1702
    if-eqz v0, :cond_1c

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_1c

    .line 1703
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1706
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1c
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 25
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "xOffset"    # I
    .param p3, "width"    # I
    .param p4, "anchorWidth"    # I
    .param p5, "drawingLocationX"    # I
    .param p6, "screenLocationX"    # I
    .param p7, "displayFrameLeft"    # I
    .param p8, "displayFrameRight"    # I
    .param p9, "allowResize"    # Z

    .line 2084
    sub-int v8, p6, p5

    .line 2085
    .local v8, "winOffsetX":I
    move-object/from16 v9, p1

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v10, v0, v8

    .line 2086
    .local v10, "anchorLeftInScreen":I
    sub-int v11, p8, v10

    .line 2087
    .local v11, "spaceRight":I
    const/4 v12, 0x1

    move/from16 v13, p7

    if-lt v10, v13, :cond_14

    move/from16 v14, p3

    if-gt v14, v11, :cond_16

    .line 2088
    return v12

    .line 2087
    :cond_14
    move/from16 v14, p3

    .line 2091
    :cond_16
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2093
    return v12

    .line 2096
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 29
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "yOffset"    # I
    .param p3, "height"    # I
    .param p4, "anchorHeight"    # I
    .param p5, "drawingLocationY"    # I
    .param p6, "screenLocationY"    # I
    .param p7, "displayFrameTop"    # I
    .param p8, "displayFrameBottom"    # I
    .param p9, "allowResize"    # Z

    .line 2009
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p7

    move/from16 v13, p8

    sub-int v14, p6, v11

    .line 2010
    .local v14, "winOffsetY":I
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v15, v0, v14

    .line 2011
    .local v15, "anchorTopInScreen":I
    sub-int v7, v13, v15

    .line 2012
    .local v7, "spaceBelow":I
    const/16 v16, 0x1

    if-lt v15, v12, :cond_1b

    if-gt v10, v7, :cond_1b

    .line 2013
    return v16

    .line 2016
    :cond_1b
    sub-int v0, v15, p4

    sub-int v6, v0, v12

    .line 2017
    .local v6, "spaceAbove":I
    if-gt v10, v6, :cond_45

    .line 2019
    iget-boolean v0, v8, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_36

    .line 2020
    if-gt v11, v13, :cond_45

    .line 2022
    iget-boolean v0, v8, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_2e

    .line 2023
    add-int v0, p2, p4

    .end local p2    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_30

    .line 2022
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_2e
    move/from16 v0, p2

    .line 2025
    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    :goto_30
    sub-int v1, v11, v10

    add-int/2addr v1, v0

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2026
    return v16

    .line 2031
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_36
    iget-boolean v0, v8, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_3d

    .line 2032
    add-int v0, p2, p4

    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    goto :goto_3f

    .line 2031
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_3d
    move/from16 v0, p2

    .line 2034
    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    :goto_3f
    sub-int v1, v11, v10

    add-int/2addr v1, v0

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2035
    return v16

    .line 2040
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_45
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v17, v6

    .end local v6    # "spaceAbove":I
    .local v17, "spaceAbove":I
    move/from16 v6, p8

    move/from16 v18, v7

    .end local v7    # "spaceBelow":I
    .local v18, "spaceBelow":I
    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2042
    return v16

    .line 2045
    :cond_60
    const/4 v0, 0x0

    return v0
.end method

.method private unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V
    .registers 4
    .param p1, "onBackInvokedDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 2328
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2329
    .local v0, "backCallback":Landroid/window/OnBackInvokedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2330
    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    .line 2331
    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2334
    :cond_c
    return-void
.end method

.method private update(Landroid/view/View;ZIIII)V
    .registers 30
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 2638
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_c5

    .line 2642
    :cond_16
    iget-object v13, v9, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2643
    .local v13, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iget v14, v9, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2645
    .local v14, "gravity":I
    const/16 v16, 0x0

    if-eqz p2, :cond_28

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v0, v11, :cond_26

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v0, v12, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_2a

    :cond_28
    move/from16 v0, v16

    :goto_2a
    move/from16 v17, v0

    .line 2646
    .local v17, "needsUpdate":Z
    if-eqz v13, :cond_42

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_42

    if-eqz v17, :cond_3b

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v0, :cond_3b

    goto :goto_42

    .line 2648
    :cond_3b
    if-eqz v17, :cond_45

    .line 2650
    iput v11, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2651
    iput v12, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_45

    .line 2647
    :cond_42
    :goto_42
    invoke-virtual {v9, v10, v11, v12, v14}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2654
    :cond_45
    :goto_45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 2655
    .local v8, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2656
    .local v7, "oldGravity":I
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2657
    .local v6, "oldWidth":I
    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2658
    .local v5, "oldHeight":I
    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2659
    .local v4, "oldX":I
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2663
    .local v3, "oldY":I
    if-gez p5, :cond_5a

    .line 2664
    iget v0, v9, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 v18, v0

    .end local p5    # "width":I
    .local v0, "width":I
    goto :goto_5c

    .line 2663
    .end local v0    # "width":I
    .restart local p5    # "width":I
    :cond_5a
    move/from16 v18, p5

    .line 2666
    .end local p5    # "width":I
    .local v18, "width":I
    :goto_5c
    if-gez p6, :cond_63

    .line 2667
    iget v0, v9, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 v19, v0

    .end local p6    # "height":I
    .local v0, "height":I
    goto :goto_65

    .line 2666
    .end local v0    # "height":I
    .restart local p6    # "height":I
    :cond_63
    move/from16 v19, p6

    .line 2670
    .end local p6    # "height":I
    .local v19, "height":I
    :goto_65
    iget v2, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v1, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object v2, v8

    move v15, v3

    .end local v3    # "oldY":I
    .local v15, "oldY":I
    move/from16 v3, v22

    move v10, v4

    .end local v4    # "oldX":I
    .local v10, "oldX":I
    move/from16 v4, v21

    move v11, v5

    .end local v5    # "oldHeight":I
    .local v11, "oldHeight":I
    move/from16 v5, v18

    move v12, v6

    .end local v6    # "oldWidth":I
    .local v12, "oldWidth":I
    move/from16 v6, v19

    move-object/from16 v21, v13

    move v13, v7

    .end local v7    # "oldGravity":I
    .local v13, "oldGravity":I
    .local v21, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move v7, v14

    move/from16 v22, v14

    move-object v14, v8

    .end local v8    # "p":Landroid/view/WindowManager$LayoutParams;
    .local v14, "p":Landroid/view/WindowManager$LayoutParams;
    .local v22, "gravity":I
    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v6

    .line 2672
    .local v6, "aboveAnchor":Z
    invoke-virtual {v9, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2674
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v13, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v11, v0, :cond_a7

    goto :goto_aa

    :cond_a7
    move/from16 v5, v16

    goto :goto_ab

    :cond_aa
    :goto_aa
    const/4 v5, 0x1

    .line 2681
    .local v5, "paramsChanged":Z
    :goto_ab
    if-gez v18, :cond_b0

    move/from16 v3, v18

    goto :goto_b3

    :cond_b0
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    move v3, v0

    .line 2682
    .local v3, "newWidth":I
    :goto_b3
    if-gez v19, :cond_b8

    move/from16 v4, v19

    goto :goto_bb

    :cond_b8
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    move v4, v0

    .line 2683
    .local v4, "newHeight":I
    :goto_bb
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2684
    return-void

    .line 2639
    .end local v3    # "newWidth":I
    .end local v4    # "newHeight":I
    .end local v5    # "paramsChanged":Z
    .end local v6    # "aboveAnchor":Z
    .end local v10    # "oldX":I
    .end local v11    # "oldHeight":I
    .end local v12    # "oldWidth":I
    .end local v13    # "oldGravity":I
    .end local v14    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "oldY":I
    .end local v17    # "needsUpdate":Z
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v21    # "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v22    # "gravity":I
    .restart local p5    # "width":I
    .restart local p6    # "height":I
    :cond_c5
    :goto_c5
    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .registers 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 2718
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2720
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2721
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_e

    .line 2722
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2724
    :cond_e
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2726
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2727
    .local v1, "anchorRoot":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2728
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2730
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2731
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2732
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2733
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2735
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2736
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2737
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2738
    return-void
.end method

.method protected createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1727
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1733
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1734
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1735
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1736
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1737
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1738
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1740
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2e

    .line 1741
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_31

    .line 1743
    :cond_2e
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1746
    :goto_31
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3a

    .line 1747
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_40

    .line 1749
    :cond_3a
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1752
    :goto_40
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_49

    .line 1753
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_4f

    .line 1755
    :cond_49
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1758
    :goto_4f
    const/16 v1, 0x4000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1760
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1766
    return-object v0
.end method

.method protected detachFromAnchor()V
    .registers 5

    .line 2698
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 2699
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 2700
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2701
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2702
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2705
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_14
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_21

    :cond_20
    move-object v1, v2

    .line 2706
    .local v1, "anchorRoot":Landroid/view/View;
    :goto_21
    if-eqz v1, :cond_2d

    .line 2707
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2708
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2711
    :cond_2d
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2712
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2713
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2714
    return-void
.end method

.method public dismiss()V
    .registers 10

    .line 2258
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_8a

    .line 2262
    :cond_e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2263
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2265
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2268
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2269
    .local v2, "contentParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_25

    .line 2270
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_26

    .line 2272
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    :cond_25
    const/4 v3, 0x0

    .line 2276
    .restart local v3    # "contentHolder":Landroid/view/ViewGroup;
    :goto_26
    if-nez v0, :cond_29

    .line 2277
    return-void

    .line 2282
    :cond_29
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 2284
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 2285
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2292
    iget-object v4, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2293
    .local v4, "exitTransition":Landroid/transition/Transition;
    if-eqz v4, :cond_7c

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_7c

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v5, :cond_44

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_7c

    .line 2296
    :cond_44
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2297
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2298
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2299
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x20001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2300
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v0, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2302
    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_6e

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_6f

    :cond_6e
    const/4 v6, 0x0

    .line 2303
    .local v6, "anchorRoot":Landroid/view/View;
    :goto_6f
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v7

    .line 2308
    .local v7, "epicenter":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v0, v3, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    .line 2315
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "anchorRoot":Landroid/view/View;
    .end local v7    # "epicenter":Landroid/graphics/Rect;
    goto :goto_7f

    .line 2316
    :cond_7c
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2320
    :goto_7f
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2322
    iget-object v5, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v5, :cond_89

    .line 2323
    invoke-interface {v5}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 2325
    :cond_89
    return-void

    .line 2259
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "contentParent":Landroid/view/ViewParent;
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_8a
    :goto_8a
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 43
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    .line 1850
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1851
    .local v13, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1852
    .local v14, "anchorWidth":I
    iget-boolean v0, v10, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_16

    .line 1853
    sub-int v0, p4, v13

    move v15, v0

    .end local p4    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_18

    .line 1852
    .end local v0    # "yOffset":I
    .restart local p4    # "yOffset":I
    :cond_16
    move/from16 v15, p4

    .line 1857
    .end local p4    # "yOffset":I
    .local v15, "yOffset":I
    :goto_18
    iget-object v9, v10, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 1858
    .local v9, "appScreenLocation":[I
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 1859
    .local v8, "appRootView":Landroid/view/View;
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1861
    iget-object v7, v10, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 1862
    .local v7, "screenLocation":[I
    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1864
    iget-object v6, v10, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1865
    .local v6, "drawingLocation":[I
    const/16 v16, 0x0

    aget v0, v7, v16

    aget v1, v9, v16

    sub-int/2addr v0, v1

    aput v0, v6, v16

    .line 1866
    const/4 v5, 0x1

    aget v0, v7, v5

    aget v1, v9, v5

    sub-int/2addr v0, v1

    aput v0, v6, v5

    .line 1867
    aget v0, v6, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1868
    aget v0, v6, v5

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1870
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 1872
    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-direct {v10, v8, v4}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1874
    const/4 v0, -0x1

    move/from16 v1, p5

    if-ne v1, v0, :cond_5b

    .line 1875
    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    move v3, v1

    .end local p5    # "width":I
    .local v1, "width":I
    goto :goto_5c

    .line 1874
    .end local v1    # "width":I
    .restart local p5    # "width":I
    :cond_5b
    move v3, v1

    .line 1879
    .end local p5    # "width":I
    .local v3, "width":I
    :goto_5c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->semGetCenterPointForFoldable()I

    move-result v2

    .line 1880
    .local v2, "centerPoint":I
    if-eqz v2, :cond_68

    aget v1, v6, v5

    if-ge v1, v2, :cond_68

    move v1, v2

    goto :goto_6a

    :cond_68
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    :goto_6a
    move/from16 v17, v1

    .line 1881
    .local v17, "bottomEdge":I
    if-eqz v2, :cond_74

    aget v1, v6, v5

    if-lt v1, v2, :cond_74

    move v1, v2

    goto :goto_76

    :cond_74
    iget v1, v4, Landroid/graphics/Rect;->top:I

    :goto_76
    move/from16 v18, v1

    .line 1883
    .local v18, "topEdge":I
    move/from16 v1, p6

    if-ne v1, v0, :cond_7f

    .line 1884
    sub-int v0, v17, v18

    move v1, v0

    .line 1888
    .end local p6    # "height":I
    .local v1, "height":I
    :cond_7f
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v0

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1889
    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1890
    iput v1, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1894
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    move-object/from16 p4, v9

    move/from16 v9, p7

    .end local v9    # "appScreenLocation":[I
    .local p4, "appScreenLocation":[I
    invoke-static {v9, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 1896
    .local v0, "hgrav":I
    const/4 v9, 0x5

    if-ne v0, v9, :cond_a2

    .line 1897
    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v19, v3, v14

    sub-int v9, v9, v19

    iput v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1901
    :cond_a2
    aget v9, v6, v5

    aget v19, v7, v5

    const/16 v20, 0x0

    move v10, v0

    .end local v0    # "hgrav":I
    .local v10, "hgrav":I
    move-object/from16 v0, p0

    move/from16 v21, v1

    .end local v1    # "height":I
    .local v21, "height":I
    move-object/from16 v1, p2

    move/from16 v22, v2

    .end local v2    # "centerPoint":I
    .local v22, "centerPoint":I
    move v2, v15

    move/from16 v23, v3

    .end local v3    # "width":I
    .local v23, "width":I
    move/from16 v3, v21

    move/from16 p6, v10

    move-object v10, v4

    .end local v4    # "displayFrame":Landroid/graphics/Rect;
    .local v10, "displayFrame":Landroid/graphics/Rect;
    .local p6, "hgrav":I
    move v4, v13

    move v12, v5

    move v5, v9

    move-object/from16 v24, v6

    .end local v6    # "drawingLocation":[I
    .local v24, "drawingLocation":[I
    move/from16 v6, v19

    move-object v9, v7

    .end local v7    # "screenLocation":[I
    .local v9, "screenLocation":[I
    move/from16 v7, v18

    move-object/from16 v19, v8

    .end local v8    # "appRootView":Landroid/view/View;
    .local v19, "appRootView":Landroid/view/View;
    move/from16 v8, v17

    move-object/from16 v25, p4

    move-object v12, v9

    .end local v9    # "screenLocation":[I
    .end local p4    # "appScreenLocation":[I
    .local v12, "screenLocation":[I
    .local v25, "appScreenLocation":[I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v20

    .line 1906
    .local v20, "fitsVertical":Z
    aget v5, v24, v16

    aget v6, v12, v16

    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x0

    move/from16 v2, p3

    move/from16 v3, v23

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v27

    .line 1911
    .local v27, "fitsHorizontal":Z
    if-eqz v20, :cond_f3

    if-nez v27, :cond_e7

    goto :goto_f3

    :cond_e7
    move-object/from16 v11, p0

    move/from16 v29, p6

    move/from16 v31, v13

    const/16 v28, 0x1

    move-object/from16 v13, p2

    goto/16 :goto_188

    .line 1912
    :cond_f3
    :goto_f3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1913
    .local v9, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 1914
    .local v8, "scrollY":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, v9, v23

    add-int v3, v3, p3

    add-int v1, v8, v21

    add-int/2addr v1, v13

    add-int/2addr v1, v15

    invoke-direct {v0, v9, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    .line 1916
    .local v7, "r":Landroid/graphics/Rect;
    if-eqz p8, :cond_147

    const/4 v0, 0x1

    invoke-virtual {v11, v7, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 1918
    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1919
    aget v1, v12, v16

    aget v2, v25, v16

    sub-int/2addr v1, v2

    aput v1, v24, v16

    .line 1920
    aget v1, v12, v0

    aget v2, v25, v0

    sub-int/2addr v1, v2

    aput v1, v24, v0

    .line 1921
    aget v1, v24, v16

    add-int v1, v1, p3

    move-object/from16 v6, p2

    move/from16 v28, v0

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1922
    aget v0, v24, v28

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1925
    move/from16 v0, p6

    const/4 v1, 0x5

    .end local p6    # "hgrav":I
    .restart local v0    # "hgrav":I
    if-ne v0, v1, :cond_14d

    .line 1926
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v23, v14

    sub-int/2addr v1, v3

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_14d

    .line 1916
    .end local v0    # "hgrav":I
    .restart local p6    # "hgrav":I
    :cond_140
    move-object/from16 v6, p2

    move/from16 v28, v0

    move/from16 v0, p6

    goto :goto_14d

    :cond_147
    move-object/from16 v6, p2

    move/from16 v0, p6

    const/16 v28, 0x1

    .line 1931
    .end local p6    # "hgrav":I
    .restart local v0    # "hgrav":I
    :cond_14d
    :goto_14d
    aget v5, v24, v28

    aget v26, v12, v28

    move-object/from16 v4, p0

    move/from16 v29, v0

    .end local v0    # "hgrav":I
    .local v29, "hgrav":I
    iget-boolean v3, v4, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v30, v3

    move/from16 v3, v21

    move-object v11, v4

    move v4, v13

    move/from16 v31, v13

    move-object v13, v6

    .end local v13    # "anchorHeight":I
    .local v31, "anchorHeight":I
    move/from16 v6, v26

    move-object/from16 v26, v7

    .end local v7    # "r":Landroid/graphics/Rect;
    .local v26, "r":Landroid/graphics/Rect;
    move/from16 v7, v18

    move/from16 v32, v8

    .end local v8    # "scrollY":I
    .local v32, "scrollY":I
    move/from16 v8, v17

    move/from16 v33, v9

    .end local v9    # "scrollX":I
    .local v33, "scrollX":I
    move/from16 v9, v30

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1934
    aget v5, v24, v16

    aget v6, v12, v16

    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v11, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v2, p3

    move/from16 v3, v23

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1947
    .end local v26    # "r":Landroid/graphics/Rect;
    .end local v32    # "scrollY":I
    .end local v33    # "scrollX":I
    :goto_188
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v24, v28

    if-ge v0, v1, :cond_190

    move/from16 v16, v28

    :cond_190
    return v16
.end method

.method protected final getAllowScrollingAnchorParent()Z
    .registers 2

    .line 1018
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected getAnchor()Landroid/view/View;
    .registers 2

    .line 2742
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    .line 682
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 601
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 2598
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .registers 2

    .line 662
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .registers 3

    .line 556
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 538
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1249
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    .line 813
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 2143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .line 2158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 15
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 2178
    const/4 v0, 0x0

    .line 2179
    .local v0, "displayFrame":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2181
    .local v1, "visibleDisplayFrame":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2182
    .local v2, "appView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2183
    const/4 v3, 0x1

    if-eqz p3, :cond_44

    .line 2188
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v4

    .line 2189
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 2190
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2191
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2192
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 2196
    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v4, :cond_74

    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->NAVIBAR_ENABLED:Z

    if-eqz v4, :cond_74

    .line 2197
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2198
    .local v4, "orientation":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_43

    .line 2199
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2201
    .end local v4    # "orientation":I
    :cond_43
    goto :goto_74

    .line 2204
    :cond_44
    move-object v0, v1

    .line 2209
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2210
    .local v4, "vlp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v5, :cond_74

    instance-of v5, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_74

    iget-object v5, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_74

    .line 2211
    move-object v5, v4

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2213
    .local v5, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v6, v7

    .line 2214
    .local v6, "systemUiVisibility":I
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_69

    and-int/lit16 v7, v6, 0x404

    if-nez v7, :cond_69

    move v7, v3

    goto :goto_6a

    :cond_69
    const/4 v7, 0x0

    .line 2217
    .local v7, "hasStatusBar":Z
    :goto_6a
    if-eqz v7, :cond_74

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_74

    .line 2218
    iget v8, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 2224
    .end local v4    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "systemUiVisibility":I
    .end local v7    # "hasStatusBar":Z
    :cond_74
    :goto_74
    iget-object v4, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 2225
    .local v4, "anchorPos":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2228
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->semGetCenterPointForFoldable()I

    move-result v5

    .line 2230
    .local v5, "centerPoint":I
    if-eqz v5, :cond_85

    aget v6, v4, v3

    if-ge v6, v5, :cond_85

    move v6, v5

    goto :goto_87

    :cond_85
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 2233
    .local v6, "bottomEdge":I
    :goto_87
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v7, :cond_91

    .line 2234
    aget v7, v4, v3

    sub-int v7, v6, v7

    sub-int/2addr v7, p2

    .local v7, "distanceToBottom":I
    goto :goto_9b

    .line 2236
    .end local v7    # "distanceToBottom":I
    :cond_91
    aget v7, v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v6, v7

    sub-int/2addr v7, p2

    .line 2238
    .restart local v7    # "distanceToBottom":I
    :goto_9b
    aget v3, v4, v3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    add-int/2addr v3, p2

    .line 2241
    .local v3, "distanceToTop":I
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2242
    .local v8, "returnedHeight":I
    iget-object v9, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_b8

    .line 2243
    iget-object v10, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2244
    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 2247
    :cond_b8
    return v8
.end method

.method protected final getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    .line 2407
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public getOverlapAnchor()Z
    .registers 2

    .line 1327
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .registers 2

    .line 855
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final getTransitionEpicenter()Landroid/graphics/Rect;
    .registers 9

    .line 2349
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 2350
    .local v0, "anchor":Landroid/view/View;
    :goto_d
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2351
    .local v2, "decor":Landroid/view/View;
    if-eqz v0, :cond_4b

    if-nez v2, :cond_14

    goto :goto_4b

    .line 2355
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 2356
    .local v1, "anchorLocation":[I
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v3

    .line 2359
    .local v3, "popupLocation":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2360
    .local v4, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v3, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v6, v3, v6

    sub-int/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2363
    iget-object v5, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_4a

    .line 2364
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 2365
    .local v5, "offsetX":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 2366
    .local v6, "offsetY":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2367
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2370
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_4a
    return-object v4

    .line 2352
    .end local v1    # "anchorLocation":[I
    .end local v3    # "popupLocation":[I
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public getWidth()I
    .registers 2

    .line 1281
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .registers 2

    .line 1176
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected hasContentView()Z
    .registers 2

    .line 2588
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected hasDecorView()Z
    .registers 2

    .line 2593
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAboveAnchor()Z
    .registers 2

    .line 1556
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .registers 2

    .line 1115
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClipToScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 960
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public isClippedToScreen()Z
    .registers 2

    .line 987
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .registers 2

    .line 929
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .line 784
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLaidOutInScreen()Z
    .registers 2

    .line 1089
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1063
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final isLayoutInsetDecor()Z
    .registers 2

    .line 1154
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .registers 2

    .line 897
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 1336
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .registers 5

    .line 1029
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_16

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_16

    .line 1030
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_15

    move v1, v2

    :cond_15
    return v1

    .line 1032
    :cond_16
    if-ne v0, v2, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public isTouchModal()Z
    .registers 2

    .line 1188
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTouchable()Z
    .registers 2

    .line 866
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final isTransitioningToDismiss()Z
    .registers 2

    .line 1356
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method semGetCenterPointForFoldable()I
    .registers 8

    .line 3086
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3087
    return v1

    .line 3090
    :cond_6
    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3091
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-nez v0, :cond_11

    .line 3092
    return v1

    .line 3095
    :cond_11
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 3096
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_18

    .line 3097
    return v1

    .line 3100
    :cond_18
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/view/SemWindowManager;->isTableMode()Z

    move-result v3

    if-nez v3, :cond_23

    .line 3101
    return v1

    .line 3104
    :cond_23
    iget-boolean v3, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-nez v3, :cond_28

    .line 3105
    return v1

    .line 3109
    :cond_28
    :try_start_28
    new-instance v3, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v3}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 3110
    .local v3, "multiWindowManager":Lcom/samsung/android/app/SemMultiWindowManager;
    invoke-virtual {v3}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_84

    if-eqz v4, :cond_34

    .line 3111
    return v1

    .line 3115
    .end local v3    # "multiWindowManager":Lcom/samsung/android/app/SemMultiWindowManager;
    :cond_34
    nop

    .line 3117
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3118
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3120
    const/4 v3, 0x0

    .line 3121
    .local v3, "centerPoint":I
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableDualDisplay()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_61

    .line 3123
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_83

    .line 3124
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-le v4, v6, :cond_5c

    iget v4, v1, Landroid/graphics/Point;->x:I

    goto :goto_5e

    :cond_5c
    iget v4, v1, Landroid/graphics/Point;->y:I

    :goto_5e
    div-int/2addr v4, v5

    move v3, v4

    goto :goto_83

    .line 3126
    :cond_61
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 3128
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_83

    .line 3129
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-le v4, v6, :cond_7f

    iget v4, v1, Landroid/graphics/Point;->y:I

    goto :goto_81

    :cond_7f
    iget v4, v1, Landroid/graphics/Point;->x:I

    :goto_81
    div-int/2addr v4, v5

    move v3, v4

    .line 3132
    :cond_83
    :goto_83
    return v3

    .line 3113
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v3    # "centerPoint":I
    :catch_84
    move-exception v3

    .line 3114
    .local v3, "e":Ljava/lang/Exception;
    return v1
.end method

.method semIsAvailableBlurBackground()Z
    .registers 2

    .line 3082
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public semShowPopupWindow(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1506
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_22

    .line 1510
    :cond_d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1511
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1513
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1514
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1516
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1517
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1518
    return-void

    .line 1507
    :cond_22
    :goto_22
    return-void
.end method

.method setAllowScrollingAnchorParent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1013
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 1014
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 2
    .param p1, "animationStyle"    # I

    .line 714
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 715
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1131
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 1133
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    .line 616
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 627
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_38

    .line 628
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 631
    .local v0, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result v1

    .line 635
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 636
    .local v2, "count":I
    const/4 v3, -0x1

    .line 637
    .local v3, "belowAnchorStateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v2, :cond_21

    .line 638
    if-eq v4, v1, :cond_1e

    .line 639
    move v3, v4

    .line 640
    goto :goto_21

    .line 637
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 646
    .end local v4    # "i":I
    :cond_21
    :goto_21
    const/4 v4, -0x1

    if-eq v1, v4, :cond_33

    if-eq v3, v4, :cond_33

    .line 647
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 648
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_38

    .line 650
    :cond_33
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 651
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 654
    .end local v0    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "belowAnchorStateIndex":I
    :cond_38
    :goto_38
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 975
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 976
    return-void
.end method

.method public setClippingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 947
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 948
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;

    .line 740
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 741
    return-void

    .line 744
    :cond_7
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 746
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 750
    :cond_15
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 751
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 758
    :cond_2a
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_42

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v1, :cond_42

    .line 762
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 766
    :cond_42
    return-void
.end method

.method public setDecorViewBGNull(Z)V
    .registers 2
    .param p1, "isNull"    # Z

    .line 3139
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    .line 3140
    return-void
.end method

.method protected final setDropDown(Z)V
    .registers 2
    .param p1, "isDropDown"    # Z

    .line 1346
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1347
    return-void
.end method

.method public setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .line 673
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 674
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 502
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 503
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 575
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 576
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 525
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 526
    return-void
.end method

.method public setFocusable(Z)V
    .registers 2
    .param p1, "focusable"    # Z

    .line 804
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 805
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 1267
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 1268
    return-void
.end method

.method public setIgnoreCheekPress()V
    .registers 2

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 698
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 830
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 831
    return-void
.end method

.method public setIsClippedToScreen(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1002
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 1003
    return-void
.end method

.method public setIsLaidOutInScreen(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1102
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1103
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1077
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1078
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1149
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 1150
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 2402
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2403
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .line 918
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 919
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .registers 2
    .param p1, "overlapAnchor"    # Z

    .line 1315
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 1316
    return-void
.end method

.method protected final setShowing(Z)V
    .registers 2
    .param p1, "isShowing"    # Z

    .line 1341
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1342
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 844
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 845
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1049
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 1050
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 773
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 774
    return-void
.end method

.method public setTouchModal(Z)V
    .registers 3
    .param p1, "touchModal"    # Z

    .line 1205
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 1206
    return-void
.end method

.method public setTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .line 885
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 886
    return-void
.end method

.method protected final setTransitioningToDismiss(Z)V
    .registers 2
    .param p1, "transitioningToDismiss"    # Z

    .line 1351
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1352
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 1299
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 1300
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .registers 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1234
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1235
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1236
    return-void
.end method

.method public setWindowLayoutType(I)V
    .registers 2
    .param p1, "layoutType"    # I

    .line 1167
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 1168
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 1425
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1426
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 1446
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1447
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 15
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 1470
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_49

    .line 1474
    :cond_d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1476
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 1478
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1479
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1481
    nop

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1483
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1485
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    .line 1487
    .local v1, "aboveAnchor":Z
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1488
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_43

    :cond_41
    const-wide/16 v2, -0x1

    :goto_43
    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 1490
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1491
    return-void

    .line 1471
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "aboveAnchor":Z
    :cond_49
    :goto_49
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1391
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_2a

    .line 1395
    :cond_b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1397
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1401
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1403
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1404
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1406
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1407
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1409
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1410
    return-void

    .line 1392
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 1375
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1376
    return-void
.end method

.method public update()V
    .registers 7

    .line 2427
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_47

    .line 2431
    :cond_d
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2433
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 2435
    .local v1, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 2436
    .local v2, "newAnim":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_1d

    .line 2437
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2438
    const/4 v1, 0x1

    .line 2441
    :cond_1d
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 2442
    .local v3, "newFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_2a

    .line 2443
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2444
    const/4 v1, 0x1

    .line 2447
    :cond_2a
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v4

    .line 2448
    .local v4, "newGravity":I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v5, :cond_35

    .line 2449
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2450
    const/4 v1, 0x1

    .line 2453
    :cond_35
    if-eqz v1, :cond_46

    .line 2454
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_43

    :cond_42
    const/4 v5, 0x0

    :goto_43
    invoke-virtual {p0, v5, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2456
    :cond_46
    return-void

    .line 2428
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "update":Z
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .end local v4    # "newGravity":I
    :cond_47
    :goto_47
    return-void
.end method

.method public update(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2474
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2475
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2476
    return-void
.end method

.method public update(IIII)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 2491
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2492
    return-void
.end method

.method public update(IIIIZ)V
    .registers 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .line 2510
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-ltz v3, :cond_11

    .line 2511
    iput v3, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2512
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2515
    :cond_11
    if-ltz v4, :cond_18

    .line 2516
    iput v4, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2517
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2520
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_ac

    .line 2524
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2526
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v6, p5

    .line 2528
    .local v6, "update":Z
    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v7, :cond_31

    goto :goto_33

    :cond_31
    iget v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2529
    .local v7, "finalWidth":I
    :goto_33
    const/4 v8, -0x1

    if-eq v3, v8, :cond_3f

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v7, :cond_3f

    .line 2530
    iput v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2531
    const/4 v6, 0x1

    .line 2534
    :cond_3f
    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_44

    goto :goto_46

    :cond_44
    iget v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2535
    .local v9, "finalHeight":I
    :goto_46
    if-eq v4, v8, :cond_51

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v9, :cond_51

    .line 2536
    iput v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2537
    const/4 v6, 0x1

    .line 2540
    :cond_51
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v8, v1, :cond_58

    .line 2541
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2542
    const/4 v6, 0x1

    .line 2545
    :cond_58
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v8, v2, :cond_5f

    .line 2546
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2547
    const/4 v6, 0x1

    .line 2550
    :cond_5f
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v8

    .line 2551
    .local v8, "newAnim":I
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v8, v10, :cond_6a

    .line 2552
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2553
    const/4 v6, 0x1

    .line 2556
    :cond_6a
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v10

    .line 2557
    .local v10, "newFlags":I
    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v10, v11, :cond_77

    .line 2558
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2559
    const/4 v6, 0x1

    .line 2562
    :cond_77
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v11

    .line 2563
    .local v11, "newGravity":I
    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v11, v12, :cond_82

    .line 2564
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2565
    const/4 v6, 0x1

    .line 2568
    :cond_82
    const/4 v12, 0x0

    .line 2569
    .local v12, "anchor":Landroid/view/View;
    const/4 v13, -0x1

    .line 2571
    .local v13, "newAccessibilityIdOfAnchor":I
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_9b

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_9b

    .line 2572
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Landroid/view/View;

    .line 2573
    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v13

    .line 2576
    :cond_9b
    int-to-long v14, v13

    iget-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v14, v1

    if-eqz v1, :cond_a6

    .line 2577
    int-to-long v1, v13

    iput-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2578
    const/4 v6, 0x1

    .line 2581
    :cond_a6
    if-eqz v6, :cond_ab

    .line 2582
    invoke-virtual {v0, v12, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2584
    :cond_ab
    return-void

    .line 2521
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "update":Z
    .end local v7    # "finalWidth":I
    .end local v8    # "newAnim":I
    .end local v9    # "finalHeight":I
    .end local v10    # "newFlags":I
    .end local v11    # "newGravity":I
    .end local v12    # "anchor":Landroid/view/View;
    .end local v13    # "newAccessibilityIdOfAnchor":I
    :cond_ac
    :goto_ac
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .registers 11
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2612
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2613
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 2632
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2633
    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2460
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2461
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2462
    return-void
.end method

.method protected final updateAboveAnchor(Z)V
    .registers 4
    .param p1, "aboveAnchor"    # Z

    .line 1524
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_21

    .line 1525
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1527
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1531
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1532
    if-eqz p1, :cond_18

    .line 1533
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    .line 1535
    :cond_18
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    .line 1538
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 1542
    :cond_21
    :goto_21
    return-void
.end method
