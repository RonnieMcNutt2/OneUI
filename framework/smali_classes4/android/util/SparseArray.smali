.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 74
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 84
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 85
    if-nez p1, :cond_11

    .line 86
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 87
    sget-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1c

    .line 89
    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 90
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 92
    :goto_1c
    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 93
    return-void
.end method

.method private gc()V
    .registers 8

    .line 221
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 222
    .local v0, "n":I
    const/4 v1, 0x0

    .line 223
    .local v1, "o":I
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 224
    .local v2, "keys":[I
    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 226
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v0, :cond_20

    .line 227
    aget-object v5, v3, v4

    .line 229
    .local v5, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_1d

    .line 230
    if-eq v4, v1, :cond_1b

    .line 231
    aget v6, v2, v4

    aput v6, v2, v1

    .line 232
    aput-object v5, v3, v1

    .line 233
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 236
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 226
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 240
    .end local v4    # "i":I
    :cond_20
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 241
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 244
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 465
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_10

    .line 466
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    return-void

    .line 470
    :cond_10
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    .line 471
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 474
    :cond_1c
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 475
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 476
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 477
    return-void
.end method

.method public clear()V
    .registers 5

    .line 449
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 450
    .local v0, "n":I
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 452
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_d

    .line 453
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 456
    .end local v2    # "i":I
    :cond_d
    const/4 v2, 0x0

    iput v2, p0, Landroid/util/SparseArray;->mSize:I

    .line 457
    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 458
    return-void
.end method

.method public clone()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    .line 100
    .local v0, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v0, v1

    .line 101
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseArray;->mKeys:[I

    .line 102
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 105
    goto :goto_1e

    .line 103
    :catch_1d
    move-exception v1

    .line 106
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

    .line 59
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public contains(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 117
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public contentEquals(Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)Z"
        }
    .end annotation

    .line 519
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "other":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 520
    return v0

    .line 523
    :cond_4
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 524
    .local v1, "size":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 525
    return v0

    .line 529
    :cond_f
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_10
    if-ge v2, v1, :cond_2f

    .line 530
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v3, v3, v2

    iget-object v4, p1, Landroid/util/SparseArray;->mKeys:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v2

    .line 531
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2e

    .line 529
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 532
    :cond_2e
    :goto_2e
    return v0

    .line 536
    .end local v2    # "index":I
    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method public contentHashCode()I
    .registers 8

    .line 547
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    .line 548
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 550
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_6
    if-ge v2, v1, :cond_1d

    .line 551
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v3, v3, v2

    .line 552
    .local v3, "key":I
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v2

    .line 553
    .local v4, "value":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v5, v0, 0x1f

    add-int/2addr v5, v3

    .line 554
    .end local v0    # "hash":I
    .local v5, "hash":I
    mul-int/lit8 v0, v5, 0x1f

    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    .line 550
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    .end local v5    # "hash":I
    .restart local v0    # "hash":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 556
    .end local v2    # "index":I
    :cond_1d
    return v0
.end method

.method public delete(I)V
    .registers 6
    .param p1, "key"    # I

    .line 147
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 149
    .local v0, "i":I
    if-ltz v0, :cond_17

    .line 150
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_17

    .line 151
    aput-object v3, v1, v0

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 155
    :cond_17
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 125
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 134
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_14

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    goto :goto_14

    .line 139
    :cond_13
    return-object v1

    .line 137
    :cond_14
    :goto_14
    return-object p2
.end method

.method public indexOfKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 385
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 386
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 389
    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 403
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 404
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 407
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 408
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 409
    return v0

    .line 407
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 413
    .end local v0    # "i":I
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public indexOfValueByValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 427
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 428
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 431
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    .line 432
    if-nez p1, :cond_15

    .line 433
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    .line 434
    return v0

    .line 437
    :cond_15
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 438
    return v0

    .line 431
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 442
    .end local v0    # "i":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 314
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 317
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 319
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 320
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 323
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 262
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 263
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_52

    .line 265
    :cond_f
    not-int v0, v0

    .line 267
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_23

    .line 268
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 269
    aput-object p2, v2, v0

    .line 270
    return-void

    .line 273
    :cond_23
    iget-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_38

    .line 274
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 277
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    not-int v0, v1

    .line 280
    :cond_38
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 281
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 282
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 284
    :goto_52
    return-void
.end method

.method public remove(I)V
    .registers 2
    .param p1, "key"    # I

    .line 179
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 180
    return-void
.end method

.method public removeAt(I)V
    .registers 5
    .param p1, "index"    # I

    .line 191
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 194
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 196
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 197
    aput-object v2, v0, p1

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 200
    :cond_1c
    return-void
.end method

.method public removeAtRange(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 212
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_11

    .line 214
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 216
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 164
    .local v0, "i":I
    if-ltz v0, :cond_1a

    .line 165
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_1a

    .line 166
    aget-object v2, v1, v0

    .line 167
    .local v2, "old":Ljava/lang/Object;, "TE;"
    aput-object v3, v1, v0

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 169
    return-object v2

    .line 172
    .end local v2    # "old":Ljava/lang/Object;, "TE;"
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 367
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 370
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 372
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 373
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 376
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 377
    return-void
.end method

.method public size()I
    .registers 2

    .line 291
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 292
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 295
    :cond_7
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 488
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 489
    const-string/jumbo v0, "{}"

    return-object v0

    .line 492
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 493
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v2, :cond_42

    .line 495
    if-lez v1, :cond_24

    .line 496
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 499
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 502
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3a

    .line 503
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 505
    :cond_3a
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 508
    .end local v1    # "i":I
    :cond_42
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 344
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 347
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 349
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 350
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 353
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
