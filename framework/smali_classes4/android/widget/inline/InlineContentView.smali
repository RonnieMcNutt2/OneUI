.class public Landroid/widget/inline/InlineContentView;
.super Landroid/view/ViewGroup;
.source "InlineContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;,
        Landroid/widget/inline/InlineContentView$SurfaceControlCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InlineContentView"


# instance fields
.field private final mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;

.field private mParentPosition:[I

.field private mParentScale:Landroid/graphics/PointF;

.field private mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

.field private mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

.field private final mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic $r8$lambda$5_cXzs2SsjuYAovQ5yAKD6yWMCg(Landroid/widget/inline/InlineContentView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/inline/InlineContentView;->lambda$onAttachedToWindow$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOnReparentListener(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParentScale(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceControlCallback(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;
    .registers 1

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceView(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;
    .registers 1

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmParentSurfaceOwnerView(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/inline/InlineContentView;->mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomputeParentPositionAndScale(Landroid/widget/inline/InlineContentView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/inline/InlineContentView;->computeParentPositionAndScale()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 205
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    new-instance v0, Landroid/widget/inline/InlineContentView$1;

    invoke-direct {v0, p0}, Landroid/widget/inline/InlineContentView$1;-><init>(Landroid/widget/inline/InlineContentView;)V

    iput-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 136
    new-instance v0, Landroid/widget/inline/InlineContentView$2;

    invoke-direct {v0, p0}, Landroid/widget/inline/InlineContentView$2;-><init>(Landroid/widget/inline/InlineContentView;)V

    iput-object v0, p0, Landroid/widget/inline/InlineContentView;->mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;

    .line 153
    new-instance v0, Landroid/widget/inline/InlineContentView$3;

    invoke-direct {v0, p0}, Landroid/widget/inline/InlineContentView$3;-><init>(Landroid/widget/inline/InlineContentView;)V

    iput-object v0, p0, Landroid/widget/inline/InlineContentView;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 232
    new-instance v0, Landroid/widget/inline/InlineContentView$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/inline/InlineContentView$4;-><init>(Landroid/widget/inline/InlineContentView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 257
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 258
    invoke-virtual {p0, v0}, Landroid/widget/inline/InlineContentView;->addView(Landroid/view/View;)V

    .line 259
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/inline/InlineContentView;->setImportantForAccessibility(I)V

    .line 260
    return-void
.end method

.method private computeParentPositionAndScale()V
    .registers 11

    .line 350
    const/4 v0, 0x0

    .line 354
    .local v0, "contentPositionOrScaleChanged":Z
    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 355
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    goto :goto_e

    :cond_d
    move-object v1, v2

    .line 357
    .local v1, "parentSurfaceOwnerView":Landroid/view/SurfaceView;
    :goto_e
    if-eqz v1, :cond_9c

    .line 358
    iget-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    if-nez v2, :cond_19

    .line 359
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    .line 361
    :cond_19
    iget-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    .line 362
    .local v4, "oldParentPositionX":I
    const/4 v5, 0x1

    aget v6, v2, v5

    .line 363
    .local v6, "oldParentPositionY":I
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    .line 364
    iget-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    aget v3, v2, v3

    if-ne v4, v3, :cond_2e

    aget v2, v2, v5

    if-eq v6, v2, :cond_2f

    .line 366
    :cond_2e
    const/4 v0, 0x1

    .line 369
    :cond_2f
    iget-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    if-nez v2, :cond_3a

    .line 370
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    .line 373
    :cond_3a
    nop

    .line 374
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getSurfaceRenderPosition()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 375
    .local v2, "lastParentSurfaceWidth":F
    iget-object v3, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 376
    .local v3, "oldParentScaleX":F
    const/4 v5, 0x0

    cmpl-float v7, v2, v5

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v7, :cond_5b

    .line 377
    iget-object v7, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    .line 378
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v2, v9

    iput v9, v7, Landroid/graphics/PointF;->x:F

    goto :goto_5f

    .line 380
    :cond_5b
    iget-object v7, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 382
    :goto_5f
    if-nez v0, :cond_6c

    iget-object v7, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 383
    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_6c

    .line 384
    const/4 v0, 0x1

    .line 387
    :cond_6c
    nop

    .line 388
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getSurfaceRenderPosition()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 389
    .local v7, "lastParentSurfaceHeight":F
    iget-object v9, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 390
    .local v9, "oldParentScaleY":F
    cmpl-float v5, v7, v5

    if-lez v5, :cond_8a

    .line 391
    iget-object v5, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    .line 392
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    iput v8, v5, Landroid/graphics/PointF;->y:F

    goto :goto_8e

    .line 394
    :cond_8a
    iget-object v5, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iput v8, v5, Landroid/graphics/PointF;->y:F

    .line 396
    :goto_8e
    if-nez v0, :cond_a5

    iget-object v5, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 397
    invoke-static {v9, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_a5

    .line 398
    const/4 v0, 0x1

    goto :goto_a5

    .line 400
    .end local v2    # "lastParentSurfaceWidth":F
    .end local v3    # "oldParentScaleX":F
    .end local v4    # "oldParentPositionX":I
    .end local v6    # "oldParentPositionY":I
    .end local v7    # "lastParentSurfaceHeight":F
    .end local v9    # "oldParentScaleY":F
    :cond_9c
    iget-object v3, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    if-nez v3, :cond_a6

    iget-object v3, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    if-eqz v3, :cond_a5

    goto :goto_a6

    :cond_a5
    :goto_a5
    goto :goto_ab

    .line 401
    :cond_a6
    :goto_a6
    const/4 v0, 0x1

    .line 402
    iput-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    .line 403
    iput-object v2, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    .line 406
    :goto_ab
    if-eqz v0, :cond_b2

    .line 407
    iget-object v2, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->requestUpdateSurfacePositionAndScale()V

    .line 409
    :cond_b2
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 3
    .param p1, "sp"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 281
    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 284
    :cond_b
    return-void
.end method


# virtual methods
.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public isZOrderedOnTop()Z
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isZOrderedOnTop()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 276
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 277
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    if-eqz v0, :cond_f

    .line 278
    new-instance v1, Landroid/widget/inline/InlineContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/inline/InlineContentView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/inline/InlineContentView;)V

    invoke-interface {v0, v1}, Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;->getSurfacePackage(Ljava/util/function/Consumer;)V

    .line 287
    :cond_f
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 289
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 294
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 295
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    if-eqz v0, :cond_a

    .line 296
    invoke-interface {v0}, Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;->onSurfacePackageReleased()V

    .line 299
    :cond_a
    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 300
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 301
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 305
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 306
    return-void
.end method

.method public setChildSurfacePackageUpdater(Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;)V
    .registers 2
    .param p1, "surfacePackageUpdater"    # Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    .line 270
    iput-object p1, p0, Landroid/widget/inline/InlineContentView;->mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    .line 271
    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 221
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    .line 222
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 223
    return-void
.end method

.method public setSurfaceControlCallback(Landroid/widget/inline/InlineContentView$SurfaceControlCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    .line 315
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    if-eqz v0, :cond_f

    .line 316
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 318
    :cond_f
    iput-object p1, p0, Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    .line 319
    if-eqz p1, :cond_1e

    .line 320
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 322
    :cond_1e
    return-void
.end method

.method public setZOrderedOnTop(Z)Z
    .registers 4
    .param p1, "onTop"    # Z

    .line 345
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    move-result v0

    return v0
.end method
