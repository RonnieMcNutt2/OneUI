.class public Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyBucketCreator"
.end annotation


# instance fields
.field private final mBucketStartIndices:[I

.field private final mNumBuckets:I

.field private final mNumFrequencies:I


# direct methods
.method public constructor <init>([JI)V
    .registers 5
    .param p1, "frequencies"    # [J
    .param p2, "targetNumBuckets"    # I

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    array-length v0, p1

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    .line 411
    invoke-static {p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getClusterStartIndices([J)[I

    move-result-object v1

    .line 412
    .local v1, "clusterStartIndices":[I
    nop

    .line 413
    invoke-static {v1, p2, v0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getBucketStartIndices([III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    .line 414
    array-length v0, v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    .line 415
    return-void
.end method

.method private static getBucketStartIndices([III)[I
    .registers 13
    .param p0, "clusterStartIndices"    # [I
    .param p1, "targetNumBuckets"    # I
    .param p2, "numFrequencies"    # I

    .line 472
    array-length v0, p0

    .line 476
    .local v0, "numClusters":I
    if-le v0, p1, :cond_9

    .line 477
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    .line 480
    :cond_9
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 481
    .local v1, "bucketStartIndices":Landroid/util/IntArray;
    const/4 v2, 0x0

    .local v2, "clusterIdx":I
    :goto_f
    if-ge v2, v0, :cond_44

    .line 482
    invoke-static {v2, p0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v3

    .line 483
    .local v3, "clusterStartIdx":I
    nop

    .line 484
    invoke-static {v2, p0, p2}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v4

    .line 487
    .local v4, "clusterEndIdx":I
    add-int/lit8 v5, v0, -0x1

    if-eq v2, v5, :cond_21

    .line 488
    div-int v5, p1, v0

    .local v5, "numBucketsInCluster":I
    goto :goto_29

    .line 492
    .end local v5    # "numBucketsInCluster":I
    :cond_21
    div-int v5, p1, v0

    .line 493
    .local v5, "previousBucketsInCluster":I
    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v5

    sub-int v6, p1, v6

    move v5, v6

    .line 497
    .local v5, "numBucketsInCluster":I
    :goto_29
    sub-int v6, v4, v3

    .line 500
    .local v6, "numFrequenciesInCluster":I
    div-int v7, v6, v5

    .line 501
    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 502
    .local v7, "numFrequenciesInBucket":I
    const/4 v8, 0x0

    .local v8, "bucketIdx":I
    :goto_33
    if-ge v8, v5, :cond_41

    .line 503
    mul-int v9, v8, v7

    add-int/2addr v9, v3

    .line 506
    .local v9, "bucketStartIdx":I
    if-lt v9, v4, :cond_3b

    .line 507
    goto :goto_41

    .line 509
    :cond_3b
    invoke-virtual {v1, v9}, Landroid/util/IntArray;->add(I)V

    .line 502
    .end local v9    # "bucketStartIdx":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 481
    .end local v3    # "clusterStartIdx":I
    .end local v4    # "clusterEndIdx":I
    .end local v5    # "numBucketsInCluster":I
    .end local v6    # "numFrequenciesInCluster":I
    .end local v7    # "numFrequenciesInBucket":I
    .end local v8    # "bucketIdx":I
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 512
    .end local v2    # "clusterIdx":I
    :cond_44
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    return-object v2
.end method

.method private static getClusterStartIndices([J)[I
    .registers 7
    .param p0, "frequencies"    # [J

    .line 459
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 460
    .local v0, "indices":Landroid/util/IntArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_21

    .line 462
    aget-wide v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-wide v4, p0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    .line 463
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 461
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 466
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private static getLowerBound(I[I)I
    .registers 3
    .param p0, "index"    # I
    .param p1, "startIndices"    # [I

    .line 516
    aget v0, p1, p0

    return v0
.end method

.method private static getUpperBound(I[II)I
    .registers 4
    .param p0, "index"    # I
    .param p1, "startIndices"    # [I
    .param p2, "max"    # I

    .line 520
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq p0, v0, :cond_a

    .line 521
    add-int/lit8 v0, p0, 0x1

    aget v0, p1, v0

    return v0

    .line 523
    :cond_a
    return p2
.end method


# virtual methods
.method public bucketFrequencies([J)[I
    .registers 6
    .param p1, "frequencies"    # [J

    .line 443
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 444
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v0, v0, [I

    .line 445
    .local v0, "buckets":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 446
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    aget v2, v2, v1

    aget-wide v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 448
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method public bucketValues([J)[I
    .registers 11
    .param p1, "values"    # [J

    .line 427
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 428
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v0, v0, [I

    .line 429
    .local v0, "buckets":[I
    const/4 v1, 0x0

    .local v1, "bucketIdx":I
    :goto_10
    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    if-ge v1, v2, :cond_33

    .line 430
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    invoke-static {v1, v2}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v2

    .line 431
    .local v2, "bucketStartIdx":I
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    array-length v4, p1

    .line 432
    invoke-static {v1, v3, v4}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v3

    .line 433
    .local v3, "bucketEndIdx":I
    move v4, v2

    .local v4, "valuesIdx":I
    :goto_22
    if-ge v4, v3, :cond_30

    .line 434
    aget v5, v0, v1

    int-to-long v5, v5

    aget-wide v7, p1, v4

    add-long/2addr v5, v7

    long-to-int v5, v5

    aput v5, v0, v1

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 429
    .end local v2    # "bucketStartIdx":I
    .end local v3    # "bucketEndIdx":I
    .end local v4    # "valuesIdx":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 437
    .end local v1    # "bucketIdx":I
    :cond_33
    return-object v0
.end method
