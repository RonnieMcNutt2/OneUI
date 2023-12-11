.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxLevelSteps"    # I

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1414
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1419
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1420
    return-void
.end method

.method public constructor <init>(I[J)V
    .registers 5
    .param p1, "numSteps"    # I
    .param p2, "steps"    # [J

    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1414
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1423
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1424
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1425
    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1426
    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .registers 10
    .param p1, "val"    # J
    .param p3, "topOffset"    # I
    .param p4, "out"    # Ljava/lang/StringBuilder;

    .line 1448
    const/4 v0, 0x0

    .line 1449
    .local v0, "hasData":Z
    :goto_1
    if-ltz p3, :cond_27

    .line 1450
    shr-long v1, p1, p3

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 1451
    .local v1, "digit":I
    add-int/lit8 p3, p3, -0x4

    .line 1452
    if-nez v0, :cond_10

    if-nez v1, :cond_10

    .line 1453
    goto :goto_1

    .line 1455
    :cond_10
    const/4 v0, 0x1

    .line 1456
    if-ltz v1, :cond_1e

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1e

    .line 1457
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 1459
    :cond_1e
    add-int/lit8 v2, v1, 0x61

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1461
    .end local v1    # "digit":I
    :goto_26
    goto :goto_1

    .line 1462
    :cond_27
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .registers 22
    .param p1, "numStepLevels"    # I
    .param p2, "modeBits"    # J
    .param p4, "elapsedRealtime"    # J

    .line 1661
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    iget v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1662
    .local v4, "stepCount":I
    iget-wide v5, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1663
    .local v5, "lastStepTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_40

    if-lez v1, :cond_40

    .line 1664
    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1665
    .local v7, "steps":[J
    sub-long v8, v2, v5

    .line 1666
    .local v8, "duration":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_17
    if-ge v10, v1, :cond_3b

    .line 1667
    array-length v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    invoke-static {v7, v13, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1668
    sub-int v11, v1, v10

    int-to-long v11, v11

    div-long v11, v8, v11

    .line 1669
    .local v11, "thisDuration":J
    sub-long/2addr v8, v11

    .line 1670
    const-wide v14, 0xffffffffffL

    cmp-long v14, v11, v14

    if-lez v14, :cond_34

    .line 1671
    const-wide v11, 0xffffffffffL

    .line 1673
    :cond_34
    or-long v14, v11, p2

    aput-wide v14, v7, v13

    .line 1666
    .end local v11    # "thisDuration":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 1675
    .end local v10    # "i":I
    :cond_3b
    add-int/2addr v4, v1

    .line 1676
    array-length v10, v7

    if-le v4, v10, :cond_40

    .line 1677
    array-length v4, v7

    .line 1680
    .end local v7    # "steps":[J
    .end local v8    # "duration":J
    :cond_40
    iput v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1681
    iput-wide v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1682
    return-void
.end method

.method public clearTime()V
    .registers 3

    .line 1579
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1580
    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .registers 23
    .param p1, "modesOfInterest"    # J
    .param p3, "modeValues"    # J
    .param p5, "outNumOfInterest"    # [I

    .line 1625
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1626
    .local v1, "steps":[J
    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1627
    .local v2, "count":I
    const-wide/16 v3, -0x1

    if-gtz v2, :cond_b

    .line 1628
    return-wide v3

    .line 1630
    :cond_b
    const-wide/16 v5, 0x0

    .line 1631
    .local v5, "total":J
    const/4 v7, 0x0

    .line 1632
    .local v7, "numOfInterest":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f
    if-ge v8, v2, :cond_3d

    .line 1633
    aget-wide v9, v1, v8

    const-wide/high16 v11, 0xff000000000000L

    and-long/2addr v9, v11

    const/16 v11, 0x30

    shr-long/2addr v9, v11

    .line 1635
    .local v9, "initMode":J
    aget-wide v11, v1, v8

    const-wide/high16 v13, -0x100000000000000L

    and-long/2addr v11, v13

    const/16 v13, 0x38

    shr-long/2addr v11, v13

    .line 1638
    .local v11, "modMode":J
    and-long v13, v11, p1

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_3a

    .line 1640
    and-long v13, v9, p1

    cmp-long v13, v13, p3

    if-nez v13, :cond_3a

    .line 1642
    add-int/lit8 v7, v7, 0x1

    .line 1643
    aget-wide v13, v1, v8

    const-wide v15, 0xffffffffffL

    and-long/2addr v13, v15

    add-long/2addr v5, v13

    .line 1632
    .end local v9    # "initMode":J
    .end local v11    # "modMode":J
    :cond_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 1647
    .end local v8    # "i":I
    :cond_3d
    if-gtz v7, :cond_40

    .line 1648
    return-wide v3

    .line 1651
    :cond_40
    if-eqz p5, :cond_45

    .line 1652
    const/4 v3, 0x0

    aput v7, p5, v3

    .line 1657
    :cond_45
    int-to-long v3, v7

    div-long v3, v5, v3

    const-wide/16 v8, 0x64

    mul-long/2addr v3, v8

    return-wide v3
.end method

.method public computeTimePerLevel()J
    .registers 10

    .line 1583
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1584
    .local v0, "steps":[J
    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1587
    .local v1, "numSteps":I
    if-gtz v1, :cond_9

    .line 1588
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1590
    :cond_9
    const-wide/16 v2, 0x0

    .line 1591
    .local v2, "total":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v1, :cond_1a

    .line 1592
    aget-wide v5, v0, v4

    const-wide v7, 0xffffffffffL

    and-long/2addr v5, v7

    add-long/2addr v2, v5

    .line 1591
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1594
    .end local v4    # "i":I
    :cond_1a
    int-to-long v4, v1

    div-long v4, v2, v4

    return-wide v4
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .registers 22
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1504
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1505
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1507
    .local v2, "i":I
    const-wide/16 v3, 0x0

    .line 1508
    .local v3, "out":J
    :goto_9
    const/16 v5, 0x2d

    if-ge v2, v1, :cond_49

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "c":C
    if-eq v6, v5, :cond_49

    .line 1509
    add-int/lit8 v2, v2, 0x1

    .line 1510
    const-wide/16 v5, 0x0

    sparse-switch v7, :sswitch_data_f8

    goto :goto_48

    .line 1517
    :sswitch_1c
    const-wide/high16 v5, 0x3000000000000L

    or-long/2addr v3, v5

    .line 1519
    goto :goto_48

    .line 1520
    :sswitch_20
    const-wide/high16 v5, 0x4000000000000L

    or-long/2addr v3, v5

    .line 1522
    goto :goto_48

    .line 1513
    :sswitch_24
    const-wide/high16 v5, 0x1000000000000L

    or-long/2addr v3, v5

    .line 1514
    goto :goto_48

    .line 1523
    :sswitch_28
    const-wide/high16 v5, 0x8000000000000L

    or-long/2addr v3, v5

    .line 1525
    goto :goto_48

    .line 1511
    :sswitch_2c
    or-long/2addr v3, v5

    .line 1512
    goto :goto_48

    .line 1515
    :sswitch_2e
    const-wide/high16 v5, 0x2000000000000L

    or-long/2addr v3, v5

    .line 1516
    goto :goto_48

    .line 1532
    :sswitch_32
    const-wide/high16 v5, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v3, v5

    .line 1534
    goto :goto_48

    .line 1535
    :sswitch_36
    const-wide/high16 v5, 0x400000000000000L

    or-long/2addr v3, v5

    .line 1537
    goto :goto_48

    .line 1528
    :sswitch_3a
    const-wide/high16 v5, 0x100000000000000L

    or-long/2addr v3, v5

    .line 1529
    goto :goto_48

    .line 1538
    :sswitch_3e
    const-wide/high16 v5, 0x800000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    .line 1526
    :sswitch_42
    or-long/2addr v3, v5

    .line 1527
    goto :goto_48

    .line 1530
    :sswitch_44
    const-wide/high16 v5, 0x200000000000000L

    or-long/2addr v3, v5

    .line 1531
    nop

    .line 1540
    :goto_48
    goto :goto_9

    .line 1543
    .end local v7    # "c":C
    :cond_49
    add-int/lit8 v2, v2, 0x1

    .line 1544
    const-wide/16 v6, 0x0

    .line 1545
    .local v6, "level":J
    :cond_4d
    :goto_4d
    const/16 v8, 0x46

    const/16 v9, 0x66

    const/16 v10, 0x39

    const/4 v11, 0x4

    const/16 v12, 0x41

    const/16 v13, 0x61

    const/16 v14, 0x30

    if-ge v2, v1, :cond_8a

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    .local v16, "c":C
    if-eq v15, v5, :cond_88

    .line 1546
    add-int/lit8 v2, v2, 0x1

    .line 1547
    shl-long/2addr v6, v11

    .line 1548
    move/from16 v15, v16

    .end local v16    # "c":C
    .local v15, "c":C
    if-lt v15, v14, :cond_72

    if-gt v15, v10, :cond_72

    .line 1549
    add-int/lit8 v8, v15, -0x30

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_4d

    .line 1550
    :cond_72
    if-lt v15, v13, :cond_7d

    if-gt v15, v9, :cond_7d

    .line 1551
    add-int/lit8 v16, v15, -0x61

    add-int/lit8 v8, v16, 0xa

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_4d

    .line 1552
    :cond_7d
    if-lt v15, v12, :cond_4d

    if-gt v15, v8, :cond_4d

    .line 1553
    add-int/lit8 v16, v15, -0x41

    add-int/lit8 v8, v16, 0xa

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_4d

    .line 1545
    .end local v15    # "c":C
    .restart local v16    # "c":C
    :cond_88
    move/from16 v15, v16

    .line 1556
    .end local v16    # "c":C
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    .line 1557
    const/16 v15, 0x28

    shl-long v15, v6, v15

    const-wide v17, 0xff0000000000L

    and-long v15, v15, v17

    or-long/2addr v3, v15

    .line 1558
    const-wide/16 v15, 0x0

    .line 1559
    .local v15, "duration":J
    :goto_9a
    if-ge v2, v1, :cond_e9

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v18, v8

    .local v18, "c":C
    if-eq v8, v5, :cond_e7

    .line 1560
    add-int/lit8 v2, v2, 0x1

    .line 1561
    shl-long/2addr v15, v11

    .line 1562
    move/from16 v8, v18

    .end local v18    # "c":C
    .local v8, "c":C
    if-lt v8, v14, :cond_b9

    if-gt v8, v10, :cond_b9

    .line 1563
    add-int/lit8 v5, v8, -0x30

    int-to-long v10, v5

    add-long/2addr v15, v10

    const/16 v5, 0x2d

    const/16 v8, 0x46

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    .line 1564
    :cond_b9
    if-lt v8, v13, :cond_cb

    if-gt v8, v9, :cond_cb

    .line 1565
    add-int/lit8 v5, v8, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-long v10, v5

    add-long/2addr v15, v10

    const/16 v5, 0x2d

    const/16 v8, 0x46

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    .line 1566
    :cond_cb
    if-lt v8, v12, :cond_de

    const/16 v5, 0x46

    if-gt v8, v5, :cond_e0

    .line 1567
    add-int/lit8 v10, v8, -0x41

    add-int/lit8 v10, v10, 0xa

    int-to-long v10, v10

    add-long/2addr v15, v10

    move v8, v5

    const/16 v5, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    .line 1566
    :cond_de
    const/16 v5, 0x46

    .line 1559
    .end local v8    # "c":C
    :cond_e0
    move v8, v5

    const/16 v5, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    .restart local v18    # "c":C
    :cond_e7
    move/from16 v8, v18

    .line 1570
    .end local v18    # "c":C
    :cond_e9
    move-object/from16 v5, p0

    iget-object v8, v5, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v9, 0xffffffffffL

    and-long/2addr v9, v15

    or-long/2addr v9, v3

    aput-wide v9, v8, p1

    .line 1571
    return-void

    nop

    :sswitch_data_f8
    .sparse-switch
        0x44 -> :sswitch_44
        0x46 -> :sswitch_42
        0x49 -> :sswitch_3e
        0x4f -> :sswitch_3a
        0x50 -> :sswitch_36
        0x5a -> :sswitch_32
        0x64 -> :sswitch_2e
        0x66 -> :sswitch_2c
        0x69 -> :sswitch_28
        0x6f -> :sswitch_24
        0x70 -> :sswitch_20
        0x7a -> :sswitch_1c
    .end sparse-switch
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .registers 14
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/lang/StringBuilder;

    .line 1465
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    .line 1466
    .local v0, "item":J
    const-wide v2, 0xffffffffffL

    and-long/2addr v2, v0

    .line 1467
    .local v2, "duration":J
    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    const/16 v6, 0x28

    shr-long/2addr v4, v6

    long-to-int v4, v4

    .line 1469
    .local v4, "level":I
    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v0

    const/16 v7, 0x30

    shr-long/2addr v5, v7

    long-to-int v5, v5

    .line 1471
    .local v5, "initMode":I
    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v6, v0

    const/16 v8, 0x38

    shr-long/2addr v6, v8

    long-to-int v6, v6

    .line 1473
    .local v6, "modMode":I
    and-int/lit8 v7, v5, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_98

    goto :goto_41

    .line 1477
    :pswitch_2a
    const/16 v7, 0x7a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1476
    :pswitch_30
    const/16 v7, 0x64

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1475
    :pswitch_36
    const/16 v7, 0x6f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1474
    :pswitch_3c
    const/16 v7, 0x66

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1479
    :goto_41
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_4a

    .line 1480
    const/16 v7, 0x70

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1482
    :cond_4a
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_53

    .line 1483
    const/16 v7, 0x69

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1485
    :cond_53
    and-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_a4

    goto :goto_72

    .line 1489
    :pswitch_5b
    const/16 v7, 0x5a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 1488
    :pswitch_61
    const/16 v7, 0x44

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 1487
    :pswitch_67
    const/16 v7, 0x4f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 1486
    :pswitch_6d
    const/16 v7, 0x46

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1491
    :goto_72
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_7b

    .line 1492
    const/16 v7, 0x50

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1494
    :cond_7b
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_84

    .line 1495
    const/16 v7, 0x49

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1497
    :cond_84
    const/16 v7, 0x2d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1498
    int-to-long v8, v4

    const/4 v10, 0x4

    invoke-direct {p0, v8, v9, v10, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1499
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1500
    const/16 v7, 0x24

    invoke-direct {p0, v2, v3, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1501
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
    .end packed-switch
.end method

.method public getDurationAt(I)J
    .registers 6
    .param p1, "index"    # I

    .line 1429
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitModeAt(I)I
    .registers 6
    .param p1, "index"    # I

    .line 1438
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLevelAt(I)I
    .registers 6
    .param p1, "index"    # I

    .line 1433
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getModModeAt(I)I
    .registers 6
    .param p1, "index"    # I

    .line 1443
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public init()V
    .registers 3

    .line 1574
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1575
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1576
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1686
    .local v0, "N":I
    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1a

    .line 1689
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_19

    .line 1691
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 1690
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1693
    .end local v1    # "i":I
    :cond_19
    return-void

    .line 1687
    :cond_1a
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "more step durations than available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1696
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1697
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_12

    .line 1699
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1698
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1701
    .end local v1    # "i":I
    :cond_12
    return-void
.end method
