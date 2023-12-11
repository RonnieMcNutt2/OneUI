.class final Landroid/os/PowerComponents$Builder;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final POWER_MODEL_UNINITIALIZED:B = -0x1t


# instance fields
.field private final mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic -$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 1

    iget-object p0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 13
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 467
    iget-object v0, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_28

    aget-object v4, v0, v3

    .line 468
    .local v4, "keys":[Landroid/os/BatteryConsumer$Key;
    array-length v5, v4

    move v6, v2

    :goto_12
    if-ge v6, v5, :cond_25

    aget-object v7, v4, v6

    .line 469
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    iget v8, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_22

    .line 470
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v10, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 468
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 467
    .end local v4    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 474
    :cond_28
    return-void
.end method

.method private addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 15
    .param p1, "otherData"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 539
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    iget-object v1, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ne v0, v1, :cond_e3

    .line 547
    const/16 v0, 0x12

    .local v0, "componentId":I
    :goto_e
    if-ltz v0, :cond_a1

    .line 549
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v1, v1, v0

    .line 550
    .local v1, "keys":[Landroid/os/BatteryConsumer$Key;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_9d

    aget-object v5, v1, v4

    .line 551
    .local v5, "key":Landroid/os/BatteryConsumer$Key;
    const/4 v6, 0x0

    .line 552
    .local v6, "otherKey":Landroid/os/BatteryConsumer$Key;
    iget-object v7, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v7, v7, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v7, v7, v0

    array-length v8, v7

    move v9, v3

    :goto_28
    if-ge v9, v8, :cond_37

    aget-object v10, v7, v9

    .line 553
    .local v10, "aKey":Landroid/os/BatteryConsumer$Key;
    invoke-virtual {v10, v5}, Landroid/os/BatteryConsumer$Key;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 554
    move-object v6, v10

    .line 555
    goto :goto_37

    .line 552
    .end local v10    # "aKey":Landroid/os/BatteryConsumer$Key;
    :cond_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 559
    :cond_37
    :goto_37
    if-nez v6, :cond_3a

    .line 560
    goto :goto_99

    .line 563
    :cond_3a
    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 564
    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v9

    iget v11, v6, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 565
    invoke-virtual {p1, v11}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v11

    add-double/2addr v9, v11

    .line 563
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 566
    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 567
    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v9

    iget v11, v6, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 568
    invoke-virtual {p1, v11}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 566
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 570
    iget v7, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6c

    .line 571
    goto :goto_99

    .line 574
    :cond_6c
    const/4 v7, 0x0

    .line 575
    .local v7, "undefined":Z
    iget v9, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    if-ne v9, v8, :cond_73

    .line 576
    const/4 v7, 0x1

    goto :goto_90

    .line 578
    :cond_73
    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v9

    .line 579
    .local v9, "powerModel":I
    iget v10, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {p1, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v10

    .line 580
    .local v10, "otherPowerModel":I
    if-ne v9, v8, :cond_8b

    .line 581
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v11, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v11, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    goto :goto_90

    .line 582
    :cond_8b
    if-eq v9, v10, :cond_90

    if-eq v10, v8, :cond_90

    .line 584
    const/4 v7, 0x1

    .line 588
    .end local v9    # "powerModel":I
    .end local v10    # "otherPowerModel":I
    :cond_90
    :goto_90
    if-eqz v7, :cond_99

    .line 589
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v9, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 550
    .end local v5    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v6    # "otherKey":Landroid/os/BatteryConsumer$Key;
    .end local v7    # "undefined":Z
    :cond_99
    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 548
    .end local v1    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_9d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_e

    .line 595
    .end local v0    # "componentId":I
    :cond_a1
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a9
    if-ltz v0, :cond_e2

    .line 596
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v1, v0

    .line 597
    .local v1, "powerColumnIndex":I
    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    .line 599
    .local v2, "otherPowerColumnIndex":I
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 600
    invoke-virtual {v3, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 599
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 603
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v3, v0

    .line 604
    .local v3, "usageColumnIndex":I
    iget-object v4, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v4, v0

    .line 606
    .local v4, "otherDurationColumnIndex":I
    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 607
    invoke-virtual {v5, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 606
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 595
    .end local v1    # "powerColumnIndex":I
    .end local v2    # "otherPowerColumnIndex":I
    .end local v3    # "usageColumnIndex":I
    .end local v4    # "otherDurationColumnIndex":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_a9

    .line 611
    .end local v0    # "i":I
    :cond_e2
    return-void

    .line 541
    :cond_e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of custom power components does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPowerAndDuration(Landroid/os/PowerComponents$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/os/PowerComponents$Builder;

    .line 531
    iget-object v0, p1, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 532
    return-void
.end method

.method public addPowerAndDuration(Landroid/os/PowerComponents;)V
    .registers 3
    .param p1, "other"    # Landroid/os/PowerComponents;

    .line 535
    invoke-static {p1}, Landroid/os/PowerComponents;->-$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 536
    return-void
.end method

.method public build()Landroid/os/PowerComponents;
    .registers 12

    .line 636
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {p0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 638
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_3c

    aget-object v4, v0, v3

    .line 639
    .local v4, "keys":[Landroid/os/BatteryConsumer$Key;
    array-length v5, v4

    move v6, v2

    :goto_1c
    if-ge v6, v5, :cond_39

    aget-object v7, v4, v6

    .line 640
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    iget v8, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_36

    .line 641
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v8

    if-ne v8, v9, :cond_36

    .line 642
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v9, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 639
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 638
    .end local v4    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 649
    :cond_3c
    new-instance v0, Landroid/os/PowerComponents;

    invoke-direct {v0, p0}, Landroid/os/PowerComponents;-><init>(Landroid/os/PowerComponents$Builder;)V

    return-object v0
.end method

.method public getTotalPower()D
    .registers 6

    .line 618
    const-wide/16 v0, 0x0

    .line 619
    .local v0, "totalPowerMah":D
    const/4 v2, 0x0

    .local v2, "componentId":I
    :goto_3
    const/16 v3, 0x13

    if-ge v2, v3, :cond_18

    .line 621
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 622
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeyOrThrow(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 621
    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 624
    .end local v2    # "componentId":I
    :cond_18
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v2, v3, :cond_30

    .line 625
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 628
    .end local v2    # "i":I
    :cond_30
    return-wide v0
.end method

.method public setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;
    .registers 7
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentPower"    # D
    .param p4, "powerModel"    # I

    .line 479
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 480
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 481
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v0, v1, p4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 483
    :cond_13
    return-object p0
.end method

.method public setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;
    .registers 8
    .param p1, "componentId"    # I
    .param p2, "componentPower"    # D

    .line 494
    add-int/lit16 v0, p1, -0x3e8

    .line 495
    .local v0, "index":I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_17

    .line 499
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 500
    return-object p0

    .line 496
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;
    .registers 8
    .param p1, "componentId"    # I
    .param p2, "componentUsageDurationMillis"    # J

    .line 519
    add-int/lit16 v0, p1, -0x3e8

    .line 520
    .local v0, "index":I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_17

    .line 525
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 527
    return-object p0

    .line 521
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;
    .registers 6
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentUsageDurationMillis"    # J

    .line 506
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 507
    return-object p0
.end method
