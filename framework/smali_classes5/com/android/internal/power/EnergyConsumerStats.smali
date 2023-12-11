.class public Lcom/android/internal/power/EnergyConsumerStats;
.super Ljava/lang/Object;
.source "EnergyConsumerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/EnergyConsumerStats$Config;,
        Lcom/android/internal/power/EnergyConsumerStats$StandardPowerBucket;
    }
.end annotation


# static fields
.field private static final INVALID_STATE:I = -0x1

.field public static final NUMBER_STANDARD_POWER_BUCKETS:I = 0xa

.field public static final POWER_BUCKET_BLUETOOTH:I = 0x5

.field public static final POWER_BUCKET_CAMERA:I = 0x8

.field public static final POWER_BUCKET_CPU:I = 0x3

.field public static final POWER_BUCKET_GNSS:I = 0x6

.field public static final POWER_BUCKET_MOBILE_RADIO:I = 0x7

.field public static final POWER_BUCKET_PHONE:I = 0x9

.field public static final POWER_BUCKET_SCREEN_DOZE:I = 0x1

.field public static final POWER_BUCKET_SCREEN_ON:I = 0x0

.field public static final POWER_BUCKET_SCREEN_OTHER:I = 0x2

.field public static final POWER_BUCKET_UNKNOWN:I = -0x1

.field public static final POWER_BUCKET_WIFI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MeasuredEnergyStats"


