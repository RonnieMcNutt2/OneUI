.class final Lcom/android/framework/protobuf/DoubleArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "DoubleArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$DoubleList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$DoubleList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/android/framework/protobuf/DoubleArrayList;


# instance fields
.field private array:[D

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>([DI)V

    sput-object v0, Lcom/android/framework/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/DoubleArrayList;

    .line 50
    invoke-virtual {v0}, Lcom/android/framework/protobuf/DoubleArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>([DI)V

    .line 69
    return-void
.end method

.method private constructor <init>([DI)V
    .registers 3
    .param p1, "other"    # [D
    .param p2, "size"    # I

    .line 74
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    .line 76
    iput p2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    .line 77
    return-void
.end method

.method private addDouble(ID)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 211
    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 212
    if-ltz p1, :cond_3e

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-gt p1, v0, :cond_3e

    .line 216
    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 218
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 221
    :cond_15
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 222
    .local v0, "length":I
    new-array v2, v0, [D

    .line 225
    .local v2, "newArray":[D
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    .line 232
    .end local v0    # "length":I
    .end local v2    # "newArray":[D
    :goto_2d
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v0, p1

    .line 233
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    .line 234
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    .line 235
    return-void

    .line 213
    :cond_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/android/framework/protobuf/DoubleArrayList;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/framework/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/DoubleArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .registers 4
    .param p1, "index"    # I

    .line 290
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 293
    return-void

    .line 291
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Double;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 190
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 191
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/DoubleArrayList;->add(ILjava/lang/Double;)V

    return-void
.end method

.method public add(Ljava/lang/Double;)Z
    .registers 4
    .param p1, "element"    # Ljava/lang/Double;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 45
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->add(Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 239
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 241
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-nez v0, :cond_f

    .line 245
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 248
    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 249
    .local v0, "list":Lcom/android/framework/protobuf/DoubleArrayList;
    iget v1, v0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 250
    return v2

    .line 253
    :cond_18
    iget v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    const v4, 0x7fffffff

    sub-int/2addr v4, v3

    .line 254
    .local v4, "overflow":I
    if-lt v4, v1, :cond_40

    .line 259
    add-int/2addr v3, v1

    .line 260
    .local v3, "newSize":I
    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    array-length v5, v1

    if-le v3, v5, :cond_2c

    .line 261
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    .line 264
    :cond_2c
    iget-object v1, v0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget-object v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v6, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    .line 266
    iget v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    .line 267
    return v2

    .line 256
    .end local v3    # "newSize":I
    :cond_40
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public addDouble(D)V
    .registers 8
    .param p1, "element"    # D

    .line 196
    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 197
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    array-length v2, v1

    if-ne v0, v2, :cond_18

    .line 199
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 200
    .local v2, "length":I
    new-array v3, v2, [D

    .line 202
    .local v3, "newArray":[D
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iput-object v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    .line 206
    .end local v2    # "length":I
    .end local v3    # "newArray":[D
    :cond_18
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    aput-wide p1, v0, v1

    .line 207
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 94
    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-nez v1, :cond_d

    .line 97
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 100
    .local v1, "other":Lcom/android/framework/protobuf/DoubleArrayList;
    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_18

    .line 101
    return v4

    .line 104
    :cond_18
    iget-object v2, v1, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    .line 105
    .local v2, "arr":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-ge v3, v5, :cond_35

    .line 106
    iget-object v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    aget-wide v7, v2, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_32

    .line 107
    return v4

    .line 105
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 111
    .end local v3    # "i":I
    :cond_35
    return v0
.end method

.method public get(I)Ljava/lang/Double;
    .registers 4
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "index"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_19

    .line 118
    iget-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 119
    .local v2, "bits":J
    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v5

    add-int v0, v4, v5

    .line 117
    .end local v2    # "bits":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 9
    .param p1, "element"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 146
    return v1

    .line 148
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 149
    .local v2, "unboxedElement":D
    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result v0

    .line 150
    .local v0, "numElems":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v0, :cond_20

    .line 151
    iget-object v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v5, v5, v4

    cmpl-double v5, v5, v2

    if-nez v5, :cond_1d

    .line 152
    return v4

    .line 150
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 155
    .end local v4    # "i":I
    :cond_20
    return v1
.end method

.method public mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;
    .registers 5
    .param p1, "capacity"    # I

    .line 126
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-lt p1, v0, :cond_12

    .line 129
    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>([DI)V

    return-object v0

    .line 127
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Double;
    .registers 7
    .param p1, "index"    # I

    .line 272
    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 273
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 274
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 275
    .local v1, "value":D
    iget v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    .line 276
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    :cond_18
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    .line 279
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->remove(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected removeRange(II)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 81
    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 82
    if-lt p2, p1, :cond_1b

    .line 86
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    .line 88
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    .line 89
    return-void

    .line 83
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 170
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->setDouble(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/DoubleArrayList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)D
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 175
    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 176
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 177
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 178
    .local v1, "previousValue":D
    aput-wide p2, v0, p1

    .line 179
    return-wide v1
.end method

.method public size()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    return v0
.end method
