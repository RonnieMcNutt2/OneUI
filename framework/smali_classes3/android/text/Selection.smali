.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$MemoryTextWatcher;,
        Landroid/text/Selection$PositionIterator;,
        Landroid/text/Selection$MEMORY;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$END;
    }
.end annotation


# static fields
.field private static final PARAGRAPH_SEPARATOR:C = '\n'

.field public static final SELECTION_END:Ljava/lang/Object;

.field private static final SELECTION_MEMORY:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSELECTION_MEMORY()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 639
    new-instance v0, Landroid/text/Selection$MEMORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/Selection$MEMORY;-><init>(Landroid/text/Selection$MEMORY-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    .line 645
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$START-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 646
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$END-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .registers 9
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "direction"    # I
    .param p2, "off1"    # I
    .param p3, "off2"    # I

    .line 595
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 596
    .local v0, "line1":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 598
    .local v1, "line2":I
    if-ne v0, v1, :cond_20

    .line 601
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 602
    .local v2, "h1":F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 604
    .local v3, "h2":F
    if-gez p1, :cond_1a

    .line 607
    cmpg-float v4, v2, v3

    if-gez v4, :cond_19

    .line 608
    return p2

    .line 610
    :cond_19
    return p3

    .line 614
    :cond_1a
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1f

    .line 615
    return p2

    .line 617
    :cond_1f
    return p3

    .line 626
    .end local v2    # "h1":F
    .end local v3    # "h2":F
    :cond_20
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 627
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    .line 629
    .local v3, "textdir":I
    if-ne v3, p1, :cond_2f

    .line 630
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .line 632
    :cond_2f
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 11
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 468
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 469
    .local v6, "end":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 471
    .local v7, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_1a

    .line 472
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 473
    return v8

    .line 474
    :cond_1a
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-eq v6, v0, :cond_29

    .line 475
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    .line 476
    return v8

    .line 479
    :cond_29
    return v8
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 487
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 488
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 490
    .local v1, "to":I
    const/4 v2, 0x1

    if-eq v1, v0, :cond_f

    .line 491
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 492
    return v2

    .line 495
    :cond_f
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 503
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 504
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 506
    .local v1, "to":I
    const/4 v2, 0x1

    if-eq v1, v0, :cond_f

    .line 507
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 508
    return v2

    .line 511
    :cond_f
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .line 168
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    .line 169
    return-void
.end method

.method private static extendSelection(Landroid/text/Spannable;II)V
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I
    .param p2, "memory"    # I

    .line 175
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 176
    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 178
    :cond_d
    invoke-static {p0, p2}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    .line 179
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 515
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 516
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 517
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToParagraphEnd(Landroid/text/Spannable;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;

    .line 432
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 433
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    invoke-static {p0, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 434
    .local v1, "to":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 435
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 437
    :cond_13
    if-eq v1, v0, :cond_1a

    .line 438
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 439
    const/4 v2, 0x1

    return v2

    .line 441
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public static extendToParagraphStart(Landroid/text/Spannable;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;

    .line 413
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 414
    .local v0, "end":I
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xa

    invoke-static {p0, v2, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 415
    .local v1, "to":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 416
    const/4 v1, 0x0

    .line 418
    :cond_10
    if-eq v1, v0, :cond_17

    .line 419
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 420
    const/4 v2, 0x1

    return v2

    .line 422
    :cond_17
    const/4 v2, 0x0

    return v2
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 521
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v1

    .line 522
    .local v1, "where":I
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 523
    return v0
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 11
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 449
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 450
    .local v6, "end":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 452
    .local v7, "line":I
    const/4 v8, 0x1

    if-lez v7, :cond_15

    .line 453
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 454
    return v8

    .line 455
    :cond_15
    if-eqz v6, :cond_1c

    .line 456
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 457
    return v8

    .line 460
    :cond_1c
    return v8
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .registers 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "dir"    # I

    .line 577
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 578
    .local v0, "pt":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 579
    .local v1, "line":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 581
    .local v2, "pdir":I
    mul-int v3, p2, v2

    if-gez v3, :cond_15

    .line 582
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    return v3

    .line 584
    :cond_15
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 586
    .local v3, "end":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_22

    .line 587
    return v3

    .line 589
    :cond_22
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 53
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_e

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 56
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private static getSelectionMemory(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 60
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_e

    .line 61
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 63
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 42
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_e

    .line 43
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 45
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 12
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 271
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 272
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 274
    .local v7, "end":I
    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eq v0, v7, :cond_21

    .line 275
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 276
    .local v2, "min":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 278
    .local v3, "max":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 280
    if-nez v2, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v3, v4, :cond_20

    .line 281
    return v1

    .line 284
    :cond_20
    return v8

    .line 286
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_21
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 288
    .local v9, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v8

    if-ge v9, v2, :cond_36

    .line 289
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 291
    return v8

    .line 292
    :cond_36
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-eq v7, v2, :cond_44

    .line 293
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 294
    return v8

    .line 298
    .end local v9    # "line":I
    :cond_44
    return v1
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 307
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 308
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 310
    .local v1, "end":I
    const/4 v2, 0x1

    if-eq v0, v1, :cond_14

    .line 311
    const/4 v3, -0x1

    invoke-static {p1, v3, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 312
    return v2

    .line 314
    :cond_14
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v3

    .line 316
    .local v3, "to":I
    if-eq v3, v1, :cond_1e

    .line 317
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 318
    return v2

    .line 322
    .end local v3    # "to":I
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 332
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 333
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 335
    .local v1, "end":I
    const/4 v2, 0x1

    if-eq v0, v1, :cond_13

    .line 336
    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 337
    return v2

    .line 339
    :cond_13
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v3

    .line 341
    .local v3, "to":I
    if-eq v3, v1, :cond_1d

    .line 342
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 343
    return v2

    .line 347
    .end local v3    # "to":I
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .line 565
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 566
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 567
    if-eqz p2, :cond_11

    .line 568
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_14

    .line 570
    :cond_11
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 573
    :cond_14
    :goto_14
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 527
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 528
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 529
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToParagraphEnd(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 387
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 388
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 390
    .local v1, "end":I
    const/4 v2, 0x1

    if-eq v0, v1, :cond_13

    .line 391
    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 392
    return v2

    .line 394
    :cond_13
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0xa

    invoke-static {p0, v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    .line 395
    .local v3, "to":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    .line 396
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 398
    :cond_22
    if-eq v3, v1, :cond_28

    .line 399
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 400
    return v2

    .line 403
    .end local v3    # "to":I
    :cond_28
    const/4 v2, 0x0

    return v2
.end method

.method public static moveToParagraphStart(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 360
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 361
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 363
    .local v1, "end":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_14

    .line 364
    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v2

    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 365
    return v3

    .line 367
    :cond_14
    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0xa

    invoke-static {p0, v5, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    .line 368
    .local v4, "to":I
    if-ne v4, v2, :cond_1f

    .line 369
    const/4 v4, 0x0

    .line 371
    :cond_1f
    if-eq v4, v1, :cond_25

    .line 372
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 373
    return v3

    .line 376
    .end local v4    # "to":I
    :cond_25
    const/4 v2, 0x0

    return v2
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .line 550
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 551
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 552
    if-eqz p2, :cond_11

    .line 553
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_14

    .line 555
    :cond_11
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 558
    :cond_14
    :goto_14
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 533
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v1

    .line 534
    .local v1, "where":I
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 535
    return v0
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 12
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 200
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 201
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 203
    .local v7, "end":I
    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eq v0, v7, :cond_21

    .line 204
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 205
    .local v2, "min":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 207
    .local v3, "max":I
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 209
    if-nez v2, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v3, v4, :cond_20

    .line 210
    return v1

    .line 213
    :cond_20
    return v8

    .line 215
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_21
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 217
    .local v9, "line":I
    if-lez v9, :cond_31

    .line 218
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 220
    return v8

    .line 221
    :cond_31
    if-eqz v7, :cond_37

    .line 222
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 223
    return v8

    .line 227
    .end local v9    # "line":I
    :cond_37
    return v1
.end method

.method private static removeMemory(Landroid/text/Spannable;)V
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;

    .line 124
    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 125
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Selection$MemoryTextWatcher;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Selection$MemoryTextWatcher;

    .line 126
    .local v0, "watchers":[Landroid/text/Selection$MemoryTextWatcher;
    array-length v1, v0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 127
    .local v3, "watcher":Landroid/text/Selection$MemoryTextWatcher;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 126
    .end local v3    # "watcher":Landroid/text/Selection$MemoryTextWatcher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 129
    :cond_1d
    return-void
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;

    .line 185
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x200

    invoke-interface {p0, v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;I)V

    .line 186
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 187
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    .line 188
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;

    .line 161
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 162
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .line 154
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 155
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .line 79
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 80
    return-void
.end method

.method private static setSelection(Landroid/text/Spannable;III)V
    .registers 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I
    .param p3, "memory"    # I

    .line 91
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 92
    .local v0, "ostart":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 94
    .local v1, "oend":I
    if-ne v0, p1, :cond_c

    if-eq v1, p2, :cond_1d

    .line 95
    :cond_c
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v3, 0x222

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 97
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    invoke-static {p0, p3}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    .line 100
    :cond_1d
    return-void
.end method

.method private static setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V
    .registers 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "end"    # I
    .param p4, "direction"    # I
    .param p5, "extend"    # Z

    .line 238
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    add-int v1, p2, p4

    .line 239
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    if-ne v0, v1, :cond_2c

    .line 240
    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v0

    .line 241
    .local v0, "memory":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1f

    .line 243
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 244
    .local v1, "h":F
    add-int v2, p2, p4

    invoke-virtual {p1, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 245
    .local v2, "move":I
    move v1, v0

    .line 246
    .local v1, "newMemory":I
    goto :goto_2b

    .line 248
    .end local v1    # "newMemory":I
    .end local v2    # "move":I
    :cond_1f
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 249
    .local v1, "h":F
    add-int v2, p2, p4

    invoke-virtual {p1, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 250
    .restart local v2    # "move":I
    move v3, p3

    move v1, v3

    .line 252
    .end local v0    # "memory":I
    .local v1, "newMemory":I
    :goto_2b
    goto :goto_33

    .line 253
    .end local v1    # "newMemory":I
    .end local v2    # "move":I
    :cond_2c
    add-int v0, p2, p4

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 254
    .restart local v2    # "move":I
    const/4 v1, -0x1

    .line 257
    .restart local v1    # "newMemory":I
    :goto_33
    if-eqz p5, :cond_39

    .line 258
    invoke-static {p0, v2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    goto :goto_3c

    .line 260
    :cond_39
    invoke-static {p0, v2, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 262
    :goto_3c
    return-void
.end method

.method private static updateMemory(Landroid/text/Spannable;I)V
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "memory"    # I

    .line 108
    const/4 v0, -0x1

    if-le p1, v0, :cond_22

    .line 109
    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v1

    .line 110
    .local v1, "currentMemory":I
    if-eq p1, v1, :cond_21

    .line 111
    sget-object v2, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 112
    if-ne v1, v0, :cond_21

    .line 114
    new-instance v0, Landroid/text/Selection$MemoryTextWatcher;

    invoke-direct {v0}, Landroid/text/Selection$MemoryTextWatcher;-><init>()V

    .line 115
    .local v0, "watcher":Landroid/text/TextWatcher;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 118
    .end local v0    # "watcher":Landroid/text/TextWatcher;
    .end local v1    # "currentMemory":I
    :cond_21
    goto :goto_25

    .line 119
    :cond_22
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    .line 121
    :goto_25
    return-void
.end method
