.class public final Landroid/os/connectivity/WifiBatteryStats;
.super Ljava/lang/Object;
.source "WifiBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/WifiBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppScanRequestCount:J

.field private final mEnergyConsumedMaMillis:J

.field private final mIdleTimeMillis:J

.field private final mKernelActiveTimeMillis:J

.field private final mLoggingDurationMillis:J

.field private final mMonitoredRailChargeConsumedMaMillis:J

.field private final mNumBytesRx:J

.field private final mNumBytesTx:J

.field private final mNumPacketsRx:J

.field private final mNumPacketsTx:J

.field private final mRxTimeMillis:J

.field private final mScanTimeMillis:J

.field private final mSleepTimeMillis:J

.field private final mTimeInRxSignalStrengthLevelMillis:[J

.field private final mTimeInStateMillis:[J

.field private final mTimeInSupplicantStateMillis:[J

.field private final mTxTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/os/connectivity/WifiBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/WifiBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/WifiBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJ[J[J[JJ)V
    .registers 48
    .param p1, "loggingDurationMillis"    # J
    .param p3, "kernelActiveTimeMillis"    # J
    .param p5, "numPacketsTx"    # J
    .param p7, "numBytesTx"    # J
    .param p9, "numPacketsRx"    # J
    .param p11, "numBytesRx"    # J
    .param p13, "sleepTimeMillis"    # J
    .param p15, "scanTimeMillis"    # J
    .param p17, "idleTimeMillis"    # J
    .param p19, "rxTimeMillis"    # J
    .param p21, "txTimeMillis"    # J
    .param p23, "energyConsumedMaMillis"    # J
    .param p25, "appScanRequestCount"    # J
    .param p27, "timeInStateMillis"    # [J
    .param p28, "timeInRxSignalStrengthLevelMillis"    # [J
    .param p29, "timeInSupplicantStateMillis"    # [J
    .param p30, "monitoredRailChargeConsumedMaMillis"    # J

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    move-object/from16 v3, p29

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    move-wide/from16 v4, p1

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    .line 161
    move-wide/from16 v6, p3

    iput-wide v6, v0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    .line 162
    move-wide/from16 v8, p5

    iput-wide v8, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    .line 163
    move-wide/from16 v10, p7

    iput-wide v10, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    .line 164
    move-wide/from16 v12, p9

    iput-wide v12, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    .line 165
    move-wide/from16 v14, p11

    iput-wide v14, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    .line 166
    move-wide/from16 v4, p13

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    .line 167
    move-wide/from16 v4, p15

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    .line 168
    move-wide/from16 v4, p17

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    .line 169
    move-wide/from16 v4, p19

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    .line 170
    move-wide/from16 v4, p21

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    .line 171
    move-wide/from16 v4, p23

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    .line 172
    move-wide/from16 v4, p25

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    .line 173
    array-length v4, v1

    .line 175
    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 173
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    .line 176
    array-length v4, v2

    .line 178
    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 176
    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    .line 179
    array-length v4, v3

    .line 181
    const/16 v5, 0xd

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 179
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    .line 182
    move-wide/from16 v4, p30

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    .line 183
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 117
    instance-of v0, p1, Landroid/os/connectivity/WifiBatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 118
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 119
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/os/connectivity/WifiBatteryStats;

    .line 120
    .local v2, "otherStats":Landroid/os/connectivity/WifiBatteryStats;
    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-object v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    iget-object v4, v2, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    .line 133
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_9d

    iget-object v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    iget-object v4, v2, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    .line 134
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_9d

    iget-object v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    iget-object v4, v2, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    .line 136
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_9d

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    move v1, v0

    goto :goto_9e

    :cond_9d
    nop

    .line 120
    :goto_9e
    return v1
.end method

.method public getAppScanRequestCount()J
    .registers 3

    .line 310
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    return-wide v0
.end method

.method public getEnergyConsumedMaMillis()J
    .registers 3

    .line 301
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    return-wide v0
.end method

.method public getIdleTimeMillis()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    return-wide v0
.end method

.method public getKernelActiveTimeMillis()J
    .registers 3

    .line 201
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    return-wide v0
.end method

.method public getLoggingDurationMillis()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    return-wide v0
.end method

.method public getMonitoredRailChargeConsumedMaMillis()J
    .registers 3

    .line 319
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    return-wide v0
.end method

.method public getNumBytesRx()J
    .registers 3

    .line 241
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public getNumBytesTx()J
    .registers 3

    .line 221
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public getNumPacketsRx()J
    .registers 3

    .line 231
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public getNumPacketsTx()J
    .registers 3

    .line 211
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public getRxTimeMillis()J
    .registers 3

    .line 281
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    return-wide v0
.end method

.method public getScanTimeMillis()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    return-wide v0
.end method

.method public getSleepTimeMillis()J
    .registers 3

    .line 251
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    return-wide v0
.end method

.method public getTxTimeMillis()J
    .registers 3

    .line 291
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 21

    .line 144
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    .line 145
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    .line 148
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    .line 149
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    .line 150
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    filled-new-array/range {v3 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 144
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 110
    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 111
    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 112
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    return-void
.end method
