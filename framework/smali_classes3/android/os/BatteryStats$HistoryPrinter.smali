.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldAp_temp:I

.field oldChargeMAh:I

.field oldCurrent:I

.field oldHealth:I

.field oldHighSpeakerVolume:I

.field oldLevel:I

.field oldModemRailChargeMah:D

.field oldOtgOnline:I

.field oldPa_temp:I

.field oldPlug:I

.field oldSecCurrentEvent:I

.field oldSecEvent:I

.field oldSecOnline:I

.field oldSecTxShareEvent:I

.field oldSkin_temp:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldSubScreenDoze:I

.field oldSubScreenOn:I

.field oldSub_batt_temp:I

.field oldTemp:I

.field oldVolt:I

.field oldWifiRailChargeMah:D

.field oldWifi_ap:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7370
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7371
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 7372
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7373
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7374
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7375
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7376
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7377
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7379
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 7380
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 7381
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 7382
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    .line 7383
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    .line 7384
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    .line 7385
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    .line 7386
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    .line 7387
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    .line 7388
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    .line 7389
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    .line 7390
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    .line 7391
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    .line 7392
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 7394
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7395
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7396
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7397
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .registers 24
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "baseTime"    # J
    .param p4, "checkin"    # Z
    .param p5, "verbose"    # Z

    .line 7444
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7446
    .local v2, "item":Ljava/lang/StringBuilder;
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    const/16 v9, 0x9

    const-string/jumbo v10, "h"

    const-string v11, "\n"

    const/16 v12, 0x2c

    if-eqz v3, :cond_4c

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    if-eqz v3, :cond_4c

    if-eqz p4, :cond_4c

    .line 7449
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    .line 7450
    .local v3, "descriptions":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "bracket":I
    :goto_23
    array-length v5, v3

    if-ge v4, v5, :cond_4c

    .line 7451
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7452
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7453
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7454
    const-string v5, ",0,XB,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7455
    array-length v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7456
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7457
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7458
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7459
    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7460
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7450
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 7464
    .end local v3    # "descriptions":[Ljava/lang/String;
    .end local v4    # "bracket":I
    :cond_4c
    const-string v13, " ("

    if-nez p4, :cond_6c

    .line 7465
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7466
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    const/16 v5, 0x13

    invoke-static {v3, v4, v2, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 7468
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7469
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7470
    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_94

    .line 7472
    :cond_6c
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7473
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7474
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_88

    .line 7475
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 7477
    :cond_88
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7479
    :goto_90
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 7481
    :goto_94
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x4

    const-string v14, ":"

    if-ne v3, v4, :cond_aa

    .line 7482
    if-eqz p4, :cond_a0

    .line 7483
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7485
    :cond_a0
    const-string v3, "START\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7486
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_8c7

    .line 7487
    :cond_aa
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    const/4 v5, 0x7

    const-string v15, " "

    if-eq v3, v4, :cond_889

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_b8

    goto/16 :goto_889

    .line 7506
    :cond_b8
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_ca

    .line 7507
    if-eqz p4, :cond_c3

    .line 7508
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7510
    :cond_c3
    const-string v3, "SHUTDOWN\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8c7

    .line 7511
    :cond_ca
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x6

    if-ne v3, v4, :cond_db

    .line 7512
    if-eqz p4, :cond_d4

    .line 7513
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7515
    :cond_d4
    const-string v3, "*OVERFLOW*\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8c7

    .line 7517
    :cond_db
    const/16 v8, 0xa

    if-nez p4, :cond_15c

    .line 7518
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const-string v4, "0"

    const-string v5, "00"

    if-ge v3, v8, :cond_eb

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f4

    .line 7519
    :cond_eb
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v6, 0x64

    if-ge v3, v6, :cond_f4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7520
    :cond_f4
    :goto_f4
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7521
    if-eqz p5, :cond_170

    .line 7522
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7523
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v3, :cond_103

    goto :goto_152

    .line 7524
    :cond_103
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x10

    if-ge v3, v6, :cond_10f

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_152

    .line 7525
    :cond_10f
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x100

    if-ge v3, v6, :cond_11b

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_152

    .line 7526
    :cond_11b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_127

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_152

    .line 7527
    :cond_127
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_133

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_152

    .line 7528
    :cond_133
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    if-ge v3, v6, :cond_13f

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_152

    .line 7529
    :cond_13f
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1000000

    if-ge v3, v6, :cond_149

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_152

    .line 7530
    :cond_149
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x10000000

    if-ge v3, v5, :cond_152

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7531
    :cond_152
    :goto_152
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_170

    .line 7534
    :cond_15c
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v3, v4, :cond_170

    .line 7535
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7536
    const-string v3, ",Bl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7539
    :cond_170
    :goto_170
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const-string/jumbo v5, "n"

    const-string v6, "d"

    const-string v7, "c"

    const-string v16, "?"

    const-string/jumbo v17, "unknown"

    if-eq v3, v4, :cond_1ce

    .line 7540
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7541
    if-eqz p4, :cond_18b

    const-string v3, ",Bs="

    goto :goto_18d

    :cond_18b
    const-string v3, " status="

    :goto_18d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7542
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v3, :pswitch_data_8cc

    .line 7559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1ce

    .line 7556
    :pswitch_199
    if-eqz p4, :cond_19e

    const-string v3, "f"

    goto :goto_1a0

    :cond_19e
    const-string v3, "full"

    :goto_1a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7557
    goto :goto_1ce

    .line 7553
    :pswitch_1a4
    if-eqz p4, :cond_1a8

    move-object v3, v5

    goto :goto_1ab

    :cond_1a8
    const-string/jumbo v3, "not-charging"

    :goto_1ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7554
    goto :goto_1ce

    .line 7550
    :pswitch_1af
    if-eqz p4, :cond_1b3

    move-object v3, v6

    goto :goto_1b5

    :cond_1b3
    const-string v3, "discharging"

    :goto_1b5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7551
    goto :goto_1ce

    .line 7547
    :pswitch_1b9
    if-eqz p4, :cond_1bd

    move-object v3, v7

    goto :goto_1bf

    :cond_1bd
    const-string v3, "charging"

    :goto_1bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7548
    goto :goto_1ce

    .line 7544
    :pswitch_1c3
    if-eqz p4, :cond_1c8

    move-object/from16 v3, v16

    goto :goto_1ca

    :cond_1c8
    move-object/from16 v3, v17

    :goto_1ca
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7545
    nop

    .line 7563
    :cond_1ce
    :goto_1ce
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v3, v4, :cond_253

    .line 7564
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7565
    if-eqz p4, :cond_1dd

    const-string v3, ",Bh="

    goto :goto_1df

    :cond_1dd
    const-string v3, " health="

    :goto_1df
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7566
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v3, :pswitch_data_8da

    .line 7597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_253

    .line 7593
    :pswitch_1ec
    if-eqz p4, :cond_1f2

    const-string/jumbo v3, "u"

    goto :goto_1f5

    :cond_1f2
    const-string/jumbo v3, "under-voltage"

    :goto_1f5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7594
    goto/16 :goto_253

    .line 7590
    :pswitch_1fa
    if-eqz p4, :cond_200

    const-string/jumbo v3, "l"

    goto :goto_203

    :cond_200
    const-string/jumbo v3, "over-limit"

    :goto_203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7591
    goto :goto_253

    .line 7586
    :pswitch_207
    if-eqz p4, :cond_20a

    goto :goto_20c

    :cond_20a
    const-string v7, "cold"

    :goto_20c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7587
    goto :goto_253

    .line 7583
    :pswitch_210
    if-eqz p4, :cond_215

    const-string v3, "f"

    goto :goto_217

    :cond_215
    const-string v3, "failure"

    :goto_217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7584
    goto :goto_253

    .line 7580
    :pswitch_21b
    if-eqz p4, :cond_221

    const-string/jumbo v3, "v"

    goto :goto_224

    :cond_221
    const-string/jumbo v3, "over-voltage"

    :goto_224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7581
    goto :goto_253

    .line 7577
    :pswitch_228
    if-eqz p4, :cond_22b

    goto :goto_22d

    :cond_22b
    const-string v6, "dead"

    :goto_22d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7578
    goto :goto_253

    .line 7574
    :pswitch_231
    if-eqz p4, :cond_235

    move-object v3, v10

    goto :goto_238

    :cond_235
    const-string/jumbo v3, "overheat"

    :goto_238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7575
    goto :goto_253

    .line 7571
    :pswitch_23c
    if-eqz p4, :cond_241

    const-string v3, "g"

    goto :goto_244

    :cond_241
    const-string/jumbo v3, "good"

    :goto_244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7572
    goto :goto_253

    .line 7568
    :pswitch_248
    if-eqz p4, :cond_24d

    move-object/from16 v3, v16

    goto :goto_24f

    :cond_24d
    move-object/from16 v3, v17

    :goto_24f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7569
    nop

    .line 7601
    :cond_253
    :goto_253
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v3, v4, :cond_29f

    .line 7602
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7603
    if-eqz p4, :cond_262

    const-string v3, ",Bp="

    goto :goto_264

    :cond_262
    const-string v3, " plug="

    :goto_264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7604
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v3, :pswitch_data_8f0

    .line 7618
    :pswitch_26c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_29f

    .line 7615
    :pswitch_270
    if-eqz p4, :cond_276

    const-string/jumbo v3, "w"

    goto :goto_279

    :cond_276
    const-string/jumbo v3, "wireless"

    :goto_279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7616
    goto :goto_29f

    .line 7612
    :pswitch_27d
    if-eqz p4, :cond_283

    const-string/jumbo v3, "u"

    goto :goto_286

    :cond_283
    const-string/jumbo v3, "usb"

    :goto_286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7613
    goto :goto_29f

    .line 7609
    :pswitch_28a
    if-eqz p4, :cond_28f

    const-string v3, "a"

    goto :goto_291

    :cond_28f
    const-string v3, "ac"

    :goto_291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7610
    goto :goto_29f

    .line 7606
    :pswitch_295
    if-eqz p4, :cond_298

    goto :goto_29b

    :cond_298
    const-string/jumbo v5, "none"

    :goto_29b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7607
    nop

    .line 7622
    :cond_29f
    :goto_29f
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v3, v4, :cond_2b8

    .line 7623
    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7624
    if-eqz p4, :cond_2ae

    const-string v3, ",Bt="

    goto :goto_2b0

    :cond_2ae
    const-string v3, " temp="

    :goto_2b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7625
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7627
    :cond_2b8
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v3, v4, :cond_2d1

    .line 7628
    iget-char v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7629
    if-eqz p4, :cond_2c7

    const-string v3, ",Bv="

    goto :goto_2c9

    :cond_2c7
    const-string v3, " volt="

    :goto_2c9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7630
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7633
    :cond_2d1
    const/4 v3, 0x1

    if-nez p4, :cond_36a

    .line 7634
    const/4 v4, 0x0

    .line 7635
    .local v4, "mChanged":Z
    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    const/16 v7, -0x80

    if-eq v5, v7, :cond_2dd

    move v5, v3

    goto :goto_2de

    :cond_2dd
    const/4 v5, 0x0

    .line 7636
    .local v5, "isApTempValid":Z
    :goto_2de
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v6, v7, :cond_2e4

    move v6, v3

    goto :goto_2e5

    :cond_2e4
    const/4 v6, 0x0

    .line 7637
    .local v6, "isPaTempValid":Z
    :goto_2e5
    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v8, v7, :cond_2eb

    move v8, v3

    goto :goto_2ec

    :cond_2eb
    const/4 v8, 0x0

    .line 7638
    .local v8, "isSkinTempValid":Z
    :goto_2ec
    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v9, v7, :cond_2f3

    move/from16 v16, v3

    goto :goto_2f5

    :cond_2f3
    const/16 v16, 0x0

    :goto_2f5
    move/from16 v7, v16

    .line 7639
    .local v7, "isSubBattTempValid":Z
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iget-short v12, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-eq v9, v12, :cond_302

    .line 7640
    iget-short v9, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 7641
    const/4 v4, 0x1

    .line 7643
    :cond_302
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-eq v9, v12, :cond_30d

    .line 7644
    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 7645
    const/4 v4, 0x1

    .line 7647
    :cond_30d
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v9, v12, :cond_318

    .line 7648
    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 7649
    const/4 v4, 0x1

    .line 7651
    :cond_318
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v9, v12, :cond_323

    .line 7652
    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    .line 7653
    const/4 v4, 0x1

    .line 7655
    :cond_323
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v9, v12, :cond_32e

    .line 7656
    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    .line 7657
    const/4 v4, 0x1

    .line 7659
    :cond_32e
    if-eqz v4, :cond_36a

    .line 7660
    const-string v9, " current="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7661
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7662
    if-eqz v5, :cond_346

    .line 7663
    const-string v9, " ap_temp="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7664
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7666
    :cond_346
    if-eqz v6, :cond_352

    .line 7667
    const-string v9, " pa_temp="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7668
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7670
    :cond_352
    if-eqz v8, :cond_35e

    .line 7671
    const-string v9, " skin_temp="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7672
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7674
    :cond_35e
    if-eqz v7, :cond_36a

    .line 7675
    const-string v9, " sub_batt_temp="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7676
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7680
    .end local v4    # "mChanged":Z
    .end local v5    # "isApTempValid":Z
    .end local v6    # "isPaTempValid":Z
    .end local v7    # "isSubBattTempValid":Z
    .end local v8    # "isSkinTempValid":Z
    :cond_36a
    const-string v4, " +"

    const-string v5, " -"

    if-nez p4, :cond_38f

    .line 7681
    const/4 v6, 0x0

    .line 7682
    .local v6, "mChanged":Z
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-eq v7, v8, :cond_37c

    .line 7683
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    .line 7684
    const/4 v6, 0x1

    .line 7686
    :cond_37c
    if-eqz v6, :cond_38f

    .line 7687
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    if-ne v7, v3, :cond_386

    .line 7688
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_389

    .line 7691
    :cond_386
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7693
    :goto_389
    const-string/jumbo v7, "wifi_ap"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7696
    .end local v6    # "mChanged":Z
    :cond_38f
    if-nez p4, :cond_3b0

    .line 7697
    const/4 v6, 0x0

    .line 7698
    .restart local v6    # "mChanged":Z
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-eq v7, v8, :cond_39d

    .line 7699
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    .line 7700
    const/4 v6, 0x1

    .line 7702
    :cond_39d
    if-eqz v6, :cond_3b0

    .line 7703
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    if-ne v7, v3, :cond_3a7

    .line 7704
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3aa

    .line 7707
    :cond_3a7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7709
    :goto_3aa
    const-string/jumbo v7, "otg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7712
    .end local v6    # "mChanged":Z
    :cond_3b0
    if-nez p4, :cond_3d1

    .line 7713
    const/4 v6, 0x0

    .line 7714
    .restart local v6    # "mChanged":Z
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-eq v7, v8, :cond_3be

    .line 7715
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    .line 7716
    const/4 v6, 0x1

    .line 7718
    :cond_3be
    if-eqz v6, :cond_3d1

    .line 7719
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    if-ne v7, v3, :cond_3c8

    .line 7720
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3cb

    .line 7723
    :cond_3c8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7725
    :goto_3cb
    const-string/jumbo v7, "high_speaker_volume"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7728
    .end local v6    # "mChanged":Z
    :cond_3d1
    if-nez p4, :cond_3f2

    .line 7729
    const/4 v6, 0x0

    .line 7730
    .restart local v6    # "mChanged":Z
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-eq v7, v8, :cond_3df

    .line 7731
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    .line 7732
    const/4 v6, 0x1

    .line 7734
    :cond_3df
    if-eqz v6, :cond_3f2

    .line 7735
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    if-ne v7, v3, :cond_3e9

    .line 7736
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3ec

    .line 7739
    :cond_3e9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7741
    :goto_3ec
    const-string/jumbo v7, "sub_screen"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7744
    .end local v6    # "mChanged":Z
    :cond_3f2
    if-nez p4, :cond_413

    .line 7745
    const/4 v6, 0x0

    .line 7746
    .restart local v6    # "mChanged":Z
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-eq v7, v8, :cond_400

    .line 7747
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    .line 7748
    const/4 v6, 0x1

    .line 7750
    :cond_400
    if-eqz v6, :cond_413

    .line 7751
    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    if-ne v7, v3, :cond_40a

    .line 7752
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40d

    .line 7755
    :cond_40a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7757
    :goto_40d
    const-string/jumbo v3, "sub_screen_doze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7760
    .end local v6    # "mChanged":Z
    :cond_413
    if-nez p4, :cond_492

    .line 7761
    const/4 v3, 0x0

    .line 7762
    .local v3, "mChanged":Z
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-eq v4, v5, :cond_421

    .line 7763
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    .line 7764
    const/4 v3, 0x1

    .line 7766
    :cond_421
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-eq v4, v5, :cond_42c

    .line 7767
    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    .line 7768
    const/4 v3, 0x1

    .line 7770
    :cond_42c
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v4, v5, :cond_437

    .line 7771
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    .line 7772
    const/4 v3, 0x1

    .line 7774
    :cond_437
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v4, v5, :cond_442

    .line 7775
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 7776
    const/4 v3, 0x1

    .line 7779
    :cond_442
    if-eqz v3, :cond_492

    .line 7780
    const-string v4, " txshare_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7781
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "0x%x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7782
    const-string v4, " online="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7783
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7784
    const-string v4, " current_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7785
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7786
    const-string v4, " misc_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7787
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7791
    .end local v3    # "mChanged":Z
    :cond_492
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    div-int/lit16 v9, v3, 0x3e8

    .line 7792
    .local v9, "chargeMAh":I
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v3, v9, :cond_4ab

    .line 7793
    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7794
    if-eqz p4, :cond_4a1

    const-string v3, ",Bcc="

    goto :goto_4a3

    :cond_4a1
    const-string v3, " charge="

    :goto_4a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7795
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7797
    :cond_4ab
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4d1

    .line 7798
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7799
    if-eqz p4, :cond_4bc

    const-string v3, ",Mrc="

    goto :goto_4be

    :cond_4bc
    const-string v3, " modemRailChargemAh="

    :goto_4be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7800
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7802
    :cond_4d1
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4f7

    .line 7803
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7804
    if-eqz p4, :cond_4e2

    const-string v3, ",Wrc="

    goto :goto_4e4

    :cond_4e2
    const-string v3, " wifiRailChargemAh="

    :goto_4e4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7805
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7807
    :cond_4f7
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v8, p4, 0x1

    move-object v3, v2

    const/16 v12, 0xa

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 7809
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v6, 0x0

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v8, p4, 0x1

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 7811
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_544

    .line 7812
    if-eqz p4, :cond_527

    .line 7813
    const-string v3, ",wr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7814
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_544

    .line 7816
    :cond_527
    const-string v3, " wake_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7817
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7818
    const-string v3, ":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7819
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7820
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7823
    :cond_544
    :goto_544
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_5bd

    .line 7824
    if-eqz p4, :cond_54c

    const-string v15, ","

    :cond_54c
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7825
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_55d

    .line 7826
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_568

    .line 7827
    :cond_55d
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_568

    .line 7828
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7830
    :cond_568
    :goto_568
    if-eqz p4, :cond_56d

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_56f

    .line 7831
    :cond_56d
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_56f
    nop

    .line 7832
    .local v3, "eventNames":[Ljava/lang/String;
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v5, -0xc001

    and-int/2addr v4, v5

    .line 7834
    .local v4, "idx":I
    if-ltz v4, :cond_581

    array-length v5, v3

    if-ge v4, v5, :cond_581

    .line 7835
    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58e

    .line 7837
    :cond_581
    if-eqz p4, :cond_586

    const-string v5, "Ev"

    goto :goto_588

    :cond_586
    const-string v5, "event"

    :goto_588
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7838
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7840
    :goto_58e
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7841
    if-eqz p4, :cond_59d

    .line 7842
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v5, v5, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5bd

    .line 7844
    :cond_59d
    sget-object v5, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v5, v5, v4

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7845
    invoke-interface {v5, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v5

    .line 7844
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7846
    const-string v5, ":\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7847
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7848
    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7851
    .end local v3    # "eventNames":[Ljava/lang/String;
    .end local v4    # "idx":I
    :cond_5bd
    :goto_5bd
    const/4 v3, 0x1

    .line 7852
    .local v3, "firstExtension":Z
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    if-eqz v4, :cond_60a

    .line 7853
    const/4 v3, 0x0

    .line 7854
    if-nez p4, :cond_5d0

    .line 7855
    const-string v4, " ext=energy:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7856
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_60a

    .line 7858
    :cond_5d0
    const-string v4, ",XE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7859
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5d6
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    array-length v5, v5

    if-ge v4, v5, :cond_60a

    .line 7860
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$EnergyConsumerDetails;->chargeUC:[J

    aget-wide v5, v5, v4

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_607

    .line 7861
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7862
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7863
    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7864
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$EnergyConsumerDetails;->chargeUC:[J

    aget-wide v5, v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7859
    :cond_607
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d6

    .line 7869
    .end local v4    # "i":I
    :cond_60a
    :goto_60a
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    if-eqz v4, :cond_681

    .line 7870
    if-nez p4, :cond_644

    .line 7871
    if-nez v3, :cond_617

    .line 7872
    const-string v4, "\n                "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7874
    :cond_617
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v4, v4, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    .line 7875
    .local v4, "descriptions":[Ljava/lang/String;
    if-eqz v4, :cond_639

    .line 7876
    const/4 v5, 0x0

    .local v5, "bracket":I
    :goto_61e
    array-length v6, v4

    if-ge v5, v6, :cond_639

    .line 7877
    const-string v6, " ext=cpu-bracket:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7878
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7879
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7880
    aget-object v6, v4, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7881
    const-string v6, "\n                "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7876
    add-int/lit8 v5, v5, 0x1

    goto :goto_61e

    .line 7884
    .end local v5    # "bracket":I
    :cond_639
    const-string v5, " ext=cpu:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7885
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7886
    .end local v4    # "descriptions":[Ljava/lang/String;
    goto :goto_680

    .line 7887
    :cond_644
    if-nez v3, :cond_65b

    .line 7888
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7889
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7890
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7891
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7892
    const-string v4, ",0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7894
    :cond_65b
    const-string v4, ",XC,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7895
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget v4, v4, Landroid/os/BatteryStats$CpuUsageDetails;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7896
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_668
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$CpuUsageDetails;->cpuUsageMs:[J

    array-length v5, v5

    if-ge v4, v5, :cond_680

    .line 7897
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7898
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$CpuUsageDetails;->cpuUsageMs:[J

    aget-wide v5, v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7896
    add-int/lit8 v4, v4, 0x1

    goto :goto_668

    .line 7901
    .end local v4    # "i":I
    :cond_680
    :goto_680
    const/4 v3, 0x0

    .line 7903
    :cond_681
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7904
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v4, :cond_871

    .line 7905
    if-nez p4, :cond_7ae

    .line 7906
    const-string v4, "                 Details: cpu="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7907
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7908
    const-string/jumbo v4, "u+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7909
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7910
    const-string/jumbo v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7911
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v4, :cond_6fa

    .line 7912
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7913
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7915
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v4, :cond_6db

    .line 7916
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7917
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7920
    :cond_6db
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v4, :cond_6f5

    .line 7921
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7922
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7925
    :cond_6f5
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7927
    :cond_6fa
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7928
    const-string v4, "                          /proc/stat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7929
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7930
    const-string v4, " usr, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7931
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7932
    const-string v4, " sys, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7933
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7934
    const-string v4, " io, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7935
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7936
    const-string v4, " irq, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7937
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7938
    const-string v4, " sirq, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7939
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7940
    const-string v4, " idle"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7941
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v4, v5

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v4, v5

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v4, v5

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v4, v5

    .line 7944
    .local v4, "totalRun":I
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v5, v4

    .line 7945
    .local v5, "total":I
    if-lez v5, :cond_79d

    .line 7946
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7947
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    .line 7948
    .local v6, "perc":F
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%.1f%%"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7949
    const-string v7, " of "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7950
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7951
    .local v7, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v8, v5, 0xa

    int-to-long v12, v8

    invoke-static {v7, v12, v13}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 7952
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7953
    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7956
    .end local v6    # "perc":F
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_79d
    const-string v6, ", SubsystemPowerState "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7957
    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7958
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7959
    .end local v4    # "totalRun":I
    .end local v5    # "total":I
    goto/16 :goto_871

    .line 7960
    :cond_7ae
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7961
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",0,Dcpu="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7962
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7963
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7964
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7965
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v4, :cond_810

    .line 7966
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7968
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v4, :cond_7fb

    .line 7969
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7972
    :cond_7fb
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v4, :cond_810

    .line 7973
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7977
    :cond_810
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7978
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7979
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",0,Dpst="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7980
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7981
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7982
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7983
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7984
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7985
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7986
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7987
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7988
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7989
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7990
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7991
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7993
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v4, :cond_86e

    .line 7994
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7996
    :cond_86e
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7999
    :cond_871
    :goto_871
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 8000
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 8002
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_8c7

    .line 8003
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v5, -0x80001

    and-int/2addr v4, v5

    iput v4, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_8c7

    .line 7489
    .end local v3    # "firstExtension":Z
    .end local v9    # "chargeMAh":I
    :cond_889
    :goto_889
    if-eqz p4, :cond_88e

    .line 7490
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7492
    :cond_88e
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_89a

    .line 7493
    const-string v3, "RESET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7494
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 7496
    :cond_89a
    const-string v3, "TIME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7497
    if-eqz p4, :cond_8aa

    .line 7498
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7499
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c7

    .line 7501
    :cond_8aa
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7502
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss-SSS"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v4, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 7503
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7504
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8006
    :cond_8c7
    :goto_8c7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_8cc
    .packed-switch 0x1
        :pswitch_1c3
        :pswitch_1b9
        :pswitch_1af
        :pswitch_1a4
        :pswitch_199
    .end packed-switch

    :pswitch_data_8da
    .packed-switch 0x1
        :pswitch_248
        :pswitch_23c
        :pswitch_231
        :pswitch_228
        :pswitch_21b
        :pswitch_210
        :pswitch_207
        :pswitch_1fa
        :pswitch_1ec
    .end packed-switch

    :pswitch_data_8f0
    .packed-switch 0x0
        :pswitch_295
        :pswitch_28a
        :pswitch_27d
        :pswitch_26c
        :pswitch_270
    .end packed-switch
.end method

.method private printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 8020
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8021
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8022
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8023
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8024
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8025
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8026
    return-void
.end method

.method private printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 8010
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 8011
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8012
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8013
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8014
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8015
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8016
    return-void
.end method


# virtual methods
.method public printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "verbose"    # Z

    .line 7436
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    .line 7437
    .local v0, "item":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 7438
    .local v4, "line":Ljava/lang/String;
    const-wide v5, 0x20900000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7437
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 7440
    :cond_20
    return-void
.end method

.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    .line 7430
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7431
    return-void
.end method

.method reset()V
    .registers 3

    .line 7400
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7401
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7402
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7403
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7404
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7405
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7406
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7408
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 7409
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 7410
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 7411
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    .line 7412
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    .line 7413
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    .line 7414
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    .line 7415
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    .line 7416
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    .line 7417
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    .line 7418
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    .line 7419
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    .line 7420
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    .line 7421
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 7423
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7424
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7425
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7426
    return-void
.end method
