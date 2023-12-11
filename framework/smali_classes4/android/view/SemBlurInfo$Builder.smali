.class public Landroid/view/SemBlurInfo$Builder;
.super Ljava/lang/Object;
.source "SemBlurInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SemBlurInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final CURVEGRAPH_CURVE_MAX_VALUE:F = 100.0f

.field private static final CURVEGRAPH_CURVE_MIN_VALUE:F = -100.0f

.field private static final CURVEGRAPH_MAX_XY_VALUE:F = 255.0f

.field private static final CURVEGRAPH_MIN_XY_VALUE:F = 0.0f

.field private static final FLAG_FINISH_BLUR_INFO:I = 0x100

.field private static final FLAG_SET_BACKGROUND_BLUR_COLOR:I = 0x8

.field private static final FLAG_SET_BACKGROUND_BLUR_CORNER_RADIUS:I = 0x10

.field private static final FLAG_SET_BACKGROUND_CANVAS_SCALE:I = 0x20

.field private static final FLAG_SET_BLUR_BITMAP:I = 0x2

.field private static final FLAG_SET_BLUR_MODE:I = 0x1

.field private static final FLAG_SET_BLUR_RADIUS:I = 0x4

.field public static final FLAG_SET_COLOR_CURVE:I = 0x80

.field public static final FLAG_SET_PRESET:I = 0x40

.field private static final SATURATION_MAX_VALUE:F = 1.0f

.field private static final SATURATION_MIN_VALUE:F = -1.0f


# instance fields
.field private mBackgroundBlurColor:I

.field private mBlurMode:I

.field private mBlurRadius:I

.field private mBuilderFieldsSet:J

.field private mCanvasDownScale:I

.field private mCapturedBitmap:Landroid/graphics/Bitmap;

.field private mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field private mCornerRadiusBL:F

.field private mCornerRadiusBR:F

.field private mCornerRadiusTL:F

.field private mCornerRadiusTR:F

.field private mPreset:I


# direct methods
.method public constructor <init>(I)V
    .registers 7
    .param p1, "blurMode"    # I

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    .line 386
    const/16 v1, 0x80

    iput v1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    .line 387
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 390
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 393
    const/16 v4, 0x8

    iput v4, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    .line 395
    iput v0, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    .line 397
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    .line 398
    iput v4, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    .line 399
    iput v4, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    .line 400
    iput v4, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    .line 401
    iput-object v3, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 402
    iput v0, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    .line 420
    const-wide/16 v3, 0x1

    or-long v0, v1, v3

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 421
    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    .line 422
    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    .line 790
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 795
    return-void

    .line 791
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkValueRange(FFF)F
    .registers 6
    .param p1, "value"    # F
    .param p2, "max"    # F
    .param p3, "min"    # F

    .line 625
    move v0, p1

    .line 626
    .local v0, "rtValue":F
    cmpl-float v1, p1, p2

    if-lez v1, :cond_7

    .line 627
    move v0, p2

    goto :goto_c

    .line 628
    :cond_7
    cmpg-float v1, p1, p3

    if-gez v1, :cond_c

    .line 629
    move v0, p3

    .line 631
    :cond_c
    :goto_c
    return v0
.end method

