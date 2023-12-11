.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LongSparseArray$StringParcelling;
    }
.end annotation

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

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J
    .registers 1

    iget-object p0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSize(Landroid/util/LongSparseArray;)I
    .registers 1

    iget p0, p0, Landroid/util/LongSparseArray;->mSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmKeys(Landroid/util/LongSparseArray;[J)V
    .registers 2

    iput-object p1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSize(Landroid/util/LongSparseArray;I)V
    .registers 2

    iput p1, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValues(Landroid/util/LongSparseArray;[Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 72
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 82
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 83
    if-nez p1, :cond_11

    .line 84
    sget-object v1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 85
    sget-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1d

    .line 87
    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 88
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 90
    :goto_1d
    iput v0, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 91
    return-void
.end method

.method private gc()V
    .registers 9

    .line 186
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 187
    .local v0, "n":I
    const/4 v1, 0x0

    .line 188
    .local v1, "o":I
    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 189
    .local v2, "keys":[J
    iget-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 191
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v0, :cond_20

    .line 192
    aget-object v5, v3, v4

    .line 194
    .local v5, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_1d

    .line 195
    if-eq v4, v1, :cond_1b

    .line 196
    aget-wide v6, v2, v4

    aput-wide v6, v2, v1

    .line 197
    aput-object v5, v3, v1

    .line 198
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 201
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 191
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 205
    .end local v4    # "i":I
    :cond_20
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 206
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 209
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 419
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v1, v1, v2

    cmp-long v1, p1, v1

    if-gtz v1, :cond_12

    .line 420
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 421
    return-void

    .line 424
    :cond_12
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1e

    .line 425
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 428
    :cond_1e
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 429
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 430
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 431
    return-void
.end method

.method public clear()V
    .registers 5

    .line 403
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 404
    .local v0, "n":I
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 406
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_d

    .line 407
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 410
    .end local v2    # "i":I
    :cond_d
    const/4 v2, 0x0

    iput v2, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 411
    iput-boolean v2, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 412
    return-void
.end method

.method public clone()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    move-object v0, v1

    .line 99
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 100
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 103
    goto :goto_1e

    .line 101
    :catch_1d
    move-exception v1

    .line 104
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

    .line 60
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .registers 7
    .param p1, "key"    # J

    .line 134
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_17

    .line 137
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_17

    .line 138
    aput-object v3, v1, v0

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 142
    :cond_17
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 112
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 123
    .local v0, "i":I
    if-ltz v0, :cond_14

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    goto :goto_14

    .line 126
    :cond_13
    return-object v1

    .line 124
    :cond_14
    :goto_14
    return-object p3
.end method

.method public indexOfKey(J)I
    .registers 5
    .param p1, "key"    # J

    .line 342
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 343
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 346
    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

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

    .line 358
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 359
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 362
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 363
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 364
    return v0

    .line 362
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 367
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

    .line 381
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 382
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 385
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    .line 386
    if-nez p1, :cond_15

    .line 387
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    .line 388
    return v0

    .line 391
    :cond_15
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 392
    return v0

    .line 385
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 396
    .end local v0    # "i":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public keyAt(I)J
    .registers 4
    .param p1, "index"    # I

    .line 271
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 274
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 276
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 277
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 280
    :cond_16
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 219
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 220
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_52

    .line 222
    :cond_f
    not-int v0, v0

    .line 224
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_23

    .line 225
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 226
    aput-object p3, v2, v0

    .line 227
    return-void

    .line 230
    :cond_23
    iget-boolean v2, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_38

    .line 231
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 234
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    not-int v0, v1

    .line 237
    :cond_38
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 238
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v0, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 239
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 241
    :goto_52
    return-void
.end method

.method public remove(J)V
    .registers 3
    .param p1, "key"    # J

    .line 148
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 149
    return-void
.end method

.method public removeAt(I)V
    .registers 5
    .param p1, "index"    # I

    .line 172
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 175
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 177
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 178
    aput-object v2, v0, p1

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 181
    :cond_1c
    return-void
.end method

.method public removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/LongObjPredicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p1, "filter":Lcom/android/internal/util/function/LongObjPredicate;, "Lcom/android/internal/util/function/LongObjPredicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_24

    .line 156
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_21

    iget-object v3, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v3, v3, v0

    invoke-interface {p1, v3, v4, v1}, Lcom/android/internal/util/function/LongObjPredicate;->test(JLjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 157
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 155
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 161
    .end local v0    # "i":I
    :cond_24
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

    .line 324
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 327
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 329
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 330
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 333
    :cond_16
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 334
    return-void
.end method

.method public size()I
    .registers 2

    .line 248
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 249
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 252
    :cond_7
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 442
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 443
    const-string/jumbo v0, "{}"

    return-object v0

    .line 446
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 447
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_42

    .line 449
    if-lez v1, :cond_24

    .line 450
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 453
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 456
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_3a

    .line 457
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 459
    :cond_3a
    const-string v5, "(this Map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 462
    .end local v1    # "i":I
    :cond_42
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
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

    .line 301
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 304
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 306
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 307
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 310
    :cond_16
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