# instance fields
.field private final mAccumulatedChargeMicroCoulomb:[J

.field private mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

.field private final mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

.field private mState:I

.field private mStateChangeTimestampMs:J


# direct methods
.method static bridge synthetic -$$Nest$smindexToCustomBucket(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->indexToCustomBucket(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidStandardBucket(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->isValidStandardBucket(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V
    .registers 7
    .param p1, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    .line 249
    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 250
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    .line 251
    .local v0, "numTotalBuckets":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    .line 254
    const/4 v1, 0x0

    .local v1, "stdBucket":I
    :goto_11
    const/16 v2, 0xa

    if-ge v1, v2, :cond_28

    .line 255
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmSupportedStandardBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-nez v2, :cond_25

    .line 256
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    .line 254
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 259
    .end local v1    # "stdBucket":I
    :cond_28
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    .line 274
    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .local v0, "size":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    .line 278
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 280
    new-array v1, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_35

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 283
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    sget-object v3, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v3, v2, v1

    .line 281
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v1    # "i":I
    :cond_35
    goto :goto_39

    .line 288
    :cond_36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 290
    :goto_39
    return-void
.end method

.method private static checkValidStandardBucket(I)V
    .registers 4
    .param p0, "bucket"    # I

    .line 685
    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->isValidStandardBucket(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 688
    return-void

    .line 686
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal StandardPowerBucket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private containsInterestingData()Z
    .registers 6

    .line 581
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 582
    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_10

    const/4 v1, 0x1

    return v1

    .line 581
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 584
    .end local v0    # "index":I
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static createAndReadSummaryFromParcel(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/EnergyConsumerStats;
    .registers 9
    .param p0, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 550
    .local v0, "arraySize":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 552
    :cond_8
    if-nez p0, :cond_23

    .line 554
    new-instance v2, Lcom/android/internal/power/EnergyConsumerStats;

    new-instance v3, Lcom/android/internal/power/EnergyConsumerStats$Config;

    new-array v4, v0, [Z

    const/4 v5, 0x0

    new-array v5, v5, [I

    const-string v6, ""

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/internal/power/EnergyConsumerStats$Config;-><init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    .line 556
    .local v2, "mes":Lcom/android/internal/power/EnergyConsumerStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 557
    return-object v1

    .line 560
    .end local v2    # "mes":Lcom/android/internal/power/EnergyConsumerStats;
    :cond_23
    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v2

    if-eq v0, v2, :cond_5e

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of MeasuredEnergyStats parcel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match config ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 562
    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    const-string v3, "MeasuredEnergyStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v2, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    .line 565
    .restart local v2    # "mes":Lcom/android/internal/power/EnergyConsumerStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 566
    return-object v1

    .line 569
    .end local v2    # "mes":Lcom/android/internal/power/EnergyConsumerStats;
    :cond_5e
    new-instance v2, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    .line 570
    .local v2, "stats":Lcom/android/internal/power/EnergyConsumerStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 571
    invoke-direct {v2}, Lcom/android/internal/power/EnergyConsumerStats;->containsInterestingData()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 572
    return-object v2

    .line 575
    :cond_6d
    return-object v1
.end method

.method public static createFromParcel(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/EnergyConsumerStats;
    .registers 3
    .param p0, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_8

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_8
    new-instance v0, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static customBucketToIndex(I)I
    .registers 2
    .param p0, "customBucket"    # I

    .line 677
    add-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static getDisplayPowerBucket(I)I
    .registers 2
    .param p0, "screenState"    # I

    .line 522
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 523
    const/4 v0, 0x0

    return v0

    .line 525
    :cond_8
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 526
    const/4 v0, 0x1

    return v0

    .line 528
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method private static indexToCustomBucket(I)I
    .registers 2
    .param p0, "index"    # I

    .line 681
    add-int/lit8 v0, p0, -0xa

    return v0
.end method

.method private isIndexSupported(I)Z
    .registers 6
    .param p1, "index"    # I

    .line 635
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isValidStandardBucket(I)Z
    .registers 2
    .param p0, "bucket"    # I

    .line 691
    if-ltz p0, :cond_8

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .local v0, "numWrittenEntries":I
    const/4 v1, 0x0

    .local v1, "entry":I
    :goto_5
    if-ge v1, v0, :cond_4d

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 324
    .local v3, "chargeUC":J
    const/4 v5, 0x0

    .line 325
    .local v5, "multiStateCounter":Lcom/android/internal/os/LongMultiStateCounter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 326
    sget-object v6, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/internal/os/LongMultiStateCounter;

    .line 327
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    if-eqz v6, :cond_30

    .line 328
    invoke-virtual {v5}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v7}, Lcom/android/internal/power/EnergyConsumerStats$Config;->getStateNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-eq v6, v7, :cond_31

    .line 329
    :cond_30
    const/4 v5, 0x0

    .line 333
    :cond_31
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    if-ge v2, v6, :cond_4a

    .line 334
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/power/EnergyConsumerStats;->setValueIfSupported(IJ)V

    .line 335
    if-eqz v5, :cond_4a

    .line 336
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v6, :cond_46

    .line 337
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    new-array v6, v6, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 340
    :cond_46
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v5, v6, v2

    .line 321
    .end local v2    # "index":I
    .end local v3    # "chargeUC":J
    .end local v5    # "multiStateCounter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 344
    .end local v1    # "entry":I
    :cond_4d
    return-void
.end method

.method private reset()V
    .registers 5

    .line 603
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    .line 604
    .local v0, "numIndices":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 605
    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/power/EnergyConsumerStats;->setValueIfSupported(IJ)V

    .line 606
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v2, :cond_19

    aget-object v2, v2, v1

    if-eqz v2, :cond_19

    .line 608
    invoke-virtual {v2}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    .line 604
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 611
    .end local v1    # "index":I
    :cond_1c
    return-void
.end method

.method public static resetIfNotNull(Lcom/android/internal/power/EnergyConsumerStats;)V
    .registers 1
    .param p0, "stats"    # Lcom/android/internal/power/EnergyConsumerStats;

    .line 615
    if-eqz p0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/power/EnergyConsumerStats;->reset()V

    .line 616
    :cond_5
    return-void
.end method

.method private setValueIfSupported(IJ)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 620
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    .line 621
    aput-wide p2, v0, p1

    .line 623
    :cond_c
    return-void
.end method

.method private updateEntry(IJJ)V
    .registers 13
    .param p1, "index"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 413
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_50

    .line 414
    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 415
    iget v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_86

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 416
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_25

    .line 417
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 420
    :cond_25
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v0, v0, p1

    .line 422
    .local v0, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v0, :cond_48

    .line 423
    new-instance v1, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v0, v1

    .line 424
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v0, v1, p1

    .line 425
    iget v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    iget-wide v5, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 426
    iget-wide v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 428
    :cond_48
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 429
    .end local v0    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    goto :goto_86

    .line 431
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to unavailable bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 432
    invoke-static {v1, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/EnergyConsumerStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whose value was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_86
    :goto_86
    return-void
.end method

.method private writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "out"    # Landroid/os/Parcel;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 354
    .local v0, "posOfNumWrittenEntries":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v2, 0x0

    .line 357
    .local v2, "numWrittenEntries":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_a
    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v5, v4

    if-ge v3, v5, :cond_3a

    .line 358
    aget-wide v4, v4, v3

    .line 359
    .local v4, "charge":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_18

    goto :goto_37

    .line 361
    :cond_18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v6, :cond_32

    aget-object v6, v6, v3

    if-eqz v6, :cond_32

    .line 365
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    .line 368
    :cond_32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    :goto_35
    add-int/lit8 v2, v2, 0x1

    .line 357
    .end local v4    # "charge":J
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 372
    .end local v3    # "index":I
    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 373
    .local v1, "currPos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 374
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 376
    return-void
.end method

.method public static writeSummaryToParcel(Lcom/android/internal/power/EnergyConsumerStats;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "stats"    # Lcom/android/internal/power/EnergyConsumerStats;
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 593
    if-nez p0, :cond_7

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    return-void

    .line 597
    :cond_7
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 599
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 640
    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_6
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_77

    .line 642
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v1, v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/EnergyConsumerStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 645
    invoke-direct {p0, v0}, Lcom/android/internal/power/EnergyConsumerStats;->isIndexSupported(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 646
    const-string v1, " (unsupported)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v1, :cond_68

    .line 649
    aget-object v1, v1, v0

    .line 651
    .local v1, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-eqz v1, :cond_68

    .line 652
    const-string v2, " ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_63

    .line 654
    if-eqz v2, :cond_49

    .line 655
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    :cond_49
    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 661
    .end local v2    # "i":I
    :cond_63
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    .end local v1    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_68
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_74

    .line 665
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 668
    .end local v0    # "index":I
    :cond_77
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 669
    return-void
.end method

.method public getAccumulatedCustomBucketCharge(I)J
    .registers 4
    .param p1, "customBucket"    # I

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 502
    const-wide/16 v0, -0x1

    return-wide v0

    .line 504
    :cond_9
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getAccumulatedCustomBucketCharges()[J
    .registers 5

    .line 511
    invoke-virtual {p0}, Lcom/android/internal/power/EnergyConsumerStats;->getNumberCustomPowerBuckets()I

    move-result v0

    new-array v0, v0, [J

    .line 512
    .local v0, "charges":[J
    const/4 v1, 0x0

    .local v1, "bucket":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 513
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {v1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v3

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 515
    .end local v1    # "bucket":I
    :cond_17
    return-object v0
.end method

.method public getAccumulatedStandardBucketCharge(I)J
    .registers 4
    .param p1, "bucket"    # I

    .line 470
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getAccumulatedStandardBucketCharge(II)J
    .registers 6
    .param p1, "bucket"    # I
    .param p2, "state"    # I

    .line 481
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 482
    const-wide/16 v0, -0x1

    return-wide v0

    .line 484
    :cond_b
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_12

    .line 485
    return-wide v1

    .line 487
    :cond_12
    aget-object v0, v0, p1

    .line 488
    .local v0, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v0, :cond_17

    .line 489
    return-wide v1

    .line 491
    :cond_17
    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getNumberCustomPowerBuckets()I
    .registers 2

    .line 673
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public isStandardBucketSupported(I)Z
    .registers 3
    .param p1, "bucket"    # I

    .line 630
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    .line 631
    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isIndexSupported(I)Z

    move-result v0

    return v0
.end method

.method public isValidCustomBucket(I)Z
    .registers 4
    .param p1, "customBucket"    # I

    .line 697
    if-ltz p1, :cond_d

    .line 698
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 697
    :goto_e
    return v0
.end method

.method public setState(IJ)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 445
    iput p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    .line 446
    iput-wide p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    .line 447
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_f

    .line 448
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 451
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_3f

    .line 452
    aget-object v1, v1, v0

    .line 453
    .local v1, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v1, :cond_37

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v2, v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 454
    new-instance v2, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v1, v2

    .line 455
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 456
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v1, v2, v0

    .line 458
    :cond_37
    if-eqz v1, :cond_3c

    .line 459
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 451
    .end local v1    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 462
    .end local v0    # "i":I
    :cond_3f
    return-void
.end method

.method public updateCustomBucket(IJ)V
    .registers 10
    .param p1, "customBucket"    # I
    .param p2, "chargeDeltaUC"    # J

    .line 395
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/EnergyConsumerStats;->updateCustomBucket(IJJ)V

    .line 396
    return-void
.end method

.method public updateCustomBucket(IJJ)V
    .registers 14
    .param p1, "customBucket"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to update invalid custom bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 407
    :cond_1f
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v0

    .line 408
    .local v0, "index":I
    move-object v2, p0

    move v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/power/EnergyConsumerStats;->updateEntry(IJJ)V

    .line 409
    return-void
.end method

.method public updateStandardBucket(IJ)V
    .registers 10
    .param p1, "bucket"    # I
    .param p2, "chargeDeltaUC"    # J

    .line 380
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/EnergyConsumerStats;->updateStandardBucket(IJJ)V

    .line 381
    return-void
.end method

.method public updateStandardBucket(IJJ)V
    .registers 6
    .param p1, "bucket"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 389
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    .line 390
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/power/EnergyConsumerStats;->updateEntry(IJJ)V

    .line 391
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;

    .line 294
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v3, v2

    move v4, v1

    :goto_18
    if-ge v4, v3, :cond_2e

    aget-object v5, v2, v4

    .line 299
    .local v5, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-eqz v5, :cond_25

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    invoke-virtual {v5, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    .line 303
    :cond_25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    .end local v5    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 307
    :cond_2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 309
    :cond_2e
    return-void
.end method
