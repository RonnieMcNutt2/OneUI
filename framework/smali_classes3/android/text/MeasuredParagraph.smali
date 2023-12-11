.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# static fields
.field private static final OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final arithmetic:Ljava/util/regex/Pattern;

.field private static final phoneNum:Ljava/util/regex/Pattern;

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private mCachedPaint:Landroid/text/TextPaint;

.field private mCopiedBuffer:[C

.field private mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private mLtrWithoutBidi:Z

.field private mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private mParaDir:I

.field private mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private mSpanned:Landroid/text/Spanned;

.field private mTextLength:I

.field private mTextStart:I

.field private mWholeWidth:F

.field private mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 463
    const-string v0, "[+][0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredParagraph;->phoneNum:Ljava/util/regex/Pattern;

    .line 464
    const-string v0, "[0-9]+([-/*+=. ]+([0-9]+))+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredParagraph;->arithmetic:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    .line 121
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 125
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    .line 129
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    .line 135
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    .line 69
    return-void
.end method

.method private applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V
    .registers 20
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p3, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "builder"    # Landroid/graphics/text/MeasuredText$Builder;

    .line 628
    move-object v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v8, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 630
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/TextPaint;->baselineShift:I

    .line 632
    if-eqz p6, :cond_11

    const/4 v1, 0x1

    :cond_11
    move v9, v1

    .line 634
    .local v9, "needFontMetrics":Z
    if-eqz v9, :cond_1f

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_1f

    .line 635
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    .line 638
    :cond_1f
    const/4 v0, 0x0

    .line 639
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    if-eqz v7, :cond_3a

    .line 640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    array-length v2, v7

    if-ge v1, v2, :cond_38

    .line 641
    aget-object v2, v7, v1

    .line 642
    .local v2, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_30

    .line 644
    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_35

    .line 647
    :cond_30
    iget-object v3, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 640
    .end local v2    # "span":Landroid/text/style/MetricAffectingSpan;
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_38
    move-object v10, v0

    goto :goto_3b

    .line 639
    .end local v1    # "i":I
    :cond_3a
    move-object v10, v0

    .line 652
    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v10, "replacement":Landroid/text/style/ReplacementSpan;
    :goto_3b
    iget v0, v6, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v11, p4, v0

    .line 653
    .local v11, "startInCopiedBuffer":I
    sub-int v12, p5, v0

    .line 655
    .local v12, "endInCopiedBuffer":I
    if-eqz p6, :cond_4a

    .line 656
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 659
    :cond_4a
    if-eqz v10, :cond_58

    .line 660
    iget-object v4, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object v1, v10

    move v2, v11

    move v3, v12

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;)V

    goto :goto_63

    .line 663
    :cond_58
    iget-object v3, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move v1, v11

    move v2, v12

    move-object v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;)V

    .line 667
    :goto_63
    if-eqz v9, :cond_bc

    .line 668
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    if-gez v0, :cond_82

    .line 669
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 670
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_98

    .line 672
    :cond_82
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 673
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 676
    :goto_98
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 677
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 678
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 679
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 681
    :cond_bc
    return-void
.end method

.method private applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;)V
    .registers 12
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;

    .line 566
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    .line 568
    .local v0, "width":F
    if-nez p5, :cond_2e

    .line 570
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1, p2, v0}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    .line 571
    add-int/lit8 v1, p2, 0x1

    if-le p3, v1, :cond_28

    .line 572
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 574
    :cond_28
    iget v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr v1, v0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_33

    .line 576
    :cond_2e
    sub-int v1, p3, p2

    invoke-virtual {p5, p4, v1, v0}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    .line 578
    :goto_33
    return-void
.end method

