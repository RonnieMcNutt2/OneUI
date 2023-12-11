.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;
.source "BatteryStatsHistoryIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/os/BatteryStats$HistoryItem;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CPU_BRACKET_COUNT:I = 0x64

.field private static final MAX_ENERGY_CONSUMER_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private final mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

.field private mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

.field private final mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

.field private final mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsHistory;)V
    .registers 3
    .param p1, "history"    # Lcom/android/internal/os/BatteryStatsHistory;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    .line 41
    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    .line 44
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 50
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 51
    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 52
    return-void
.end method

.method private static readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .registers 3
    .param p0, "batteryLevelInt"    # I
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 382
    const/high16 v0, -0x2000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 383
    const v0, 0x1ff8000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    iput-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 384
    and-int/lit16 v0, p0, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 385
    return-void
.end method

.method private static readCurrentNTemperatureInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .registers 3
    .param p0, "currentNTemperatureInt"    # I
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 390
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 391
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 392
    const v0, 0xffff

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x0

    int-to-short v0, v0

    iput-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 393
    return-void
.end method

.method private readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 20
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .local v3, "firstToken":I
    const v4, 0x1ffff

    and-int/2addr v4, v3

    .line 94
    .local v4, "deltaTimeToken":I
    const/4 v5, 0x0

    iput-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 95
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 101
    const/4 v7, 0x2

    const v8, 0x1fffd

    if-ge v4, v8, :cond_21

    .line 102
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_4a

    .line 103
    :cond_21
    if-ne v4, v8, :cond_27

    .line 104
    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 106
    return-void

    .line 107
    :cond_27
    const v8, 0x1fffe

    if-ne v4, v8, :cond_3c

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 109
    .local v8, "delta":I
    iget-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v11, v8

    add-long/2addr v9, v11

    iput-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 110
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v9, v6

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 112
    .end local v8    # "delta":I
    goto :goto_4a

    .line 113
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 115
    .local v8, "delta":J
    iget-wide v10, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v10, v8

    iput-wide v10, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 116
    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v7

    iput v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 120
    .end local v8    # "delta":J
    :goto_4a
    const/high16 v8, 0x80000

    and-int/2addr v8, v3

    if-eqz v8, :cond_5c

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 122
    .local v8, "batteryLevelInt":I
    invoke-static {v8, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V

    .line 123
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v9, v6

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_5d

    .line 132
    .end local v8    # "batteryLevelInt":I
    :cond_5c
    const/4 v8, 0x0

    .line 138
    .restart local v8    # "batteryLevelInt":I
    :goto_5d
    const/high16 v9, 0x40000

    and-int/2addr v9, v3

    if-eqz v9, :cond_7b

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 140
    .local v9, "CurrentNTemperatureInt":I
    invoke-static {v9, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readCurrentNTemperatureInt(ILandroid/os/BatteryStats$HistoryItem;)V

    .line 141
    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v6

    iput v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 148
    .local v10, "TemperatureInt2":I
    invoke-static {v10, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readTemperature2Int(ILandroid/os/BatteryStats$HistoryItem;)V

    .line 149
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v11, v6

    iput v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_7d

    .line 158
    .end local v9    # "CurrentNTemperatureInt":I
    .end local v10    # "TemperatureInt2":I
    :cond_7b
    const/4 v9, 0x0

    .line 159
    .restart local v9    # "CurrentNTemperatureInt":I
    const/4 v10, 0x0

    .line 163
    .restart local v10    # "TemperatureInt2":I
    :goto_7d
    const/high16 v11, 0x20000

    and-int v12, v3, v11

    if-eqz v12, :cond_a6

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    .line 165
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v12, v6

    iput v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 169
    .local v12, "secBatteryInfoInt":I
    invoke-static {v12, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readSecBatteryInfoInt(ILandroid/os/BatteryStats$HistoryItem;)V

    .line 170
    iget v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v13, v6

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    .line 176
    iget v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v13, v6

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_a7

    .line 180
    .end local v12    # "secBatteryInfoInt":I
    :cond_a6
    const/4 v12, 0x0

    .line 184
    .restart local v12    # "secBatteryInfoInt":I
    :goto_a7
    const/high16 v13, 0x100000

    and-int/2addr v13, v3

    const v14, 0xffffff

    const/high16 v15, -0x2000000

    if-eqz v13, :cond_ea

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 186
    .local v13, "stateInt":I
    and-int/2addr v15, v3

    and-int/2addr v14, v13

    or-int/2addr v14, v15

    iput v14, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 188
    shr-int/lit8 v14, v13, 0x1d

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    iput-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 190
    shr-int/lit8 v14, v13, 0x1a

    and-int/lit8 v14, v14, 0x7

    shr-int/lit8 v15, v13, 0xe

    and-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    int-to-byte v14, v14

    iput-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 196
    shr-int/lit8 v14, v13, 0x18

    and-int/lit8 v14, v14, 0x3

    int-to-byte v14, v14

    iput-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 198
    iget-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v14, :pswitch_data_2a8

    goto :goto_e4

    .line 206
    :pswitch_da
    const/4 v7, 0x4

    iput-byte v7, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_e4

    .line 203
    :pswitch_de
    iput-byte v7, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 204
    goto :goto_e4

    .line 200
    :pswitch_e1
    iput-byte v6, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 201
    nop

    .line 209
    :goto_e4
    iget v7, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v7, v6

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 218
    .end local v13    # "stateInt":I
    goto :goto_f2

    .line 219
    :cond_ea
    and-int v7, v3, v15

    iget v13, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v13, v14

    or-int/2addr v7, v13

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 223
    :goto_f2
    const/high16 v7, 0x200000

    and-int/2addr v7, v3

    if-eqz v7, :cond_fd

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 231
    :cond_fd
    const/high16 v7, 0x400000

    and-int/2addr v7, v3

    const v13, 0xffff

    const/4 v14, 0x0

    if-eqz v7, :cond_134

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 233
    .local v7, "indexes":I
    and-int v15, v7, v13

    .line 234
    .local v15, "wakeLockIndex":I
    shr-int/lit8 v16, v7, 0x10

    and-int v11, v16, v13

    .line 235
    .local v11, "wakeReasonIndex":I
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v15, v5}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 236
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_11f

    .line 238
    :cond_11d
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 240
    :goto_11f
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v11, v5}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 241
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_12e

    .line 243
    :cond_12c
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 245
    :goto_12e
    iget v5, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 246
    .end local v7    # "indexes":I
    .end local v11    # "wakeReasonIndex":I
    .end local v15    # "wakeLockIndex":I
    goto :goto_138

    .line 247
    :cond_134
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 248
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 251
    :goto_138
    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-eqz v5, :cond_161

    .line 252
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .local v5, "codeAndIndex":I
    and-int v7, v5, v13

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 255
    shr-int/lit8 v7, v5, 0x10

    and-int/2addr v7, v13

    .line 256
    .local v7, "index":I
    iget-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v7, v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v11

    if-eqz v11, :cond_159

    .line 257
    iget-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_15b

    .line 259
    :cond_159
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 261
    :goto_15b
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v11, v6

    iput v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 267
    .end local v5    # "codeAndIndex":I
    .end local v7    # "index":I
    goto :goto_164

    .line 268
    :cond_161
    const/4 v5, 0x0

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 271
    :goto_164
    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_172

    .line 272
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 273
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v5, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_174

    .line 275
    :cond_172
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 278
    :goto_174
    const/high16 v5, 0x1000000

    and-int/2addr v5, v3

    if-eqz v5, :cond_17f

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 281
    :cond_17f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 283
    iget v5, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2a2

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 285
    .local v5, "extensionFlags":I
    and-int/lit8 v6, v5, 0x1

    const-string v7, ". Max = "

    const/16 v11, 0x64

    if-eqz v6, :cond_200

    .line 286
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    if-nez v6, :cond_1a9

    .line 287
    new-instance v6, Landroid/os/BatteryStats$EnergyConsumerDetails;

    invoke-direct {v6}, Landroid/os/BatteryStats$EnergyConsumerDetails;-><init>()V

    iput-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 290
    :cond_1a9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 291
    .local v6, "consumerCount":I
    if-gt v6, v11, :cond_1df

    .line 297
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    new-array v15, v6, [Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    iput-object v15, v13, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    .line 299
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    new-array v15, v6, [J

    iput-object v15, v13, Landroid/os/BatteryStats$EnergyConsumerDetails;->chargeUC:[J

    .line 300
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1bc
    if-ge v13, v6, :cond_200

    .line 301
    new-instance v15, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    invoke-direct {v15}, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;-><init>()V

    .line 303
    .local v15, "consumer":Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    iput v14, v15, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->type:I

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    iput v14, v15, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->ordinal:I

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v15, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    .line 306
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v14, v14, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    aput-object v15, v14, v13

    .line 300
    .end local v15    # "consumer":Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    goto :goto_1bc

    .line 293
    .end local v13    # "i":I
    :cond_1df
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EnergyConsumer count too high: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 310
    .end local v6    # "consumerCount":I
    :cond_200
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_21c

    .line 311
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    if-eqz v6, :cond_214

    .line 315
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v6, v6, Landroid/os/BatteryStats$EnergyConsumerDetails;->chargeUC:[J

    invoke-virtual {v13, v1, v6}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    .line 316
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    goto :goto_21f

    .line 312
    :cond_214
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "MeasuredEnergyDetails without a header"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 318
    :cond_21c
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 321
    :goto_21f
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_271

    .line 322
    new-instance v6, Landroid/os/BatteryStats$CpuUsageDetails;

    invoke-direct {v6}, Landroid/os/BatteryStats$CpuUsageDetails;-><init>()V

    iput-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 324
    .local v6, "cpuBracketCount":I
    if-gt v6, v11, :cond_250

    .line 329
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    new-array v11, v6, [Ljava/lang/String;

    iput-object v11, v7, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    .line 330
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_237
    if-ge v7, v6, :cond_246

    .line 331
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v11, v11, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v7

    .line 330
    add-int/lit8 v7, v7, 0x1

    goto :goto_237

    .line 333
    .end local v7    # "i":I
    :cond_246
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v11, v7, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    array-length v11, v11

    new-array v11, v11, [J

    iput-object v11, v7, Landroid/os/BatteryStats$CpuUsageDetails;->cpuUsageMs:[J

    .end local v6    # "cpuBracketCount":I
    goto :goto_279

    .line 326
    .restart local v6    # "cpuBracketCount":I
    :cond_250
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Too many CPU brackets: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 335
    .end local v6    # "cpuBracketCount":I
    :cond_271
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    if-eqz v6, :cond_279

    .line 336
    const/4 v7, 0x0

    iput-object v7, v6, Landroid/os/BatteryStats$CpuUsageDetails;->cpuBracketDescriptions:[Ljava/lang/String;

    goto :goto_27a

    .line 335
    :cond_279
    :goto_279
    nop

    .line 339
    :goto_27a
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_29e

    .line 340
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    if-eqz v6, :cond_296

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/os/BatteryStats$CpuUsageDetails;->uid:I

    .line 345
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mVarintParceler:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iget-object v7, v7, Landroid/os/BatteryStats$CpuUsageDetails;->cpuUsageMs:[J

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    .line 346
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mCpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    goto :goto_2a1

    .line 341
    :cond_296
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "CpuUsageDetails without a header"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 348
    :cond_29e
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 350
    .end local v5    # "extensionFlags":I
    :goto_2a1
    goto :goto_2a7

    .line 351
    :cond_2a2
    move-object v6, v14

    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 352
    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 354
    :goto_2a7
    return-void

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_de
        :pswitch_da
    .end packed-switch
.end method

.method private readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "index"    # I
    .param p3, "outTag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 357
    const v0, 0xffff

    const/4 v1, 0x0

    if-ne p2, v0, :cond_7

    .line 358
    return v1

    .line 361
    :cond_7
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_26

    .line 362
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 363
    .local v0, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 364
    const v1, -0x8001

    and-int/2addr v1, p2

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 365
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 368
    .end local v0    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_3b

    .line 369
    :cond_26
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 370
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_34

    .line 371
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_39

    .line 373
    :cond_34
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 374
    iput v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 376
    :goto_39
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 378
    .end local v0    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :goto_3b
    const/4 v0, 0x1

    return v0
.end method

.method private static readSecBatteryInfoInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .registers 3
    .param p0, "secBatteryInfoInt"    # I
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 406
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    .line 407
    const v0, 0xffffff

    and-int/2addr v0, p0

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    .line 408
    return-void
.end method

.method private static readTemperature2Int(ILandroid/os/BatteryStats$HistoryItem;)V
    .registers 3
    .param p0, "temperature2Int"    # I
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 396
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1d

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    .line 397
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    .line 398
    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1b

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    .line 399
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    .line 400
    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    .line 401
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    .line 402
    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    .line 403
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->iteratorFinished()V

    .line 417
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->getNextParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 57
    .local v0, "p":Landroid/os/Parcel;
    if-nez v0, :cond_d

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 59
    const/4 v1, 0x0

    return v1

    .line 61
    :cond_d
    const/4 v1, 0x1

    return v1
.end method

.method public next()Landroid/os/BatteryStats$HistoryItem;
    .registers 10

    .line 70
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->getNextParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 71
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 73
    return-object v1

    .line 76
    :cond_d
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 77
    .local v2, "lastRealtimeMs":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 79
    .local v4, "lastWalltimeMs":J
    :try_start_15
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v0, v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3a

    .line 83
    nop

    .line 84
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v1, v6, :cond_37

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-eq v1, v6, :cond_37

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_37

    .line 86
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v2

    add-long/2addr v6, v4

    iput-wide v6, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 88
    :cond_37
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    return-object v1

    .line 80
    :catchall_3a
    move-exception v6

    .line 81
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "BatteryStatsHistoryItr"

    const-string v8, "Corrupted battery history"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0

    return-object v0
.end method
