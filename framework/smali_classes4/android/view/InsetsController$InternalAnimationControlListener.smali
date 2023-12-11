.class public Landroid/view/InsetsController$InternalAnimationControlListener;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalAnimationControlListener"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mBehavior:I

.field private mController:Landroid/view/WindowInsetsAnimationController;

.field private final mDisable:Z

.field private final mDurationMs:J

.field private final mFloatingImeBottomInset:I

.field private mFullscreenMode:Z

.field private final mHasAnimationCallbacks:Z

.field private final mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private final mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final mRequestedTypes:I

.field private final mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mShow:Z


# direct methods
.method public static synthetic $r8$lambda$3jPELo0dbv1d6POSeh0DEQWuabg(Landroid/view/InsetsController$InternalAnimationControlListener;F)F
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$getInsetsInterpolator$1(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nxKZYMYUoWBfmFTXx4qnFJp58Lo(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHasAnimationCallbacks(Landroid/view/InsetsController$InternalAnimationControlListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShow(Landroid/view/InsetsController$InternalAnimationControlListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    return p0
.end method

.method public constructor <init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;)V
    .registers 11
    .param p1, "show"    # Z
    .param p2, "hasAnimationCallbacks"    # Z
    .param p3, "requestedTypes"    # I
    .param p4, "behavior"    # I
    .param p5, "disable"    # Z
    .param p6, "floatingImeBottomInset"    # I
    .param p7, "loggingListener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p8, "jankContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    .line 424
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    .line 438
    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    .line 439
    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    .line 440
    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 441
    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    .line 442
    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->calculateDurationMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    .line 443
    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    .line 444
    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    .line 445
    iput-object p7, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 446
    iput-object p8, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 447
    return-void
.end method

.method public constructor <init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;Z)V
    .registers 12
    .param p1, "show"    # Z
    .param p2, "hasAnimationCallbacks"    # Z
    .param p3, "requestedTypes"    # I
    .param p4, "behavior"    # I
    .param p5, "disable"    # Z
    .param p6, "floatingImeBottomInset"    # I
    .param p7, "loggingListener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p8, "jankContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;
    .param p9, "fullscreenMode"    # Z

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    .line 424
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    .line 454
    iput-boolean p9, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    .line 456
    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    .line 457
    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    .line 458
    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 459
    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    .line 460
    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->calculateDurationMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    .line 461
    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    .line 462
    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    .line 463
    iput-object p7, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 464
    iput-object p8, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 465
    return-void
.end method

.method private calculateDurationMs()J
    .registers 3

    .line 637
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 639
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    if-nez v0, :cond_19

    .line 640
    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getSepAnimationDurationIme()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 643
    :cond_19
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_20

    .line 644
    const-wide/16 v0, 0x11d

    return-wide v0

    .line 646
    :cond_20
    const-wide/16 v0, 0xc8

    return-wide v0

    .line 649
    :cond_23
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_INSET_ANIM:Z

    if-eqz v0, :cond_2d

    goto :goto_37

    .line 653
    :cond_2d
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_34

    const-wide/16 v0, 0x1f4

    goto :goto_36

    :cond_34
    const-wide/16 v0, 0x5dc

    :goto_36
    return-wide v0

    .line 651
    :cond_37
    :goto_37
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_3e

    const-wide/16 v0, 0x113

    goto :goto_40

    :cond_3e
    const-wide/16 v0, 0x154

    :goto_40
    return-wide v0
.end method

.method private getSepAnimationDurationIme()I
    .registers 3

    .line 660
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    const/16 v1, 0x118

    if-eqz v0, :cond_11

    .line 661
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 662
    const/16 v1, 0x15e

    goto :goto_10

    .line 663
    :cond_f
    nop

    .line 661
    :goto_10
    return v1

    .line 665
    :cond_11
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 666
    const/16 v1, 0x12c

    goto :goto_1b

    .line 667
    :cond_1a
    nop

    .line 665
    :goto_1b
    return v1
.end method

.method static synthetic lambda$getAlphaInterpolator$2(F)F
    .registers 2
    .param p0, "input"    # F

    .line 599
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic lambda$getAlphaInterpolator$3(F)F
    .registers 2
    .param p0, "input"    # F

    .line 603
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic lambda$getAlphaInterpolator$4(F)F
    .registers 3
    .param p0, "input"    # F

    .line 607
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAlphaInterpolator$5(F)F
    .registers 2
    .param p0, "input"    # F

    .line 613
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private synthetic lambda$getInsetsInterpolator$1(F)F
    .registers 3
    .param p1, "input"    # F

    .line 590
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private synthetic lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .registers 12
    .param p1, "insetsInterpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p3, "start"    # Landroid/graphics/Insets;
    .param p4, "end"    # Landroid/graphics/Insets;
    .param p5, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animation"    # Landroid/animation/ValueAnimator;

    .line 508
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 509
    .local v0, "rawFraction":F
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_a

    .line 510
    move v1, v0

    goto :goto_d

    .line 511
    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    :goto_d
    nop

    .line 512
    .local v1, "alphaFraction":F
    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 513
    .local v2, "insetsFraction":F
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v3

    .line 514
    invoke-interface {v3, v2, p3, p4}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Insets;

    .line 515
    invoke-interface {p5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 513
    invoke-interface {p2, v3, v4, v0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 519
    return-void
.end method


# virtual methods
.method getAlphaInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 596
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_32

    .line 598
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    if-nez v0, :cond_19

    .line 599
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    .line 602
    :cond_19
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_23

    .line 603
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    .line 604
    :cond_23
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_2d

    .line 607
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;-><init>()V

    return-object v0

    .line 609
    :cond_2d
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 612
    :cond_32
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 613
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda5;-><init>()V

    return-object v0

    .line 615
    :cond_3d
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_46

    .line 616
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 618
    :cond_46
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()J
    .registers 3

    .line 633
    iget-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    return-wide v0
.end method

.method protected getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 572
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3a

    .line 574
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 575
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSEP_IME_SHOW_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_22

    :cond_1e
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSEP_IME_HIDE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_22
    return-object v0

    .line 578
    :cond_23
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_2c

    .line 579
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 580
    :cond_2c
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_35

    .line 581
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 583
    :cond_35
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 586
    :cond_3a
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_44

    .line 587
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 590
    :cond_44
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    return-object v0
.end method

.method protected onAnimationFinish()V
    .registers 3

    .line 625
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 627
    return-void
.end method

.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 561
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 562
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 566
    :cond_7
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_e

    .line 567
    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 569
    :cond_e
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 553
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_7

    .line 554
    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    .line 556
    :cond_7
    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 15
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I

    .line 470
    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    .line 472
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_9

    .line 473
    invoke-interface {v0, p1, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 476
    :cond_9
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    if-eqz v0, :cond_11

    .line 477
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 478
    return-void

    .line 480
    :cond_11
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_a4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    .line 481
    iget-wide v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_31

    .line 488
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 491
    :cond_31
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 495
    .local v0, "hiddenInsets":Landroid/graphics/Insets;
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 496
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_53

    .line 498
    :cond_52
    move-object v1, v0

    :goto_53
    move-object v0, v1

    .line 499
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_5a

    .line 500
    move-object v6, v0

    goto :goto_5f

    .line 501
    :cond_5a
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v6, v1

    :goto_5f
    nop

    .line 502
    .local v6, "start":Landroid/graphics/Insets;
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_6a

    .line 503
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v7, v1

    goto :goto_6b

    .line 504
    :cond_6a
    move-object v7, v0

    :goto_6b
    nop

    .line 505
    .local v7, "end":Landroid/graphics/Insets;
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 506
    .local v1, "insetsInterpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 507
    .local v9, "alphaInterpolator":Landroid/view/animation/Interpolator;
    iget-object v10, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 520
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener$2;

    invoke-direct {v3, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$2;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    iget-boolean v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-nez v2, :cond_9e

    .line 544
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimationHandler;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    .line 546
    :cond_9e
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 547
    return-void

    :array_a4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
