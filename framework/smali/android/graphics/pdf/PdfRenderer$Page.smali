.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .registers 8
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "index"    # I

    .line 312
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 313
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmTempPoint(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v1

    .line 314
    .local v1, "size":Landroid/graphics/Point;
    sget-object v2, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 315
    :try_start_12
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmNativeDocument(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v3

    invoke-static {v3, v4, p2, v1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$smnativeOpenPageAndGetSize(JILandroid/graphics/Point;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 316
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_2d

    .line 317
    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    .line 318
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    .line 319
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    .line 320
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 321
    return-void

    .line 316
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .registers 7

    .line 474
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 475
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_b
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$smnativeClosePage(J)V

    .line 477
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_14

    .line 478
    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    goto :goto_17

    .line 477
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1

    .line 481
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 482
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fputmCurrentPage(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)V

    .line 483
    return-void
.end method

.method private throwIfClosed()V
    .registers 5

    .line 486
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 489
    return-void

    .line 487
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 456
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    .line 457
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    .line 458
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 463
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 464
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 467
    :cond_7
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 469
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 470
    nop

    .line 471
    return-void

    .line 469
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 470
    throw v0
.end method

.method public getHeight()I
    .registers 2

    .line 347
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 329
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 338
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .registers 30
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "renderMode"    # I

    .line 390
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v15, p4

    iget-wide v3, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_f3

    .line 394
    const-string v0, "bitmap null"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Bitmap;

    .line 396
    .end local p1    # "destination":Landroid/graphics/Bitmap;
    .local v16, "destination":Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_eb

    .line 400
    if-eqz v2, :cond_45

    .line 401
    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_3d

    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_3d

    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 402
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_3d

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 403
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_3d

    goto :goto_45

    .line 404
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "destBounds not in destination"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_45
    :goto_45
    if-eqz p3, :cond_57

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_57

    .line 409
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "transform not affine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_57
    :goto_57
    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v15, v3, :cond_66

    if-ne v15, v0, :cond_5e

    goto :goto_66

    .line 413
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported render mode"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_66
    :goto_66
    if-ne v15, v3, :cond_73

    if-eq v15, v0, :cond_6b

    goto :goto_73

    .line 417
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only single render mode supported"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_73
    :goto_73
    const/4 v0, 0x0

    if-eqz v2, :cond_79

    iget v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_7a

    :cond_79
    move v3, v0

    :goto_7a
    move v13, v3

    .line 421
    .local v13, "contentLeft":I
    if-eqz v2, :cond_7f

    iget v0, v2, Landroid/graphics/Rect;->top:I

    :cond_7f
    move v14, v0

    .line 422
    .local v14, "contentTop":I
    if-eqz v2, :cond_85

    iget v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_89

    .line 423
    :cond_85
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_89
    move/from16 v17, v0

    .line 424
    .local v17, "contentRight":I
    if-eqz v2, :cond_90

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_94

    .line 425
    :cond_90
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_94
    move/from16 v18, v0

    .line 428
    .local v18, "contentBottom":I
    if-nez p3, :cond_ba

    .line 429
    sub-int v0, v17, v13

    .line 430
    .local v0, "clipWidth":I
    sub-int v3, v18, v14

    .line 432
    .local v3, "clipHeight":I
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 433
    .end local p3    # "transform":Landroid/graphics/Matrix;
    .local v4, "transform":Landroid/graphics/Matrix;
    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v3

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 433
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 435
    int-to-float v5, v13

    int-to-float v6, v14

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v19, v4

    goto :goto_bc

    .line 428
    .end local v0    # "clipWidth":I
    .end local v3    # "clipHeight":I
    .end local v4    # "transform":Landroid/graphics/Matrix;
    .restart local p3    # "transform":Landroid/graphics/Matrix;
    :cond_ba
    move-object/from16 v19, p3

    .line 440
    .end local p3    # "transform":Landroid/graphics/Matrix;
    .local v19, "transform":Landroid/graphics/Matrix;
    :goto_bc
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v20

    .line 442
    .local v20, "transformPtr":J
    sget-object v22, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v22

    .line 443
    :try_start_c3
    iget-object v0, v1, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmNativeDocument(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_e2

    move v9, v13

    move v10, v14

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v23, v13

    move/from16 v24, v14

    .end local v13    # "contentLeft":I
    .end local v14    # "contentTop":I
    .local v23, "contentLeft":I
    .local v24, "contentTop":I
    move-wide/from16 v13, v20

    move/from16 v15, p4

    :try_start_dd
    invoke-static/range {v3 .. v15}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$smnativeRenderPage(JJJIIIIJI)V

    .line 446
    monitor-exit v22

    .line 447
    return-void

    .line 446
    .end local v23    # "contentLeft":I
    .end local v24    # "contentTop":I
    .restart local v13    # "contentLeft":I
    .restart local v14    # "contentTop":I
    :catchall_e2
    move-exception v0

    move/from16 v23, v13

    move/from16 v24, v14

    .end local v13    # "contentLeft":I
    .end local v14    # "contentTop":I
    .restart local v23    # "contentLeft":I
    .restart local v24    # "contentTop":I
    :goto_e7
    monitor-exit v22
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_e9

    throw v0

    :catchall_e9
    move-exception v0

    goto :goto_e7

    .line 397
    .end local v17    # "contentRight":I
    .end local v18    # "contentBottom":I
    .end local v19    # "transform":Landroid/graphics/Matrix;
    .end local v20    # "transformPtr":J
    .end local v23    # "contentLeft":I
    .end local v24    # "contentTop":I
    .restart local p3    # "transform":Landroid/graphics/Matrix;
    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported pixel format"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    .end local v16    # "destination":Landroid/graphics/Bitmap;
    .restart local p1    # "destination":Landroid/graphics/Bitmap;
    :cond_f3
    move-object/from16 v3, p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