.method public static getBlurPresetAttrs(I)[F
    .registers 2
    .param p0, "preset"    # I

    .line 658
    packed-switch p0, :pswitch_data_18

    .line 677
    const/4 v0, 0x0

    return-object v0

    .line 675
    :pswitch_5
    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK:[F

    return-object v0

    .line 672
    :pswitch_8
    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_DARK:[F

    return-object v0

    .line 669
    :pswitch_b
    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK:[F

    return-object v0

    .line 666
    :pswitch_e
    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT:[F

    return-object v0

    .line 663
    :pswitch_11
    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT:[F

    return-object v0

    .line 660
    :pswitch_14
    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT:[F

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0xb
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private hidden_build()Landroid/view/SemBlurInfo;
    .registers 2

    .line 785
    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    return-object v0
.end method

.method private hidden_setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;
    .registers 3
    .param p1, "color"    # I

    .line 486
    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private hidden_setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;
    .registers 3
    .param p1, "cornerRadius"    # F

    .line 519
    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private hidden_setRadius(I)Landroid/view/SemBlurInfo$Builder;
    .registers 3
    .param p1, "blurRadius"    # I

    .line 459
    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Landroid/view/SemBlurInfo;
    .registers 15

    .line 693
    invoke-direct {p0}, Landroid/view/SemBlurInfo$Builder;->checkNotUsed()V

    .line 694
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 696
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_fd

    .line 701
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    const-wide/16 v6, 0x40

    if-eqz v2, :cond_2b

    and-long v2, v0, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    goto :goto_2b

    .line 703
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, BlurPreset and BlurColorCurve can not be used together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_2b
    :goto_2b
    and-long v2, v0, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v2, :cond_36

    goto :goto_51

    .line 709
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create SemBlurInfo, you set the wrong preset value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_51
    :goto_51
    iget v2, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    const-wide/16 v6, 0x20

    const-wide/16 v8, 0x2

    if-nez v2, :cond_76

    .line 714
    and-long v2, v0, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_6e

    .line 719
    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_66

    goto/16 :goto_e2

    .line 720
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW, can not set canvasDownScale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW, can not set capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_76
    const/4 v3, 0x1

    const-wide/16 v10, 0x10

    const-wide/16 v12, 0x8

    if-ne v2, v3, :cond_b5

    .line 725
    and-long v2, v0, v8

    cmp-long v2, v2, v4

    if-eqz v2, :cond_ad

    .line 730
    and-long v2, v0, v12

    cmp-long v2, v2, v4

    if-nez v2, :cond_a5

    .line 735
    and-long v2, v0, v10

    cmp-long v2, v2, v4

    if-nez v2, :cond_9d

    .line 740
    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_95

    goto :goto_e2

    .line 741
    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set canvasDownScale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_9d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set backgroundCornerRadius"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_a5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set backgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_ad
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, must set capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_b5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_e2

    .line 746
    and-long v2, v0, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_da

    .line 751
    and-long v2, v0, v12

    cmp-long v2, v2, v4

    if-nez v2, :cond_d2

    .line 756
    and-long/2addr v0, v10

    cmp-long v0, v0, v4

    if-nez v0, :cond_ca

    goto :goto_e2

    .line 757
    :cond_ca
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not set backgroundCornerRadius"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not set backgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_da
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_e2
    :goto_e2
    new-instance v0, Landroid/view/SemBlurInfo;

    iget v3, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    iget-object v4, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    iget v6, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    iget v7, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    iget v8, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    iget v9, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    iget v10, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    iget v11, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    iget-object v12, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroid/view/SemBlurInfo;-><init>(ILandroid/graphics/Bitmap;IIFFFFILandroid/view/SemBlurInfo$ColorCurve;)V

    return-object v0

    .line 697
    :cond_fd
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;
    .registers 6
    .param p1, "color"    # I

    .line 473
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 474
    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    .line 475
    return-object p0
.end method

.method public setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;
    .registers 6
    .param p1, "cornerRadius"    # F

    .line 502
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 503
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2b

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cornerRadius = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is negative, set to 0.0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBlurInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 p1, 0x0

    .line 507
    :cond_2b
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    .line 508
    return-object p0
.end method

.method public setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;
    .registers 9
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomLeft"    # F
    .param p4, "bottomRight"    # F

    .line 537
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 538
    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    .line 539
    iput p2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    .line 540
    iput p3, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    .line 541
    iput p4, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    .line 542
    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;
    .registers 6
    .param p1, "capturedBitmap"    # Landroid/graphics/Bitmap;

    .line 432
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 433
    iput-object p1, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 434
    return-object p0
.end method

.method public setCanvasScale(I)Landroid/view/SemBlurInfo$Builder;
    .registers 6
    .param p1, "scale"    # I

    .line 554
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 555
    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    .line 556
    return-object p0
.end method

.method public setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;
    .registers 16
    .param p1, "saturation"    # F
    .param p2, "curve"    # F
    .param p3, "minX"    # F
    .param p4, "maxX"    # F
    .param p5, "minY"    # F
    .param p6, "maxY"    # F

    .line 613
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 614
    new-instance v0, Landroid/view/SemBlurInfo$ColorCurve;

    .line 615
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v3

    .line 616
    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3d380000    # -100.0f

    invoke-direct {p0, p2, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v4

    .line 617
    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v5

    .line 618
    invoke-direct {p0, p4, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v6

    .line 619
    invoke-direct {p0, p5, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v7

    .line 620
    invoke-direct {p0, p6, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    iput-object v0, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 621
    return-object p0
.end method

.method public setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;
    .registers 11
    .param p1, "preset"    # I

    .line 643
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 644
    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    .line 645
    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object v0

    .line 646
    .local v0, "presetAttrs":[F
    if-eqz v0, :cond_30

    .line 647
    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 648
    new-instance v1, Landroid/view/SemBlurInfo$ColorCurve;

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v2, 0x2

    aget v4, v0, v2

    const/4 v2, 0x3

    aget v5, v0, v2

    const/4 v2, 0x4

    aget v6, v0, v2

    const/4 v2, 0x5

    aget v7, v0, v2

    const/4 v2, 0x6

    aget v8, v0, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    iput-object v1, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 651
    :cond_30
    return-object p0
.end method

.method public setRadius(I)Landroid/view/SemBlurInfo$Builder;
    .registers 6
    .param p1, "blurRadius"    # I

    .line 446
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    .line 447
    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    .line 448
    return-object p0
.end method
