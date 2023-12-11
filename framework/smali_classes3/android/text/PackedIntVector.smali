.class public Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValueGap:[I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "columns"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 52
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 53
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 56
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 57
    return-void
.end method

.method private final growBuffer()V
    .registers 11

    .line 259
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 260
    .local v0, "columns":I
    nop

    .line 261
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 260
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 262
    .local v1, "newvalues":[I
    array-length v2, v1

    div-int/2addr v2, v0

    .line 264
    .local v2, "newsize":I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 265
    .local v3, "valuegap":[I
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 267
    .local v4, "rowgapstart":I
    iget v5, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    .line 269
    .local v5, "after":I
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    if-eqz v6, :cond_34

    .line 270
    mul-int v7, v0, v4

    const/4 v8, 0x0

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v7, v5

    mul-int/2addr v7, v0

    sub-int v8, v2, v5

    mul-int/2addr v8, v0

    mul-int v9, v5, v0

    invoke-static {v6, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_34
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_35
    if-ge v6, v0, :cond_4d

    .line 277
    aget v7, v3, v6

    if-lt v7, v4, :cond_4a

    .line 278
    aget v7, v3, v6

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v8, v2, v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    .line 280
    aget v7, v3, v6

    if-ge v7, v4, :cond_4a

    .line 281
    aput v4, v3, v6

    .line 276
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 286
    .end local v6    # "i":I
    :cond_4d
    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 287
    iput v2, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 288
    iput-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 289
    return-void
.end method

.method private final moveRowGapTo(I)V
    .registers 12
    .param p1, "where"    # I

    .line 319
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v0, :cond_5

    .line 320
    return-void

    .line 321
    :cond_5
    if-le p1, v0, :cond_45

    .line 322
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int v2, p1, v1

    add-int v3, v0, v1

    sub-int/2addr v2, v3

    .line 323
    .local v2, "moving":I
    iget v3, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 324
    .local v3, "columns":I
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 325
    .local v4, "valuegap":[I
    iget-object v5, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 326
    .local v5, "values":[I
    add-int/2addr v0, v1

    .line 328
    .local v0, "gapend":I
    move v1, v0

    .local v1, "i":I
    :goto_16
    add-int v6, v0, v2

    if-ge v1, v6, :cond_44

    .line 329
    sub-int v6, v1, v0

    iget v7, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/2addr v6, v7

    .line 331
    .local v6, "destrow":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_20
    if-ge v7, v3, :cond_41

    .line 332
    mul-int v8, v1, v3

    add-int/2addr v8, v7

    aget v8, v5, v8

    .line 334
    .local v8, "val":I
    aget v9, v4, v7

    if-lt v1, v9, :cond_30

    .line 335
    add-int v9, v7, v3

    aget v9, v4, v9

    add-int/2addr v8, v9

    .line 338
    :cond_30
    aget v9, v4, v7

    if-lt v6, v9, :cond_39

    .line 339
    add-int v9, v7, v3

    aget v9, v4, v9

    sub-int/2addr v8, v9

    .line 342
    :cond_39
    mul-int v9, v6, v3

    add-int/2addr v9, v7

    aput v8, v5, v9

    .line 331
    .end local v8    # "val":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 328
    .end local v6    # "destrow":I
    .end local v7    # "j":I
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 345
    .end local v0    # "gapend":I
    .end local v1    # "i":I
    .end local v2    # "moving":I
    .end local v3    # "columns":I
    .end local v4    # "valuegap":[I
    .end local v5    # "values":[I
    :cond_44
    goto :goto_7f

    .line 346
    :cond_45
    sub-int v1, v0, p1

    .line 347
    .local v1, "moving":I
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 348
    .local v2, "columns":I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 349
    .local v3, "valuegap":[I
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 350
    .local v4, "values":[I
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, v5

    .line 352
    .restart local v0    # "gapend":I
    add-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_54
    if-lt v5, p1, :cond_7f

    .line 353
    sub-int v6, v5, p1

    add-int/2addr v6, v0

    sub-int/2addr v6, v1

    .line 355
    .restart local v6    # "destrow":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_5b
    if-ge v7, v2, :cond_7c

    .line 356
    mul-int v8, v5, v2

    add-int/2addr v8, v7

    aget v8, v4, v8

    .line 358
    .restart local v8    # "val":I
    aget v9, v3, v7

    if-lt v5, v9, :cond_6b

    .line 359
    add-int v9, v7, v2

    aget v9, v3, v9

    add-int/2addr v8, v9

    .line 362
    :cond_6b
    aget v9, v3, v7

    if-lt v6, v9, :cond_74

    .line 363
    add-int v9, v7, v2

    aget v9, v3, v9

    sub-int/2addr v8, v9

    .line 366
    :cond_74
    mul-int v9, v6, v2

    add-int/2addr v9, v7

    aput v8, v4, v9

    .line 355
    .end local v8    # "val":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 352
    .end local v6    # "destrow":I
    .end local v7    # "j":I
    :cond_7c
    add-int/lit8 v5, v5, -0x1

    goto :goto_54

    .line 371
    .end local v0    # "gapend":I
    .end local v1    # "moving":I
    .end local v2    # "columns":I
    .end local v3    # "valuegap":[I
    .end local v4    # "values":[I
    .end local v5    # "i":I
    :cond_7f
    :goto_7f
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 372
    return-void
.end method

.method private final moveValueGapTo(II)V
    .registers 10
    .param p1, "column"    # I
    .param p2, "where"    # I

    .line 296
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 297
    .local v0, "valuegap":[I
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 298
    .local v1, "values":[I
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 300
    .local v2, "columns":I
    aget v3, v0, p1

    if-ne p2, v3, :cond_b

    .line 301
    return-void

    .line 302
    :cond_b
    aget v3, v0, p1

    if-le p2, v3, :cond_23

    .line 303
    aget v3, v0, p1

    .local v3, "i":I
    :goto_11
    if-ge v3, p2, :cond_22

    .line 304
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    add-int/2addr v5, v6

    aput v5, v1, v4

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .end local v3    # "i":I
    :cond_22
    goto :goto_37

    .line 307
    :cond_23
    move v3, p2

    .restart local v3    # "i":I
    :goto_24
    aget v4, v0, p1

    if-ge v3, v4, :cond_37

    .line 308
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 312
    .end local v3    # "i":I
    :cond_37
    :goto_37
    aput p2, v0, p1

    .line 313
    return-void
.end method

.method private setValueInternal(III)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .line 128
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 129
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 132
    :cond_7
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 133
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_13

    .line 134
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 137
    :cond_13
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 138
    return-void
.end method


# virtual methods
.method public adjustValuesBelow(III)V
    .registers 7
    .param p1, "startRow"    # I
    .param p2, "column"    # I
    .param p3, "delta"    # I

    .line 154
    or-int v0, p1, p2

    if-ltz v0, :cond_25

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_25

    .line 155
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-ge p2, v0, :cond_25

    .line 159
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_17

    .line 160
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 163
    :cond_17
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 164
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v2, v0, v1

    add-int/2addr v2, p3

    aput v2, v0, v1

    .line 165
    return-void

    .line 156
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteAt(II)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "count"    # I

    .line 221
    or-int v0, p1, p2

    if-ltz v0, :cond_1c

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-gt v0, v1, :cond_1c

    .line 225
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 227
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 228
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 232
    return-void

    .line 222
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(II)I
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 72
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 74
    .local v0, "columns":I
    or-int v1, p1, p2

    if-ltz v1, :cond_28

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_28

    if-ge p2, v0, :cond_28

    .line 78
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_15

    .line 79
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 82
    :cond_15
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v2, p1, v0

    add-int/2addr v2, p2

    aget v1, v1, v2

    .line 84
    .local v1, "value":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 85
    .local v2, "valuegap":[I
    aget v3, v2, p2

    if-lt p1, v3, :cond_27

    .line 86
    add-int v3, p2, v0

    aget v3, v2, v3

    add-int/2addr v1, v3

    .line 89
    :cond_27
    return v1

    .line 75
    .end local v1    # "value":I
    .end local v2    # "valuegap":[I
    :cond_28
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public insertAt(I[I)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "values"    # [I

    .line 181
    if-ltz p1, :cond_62

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_62

    .line 185
    if-eqz p2, :cond_2d

    array-length v0, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto :goto_2d

    .line 186
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 191
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v0, :cond_37

    .line 192
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 195
    :cond_37
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 196
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 198
    if-nez p2, :cond_53

    .line 199
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_49
    if-ltz v0, :cond_52

    .line 200
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 199
    add-int/lit8 v0, v0, -0x1

    goto :goto_49

    .end local v0    # "i":I
    :cond_52
    goto :goto_61

    .line 203
    :cond_53
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_57
    if-ltz v0, :cond_61

    .line 204
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    .line 207
    .end local v0    # "i":I
    :cond_61
    :goto_61
    return-void

    .line 182
    :cond_62
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(III)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .line 103
    or-int v0, p1, p2

    if-ltz v0, :cond_27

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-ge p2, v0, :cond_27

    .line 107
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_15

    .line 108
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 111
    :cond_15
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 112
    .local v1, "valuegap":[I
    aget v2, v1, p2

    if-lt p1, v2, :cond_20

    .line 113
    add-int v2, p2, v0

    aget v2, v1, v2

    sub-int/2addr p3, v2

    .line 116
    :cond_20
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    aput p3, v2, v0

    .line 117
    return-void

    .line 104
    .end local v1    # "valuegap":[I
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 3

    .line 241
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method
