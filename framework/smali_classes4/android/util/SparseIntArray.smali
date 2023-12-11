.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_e

    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    goto :goto_19

    .line 76
    :cond_e
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 77
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 79
    :goto_19
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 80
    return-void
.end method


# virtual methods
.method public append(II)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 267
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_10

    .line 268
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    return-void

    .line 272
    :cond_10
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 273
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 274
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 275
    return-void
.end method

.method public clear()V
    .registers 2

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 260
    return-void
.end method

.method public clone()Landroid/util/SparseIntArray;
    .registers 3

    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "clone":Landroid/util/SparseIntArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    move-object v0, v1

    .line 87
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 88
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseIntArray;->mValues:[I
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 91
    goto :goto_1e

    .line 89
    :catch_1d
    move-exception v1

    .line 92
    :goto_1e
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public copyKeys()[I
    .registers 3

    .line 283
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_8
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 4
    .param p1, "key"    # I

    .line 121
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 123
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 124
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 126
    :cond_d
    return-void
.end method

.method public get(I)I
    .registers 3
    .param p1, "key"    # I

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .registers 5
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # I

    .line 108
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 110
    .local v0, "i":I
    if-gez v0, :cond_b

    .line 111
    return p2

    .line 113
    :cond_b
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    return v1
.end method

.method public indexOfKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 236
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .registers 4
    .param p1, "value"    # I

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_f

    .line 249
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 250
    return v0

    .line 248
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "i":I
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 180
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 183
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 185
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(II)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 143
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 145
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 146
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v1, v0

    goto :goto_2a

    .line 148
    :cond_f
    not-int v0, v0

    .line 150
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 151
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 152
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 154
    :goto_2a
    return-void
.end method

.method public removeAt(I)V
    .registers 6
    .param p1, "index"    # I

    .line 132
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 135
    return-void
.end method

.method public setValueAt(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 222
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 225
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 227
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v0, p1

    .line 228
    return-void
.end method

.method public size()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 296
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 297
    const-string/jumbo v0, "{}"

    return-object v0

    .line 300
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 301
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v1, v2, :cond_3a

    .line 303
    if-lez v1, :cond_24

    .line 304
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 307
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 310
    .local v3, "value":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .end local v2    # "key":I
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 312
    .end local v1    # "i":I
    :cond_3a
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 205
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 208
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 210
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
