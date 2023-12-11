.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_a

    .line 54
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    goto :goto_10

    .line 56
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    .line 58
    :goto_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 59
    return-void
.end method

.method private constructor <init>([II)V
    .registers 6
    .param p1, "array"    # [I
    .param p2, "size"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 39
    array-length v0, p1

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 40
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 9
    .param p1, "count"    # I

    .line 161
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 162
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 163
    .local v1, "minCapacity":I
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    array-length v2, v2

    if-lt v1, v2, :cond_23

    .line 164
    const/4 v2, 0x6

    if-ge v0, v2, :cond_f

    .line 165
    const/16 v2, 0xc

    goto :goto_11

    :cond_f
    shr-int/lit8 v2, v0, 0x1

    :goto_11
    add-int/2addr v2, v0

    .line 166
    .local v2, "targetCap":I
    if-le v2, v1, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    .line 167
    .local v3, "newCapacity":I
    :goto_17
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 168
    .local v4, "newValues":[I
    iget-object v5, p0, Landroid/util/IntArray;->mValues:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v4, p0, Landroid/util/IntArray;->mValues:[I

    .line 171
    .end local v2    # "targetCap":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newValues":[I
    :cond_23
    return-void
.end method

.method public static fromArray([II)Landroid/util/IntArray;
    .registers 3
    .param p0, "array"    # [I
    .param p1, "size"    # I

    .line 72
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([I)Landroid/util/IntArray;
    .registers 3
    .param p0, "array"    # [I

    .line 65
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 3
    .param p1, "value"    # I

    .line 94
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    .line 95
    return-void
.end method

.method public add(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 105
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    sub-int v2, v1, p1

    .line 106
    .local v2, "rightSegment":I
    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 107
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 109
    if-eqz v2, :cond_17

    .line 111
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_17
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 115
    return-void
.end method

.method public addAll(Landroid/util/IntArray;)V
    .registers 7
    .param p1, "values"    # Landroid/util/IntArray;

    .line 139
    iget v0, p1, Landroid/util/IntArray;->mSize:I

    .line 140
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 142
    iget-object v1, p1, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 144
    return-void
.end method

.method public addAll([I)V
    .registers 6
    .param p1, "values"    # [I

    .line 150
    array-length v0, p1

    .line 151
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 153
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 155
    return-void
.end method

.method public binarySearch(I)I
    .registers 4
    .param p1, "value"    # I

    .line 132
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 178
    return-void
.end method

.method public clone()Landroid/util/IntArray;
    .registers 4

    .line 182
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    invoke-direct {v0, v1, v2}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .registers 3
    .param p1, "index"    # I

    .line 189
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 190
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .registers 5
    .param p1, "value"    # I

    .line 206
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 207
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_f

    .line 208
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_c

    .line 209
    return v1

    .line 207
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 212
    .end local v1    # "i":I
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public remove(I)V
    .registers 5
    .param p1, "index"    # I

    .line 219
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 220
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 222
    return-void
.end method

.method public resize(I)V
    .registers 5
    .param p1, "newSize"    # I

    .line 81
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 82
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v0

    if-gt p1, v1, :cond_e

    .line 83
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_15

    .line 85
    :cond_e
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 87
    :goto_15
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 88
    return-void
.end method

.method public set(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 197
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 198
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 199
    return-void
.end method

.method public size()I
    .registers 2

    .line 228
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    return v0
.end method

.method public toArray()[I
    .registers 3

    .line 235
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 242
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    .line 243
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 244
    const-string v1, "[]"

    return-object v1

    .line 246
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Landroid/util/IntArray;->mValues:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    if-ne v2, v0, :cond_29

    .line 251
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 253
    :cond_29
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method
