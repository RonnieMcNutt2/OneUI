.class public Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SnapshotDrawerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final mNavigationBarColor:I

.field private final mNavigationBarPaint:Landroid/graphics/Paint;

.field private final mRequestedVisibleTypes:I

.field private final mScale:F

.field private final mStatusBarColor:I

.field private final mStatusBarPaint:Landroid/graphics/Paint;

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mWindowFlags:I

.field private final mWindowPrivateFlags:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmStatusBarColor(Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;)I
    .registers 1

    iget p0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    return p0
.end method

.method public constructor <init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V
    .registers 24
    .param p1, "windowFlags"    # I
    .param p2, "windowPrivateFlags"    # I
    .param p3, "appearance"    # I
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p5, "scale"    # F
    .param p6, "requestedVisibleTypes"    # I

    .line 470
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 459
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    .line 466
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 471
    move/from16 v3, p1

    iput v3, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 472
    move/from16 v12, p2

    iput v12, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    .line 473
    move/from16 v13, p5

    iput v13, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    .line 474
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v14

    .line 475
    .local v14, "context":Landroid/content/Context;
    const v4, 0x106042f

    invoke-virtual {v14, v4}, Landroid/content/Context;->getColor(I)I

    move-result v15

    .line 477
    .local v15, "semiTransparent":I
    const/high16 v5, 0x4000000

    .line 478
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v7

    const/16 v9, 0x8

    .line 480
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v10

    .line 477
    move/from16 v4, p1

    move v6, v15

    move/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v11

    iput v11, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    .line 481
    const/high16 v5, 0x8000000

    .line 483
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v7

    const/16 v9, 0x10

    .line 485
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 486
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x11101c1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_69

    const/4 v4, 0x1

    goto :goto_6a

    :cond_69
    const/4 v4, 0x0

    :goto_6a
    move v10, v4

    .line 490
    move-object/from16 v8, p4

    invoke-virtual {v8, v14}, Landroid/app/ActivityManager$TaskDescription;->getDeviceDefaultNavigationBarColor(Landroid/content/Context;)I

    move-result v16

    .line 481
    move/from16 v4, p1

    move v6, v15

    move/from16 v8, p3

    move v3, v11

    move/from16 v11, v16

    invoke-static/range {v4 .. v11}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZI)I

    move-result v4

    iput v4, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    .line 492
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    move/from16 v1, p6

    iput v1, v0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    .line 495
    return-void
.end method

.method private isNavigationBarColorViewVisible()Z
    .registers 6

    .line 517
    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 519
    .local v0, "forceBarBackground":Z
    :goto_b
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;

    .line 528
    invoke-virtual {p0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 529
    invoke-virtual {p0, p1}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    .line 530
    return-void
.end method

.method drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 544
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 545
    .local v0, "navigationBarRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 547
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    .line 548
    .local v1, "visible":Z
    if-eqz v1, :cond_2d

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_2d

    .line 549
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 550
    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 552
    :cond_2d
    return-void
.end method

.method drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;
    .param p3, "statusBarHeight"    # I

    .line 534
    if-lez p3, :cond_32

    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_32

    if-eqz p2, :cond_14

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_32

    .line 536
    :cond_14
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 537
    .local v0, "rightInset":I
    if-eqz p2, :cond_22

    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 538
    .local v1, "left":I
    :goto_23
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v5, v2

    int-to-float v6, p3

    iget-object v7, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 541
    .end local v0    # "rightInset":I
    .end local v1    # "left":I
    :cond_32
    return-void
.end method

.method getStatusBarColorViewHeight()I
    .registers 7

    .line 505
    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 507
    .local v0, "forceBarBackground":Z
    :goto_c
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 510
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 512
    :cond_24
    return v1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 501
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 502
    return-void
.end method
