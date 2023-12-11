.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$Host;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final ANIMATION_DURATION_RESIZE:I = 0x12c

.field private static final ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field private static final ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final ANIMATION_TYPE_HIDE:I = 0x1

.field public static final ANIMATION_TYPE_NONE:I = -0x1

.field public static final ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final ANIMATION_TYPE_SHOW:I = 0x0

.field public static final ANIMATION_TYPE_USER:I = 0x2

.field static final DEBUG:Z = false

.field private static final ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

.field private static final ENABLE_SEP_IME_ANIMATION:Z

.field private static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field private static final ID_CAPTION_BAR:I

.field public static final LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field private static final PROP_ENABLE_SEP_IME_ANIMATION:Ljava/lang/String; = "persist.sys.ime.enable_sep_ime_animation"

.field public static final RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SEP_ANIMATION_DURATION_IME_FLAGSHIP_HIDE_MS:I = 0x12c

.field private static final SEP_ANIMATION_DURATION_IME_FLAGSHIP_SHOW_MS:I = 0x15e

.field private static final SEP_ANIMATION_DURATION_IME_HIDE_MS:I = 0x118

.field private static final SEP_ANIMATION_DURATION_IME_SHOW_MS:I = 0x118

.field private static final SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "InsetsController"

.field static final WARN:Z

.field private static sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimCallback:Ljava/lang/Runnable;

.field private mAnimCallbackScheduled:Z

.field private mAnimationsDisabled:Z

.field private mCaptionInsetsHeight:I

.field private mCompatSysUiVisibilityStaled:Z

.field private final mConsumerCreator:Lcom/android/internal/util/function/TriFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mControllableTypes:I

.field private mDisabledUserAnimationInsetsTypes:I

.field private mExistingTypes:I

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Landroid/view/InsetsController$Host;

.field private final mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

.field private final mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

.field private final mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private mLastActivityType:I

.field private final mLastDispatchedState:Landroid/view/InsetsState;

.field private mLastInsets:Landroid/view/WindowInsets;

.field private mLastLegacySoftInputMode:I

.field private mLastLegacySystemUiFlags:I

.field private mLastLegacyWindowFlags:I

.field private mLastStartedAnimTypes:I

.field private mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final mPendingControlTimeout:Ljava/lang/Runnable;

.field private mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private mReportedRequestedVisibleTypes:I

.field private mRequestedVisibleTypes:I

.field private final mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private mStartingAnimation:Z

.field private final mState:Landroid/view/InsetsState;

.field private mSystemBarControlledByPolicy:Z

.field private final mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mTypesBeingCancelled:I

.field private mVisibleTypes:I

.field private mWindowType:I