.method private applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;)V
    .registers 27
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "config"    # Landroid/graphics/text/LineBreakConfig;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;

    .line 586
    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    iget-boolean v1, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const/4 v15, 0x0

    if-eqz v1, :cond_3a

    .line 588
    if-nez v14, :cond_33

    .line 589
    iget v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v4, v11, v10

    sub-int v6, v11, v10

    const/4 v7, 0x0

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 591
    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    .line 589
    move-object/from16 v1, p3

    move/from16 v3, p1

    move/from16 v5, p1

    move/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float/2addr v15, v1

    iput v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto/16 :goto_9a

    .line 593
    :cond_33
    sub-int v1, v11, v10

    invoke-virtual {v14, v12, v13, v1, v15}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    goto/16 :goto_9a

    .line 597
    :cond_3a
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v10}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    .line 600
    .local v1, "level":B
    move/from16 v2, p1

    .local v2, "levelStart":I
    add-int/lit8 v3, v10, 0x1

    move v9, v1

    move/from16 v16, v2

    move v8, v3

    .line 601
    .end local v1    # "level":B
    .end local v2    # "levelStart":I
    .local v8, "levelEnd":I
    .local v9, "level":B
    .local v16, "levelStart":I
    :goto_48
    if-eq v8, v11, :cond_55

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v8}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    if-eq v1, v9, :cond_53

    goto :goto_55

    :cond_53
    move v15, v8

    goto :goto_a5

    .line 602
    :cond_55
    :goto_55
    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    goto :goto_5c

    :cond_5b
    move v1, v15

    :goto_5c
    move v7, v1

    .line 603
    .local v7, "isRtl":Z
    if-nez v14, :cond_8b

    .line 604
    sub-int v17, v8, v16

    .line 605
    .local v17, "levelLength":I
    iget v6, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 607
    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v18

    .line 605
    move-object/from16 v1, p3

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v16

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v20, v7

    .end local v7    # "isRtl":Z
    .local v20, "isRtl":Z
    move v15, v8

    .end local v8    # "levelEnd":I
    .local v15, "levelEnd":I
    move-object/from16 v8, v18

    move/from16 v18, v9

    .end local v9    # "level":B
    .local v18, "level":B
    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float v6, v19, v1

    iput v6, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 608
    .end local v17    # "levelLength":I
    move/from16 v1, v20

    goto :goto_97

    .line 609
    .end local v15    # "levelEnd":I
    .end local v18    # "level":B
    .end local v20    # "isRtl":Z
    .restart local v7    # "isRtl":Z
    .restart local v8    # "levelEnd":I
    .restart local v9    # "level":B
    :cond_8b
    move/from16 v20, v7

    move v15, v8

    move/from16 v18, v9

    .end local v7    # "isRtl":Z
    .end local v8    # "levelEnd":I
    .end local v9    # "level":B
    .restart local v15    # "levelEnd":I
    .restart local v18    # "level":B
    .restart local v20    # "isRtl":Z
    sub-int v8, v15, v16

    move/from16 v1, v20

    .end local v20    # "isRtl":Z
    .local v1, "isRtl":Z
    invoke-virtual {v14, v12, v13, v8, v1}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 611
    :goto_97
    if-ne v15, v11, :cond_9b

    .line 612
    nop

    .line 619
    .end local v1    # "isRtl":Z
    .end local v15    # "levelEnd":I
    .end local v16    # "levelStart":I
    .end local v18    # "level":B
    :goto_9a
    return-void

    .line 614
    .restart local v1    # "isRtl":Z
    .restart local v15    # "levelEnd":I
    .restart local v16    # "levelStart":I
    .restart local v18    # "level":B
    :cond_9b
    move v2, v15

    .line 615
    .end local v16    # "levelStart":I
    .restart local v2    # "levelStart":I
    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v3

    move/from16 v16, v2

    move v9, v3

    .line 600
    .end local v1    # "isRtl":Z
    .end local v2    # "levelStart":I
    .end local v18    # "level":B
    .restart local v9    # "level":B
    .restart local v16    # "levelStart":I
    :goto_a5
    add-int/lit8 v8, v15, 0x1

    const/4 v15, 0x0

    .end local v15    # "levelEnd":I
    .restart local v8    # "levelEnd":I
    goto :goto_48
.end method

.method public static buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 333
    if-nez p4, :cond_7

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p4

    .line 334
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    :goto_8
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 335
    return-object v0
.end method

