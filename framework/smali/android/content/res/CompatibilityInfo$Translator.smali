.class public Landroid/content/res/CompatibilityInfo$Translator;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Translator"
.end annotation


# instance fields
.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private mContentInsetsBuffer:Landroid/graphics/Rect;

.field private mTouchableAreaBuffer:Landroid/graphics/Region;

.field private mVisibleInsetsBuffer:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/content/res/CompatibilityInfo;


# direct methods
.method constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;

    .line 360
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;FF)V

    .line 362
    return-void
.end method

.method constructor <init>(Landroid/content/res/CompatibilityInfo;FF)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "applicationScale"    # F
    .param p3, "applicationInvertedScale"    # F

    .line 354
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->this$0:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 351
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 352
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 355
    iput p2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 356
    iput p3, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 357
    return-void
.end method


# virtual methods
.method public getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 499
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 500
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 501
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 502
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;
    .registers 4
    .param p1, "touchableArea"    # Landroid/graphics/Region;

    .line 521
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 522
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 523
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->scale(F)V

    .line 524
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    return-object v0
.end method

.method public getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "visibleInsets"    # Landroid/graphics/Rect;

    .line 510
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 511
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 512
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 513
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public translateCanvas(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 377
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    .line 393
    const v0, 0x3b2b5601

    .line 394
    .local v0, "tinyOffset":F
    const v1, 0x3b2b5601

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 396
    .end local v0    # "tinyOffset":F
    :cond_11
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 397
    return-void
.end method

.method public translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 404
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->scale(F)V

    .line 405
    return-void
.end method

.method public translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V
    .registers 3
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 446
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->scale(F)V

    .line 447
    return-void
.end method

.method public translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 490
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 491
    return-void
.end method

.method public translateLengthInAppWindowToScreen(F)F
    .registers 3
    .param p1, "length"    # F

    .line 420
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 478
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 479
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_12

    .line 480
    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 481
    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 483
    :cond_12
    return-void
.end method

.method public translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 428
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 429
    return-void
.end method

.method public translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 436
    if-nez p1, :cond_3

    .line 437
    return-void

    .line 439
    :cond_3
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 440
    return-void
.end method

.method public translateRegionInWindowToScreen(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "transparentRegion"    # Landroid/graphics/Region;

    .line 369
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 370
    return-void
.end method

.method public translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V
    .registers 11
    .param p1, "controls"    # [Landroid/view/InsetsSourceControl;

    .line 454
    if-nez p1, :cond_3

    .line 455
    return-void

    .line 457
    :cond_3
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 458
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    .line 459
    return-void

    .line 461
    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_33

    aget-object v3, p1, v2

    .line 462
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-nez v3, :cond_15

    .line 463
    goto :goto_30

    .line 465
    :cond_15
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    .line 466
    .local v4, "hint":Landroid/graphics/Insets;
    iget v5, v4, Landroid/graphics/Insets;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/Insets;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/Insets;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/Insets;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/InsetsSourceControl;->setInsetsHint(IIII)V

    .line 461
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    .end local v4    # "hint":Landroid/graphics/Insets;
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 472
    :cond_33
    return-void
.end method

.method public translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 413
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 414
    return-void
.end method
