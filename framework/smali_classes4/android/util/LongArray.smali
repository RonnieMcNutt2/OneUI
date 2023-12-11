.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_a

    .line 59
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    goto :goto_10

    .line 61
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    .line 63
    :goto_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 64
    return-void
.end method

.method private constructor <init>([JI)V
    .registers 6
    .param p1, "array"    # [J
    .param p2, "size"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    .line 43
    array-length v0, p1

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 44
    return-void
.end method

.method public static elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z
    .registers 9
    .param p0, "a"    # Landroid/util/LongArray;
    .param p1, "b"    # Landroid/util/LongArray;

    .line 228
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_7

    goto :goto_24

    .line 229
    :cond_7
    iget v2, p0, Landroid/util/LongArray;->mSize:I

    iget v3, p1, Landroid/util/LongArray;->mSize:I

    if-eq v2, v3, :cond_e

    return v1

    .line 230
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget v3, p0, Landroid/util/LongArray;->mSize:I

    if-ge v2, v3, :cond_23

    .line 231
    invoke-virtual {p0, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {p1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    .line 232
    return v1

    .line 230
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 235
    .end local v2    # "i":I
    :cond_23
    return v0

    .line 228
    :cond_24
    :goto_24
    if-ne p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0
.end method

.method private ensureCapacity(I)V
    .registers 9
    .param p1, "count"    # I

    .line 138
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .line 139
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 140
    .local v1, "minCapacity":I
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    array-length v2, v2

    if-lt v1, v2, :cond_23

    .line 141
    const/4 v2, 0x6

    if-ge v0, v2, :cond_f

    .line 142
    const/16 v2, 0xc

    goto :goto_11

    :cond_f
    shr-int/lit8 v2, v0, 0x1

    :goto_11
    add-int/2addr v2, v0

    .line 143
    .local v2, "targetCap":I
    if-le v2, v1, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    .line 144
    .local v3, "newCapacity":I
    :goto_17
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v4

    .line 145
    .local v4, "newValues":[J
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput-object v4, p0, Landroid/util/LongArray;->mValues:[J

    .line 148
    .end local v2    # "targetCap":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newValues":[J
    :cond_23
    return-void
.end method

.method public static fromArray([JI)Landroid/util/LongArray;
    .registers 3
    .param p0, "array"    # [J
    .param p1, "size"    # I

    .line 77
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0}, Landroid/util/LongArray;->wrap([J)Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([J)Landroid/util/LongArray;
    .registers 3
    .param p0, "array"    # [J

    .line 70
    new-instance v0, Landroid/util/LongArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/LongArray;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public add(IJ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 111
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    sub-int v2, v1, p1

    .line 112
    .local v2, "rightSegment":I
    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    .line 113
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 115
    if-eqz v2, :cond_17

    .line 117
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_17
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 121
    return-void
.end method

.method public add(J)V
    .registers 4
    .param p1, "value"    # J

    .line 99
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    .line 100
    return-void
.end method

.method public addAll(Landroid/util/LongArray;)V
    .registers 7
    .param p1, "values"    # Landroid/util/LongArray;

    .line 127
    iget v0, p1, Landroid/util/LongArray;->mSize:I

    .line 128
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 130
    iget-object v1, p1, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    .line 132
    return-void
.end method

.method public clear()V
    .registers 2

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 155
    return-void
.end method

.method public clone()Landroid/util/LongArray;
    .registers 3

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "clone":Landroid/util/LongArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArray;

    move-object v0, v1

    .line 162
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/util/LongArray;->mValues:[J
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_12} :catch_13

    .line 165
    goto :goto_14

    .line 163
    :catch_13
    move-exception v1

    .line 166
    :goto_14
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)J
    .registers 4
    .param p1, "index"    # I

    .line 174
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 175
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .registers 7
    .param p1, "value"    # J

    .line 191
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .line 192
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_11

    .line 193
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_e

    .line 194
    return v1

    .line 192
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 197
    .end local v1    # "i":I
    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method public remove(I)V
    .registers 5
    .param p1, "index"    # I

    .line 204
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 205
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 207
    return-void
.end method

.method public resize(I)V
    .registers 6
    .param p1, "newSize"    # I

    .line 86
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 87
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    array-length v1, v0

    if-gt p1, v1, :cond_f

    .line 88
    array-length v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_16

    .line 90
    :cond_f
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 92
    :goto_16
    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 93
    return-void
.end method

.method public set(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 182
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 183
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 184
    return-void
.end method

.method public size()I
    .registers 2

    .line 214
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    return v0
.end method

.method public toArray()[J
    .registers 3

    .line 221
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
