.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 581
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 61
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .registers 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p2, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_1c

    .line 37
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 39
    :goto_1c
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 41
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 43
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_39

    .line 44
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_33

    .line 45
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    goto :goto_39

    .line 48
    :cond_33
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    .line 51
    :cond_39
    :goto_39
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 8
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 483
    const-string v0, " "

    if-lt p3, p2, :cond_5f

    .line 489
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    .line 491
    .local v1, "len":I
    if-gt p2, v1, :cond_36

    if-gt p3, v1, :cond_36

    .line 497
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    .line 502
    return-void

    .line 498
    :cond_11
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 499
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " starts before 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_36
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ends beyond length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    .end local v1    # "len":I
    :cond_5f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has end before start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;II)V
    .registers 5
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    .line 567
    return-void
.end method

.method private copySpans(Landroid/text/Spanned;II)V
    .registers 5
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    .line 562
    return-void
.end method

.method private copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V
    .registers 22
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 103
    .local v4, "count":I
    iget-object v5, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 104
    .local v5, "srcData":[I
    iget-object v6, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 105
    .local v6, "srcSpans":[Ljava/lang/Object;
    iget v7, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 106
    .local v7, "limit":I
    const/4 v8, 0x0

    .line 108
    .local v8, "hasNoCopySpan":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11
    const/4 v10, 0x0

    if-ge v9, v7, :cond_35

    .line 109
    mul-int/lit8 v11, v9, 0x3

    add-int/2addr v11, v10

    aget v10, v5, v11

    .line 110
    .local v10, "spanStart":I
    mul-int/lit8 v11, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    .line 111
    .local v11, "spanEnd":I
    invoke-direct {v0, v2, v3, v10, v11}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v12

    if-eqz v12, :cond_26

    goto :goto_32

    .line 112
    :cond_26
    aget-object v12, v6, v9

    instance-of v12, v12, Landroid/text/NoCopySpan;

    if-eqz v12, :cond_30

    .line 113
    const/4 v8, 0x1

    .line 114
    if-eqz p4, :cond_30

    .line 115
    goto :goto_32

    .line 118
    :cond_30
    add-int/lit8 v4, v4, 0x1

    .line 108
    .end local v10    # "spanStart":I
    .end local v11    # "spanEnd":I
    :goto_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 121
    .end local v9    # "i":I
    :cond_35
    if-nez v4, :cond_38

    return-void

    .line 123
    :cond_38
    if-nez v8, :cond_65

    if-nez v2, :cond_65

    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v9

    if-ne v3, v9, :cond_65

    .line 124
    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v9, v9

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 125
    iget-object v11, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v11, v11

    new-array v11, v11, [I

    iput-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 126
    iget v11, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput v11, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 127
    iget-object v11, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v12, v11

    invoke-static {v11, v10, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v12, v11

    invoke-static {v9, v10, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c2

    .line 130
    :cond_65
    iput v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 131
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 132
    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [I

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 133
    const/4 v9, 0x0

    .restart local v9    # "i":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_76
    if-ge v9, v7, :cond_c2

    .line 134
    mul-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v10

    aget v12, v5, v12

    .line 135
    .local v12, "spanStart":I
    mul-int/lit8 v13, v9, 0x3

    add-int/lit8 v13, v13, 0x1

    aget v13, v5, v13

    .line 136
    .local v13, "spanEnd":I
    invoke-direct {v0, v2, v3, v12, v13}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v14

    if-nez v14, :cond_bf

    if-eqz p4, :cond_92

    aget-object v14, v6, v9

    instance-of v14, v14, Landroid/text/NoCopySpan;

    if-eqz v14, :cond_92

    .line 138
    goto :goto_bf

    .line 140
    :cond_92
    if-ge v12, v2, :cond_96

    move/from16 v12, p2

    .line 141
    :cond_96
    if-le v13, v3, :cond_9a

    move/from16 v13, p3

    .line 143
    :cond_9a
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v15, v6, v9

    aput-object v15, v14, v11

    .line 144
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v11, 0x3

    add-int/2addr v15, v10

    sub-int v16, v12, v2

    aput v16, v14, v15

    .line 145
    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x1

    sub-int v16, v13, v2

    aput v16, v14, v15

    .line 146
    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v16, v9, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v5, v16

    aput v16, v14, v15

    .line 147
    add-int/lit8 v11, v11, 0x1

    .line 133
    .end local v12    # "spanStart":I
    .end local v13    # "spanEnd":I
    :cond_bf
    :goto_bf
    add-int/lit8 v9, v9, 0x1

    goto :goto_76

    .line 150
    .end local v9    # "i":I
    .end local v11    # "j":I
    :cond_c2
    :goto_c2
    return-void
.end method

.method private copySpansFromSpanned(Landroid/text/Spanned;IIZ)V
    .registers 16
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 72
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_3a

    .line 75
    if-eqz p4, :cond_13

    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_13

    .line 76
    goto :goto_37

    .line 78
    :cond_13
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 79
    .local v2, "st":I
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 80
    .local v3, "en":I
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 82
    .local v4, "fl":I
    if-ge v2, p2, :cond_28

    .line 83
    move v2, p2

    .line 84
    :cond_28
    if-le v3, p3, :cond_2b

    .line 85
    move v3, p3

    .line 87
    :cond_2b
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    move v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 74
    .end local v2    # "st":I
    .end local v3    # "en":I
    .end local v4    # "fl":I
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 89
    .end local v1    # "i":I
    :cond_3a
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 191
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_14

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .line 159
    const/4 v0, 0x1

    if-gt p3, p2, :cond_11

    if-ge p4, p1, :cond_6

    goto :goto_11

    .line 160
    :cond_6
    if-eq p3, p4, :cond_f

    if-eq p1, p2, :cond_f

    .line 161
    if-eq p3, p2, :cond_e

    if-ne p4, p1, :cond_f

    :cond_e
    return v0

    .line 163
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_11
    :goto_11
    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 9
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 447
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 448
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 450
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_17

    .line 451
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 453
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I
    .param p4, "st"    # I
    .param p5, "en"    # I

    .line 467
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 469
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 471
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_24

    .line 472
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 474
    .end local v2    # "i":I
    :cond_24
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 9
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 457
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 458
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 460
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_17

    .line 461
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 463
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .registers 24
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "enforceParagraph"    # Z

    .line 196
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p2

    .line 197
    .local v10, "nstart":I
    move/from16 v11, p3

    .line 199
    .local v11, "nend":I
    const-string/jumbo v0, "setSpan"

    invoke-direct {v6, v0, v8, v9}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 201
    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_84

    .line 202
    invoke-direct {v6, v8}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " follows "

    if-eqz v0, :cond_50

    .line 203
    if-nez p5, :cond_25

    .line 205
    return-void

    .line 207
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v8, -0x1

    .line 208
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_50
    invoke-direct {v6, v9}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 212
    if-nez p5, :cond_59

    .line 214
    return-void

    .line 216
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v9, -0x1

    .line 217
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_84
    iget v12, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 222
    .local v12, "count":I
    iget-object v13, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 223
    .local v13, "spans":[Ljava/lang/Object;
    iget-object v14, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 225
    .local v14, "data":[I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_8c
    const/4 v0, 0x0

    if-ge v15, v12, :cond_c0

    .line 226
    aget-object v1, v13, v15

    if-ne v1, v7, :cond_bd

    .line 227
    mul-int/lit8 v1, v15, 0x3

    add-int/2addr v1, v0

    aget v16, v14, v1

    .line 228
    .local v16, "ostart":I
    mul-int/lit8 v1, v15, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v17, v14, v1

    .line 230
    .local v17, "oend":I
    mul-int/lit8 v1, v15, 0x3

    add-int/2addr v1, v0

    aput v8, v14, v1

    .line 231
    mul-int/lit8 v0, v15, 0x3

    add-int/lit8 v0, v0, 0x1

    aput v9, v14, v0

    .line 232
    mul-int/lit8 v0, v15, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, v14, v0

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 235
    return-void

    .line 225
    .end local v16    # "ostart":I
    .end local v17    # "oend":I
    :cond_bd
    add-int/lit8 v15, v15, 0x1

    goto :goto_8c

    .line 239
    .end local v15    # "i":I
    :cond_c0
    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_eb

    .line 240
    nop

    .line 241
    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 240
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "newtags":[Ljava/lang/Object;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [I

    .line 244
    .local v2, "newdata":[I
    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v3, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iput-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 248
    iput-object v2, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 251
    .end local v1    # "newtags":[Ljava/lang/Object;
    .end local v2    # "newdata":[I
    :cond_eb
    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object v7, v1, v2

    .line 252
    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v0

    aput v8, v1, v3

    .line 253
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x1

    aput v9, v1, v0

    .line 254
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, v1, v0

    .line 255
    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 257
    instance-of v0, v6, Landroid/text/Spannable;

    if-eqz v0, :cond_10f

    .line 258
    invoke-direct {v6, v7, v10, v11}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 259
    :cond_10f
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .registers 3
    .param p1, "i"    # I

    .line 171
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 507
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    .line 508
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 509
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 511
    .local v0, "other":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 512
    .local v2, "otherSpans":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 513
    .local v3, "thisSpans":[Ljava/lang/Object;
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v5, v2

    if-ne v4, v5, :cond_86

    .line 514
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v4, v5, :cond_84

    .line 515
    aget-object v5, v3, v4

    .line 516
    .local v5, "thisSpan":Ljava/lang/Object;
    aget-object v6, v2, v4

    .line 517
    .local v6, "otherSpan":Ljava/lang/Object;
    if-ne v5, p0, :cond_5b

    .line 518
    if-ne v0, v6, :cond_5a

    .line 519
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 520
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 521
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    .line 522
    :cond_5a
    return v1

    .line 524
    :cond_5b
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 525
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    .line 526
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    .line 527
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    goto :goto_83

    .line 514
    .end local v5    # "thisSpan":Ljava/lang/Object;
    .end local v6    # "otherSpan":Ljava/lang/Object;
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 528
    .restart local v5    # "thisSpan":Ljava/lang/Object;
    .restart local v6    # "otherSpan":Ljava/lang/Object;
    :cond_83
    :goto_83
    return v1

    .line 531
    .end local v4    # "i":I
    .end local v5    # "thisSpan":Ljava/lang/Object;
    .end local v6    # "otherSpan":Ljava/lang/Object;
    :cond_84
    const/4 v1, 0x1

    return v1

    .line 534
    .end local v0    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpans":[Ljava/lang/Object;
    .end local v3    # "thisSpans":[Ljava/lang/Object;
    :cond_86
    return v1
.end method

.method public final getChars(II[CI)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .line 181
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 182
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .line 312
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 313
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 314
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 316
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_18

    .line 317
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    .line 318
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    return v4

    .line 316
    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 322
    .end local v3    # "i":I
    :cond_18
    const/4 v3, -0x1

    return v3
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .line 327
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 328
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 329
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 331
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_18

    .line 332
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    .line 333
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v2, v4

    return v4

    .line 331
    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 337
    .end local v3    # "i":I
    :cond_18
    const/4 v3, 0x0

    return v3
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .line 297
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 298
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 299
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 301
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_18

    .line 302
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    .line 303
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    return v4

    .line 301
    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 307
    .end local v3    # "i":I
    :cond_18
    const/4 v3, -0x1

    return v3
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 20
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 342
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 344
    .local v4, "count":I
    iget v5, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 345
    .local v5, "spanCount":I
    iget-object v6, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 346
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v7, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 347
    .local v7, "data":[I
    const/4 v8, 0x0

    .line 348
    .local v8, "ret":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 350
    .local v9, "ret1":Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_12
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v5, :cond_8e

    .line 351
    mul-int/lit8 v13, v10, 0x3

    add-int/2addr v13, v11

    aget v13, v7, v13

    .line 352
    .local v13, "spanStart":I
    mul-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v12

    aget v14, v7, v14

    .line 354
    .local v14, "spanEnd":I
    if-le v13, v2, :cond_24

    .line 355
    goto/16 :goto_89

    .line 357
    :cond_24
    if-ge v14, v1, :cond_28

    .line 358
    goto/16 :goto_89

    .line 361
    :cond_28
    if-eq v13, v14, :cond_32

    if-eq v1, v2, :cond_32

    .line 362
    if-ne v13, v2, :cond_2f

    .line 363
    goto :goto_89

    .line 365
    :cond_2f
    if-ne v14, v1, :cond_32

    .line 366
    goto :goto_89

    .line 371
    :cond_32
    if-eqz v3, :cond_41

    const-class v15, Ljava/lang/Object;

    if-eq v3, v15, :cond_41

    aget-object v15, v6, v10

    invoke-virtual {v3, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_41

    .line 372
    goto :goto_89

    .line 375
    :cond_41
    if-nez v4, :cond_48

    .line 376
    aget-object v9, v6, v10

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    .line 379
    :cond_48
    if-ne v4, v12, :cond_56

    .line 380
    sub-int v15, v5, v10

    add-int/2addr v15, v12

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, [Ljava/lang/Object;

    .line 381
    aput-object v9, v8, v11

    .line 384
    :cond_56
    mul-int/lit8 v11, v10, 0x3

    add-int/lit8 v11, v11, 0x2

    aget v11, v7, v11

    const/high16 v12, 0xff0000

    and-int/2addr v11, v12

    .line 385
    .local v11, "prio":I
    if-eqz v11, :cond_82

    .line 388
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_62
    if-ge v15, v4, :cond_73

    .line 389
    aget-object v1, v8, v15

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, v12

    .line 391
    .local v1, "p":I
    if-le v11, v1, :cond_6e

    .line 392
    goto :goto_73

    .line 388
    .end local v1    # "p":I
    :cond_6e
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    goto :goto_62

    .line 396
    :cond_73
    :goto_73
    add-int/lit8 v1, v15, 0x1

    sub-int v12, v4, v15

    invoke-static {v8, v15, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    aget-object v1, v6, v10

    aput-object v1, v8, v15

    .line 398
    nop

    .end local v15    # "j":I
    add-int/lit8 v4, v4, 0x1

    .line 399
    goto :goto_89

    .line 400
    :cond_82
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "count":I
    .local v1, "count":I
    aget-object v12, v6, v10

    aput-object v12, v8, v4

    move v4, v1

    .line 350
    .end local v1    # "count":I
    .end local v11    # "prio":I
    .end local v13    # "spanStart":I
    .end local v14    # "spanEnd":I
    .restart local v4    # "count":I
    :goto_89
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    goto :goto_12

    .line 405
    .end local v10    # "i":I
    :cond_8e
    if-nez v4, :cond_95

    .line 406
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 408
    :cond_95
    if-ne v4, v12, :cond_a0

    .line 409
    invoke-static {v3, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 410
    .end local v8    # "ret":[Ljava/lang/Object;
    .local v1, "ret":[Ljava/lang/Object;
    aput-object v9, v1, v11

    .line 411
    return-object v1

    .line 413
    .end local v1    # "ret":[Ljava/lang/Object;
    .restart local v8    # "ret":[Ljava/lang/Object;
    :cond_a0
    array-length v1, v8

    if-ne v4, v1, :cond_a4

    .line 414
    return-object v8

    .line 417
    :cond_a4
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 418
    .local v1, "nret":[Ljava/lang/Object;
    invoke-static {v8, v11, v1, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    return-object v1
.end method

.method public hashCode()I
    .registers 6

    .line 540
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 541
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v1, v2

    .line 542
    .end local v0    # "hash":I
    .local v1, "hash":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v0, v2, :cond_39

    .line 543
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 544
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_20

    .line 545
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 547
    :cond_20
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 548
    .end local v1    # "hash":I
    .local v3, "hash":I
    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 549
    .end local v3    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    .line 542
    .end local v2    # "span":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 551
    .end local v0    # "i":I
    :cond_39
    return v1
.end method

.method public final length()I
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 11
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .line 424
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 425
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 426
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 428
    .local v2, "data":[I
    if-nez p3, :cond_a

    .line 429
    const-class p3, Ljava/lang/Object;

    .line 432
    :cond_a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_36

    .line 433
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    .line 434
    .local v4, "st":I
    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    .line 436
    .local v5, "en":I
    if-le v4, p1, :cond_26

    if-ge v4, p2, :cond_26

    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 437
    move p2, v4

    .line 438
    :cond_26
    if-le v5, p1, :cond_33

    if-ge v5, p2, :cond_33

    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 439
    move p2, v5

    .line 432
    .end local v4    # "st":I
    .end local v5    # "en":I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 442
    .end local v3    # "i":I
    :cond_36
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Object;

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    .line 264
    return-void
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .registers 13
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 270
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 271
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 272
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 274
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_3f

    .line 275
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_3c

    .line 276
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    .line 277
    .local v4, "ostart":I
    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    .line 279
    .local v5, "oend":I
    add-int/lit8 v6, v3, 0x1

    sub-int v6, v0, v6

    .line 281
    .local v6, "c":I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v7, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v6, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 287
    and-int/lit16 v7, p2, 0x200

    if-nez v7, :cond_3b

    .line 288
    invoke-direct {p0, p1, v4, v5}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 290
    :cond_3b
    return-void

    .line 274
    .end local v4    # "ostart":I
    .end local v5    # "oend":I
    .end local v6    # "c":I
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 293
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .registers 11
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 186
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 187
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