.method public static buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 22
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 359
    move/from16 v7, p3

    if-nez p5, :cond_9

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_b

    :cond_9
    move-object/from16 v0, p5

    :goto_b
    move-object v15, v0

    .line 360
    .local v15, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    invoke-direct {v15, v14, v13, v7, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 362
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v1, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 363
    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_21

    .line 364
    return-object v15

    .line 367
    :cond_21
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_33

    .line 369
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    goto :goto_68

    .line 375
    :cond_33
    move/from16 v0, p2

    .local v0, "spanStart":I
    :goto_35
    if-ge v0, v7, :cond_68

    .line 376
    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 377
    .local v1, "spanEnd":I
    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 379
    .local v2, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v3, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 380
    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object v8, v15

    move-object/from16 v9, p0

    move-object v11, v2

    move v12, v0

    move v13, v1

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    .line 375
    .end local v2    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move v0, v1

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    goto :goto_35

    .line 385
    .end local v0    # "spanStart":I
    .end local v1    # "spanEnd":I
    :cond_68
    :goto_68
    return-object v15
.end method

.method public static buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 27
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "hint"    # Landroid/text/MeasuredParagraph;
    .param p9, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 418
    move/from16 v7, p4

    move-object/from16 v8, p8

    if-nez p9, :cond_b

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_d

    :cond_b
    move-object/from16 v0, p9

    :goto_d
    move-object v15, v0

    .line 419
    .local v15, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    invoke-direct {v15, v14, v13, v7, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 421
    if-nez v8, :cond_2f

    .line 422
    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    .line 423
    move/from16 v11, p6

    invoke-virtual {v0, v11}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    .line 424
    move/from16 v10, p7

    invoke-virtual {v0, v10}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move-object/from16 v16, v0

    .local v0, "builder":Landroid/graphics/text/MeasuredText$Builder;
    goto :goto_3c

    .line 426
    .end local v0    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    :cond_2f
    move/from16 v11, p6

    move/from16 v10, p7

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v8, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    move-object/from16 v16, v0

    .line 428
    .local v16, "builder":Landroid/graphics/text/MeasuredText$Builder;
    :goto_3c
    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_49

    .line 431
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v15, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    move-object v3, v15

    goto/16 :goto_ab

    .line 433
    :cond_49
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_63

    .line 435
    const/4 v3, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    .line 437
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v7}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move-object v3, v15

    goto :goto_a5

    .line 442
    :cond_63
    move/from16 v0, p3

    .local v0, "spanStart":I
    :goto_65
    if-ge v0, v7, :cond_a4

    .line 443
    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 445
    .local v1, "spanEnd":I
    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 447
    .local v2, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v3, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 450
    move-object v9, v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v2

    move v13, v0

    move v14, v1

    move-object v3, v15

    .end local v15    # "mt":Landroid/text/MeasuredParagraph;
    .local v3, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    .line 452
    iget-object v4, v3, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v4, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 442
    .end local v2    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move v0, v1

    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move-object v15, v3

    goto :goto_65

    .end local v1    # "spanEnd":I
    .end local v3    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v15    # "mt":Landroid/text/MeasuredParagraph;
    :cond_a4
    move-object v3, v15

    .line 455
    .end local v0    # "spanStart":I
    .end local v15    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v3    # "mt":Landroid/text/MeasuredParagraph;
    :goto_a5
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v3, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 458
    :goto_ab
    return-object v3
.end method

.method private static obtain()Landroid/text/MeasuredParagraph;
    .registers 2

    .line 74
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    .line 75
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_11

    :cond_c
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_11
    return-object v1
.end method

.method private reset()V
    .registers 3

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 154
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 156
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 157
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 158
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 159
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 160
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 161
    return-void
.end method

.method private resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 479
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 480
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 481
    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    .line 482
    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 484
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v1, :cond_1b

    array-length v1, v1

    if-eq v1, v0, :cond_1f

    .line 485
    :cond_1b
    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 487
    :cond_1f
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 490
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_5b

    .line 491
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 493
    .local v0, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    array-length v3, v0

    if-ge v2, v3, :cond_5b

    .line 494
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    .line 495
    .local v3, "startInPara":I
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p2

    .line 497
    .local v4, "endInPara":I
    if-gez v3, :cond_4a

    const/4 v3, 0x0

    .line 498
    :cond_4a
    iget v5, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v4, v5, :cond_50

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 499
    :cond_50
    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const v6, 0xfffc

    invoke-static {v5, v3, v4, v6}, Ljava/util/Arrays;->fill([CIIC)V

    .line 493
    .end local v3    # "startInPara":I
    .end local v4    # "endInPara":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 503
    .end local v0    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v2    # "i":I
    :cond_5b
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    if-eq p4, v0, :cond_68

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, v0, :cond_68

    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_7d

    :cond_68
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 506
    invoke-static {v0, v1, v3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 507
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 508
    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 509
    iput-boolean v2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    goto/16 :goto_e7

    .line 512
    :cond_7d
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v3, -0x1

    if-ne p4, v0, :cond_84

    .line 513
    const/4 v0, 0x1

    .local v0, "bidiRequest":I
    goto :goto_a2

    .line 514
    .end local v0    # "bidiRequest":I
    :cond_84
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_8a

    .line 515
    const/4 v0, -0x1

    .restart local v0    # "bidiRequest":I
    goto :goto_a2

    .line 516
    .end local v0    # "bidiRequest":I
    :cond_8a
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_90

    .line 517
    const/4 v0, 0x2

    .restart local v0    # "bidiRequest":I
    goto :goto_a2

    .line 518
    .end local v0    # "bidiRequest":I
    :cond_90
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_96

    .line 519
    const/4 v0, -0x2

    .restart local v0    # "bidiRequest":I
    goto :goto_a2

    .line 521
    .end local v0    # "bidiRequest":I
    :cond_96
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, v0, v1, v4}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v0

    .line 522
    .local v0, "isRtl":Z
    if-eqz v0, :cond_a1

    move v2, v3

    :cond_a1
    move v0, v2

    .line 524
    .local v0, "bidiRequest":I
    :goto_a2
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v2, v4}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    .line 525
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v4}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/text/AndroidBidi;->bidi(I[C[B)I

    move-result v2

    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 526
    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 530
    if-ne v2, v3, :cond_e7

    .line 531
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    .line 532
    .local v1, "newStr":Ljava/lang/String;
    sget-object v2, Landroid/text/MeasuredParagraph;->phoneNum:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 533
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_cb
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 534
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 535
    .local v3, "startIndex":I
    if-ltz v3, :cond_e6

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge v3, v4, :cond_e6

    .line 536
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/text/AutoGrowArray$ByteArray;->set(IB)V

    .line 538
    .end local v3    # "startIndex":I
    :cond_e6
    goto :goto_cb

    .line 556
    .end local v0    # "bidiRequest":I
    .end local v1    # "newStr":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_e7
    :goto_e7
    return-void
.end method


# virtual methods
.method breakText(IZF)I
    .registers 10
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .line 692
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 693
    .local v0, "w":[F
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_27

    .line 694
    const/4 v3, 0x0

    .line 695
    .local v3, "i":I
    :goto_c
    if-ge v3, p1, :cond_19

    .line 696
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 697
    cmpg-float v4, p3, v2

    if-gez v4, :cond_16

    goto :goto_19

    .line 698
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 700
    :cond_19
    :goto_19
    if-lez v3, :cond_26

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_26

    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 701
    :cond_26
    return v3

    .line 703
    .end local v3    # "i":I
    :cond_27
    add-int/lit8 v3, p1, -0x1

    .line 704
    .restart local v3    # "i":I
    :goto_29
    if-ltz v3, :cond_36

    .line 705
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 706
    cmpg-float v4, p3, v2

    if-gez v4, :cond_33

    goto :goto_36

    .line 707
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 709
    :cond_36
    :goto_36
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_4d

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_4a

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_4d

    .line 710
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 712
    :cond_4d
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getBounds(IILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 292
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    .line 293
    return-void
.end method

.method public getCharWidthAt(I)F
    .registers 3
    .param p1, "offset"    # I

    .line 311
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result v0

    return v0
.end method

.method public getChars()[C
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public getDirections(II)Landroid/text/Layout$Directions;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 197
    iget-boolean v0, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_7

    .line 198
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 201
    :cond_7
    sub-int v0, p2, p1

    .line 202
    .local v0, "length":I
    iget v1, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v5, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v1

    return-object v1
.end method

.method public getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 302
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 303
    return-void
.end method

.method public getMeasuredText()Landroid/graphics/text/MeasuredText;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object v0
.end method

.method public getMemoryUsage()I
    .registers 2

    .line 735
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getParagraphDir()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    return v0
.end method

.method public getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getTextLength()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public getWholeWidth()F
    .registers 2

    .line 213
    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public getWidth(II)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 270
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_15

    .line 272
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 273
    .local v0, "widths":[F
    const/4 v1, 0x0

    .line 274
    .local v1, "r":F
    move v2, p1

    .local v2, "i":I
    :goto_c
    if-ge v2, p2, :cond_14

    .line 275
    aget v3, v0, v2

    add-float/2addr v1, v3

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 277
    .end local v2    # "i":I
    :cond_14
    return v1

    .line 280
    .end local v0    # "widths":[F
    .end local v1    # "r":F
    :cond_15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result v0

    return v0
.end method

.method public getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method measure(II)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "width":F
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    .line 725
    .local v1, "w":[F
    move v2, p1

    .local v2, "i":I
    :goto_8
    if-ge v2, p2, :cond_10

    .line 726
    aget v3, v1, v2

    add-float/2addr v0, v3

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 728
    .end local v2    # "i":I
    :cond_10
    return v0
.end method

.method public recycle()V
    .registers 2

    .line 84
    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    .line 85
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public release()V
    .registers 2

    .line 142
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 143
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    .line 144
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    .line 145
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 146
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 147
    return-void
.end method