# direct methods
.method public static synthetic $r8$lambda$A3dwI-IOSS53JTeBO6-srFDnPww(Landroid/view/InsetsController;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$updateState$4([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Amx-Vld7pHmp7sZLsnZeliqd_HE(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$CT7S_FT6XllG9UEry8ufl9oUXZI(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J5m_AYX7llAmCOYQECUiCYR4hoc(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P0aLLiBZpB-4bMVtGYI-f7lTdv4(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/InsetsController;->lambda$startAnimation$7(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4QA-xSSg2Zw1Pd2kq3DYIY237U(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic $r8$lambda$pcw8CG8Ik7UlOtljA0SyIRNNwD4(Landroid/view/InsetsController;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z
    .registers 1

    sget-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z
    .registers 1

    sget-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_IME_ANIMATION:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSEP_IME_HIDE_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSEP_IME_SHOW_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 257
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 259
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 261
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 273
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 275
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 277
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 283
    const-string/jumbo v0, "persist.sys.ime.enable_sep_ime_animation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_IME_ANIMATION:Z

    .line 286
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_STRIDE_OCR_VERSION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v1, "V2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

    .line 295
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 297
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 302
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 307
    nop

    .line 308
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    .line 373
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsController$Host;)V
    .registers 4
    .param p1, "host"    # Landroid/view/InsetsController$Host;

    .line 866
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>()V

    .line 874
    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 866
    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V

    .line 875
    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V
    .registers 6
    .param p1, "host"    # Landroid/view/InsetsController$Host;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 880
    .local p2, "consumerCreator":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/InsetsSourceConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Landroid/view/InsetsController$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$1;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 724
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 727
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    .line 729
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 732
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    .line 737
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    .line 754
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 758
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    .line 759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 769
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 772
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 775
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 778
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 783
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    .line 786
    new-instance v0, Landroid/view/InsetsController$2;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$2;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 810
    new-instance v0, Landroid/view/InsetsController$3;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$3;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 881
    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 882
    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    .line 883
    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    .line 884
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda11;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    .line 937
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 938
    return-void
.end method

.method private abortPendingImeControlRequest()V
    .registers 3

    .line 1708
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_13

    .line 1709
    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1710
    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1711
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1714
    :cond_13
    return-void
.end method

.method private applyLocalVisibilityOverride()V
    .registers 3

    .line 1825
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1826
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1827
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 1825
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1829
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private calculateControllableTypes()I
    .registers 6

    .line 2112
    const/4 v0, 0x0

    .line 2113
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_33

    .line 2114
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2115
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 2116
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_30

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2117
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    or-int/2addr v0, v4

    .line 2113
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2120
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 7
    .param p1, "control"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "invokeCallback"    # Z

    .line 1779
    const/16 v0, 0x28

    if-eqz p2, :cond_13

    .line 1780
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1782
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    goto :goto_1e

    .line 1785
    :cond_13
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1789
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1791
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1789
    const-string v2, "cancelAnimation of types: %d, animType: %d, host: %s"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1793
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, "removedTypes":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_68
    if-ltz v1, :cond_8e

    .line 1798
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    .line 1799
    .local v2, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v3, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v3, p1, :cond_8b

    .line 1800
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1801
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    .line 1802
    if-eqz p2, :cond_8e

    .line 1803
    iget-object v3, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_8e

    .line 1797
    .end local v2    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_8b
    add-int/lit8 v1, v1, -0x1

    goto :goto_68

    .line 1808
    .end local v1    # "i":I
    :cond_8e
    :goto_8e
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1809
    return-void
.end method

.method private cancelExistingControllers(I)V
    .registers 7
    .param p1, "types"    # I

    .line 1690
    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1691
    .local v0, "originalmTypesBeingCancelled":I
    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1693
    :try_start_7
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_28

    .line 1694
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1695
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    .line 1696
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1693
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1699
    .end local v1    # "i":I
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_32

    .line 1700
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 1703
    :cond_32
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1704
    nop

    .line 1705
    return-void

    .line 1703
    :catchall_36
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1704
    throw v1
.end method

.method private captionInsetsUnchanged()Z
    .registers 5

    .line 1073
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1074
    return v1

    .line 1076
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 1077
    .local v0, "source":Landroid/view/InsetsSource;
    if-nez v0, :cond_15

    iget v2, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-nez v2, :cond_15

    .line 1078
    return v1

    .line 1080
    :cond_15
    if-eqz v0, :cond_24

    iget v2, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_24

    .line 1081
    return v1

    .line 1084
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method private collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;)Landroid/util/Pair;
    .registers 16
    .param p1, "fromIme"    # Z
    .param p2, "types"    # I
    .param p4, "animationType"    # I
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1625
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x23

    invoke-interface {v0, p5, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, "typesReady":I
    const/4 v1, 0x1

    .line 1630
    .local v1, "imeReady":Z
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_6d

    .line 1631
    iget-object v4, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSourceConsumer;

    .line 1632
    .local v4, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    and-int/2addr v5, p2

    if-nez v5, :cond_25

    .line 1633
    goto :goto_6a

    .line 1635
    :cond_25
    const/4 v5, 0x0

    if-eqz p4, :cond_2e

    const/4 v6, 0x2

    if-ne p4, v6, :cond_2c

    goto :goto_2e

    :cond_2c
    move v6, v5

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v6, v3

    .line 1637
    .local v6, "show":Z
    :goto_2f
    const/4 v7, 0x1

    .line 1638
    .local v7, "canRun":Z
    if-eqz v6, :cond_47

    .line 1640
    invoke-virtual {v4, p1, p5}, Landroid/view/InsetsSourceConsumer;->requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I

    move-result v8

    packed-switch v8, :pswitch_data_7c

    goto :goto_46

    .line 1652
    :pswitch_3a
    const/4 v7, 0x0

    .line 1655
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-virtual {p0, v5, v8}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    goto :goto_46

    .line 1644
    :pswitch_43
    const/4 v1, 0x0

    .line 1646
    goto :goto_46

    .line 1642
    :pswitch_45
    nop

    .line 1656
    :goto_46
    goto :goto_4a

    .line 1659
    :cond_47
    invoke-virtual {v4, p1, p5}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1661
    :goto_4a
    if-nez v7, :cond_4d

    .line 1665
    goto :goto_6a

    .line 1667
    :cond_4d
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v5

    .line 1668
    .local v5, "control":Landroid/view/InsetsSourceControl;
    if-eqz v5, :cond_6a

    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    if-eqz v8, :cond_6a

    .line 1669
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v8

    new-instance v9, Landroid/view/InsetsSourceControl;

    invoke-direct {v9, v5}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {p3, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1670
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    or-int/2addr v0, v8

    .line 1630
    .end local v4    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v5    # "control":Landroid/view/InsetsSourceControl;
    .end local v6    # "show":Z
    .end local v7    # "canRun":Z
    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1673
    .end local v2    # "i":I
    :cond_6d
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_45
        :pswitch_43
        :pswitch_3a
    .end packed-switch
.end method

.method private controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 15
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "durationMs"    # J
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "animationType"    # I
    .param p10, "layoutInsetsDuringAnimation"    # I
    .param p11, "useInsetsAnimationThread"    # Z
    .param p12, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1421
    const/4 v0, 0x0

    if-nez p10, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 1424
    .local v1, "visible":Z
    :goto_6
    if-eqz v1, :cond_9

    move v0, p1

    :cond_9
    invoke-virtual {p0, v0, p1}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1428
    invoke-direct/range {p0 .. p12}, Landroid/view/InsetsController;->controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1434
    invoke-direct {p0}, Landroid/view/InsetsController;->reportRequestedVisibleTypes()V

    .line 1435
    return-void
.end method

.method private controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 35
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "durationMs"    # J
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "animationType"    # I
    .param p10, "layoutInsetsDuringAnimation"    # I
    .param p11, "useInsetsAnimationThread"    # Z
    .param p12, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1444
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move/from16 v12, p9

    move-object/from16 v11, p12

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v11, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1445
    iget v0, v15, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int v0, p1, v0

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_7c

    .line 1446
    if-eqz v12, :cond_21

    if-ne v12, v10, :cond_20

    goto :goto_21

    :cond_20
    move v10, v9

    :cond_21
    :goto_21
    move v0, v10

    .line 1448
    .local v0, "monitoredAnimation":Z
    if-eqz v0, :cond_49

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, p1, v1

    if-eqz v1, :cond_49

    .line 1449
    const/16 v1, 0x28

    if-nez v12, :cond_3d

    .line 1450
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v11, v1, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_49

    .line 1453
    :cond_3d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v11, v1, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1457
    :cond_49
    :goto_49
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start a new insets animation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1458
    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while an existing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v15, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1459
    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is being cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1462
    .end local v0    # "monitoredAnimation":Z
    :cond_7c
    const/4 v0, 0x2

    const/16 v1, 0x22

    if-ne v12, v0, :cond_be

    .line 1463
    iget v0, v15, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    and-int v2, p1, v0

    .line 1465
    .local v2, "disabledTypes":I
    not-int v0, v0

    and-int v0, p1, v0

    .line 1467
    .end local p1    # "types":I
    .local v0, "types":I
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_bc

    .line 1468
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v11, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1471
    if-eqz p5, :cond_bc

    iget-object v3, v15, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v4, v15, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1472
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v3

    if-nez v3, :cond_bc

    .line 1475
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v15, v9, v3}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1476
    iget-object v3, v15, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v3, v9}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 1477
    invoke-virtual/range {p0 .. p0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 1482
    .end local v2    # "disabledTypes":I
    :cond_bc
    move v7, v0

    goto :goto_c0

    .line 1462
    .end local v0    # "types":I
    .restart local p1    # "types":I
    :cond_be
    move/from16 v7, p1

    .line 1482
    .end local p1    # "types":I
    .local v7, "types":I
    :goto_c0
    const-string v8, "IC.showRequestFromApiToImeReady"

    const-string v6, "IC.showRequestFromApi"

    const/4 v5, 0x0

    const-wide/16 v2, 0x8

    if-nez v7, :cond_d3

    .line 1484
    invoke-interface {v13, v5}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1486
    invoke-static {v2, v3, v6, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1487
    invoke-static {v2, v3, v8, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1488
    return-void

    .line 1490
    :cond_d3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v11, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1493
    iget v0, v15, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v0, v7

    iput v0, v15, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1495
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-wide v1, v2

    move-object v3, v0

    .line 1497
    .local v3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    move/from16 v1, p5

    move v2, v7

    move/from16 v4, p9

    move-object v13, v5

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsController;->collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;)Landroid/util/Pair;

    move-result-object v0

    .line 1499
    .local v0, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1500
    .local v1, "typesReady":I
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1503
    .local v2, "imeReady":Z
    if-nez v2, :cond_151

    .line 1505
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1506
    new-instance v16, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v4, v16

    move v5, v7

    move-object v13, v6

    move-object/from16 v6, p3

    move-object/from16 p1, v0

    move v10, v7

    move-object v0, v8

    .end local v0    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v7    # "types":I
    .local v10, "types":I
    .local p1, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move-wide/from16 v7, p6

    move/from16 v20, v2

    move v2, v9

    .end local v2    # "imeReady":Z
    .local v20, "imeReady":Z
    move-object/from16 v9, p8

    move v2, v10

    .end local v10    # "types":I
    .local v2, "types":I
    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p2

    move-object/from16 v21, v3

    move-object v3, v13

    .end local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v21, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move/from16 v13, p11

    invoke-direct/range {v4 .. v13}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    .line 1510
    .local v4, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v4, v15, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1511
    iget-object v5, v15, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v6, v15, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1513
    if-eqz v14, :cond_140

    .line 1514
    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v5, v15, v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v14, v5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1525
    :cond_140
    iget v5, v15, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-virtual {v15, v5, v2}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1527
    const/4 v5, 0x0

    const-wide/16 v11, 0x8

    invoke-static {v11, v12, v3, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1528
    if-nez p5, :cond_150

    .line 1529
    invoke-static {v11, v12, v0, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1531
    :cond_150
    return-void

    .line 1539
    .end local v4    # "request":Landroid/view/InsetsController$PendingControlRequest;
    .end local v20    # "imeReady":Z
    .end local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local p1    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v0    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v2, "imeReady":Z
    .restart local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v7    # "types":I
    :cond_151
    move-object/from16 p1, v0

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object v3, v6

    move v2, v7

    move-object v0, v8

    const-wide/16 v11, 0x8

    .end local v0    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v7    # "types":I
    .local v2, "types":I
    .restart local v20    # "imeReady":Z
    .restart local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local p1    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {v15, v2}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1543
    if-nez v1, :cond_171

    .line 1545
    move-object v4, v3

    move-object/from16 v3, p3

    invoke-interface {v3, v13}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1546
    const/4 v5, 0x0

    invoke-static {v11, v12, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1547
    if-nez p5, :cond_170

    .line 1548
    invoke-static {v11, v12, v0, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1550
    :cond_170
    return-void

    .line 1562
    :cond_171
    move-object/from16 v3, p3

    if-eqz p11, :cond_1a3

    .line 1563
    new-instance v0, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v7, v15, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v4, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1565
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v16

    iget-object v4, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1566
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v17

    move-object v4, v0

    move-object/from16 v3, v21

    .end local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object v5, v3

    move-object/from16 v6, p4

    move-object/from16 v8, p3

    move v9, v1

    move-object/from16 v19, v0

    move v0, v10

    move-object/from16 v10, p0

    move-wide/from16 v11, p6

    move-object v0, v13

    move-object/from16 v13, p8

    move/from16 v14, p9

    move-object v0, v15

    move/from16 v15, p10

    move-object/from16 v18, p12

    invoke-direct/range {v4 .. v18}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1c9

    .line 1567
    .end local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    :cond_1a3
    move-object v0, v15

    move-object/from16 v3, v21

    .end local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    new-instance v18, Landroid/view/InsetsAnimationControlImpl;

    iget-object v7, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1569
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v16

    move-object/from16 v4, v18

    move-object v5, v3

    move-object/from16 v6, p4

    move-object/from16 v8, p3

    move v9, v1

    move-object/from16 v10, p0

    move-wide/from16 v11, p6

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v17, p12

    invoke-direct/range {v4 .. v17}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    move-object/from16 v19, v18

    :goto_1c9
    move-object/from16 v4, v19

    .line 1571
    .local v4, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_1f9

    .line 1572
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1573
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1572
    const-string v7, "InsetsAnimationControlImpl"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1574
    move/from16 v5, p9

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f6

    .line 1575
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v6

    new-instance v7, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v8, p12

    invoke-virtual {v6, v8, v7}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_1fd

    .line 1574
    :cond_1f6
    move-object/from16 v8, p12

    goto :goto_1fd

    .line 1571
    :cond_1f9
    move/from16 v5, p9

    move-object/from16 v8, p12

    .line 1578
    :goto_1fd
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v6

    const/16 v7, 0x27

    invoke-interface {v6, v8, v7}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1579
    iget-object v6, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v7, Landroid/view/InsetsController$RunningAnimation;

    invoke-direct {v7, v4, v5}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "controlAnimationUncheckedInner: Added types="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1583
    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1584
    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1582
    const-string v7, "InsetsController"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    move-object/from16 v6, p2

    if-eqz v6, :cond_265

    .line 1590
    new-instance v7, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0, v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v6, v7}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const-wide/16 v9, 0x8

    const/4 v11, 0x0

    goto :goto_26d

    .line 1594
    :cond_265
    const-string v7, "IC.pendingAnim"

    const-wide/16 v9, 0x8

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v11}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1596
    :goto_26d
    const/4 v7, 0x1

    invoke-direct {v0, v2, v7}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1598
    if-eqz p5, :cond_284

    .line 1599
    packed-switch v5, :pswitch_data_28e

    goto :goto_283

    .line 1604
    :pswitch_277
    const-string v7, "IC.hideRequestFromIme"

    invoke-static {v9, v10, v7, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_283

    .line 1601
    :pswitch_27d
    const-string v7, "IC.showRequestFromIme"

    invoke-static {v9, v10, v7, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1602
    nop

    .line 1605
    :goto_283
    goto :goto_28c

    .line 1607
    :cond_284
    const/4 v7, 0x1

    if-ne v5, v7, :cond_28c

    .line 1608
    const-string v7, "IC.hideRequestFromApi"

    invoke-static {v9, v10, v7, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1610
    :cond_28c
    :goto_28c
    return-void

    nop

    :pswitch_data_28e
    .packed-switch 0x0
        :pswitch_27d
        :pswitch_277
    .end packed-switch
.end method

.method private controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V
    .registers 24
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "fromIme"    # Z
    .param p5, "durationMs"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "animationType"    # I

    .line 1399
    move-object v13, p0

    iget-object v0, v13, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v13, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1400
    move-object/from16 v14, p3

    invoke-interface {v14, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1401
    return-void

    .line 1403
    :cond_14
    move-object/from16 v14, p3

    if-eqz p4, :cond_27

    .line 1404
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1406
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1404
    const-string v3, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1409
    :cond_27
    iget-object v4, v13, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 1410
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1409
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1412
    return-void
.end method

.method private getLayoutInsetsDuringAnimationMode(I)I
    .registers 3
    .param p1, "types"    # I

    .line 1684
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_7

    .line 1685
    const/4 v0, 0x0

    goto :goto_8

    .line 1686
    :cond_7
    const/4 v0, 0x1

    .line 1684
    :goto_8
    return v0
.end method

.method private handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 17
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1297
    move-object v13, p0

    iget-object v14, v13, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1298
    .local v14, "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    const/4 v0, 0x0

    iput-object v0, v13, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1299
    iget-object v0, v13, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, v13, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1303
    iget v1, v14, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v14, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v14, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-wide v6, v14, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iget-object v8, v14, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iget v9, v14, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v10, v14, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v11, v14, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    move-object v0, p0

    move-object/from16 v12, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1310
    return-void
.end method

.method private invokeControllableInsetsChangedListeners()I
    .registers 5

    .line 2127
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2128
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 2129
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    .line 2130
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2131
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_25

    .line 2132
    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2131
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2134
    .end local v2    # "i":I
    :cond_25
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method private synthetic lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1515
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_7

    .line 1518
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1520
    :cond_7
    return-void
.end method

.method private synthetic lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1591
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1592
    return-void
.end method

.method static synthetic lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .registers 13
    .param p0, "controller"    # Landroid/view/InsetsController;
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "type"    # Ljava/lang/Integer;

    .line 867
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 868
    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    .line 871
    :cond_1b
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v8}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    move-object v4, v0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method private synthetic lambda$new$3()V
    .registers 16

    .line 885
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 886
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 887
    return-void

    .line 890
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v0, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v1, "finishedAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v2, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 893
    .local v2, "state":Landroid/view/InsetsState;
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_25
    if-ltz v3, :cond_53

    .line 894
    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InsetsController$RunningAnimation;

    .line 896
    .local v5, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v6, v5, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 897
    .local v6, "runner":Landroid/view/InsetsAnimationControlRunner;
    instance-of v7, v6, Landroid/view/WindowInsetsAnimationController;

    if-eqz v7, :cond_50

    .line 902
    iget-boolean v7, v5, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v7, :cond_40

    .line 903
    invoke-interface {v6}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_40
    move-object v7, v6

    check-cast v7, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v7, v2}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 907
    invoke-interface {v6}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v5    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v6    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    .line 912
    .end local v3    # "i":I
    :cond_53
    iget-object v6, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 913
    invoke-virtual {v3}, Landroid/view/WindowInsets;->isRound()Z

    move-result v8

    iget v9, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v10, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 917
    iget-boolean v3, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v3, :cond_6b

    .line 918
    iget v3, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    and-int/lit16 v3, v3, -0x101

    move v11, v3

    goto :goto_6e

    .line 920
    :cond_6b
    iget v3, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    move v11, v3

    :goto_6e
    iget v12, p0, Landroid/view/InsetsController;->mWindowType:I

    iget v13, p0, Landroid/view/InsetsController;->mLastActivityType:I

    const/4 v14, 0x0

    .line 912
    move-object v5, v2

    invoke-virtual/range {v5 .. v14}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v3

    .line 922
    .local v3, "insets":Landroid/view/WindowInsets;
    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 923
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 922
    invoke-interface {v5, v3, v6}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 931
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_86
    if-ltz v5, :cond_94

    .line 932
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 931
    add-int/lit8 v5, v5, -0x1

    goto :goto_86

    .line 934
    .end local v5    # "i":I
    :cond_94
    return-void
.end method

.method private synthetic lambda$startAnimation$7(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 12
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "types"    # I
    .param p3, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p4, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .param p5, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 2017
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2019
    return-void

    .line 2021
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2022
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2021
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2023
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_2e
    if-ltz v0, :cond_41

    .line 2024
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 2025
    .local v4, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_3e

    .line 2026
    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    .line 2023
    .end local v4    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 2029
    .end local v0    # "i":I
    :cond_41
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2030
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 2031
    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2032
    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    .line 2033
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 2034
    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2035
    return-void
.end method

.method static synthetic lambda$static$0(F)F
    .registers 6
    .param p0, "alphaFraction"    # F

    .line 264
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    .line 265
    .local v1, "fraction":F
    const v2, 0x3eaaaaab

    .line 266
    .local v2, "fractionDelay":F
    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_f

    .line 267
    return v0

    .line 269
    :cond_f
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    .line 270
    .local v3, "innerFraction":F
    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 9
    .param p0, "fraction"    # F
    .param p1, "startValue"    # Landroid/graphics/Insets;
    .param p2, "endValue"    # Landroid/graphics/Insets;

    .line 373
    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$updateState$4([I)V
    .registers 3
    .param p1, "cancelledUserAnimationTypes"    # [I

    .line 1053
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method private onAnimationStateChanged(IZ)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "running"    # Z

    .line 1812
    const/4 v0, 0x0

    .line 1813
    .local v0, "insetsChanged":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_22

    .line 1814
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1815
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_1f

    .line 1816
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1813
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1819
    .end local v1    # "i":I
    :cond_22
    if-eqz v0, :cond_27

    .line 1820
    invoke-virtual {p0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 1822
    :cond_27
    return-void
.end method

.method private reportRequestedVisibleTypes()V
    .registers 4

    .line 1917
    iget v0, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    if-eq v0, v1, :cond_19

    .line 1918
    xor-int/2addr v0, v1

    .line 1919
    .local v0, "diff":I
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1920
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1922
    :cond_10
    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iput v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 1923
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2, v1}, Landroid/view/InsetsController$Host;->updateRequestedVisibleTypes(I)V

    .line 1925
    .end local v0    # "diff":I
    :cond_19
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 1926
    return-void
.end method

.method private updateDisabledUserAnimationTypes(I)V
    .registers 7
    .param p1, "disabledUserAnimationTypes"    # I

    .line 1058
    iget v0, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    xor-int/2addr v0, p1

    .line 1059
    .local v0, "diff":I
    if-eqz v0, :cond_38

    .line 1060
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_36

    .line 1061
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1062
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_33

    .line 1063
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1064
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1065
    goto :goto_36

    .line 1060
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1068
    .end local v1    # "i":I
    :cond_36
    :goto_36
    iput p1, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    .line 1070
    :cond_38
    return-void
.end method

.method private updateState(Landroid/view/InsetsState;)V
    .registers 14
    .param p1, "newState"    # Landroid/view/InsetsState;

    .line 1003
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, "existingTypes":I
    const/4 v2, 0x0

    .line 1006
    .local v2, "visibleTypes":I
    const/4 v3, 0x0

    .line 1007
    .local v3, "disabledUserAnimationTypes":I
    filled-new-array {v1}, [I

    move-result-object v4

    .line 1008
    .local v4, "cancelledUserAnimationTypes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v6

    .local v6, "size":I
    :goto_12
    if-ge v5, v6, :cond_52

    .line 1009
    invoke-virtual {p1, v5}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    .line 1010
    .local v7, "source":Landroid/view/InsetsSource;
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    .line 1011
    .local v8, "type":I
    invoke-virtual {p0, v8}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v9

    .line 1012
    .local v9, "animationType":I
    invoke-virtual {v7}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v10

    if-nez v10, :cond_30

    .line 1014
    or-int/2addr v3, v8

    .line 1015
    const/4 v10, 0x2

    if-ne v9, v10, :cond_30

    .line 1017
    const/4 v9, -0x1

    .line 1018
    aget v10, v4, v1

    or-int/2addr v10, v8

    aput v10, v4, v1

    .line 1021
    :cond_30
    iget-object v10, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/InsetsSourceConsumer;

    .line 1022
    .local v10, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v10, :cond_42

    .line 1023
    invoke-virtual {v10, v7, v9}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    goto :goto_47

    .line 1025
    :cond_42
    iget-object v11, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v11, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 1027
    :goto_47
    or-int/2addr v0, v8

    .line 1028
    invoke-virtual {v7}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 1029
    or-int/2addr v2, v8

    .line 1008
    .end local v7    # "source":Landroid/view/InsetsSource;
    .end local v8    # "type":I
    .end local v9    # "animationType":I
    .end local v10    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1034
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_52
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v5

    not-int v6, v0

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    .line 1036
    iget v5, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    const/4 v6, 0x1

    if-eq v5, v2, :cond_69

    .line 1037
    xor-int/2addr v5, v2

    invoke-static {v5}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1038
    iput-boolean v6, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1040
    :cond_67
    iput v2, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 1042
    :cond_69
    iget v5, p0, Landroid/view/InsetsController;->mExistingTypes:I

    if-eq v5, v0, :cond_78

    .line 1043
    xor-int/2addr v5, v0

    invoke-static {v5}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1044
    iput-boolean v6, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1046
    :cond_76
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 1048
    :cond_78
    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v6, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v5, p1, v6}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 1050
    invoke-direct {p0, v3}, Landroid/view/InsetsController;->updateDisabledUserAnimationTypes(I)V

    .line 1052
    aget v1, v4, v1

    if-eqz v1, :cond_90

    .line 1053
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1055
    :cond_90
    return-void
.end method


# virtual methods
.method public addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 2140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2143
    return-void
.end method

.method public applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 13
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1932
    const/4 v0, 0x0

    .line 1933
    .local v0, "skipAnim":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_24

    .line 1934
    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 1937
    .local v1, "imeControl":Landroid/view/InsetsSourceControl;
    if-eqz v1, :cond_24

    .line 1938
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz p2, :cond_22

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1939
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    move v0, v2

    .line 1942
    .end local v1    # "imeControl":Landroid/view/InsetsSourceControl;
    :cond_24
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1943
    return-void
.end method

.method public applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 22
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipAnim"    # Z
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1948
    move-object/from16 v13, p0

    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 1951
    const-string v1, "IC.showRequestFromApi"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1952
    if-nez p3, :cond_13

    .line 1953
    const-string v1, "IC.showRequestFromApiToImeReady"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1955
    :cond_13
    return-void

    .line 1958
    :cond_14
    iget-object v1, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v14

    .line 1967
    .local v14, "hasAnimationCallbacks":Z
    const/4 v1, 0x0

    .line 1968
    .local v1, "fullscreenMode":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int v2, p1, v2

    if-eqz v2, :cond_2f

    .line 1969
    iget-object v2, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    move v15, v1

    goto :goto_30

    .line 1968
    :cond_2f
    move v15, v1

    .line 1971
    .end local v1    # "fullscreenMode":Z
    .local v15, "fullscreenMode":Z
    :goto_30
    new-instance v10, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v1, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1972
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v4

    if-nez p4, :cond_3e

    iget-boolean v1, v13, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v1, :cond_3f

    :cond_3e
    const/4 v0, 0x1

    :cond_3f
    move v5, v0

    iget-object v0, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1973
    const/16 v1, -0x50

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v6

    iget-object v7, v13, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v8, v13, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-object v0, v10

    move/from16 v1, p2

    move v2, v14

    move/from16 v3, p1

    move v9, v15

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;Z)V

    move-object v3, v10

    .line 1979
    .local v3, "listener":Landroid/view/InsetsController$InternalAnimationControlListener;
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1981
    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getDurationMs()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 1982
    nop

    .line 1983
    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    .line 1979
    xor-int/lit8 v11, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v5, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1985
    return-void
.end method

.method varargs applySurfaceParams(Z[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 4
    .param p1, "ignoreVisibility"    # Z
    .param p2, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 1755
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->applySurfaceParams(Z[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1756
    return-void
.end method

.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 1749
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1750
    return-void
.end method

.method public calculateInsets(ZIIIII)Landroid/view/WindowInsets;
    .registers 23
    .param p1, "isScreenRound"    # Z
    .param p2, "windowType"    # I
    .param p3, "activityType"    # I
    .param p4, "legacySoftInputMode"    # I
    .param p5, "legacyWindowFlags"    # I
    .param p6, "legacySystemUiFlags"    # I

    .line 1094
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v12, p2

    iput v12, v0, Landroid/view/InsetsController;->mWindowType:I

    .line 1095
    move/from16 v13, p3

    iput v13, v0, Landroid/view/InsetsController;->mLastActivityType:I

    .line 1096
    move/from16 v14, p4

    iput v14, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    .line 1097
    move/from16 v15, p5

    iput v15, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 1098
    iput v1, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    .line 1099
    iget-object v2, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 1103
    iget-boolean v5, v0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v5, :cond_23

    .line 1104
    and-int/lit16 v5, v1, -0x101

    move v8, v5

    goto :goto_24

    .line 1106
    :cond_23
    move v8, v1

    :goto_24
    const/4 v11, 0x0

    .line 1099
    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2

    iput-object v2, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 1107
    return-object v2
.end method

.method public calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .registers 11
    .param p1, "windowType"    # I
    .param p2, "activityType"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .line 1115
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public cancelExistingAnimations()V
    .registers 2

    .line 1992
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1993
    return-void
.end method

.method public controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 16
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1390
    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p6

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V

    .line 1392
    return-void
.end method

.method public dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2041
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2042
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    .line 2040
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2043
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 2044
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1996
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1998
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2001
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2002
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2003
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_2d

    .line 2004
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 2005
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2003
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 2007
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2008
    return-void
.end method

.method public getAnimationType(I)I
    .registers 5
    .param p1, "type"    # I

    .line 1886
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 1887
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1888
    .local v1, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1889
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    .line 1886
    .end local v1    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1892
    .end local v0    # "i":I
    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method getHost()Landroid/view/InsetsController$Host;
    .registers 2

    .line 2169
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;
    .registers 2

    .line 1851
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-object v0
.end method

.method public getLastDispatchedState()Landroid/view/InsetsState;
    .registers 2

    .line 960
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public getRequestedVisibleTypes()I
    .registers 2

    .line 956
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;
    .registers 7
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 1833
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1834
    .local v0, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v0, :cond_b

    .line 1835
    return-object v0

    .line 1837
    :cond_b
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne p2, v1, :cond_24

    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v1, :cond_24

    .line 1839
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1840
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1841
    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->setId(I)V

    goto :goto_35

    .line 1843
    :cond_24
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1845
    :goto_35
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1846
    return-object v0
.end method

.method public getState()Landroid/view/InsetsState;
    .registers 2

    .line 951
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public getSystemBarsAppearance()I
    .registers 2

    .line 2067
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsAppearanceControlled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2069
    const/4 v0, 0x0

    return v0

    .line 2071
    :cond_a
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    return v0
.end method

.method public getSystemBarsBehavior()I
    .registers 2

    .line 2099
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsBehaviorControlled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2101
    const/4 v0, 0x0

    return v0

    .line 2103
    :cond_a
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public hide(I)V
    .registers 8
    .param p1, "types"    # I

    .line 1314
    const/4 v0, 0x0

    .line 1315
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_18

    .line 1316
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    .line 1317
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1316
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1c

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onRequestHide(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 1321
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1322
    return-void
.end method

.method public hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 16
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1327
    const-wide/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 1328
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1329
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 1328
    const-string v5, "InsetsController#hide"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1330
    const-string v3, "IC.hideRequestFromIme"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_20

    .line 1332
    :cond_1b
    const-string v3, "IC.hideRequestFromApi"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1334
    :goto_20
    const/4 v0, 0x0

    .line 1335
    .local v0, "typesReady":I
    const/4 v1, 0x0

    .line 1336
    .local v1, "hasImeRequestedHidden":Z
    iget-object v3, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v4, 0x1

    if-eqz v3, :cond_29

    move v3, v4

    goto :goto_2a

    :cond_29
    move v3, v2

    .line 1337
    .local v3, "hadPendingImeControlRequest":Z
    :goto_2a
    const/4 v5, 0x1

    .local v5, "type":I
    :goto_2b
    const/16 v6, 0x200

    if-gt v5, v6, :cond_99

    .line 1338
    and-int v6, p1, v5

    if-nez v6, :cond_35

    .line 1339
    goto/16 :goto_96

    .line 1341
    :cond_35
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 1342
    .local v6, "animationType":I
    iget v7, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_40

    move v7, v4

    goto :goto_41

    :cond_40
    move v7, v2

    .line 1343
    .local v7, "requestedVisible":Z
    :goto_41
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v8

    if-ne v5, v8, :cond_49

    move v8, v4

    goto :goto_4a

    :cond_49
    move v8, v2

    .line 1344
    .local v8, "isImeAnimation":Z
    :goto_4a
    iget-object v9, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v9, :cond_5f

    if-nez v7, :cond_5f

    .line 1346
    iget v10, v9, Landroid/view/InsetsController$PendingControlRequest;->types:I

    not-int v11, v5

    and-int/2addr v10, v11

    iput v10, v9, Landroid/view/InsetsController$PendingControlRequest;->types:I

    .line 1347
    iget-object v9, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v9, v9, Landroid/view/InsetsController$PendingControlRequest;->types:I

    if-nez v9, :cond_5f

    .line 1348
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1351
    :cond_5f
    const/4 v9, -0x1

    if-eqz v8, :cond_7a

    if-nez v7, :cond_7a

    if-ne v6, v9, :cond_7a

    .line 1352
    const/4 v1, 0x1

    .line 1355
    if-nez v3, :cond_73

    .line 1356
    invoke-virtual {p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 1357
    :cond_73
    invoke-virtual {p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1360
    :cond_7a
    const/16 v10, 0x20

    if-nez v7, :cond_80

    if-eq v6, v9, :cond_82

    :cond_80
    if-ne v6, v4, :cond_8c

    .line 1364
    :cond_82
    if-eqz v8, :cond_96

    .line 1365
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v9

    invoke-interface {v9, p3, v10}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_96

    .line 1370
    :cond_8c
    if-eqz v8, :cond_95

    .line 1371
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v9

    invoke-interface {v9, p3, v10}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1374
    :cond_95
    or-int/2addr v0, v5

    .line 1337
    .end local v6    # "animationType":I
    .end local v7    # "requestedVisible":Z
    .end local v8    # "isImeAnimation":Z
    :cond_96
    :goto_96
    shl-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1376
    .end local v5    # "type":I
    :cond_99
    if-eqz v1, :cond_a9

    iget-object v4, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v4, :cond_a9

    .line 1379
    invoke-direct {p0, p3}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1380
    invoke-virtual {p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 1382
    :cond_a9
    invoke-virtual {p0, v0, v2, p2, p3}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1383
    return-void
.end method

.method notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .registers 7
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1760
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    .line 1761
    .local v0, "type":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_27

    .line 1762
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1763
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    .line 1764
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_24

    .line 1765
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1761
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1768
    .end local v1    # "i":I
    :cond_27
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 1769
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1771
    :cond_30
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    if-eq v1, v2, :cond_43

    .line 1774
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1776
    :cond_43
    return-void
.end method

.method public notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 6
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 1720
    nop

    .line 1721
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->isCancelRequested()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1722
    const-string v0, "InsetsController"

    const-string v1, "Ignore notifyFinished beacuse the animation has already been canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    return-void

    .line 1726
    :cond_f
    const/4 v0, 0x0

    if-eqz p2, :cond_17

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    goto :goto_18

    :cond_17
    move v1, v0

    :goto_18
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1727
    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1729
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 1732
    return-void

    .line 1734
    :cond_2a
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 1735
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    if-eqz p2, :cond_41

    .line 1736
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x29

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1738
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_51

    .line 1740
    :cond_41
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1742
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1744
    :goto_51
    invoke-direct {p0}, Landroid/view/InsetsController;->reportRequestedVisibleTypes()V

    .line 1745
    return-void
.end method

.method notifyVisibilityChanged()V
    .registers 2

    .line 1855
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1856
    return-void
.end method

.method public onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .registers 12
    .param p1, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    .line 1129
    const/4 v1, 0x1

    if-eqz p1, :cond_24

    .line 1130
    array-length v2, p1

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_24

    aget-object v4, p1, v3

    .line 1131
    .local v4, "activeControl":Landroid/view/InsetsSourceControl;
    if-eqz v4, :cond_21

    .line 1133
    nop

    .line 1134
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->isControlledByPolicy()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1135
    iput-boolean v1, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    goto :goto_21

    .line 1139
    :cond_18
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1130
    .end local v4    # "activeControl":Landroid/view/InsetsSourceControl;
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1145
    :cond_24
    const/4 v2, 0x0

    .line 1146
    .local v2, "controllableTypes":I
    const/4 v3, 0x0

    .line 1147
    .local v3, "consumedControlCount":I
    new-array v4, v1, [I

    .line 1148
    .local v4, "showTypes":[I
    new-array v5, v1, [I

    .line 1151
    .local v5, "hideTypes":[I
    iget-object v6, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "i":I
    :goto_31
    if-ltz v6, :cond_56

    .line 1152
    iget-object v7, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceConsumer;

    .line 1153
    .local v7, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v8, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InsetsSourceControl;

    .line 1154
    .local v8, "control":Landroid/view/InsetsSourceControl;
    if-eqz v8, :cond_50

    .line 1155
    invoke-virtual {v8}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v9

    or-int/2addr v2, v9

    .line 1156
    add-int/lit8 v3, v3, 0x1

    .line 1161
    :cond_50
    invoke-virtual {v7, v8, v4, v5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 1151
    .end local v7    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v8    # "control":Landroid/view/InsetsSourceControl;
    add-int/lit8 v6, v6, -0x1

    goto :goto_31

    .line 1165
    .end local v6    # "i":I
    :cond_56
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eq v3, v6, :cond_81

    .line 1166
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .restart local v6    # "i":I
    :goto_65
    if-ltz v6, :cond_81

    .line 1167
    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceControl;

    .line 1168
    .local v7, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 1169
    invoke-virtual {v8, v7, v4, v5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 1166
    .end local v7    # "control":Landroid/view/InsetsSourceControl;
    add-int/lit8 v6, v6, -0x1

    goto :goto_65

    .line 1173
    .end local v6    # "i":I
    :cond_81
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_a4

    .line 1175
    iget-object v6, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .restart local v6    # "i":I
    :goto_90
    if-ltz v6, :cond_a4

    .line 1176
    iget-object v7, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsController$RunningAnimation;

    iget-object v7, v7, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v8, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v7, v8}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 1175
    add-int/lit8 v6, v6, -0x1

    goto :goto_90

    .line 1179
    .end local v6    # "i":I
    :cond_a4
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 1183
    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v6

    .line 1184
    .local v6, "animatingTypes":I
    aget v7, v4, v0

    not-int v8, v6

    and-int/2addr v7, v8

    aput v7, v4, v0

    .line 1185
    aget v7, v5, v0

    not-int v8, v6

    and-int/2addr v7, v8

    aput v7, v5, v0

    .line 1187
    aget v7, v4, v0

    const/4 v8, 0x0

    if-eqz v7, :cond_c3

    .line 1188
    aget v7, v4, v0

    invoke-virtual {p0, v7, v1, v0, v8}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1191
    :cond_c3
    aget v7, v5, v0

    if-eqz v7, :cond_cc

    .line 1192
    aget v7, v5, v0

    invoke-virtual {p0, v7, v0, v0, v8}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1196
    :cond_cc
    iget v0, p0, Landroid/view/InsetsController;->mControllableTypes:I

    if-eq v0, v2, :cond_db

    .line 1197
    xor-int/2addr v0, v2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1198
    iput-boolean v1, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1200
    :cond_d9
    iput v2, p0, Landroid/view/InsetsController;->mControllableTypes:I

    .line 1204
    :cond_db
    invoke-direct {p0}, Landroid/view/InsetsController;->reportRequestedVisibleTypes()V

    .line 1205
    return-void
.end method

.method public onFrameChanged(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 942
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 943
    return-void

    .line 945
    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 946
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 947
    return-void
.end method

.method public onStateChanged(Landroid/view/InsetsState;)Z
    .registers 7
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, "stateChanged":Z
    sget-boolean v1, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    .line 967
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 969
    invoke-direct {p0}, Landroid/view/InsetsController;->captionInsetsUnchanged()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    move v1, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v1, v3

    :goto_19
    move v0, v1

    goto :goto_23

    .line 971
    :cond_1b
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    .line 974
    :goto_23
    if-nez v0, :cond_2e

    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 975
    return v2

    .line 978
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChanged: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "host="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 980
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " from="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 981
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 978
    const-string v4, "InsetsController"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 986
    new-instance v1, Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v1, v4, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 987
    .local v1, "lastState":Landroid/view/InsetsState;
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    .line 988
    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 989
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 991
    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v1, v2, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 994
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 995
    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 996
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v1, v2, v4}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 999
    :cond_a4
    return v3
.end method

.method public onWindowFocusGained(Z)V
    .registers 3
    .param p1, "hasViewFocused"    # Z

    .line 1874
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 1875
    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    .line 1881
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 1882
    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 2154
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    .line 2155
    return-void
.end method

.method public removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 2148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2150
    return-void
.end method

.method public reportPerceptible(IZ)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 2159
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2160
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 2161
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2162
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_1b

    .line 2163
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 2160
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2166
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 4
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 2049
    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_1b

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_1b

    .line 2054
    :cond_c
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1a

    .line 2055
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    .line 2056
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2058
    :cond_1a
    return-void

    .line 2050
    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2052
    return-void
.end method

.method public setAnimationsDisabled(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .line 2108
    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    .line 2109
    return-void
.end method

.method public setCaptionInsetsHeight(I)V
    .registers 8
    .param p1, "height"    # I

    .line 2077
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_5

    .line 2078
    return-void

    .line 2080
    :cond_5
    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-eq v0, p1, :cond_3c

    .line 2081
    iput p1, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 2082
    if-eqz p1, :cond_30

    .line 2083
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    goto :goto_37

    .line 2086
    :cond_30
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2088
    :goto_37
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 2090
    :cond_3c
    return-void
.end method

.method public setRequestedVisibleTypes(II)V
    .registers 6
    .param p1, "visibleTypes"    # I
    .param p2, "mask"    # I

    .line 1897
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int v2, p1, p2

    or-int/2addr v1, v2

    .line 1899
    .local v1, "requestedVisibleTypes":I
    if-eq v0, v1, :cond_5b

    .line 1900
    iput v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedVisibleTypes: visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int v2, v1, p2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1905
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1906
    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", from="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1907
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1903
    const-string v2, "InsetsController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_5b
    return-void
.end method

.method public setSystemBarsAppearance(II)V
    .registers 4
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 2062
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 2063
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 2094
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    .line 2095
    return-void
.end method

.method public setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1616
    iput-object p1, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 1617
    return-void
.end method

.method public show(I)V
    .registers 8
    .param p1, "types"    # I

    .line 1209
    const/4 v0, 0x0

    .line 1210
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_18

    .line 1211
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    .line 1212
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1211
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1a

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onRequestShow(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 1216
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1217
    return-void
.end method

.method public show(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 15
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1222
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_26

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show(ime(), fromIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_26
    const-string v0, "IC.showRequestFromApiToImeReady"

    const-wide/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_46

    .line 1226
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1227
    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1226
    const-string v6, "InsetsController#show"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1228
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1229
    const-string v0, "IC.showRequestFromIme"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_4e

    .line 1231
    :cond_46
    const-string v4, "IC.showRequestFromApi"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1232
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1235
    :goto_4e
    if-eqz p2, :cond_6b

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_6b

    .line 1236
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_67

    .line 1237
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p3, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1239
    :cond_67
    invoke-direct {p0, p3}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1240
    return-void

    .line 1245
    :cond_6b
    const/4 v0, 0x0

    .line 1246
    .local v0, "typesReady":I
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1247
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    .line 1246
    invoke-virtual {v1, v2, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v1

    .line 1248
    .local v1, "imeVisible":Z
    const/4 v2, 0x1

    .local v2, "type":I
    :goto_7d
    const/16 v4, 0x200

    const/4 v5, 0x1

    if-gt v2, v4, :cond_d9

    .line 1249
    and-int v4, p1, v2

    if-nez v4, :cond_87

    .line 1250
    goto :goto_d6

    .line 1252
    :cond_87
    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v4

    .line 1253
    .local v4, "animationType":I
    iget v6, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_92

    move v6, v5

    goto :goto_93

    :cond_92
    move v6, v3

    .line 1254
    .local v6, "requestedVisible":Z
    :goto_93
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    if-ne v2, v7, :cond_9b

    move v7, v5

    goto :goto_9c

    :cond_9b
    move v7, v3

    .line 1255
    .local v7, "isIme":Z
    :goto_9c
    if-eqz v6, :cond_a7

    if-eqz v7, :cond_a2

    if-eqz v1, :cond_a7

    :cond_a2
    const/4 v8, -0x1

    if-ne v4, v8, :cond_a7

    move v8, v5

    goto :goto_a8

    :cond_a7
    move v8, v3

    .line 1257
    .local v8, "alreadyVisible":Z
    :goto_a8
    if-nez v4, :cond_ab

    goto :goto_ac

    :cond_ab
    move v5, v3

    .line 1258
    .local v5, "alreadyAnimatingShow":Z
    :goto_ac
    const/16 v9, 0x20

    if-nez v8, :cond_cd

    if-eqz v5, :cond_b3

    goto :goto_cd

    .line 1270
    :cond_b3
    if-eqz p2, :cond_c2

    const/4 v10, 0x2

    if-ne v4, v10, :cond_c2

    .line 1272
    if-eqz v7, :cond_d6

    .line 1273
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v10

    invoke-interface {v10, p3, v9}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_d6

    .line 1278
    :cond_c2
    if-eqz v7, :cond_cb

    .line 1279
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v10

    invoke-interface {v10, p3, v9}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1282
    :cond_cb
    or-int/2addr v0, v2

    goto :goto_d6

    .line 1264
    :cond_cd
    :goto_cd
    if-eqz v7, :cond_d6

    .line 1265
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v10

    invoke-interface {v10, p3, v9}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1248
    .end local v4    # "animationType":I
    .end local v5    # "alreadyAnimatingShow":Z
    .end local v6    # "requestedVisible":Z
    .end local v7    # "isIme":Z
    .end local v8    # "alreadyVisible":Z
    :cond_d6
    :goto_d6
    shl-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 1285
    .end local v2    # "type":I
    :cond_d9
    if-eqz p2, :cond_ee

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_ee

    .line 1286
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, p3, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1288
    :cond_ee
    invoke-virtual {p0, v0, v5, p2, p3}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1289
    return-void
.end method

.method public startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .registers 15
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    .line 2015
    .local p1, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 2016
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v8}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    .line 2036
    return-void
.end method

.method public updateCompatSysUiVisibility()V
    .registers 6

    .line 1862
    iget-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    if-eqz v0, :cond_16

    .line 1863
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1864
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/view/InsetsController;->mControllableTypes:I

    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    not-int v4, v4

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(III)V

    .line 1868
    :cond_16
    return-void
.end method
