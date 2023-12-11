.class public final Landroid/os/ForegroundAppEnergyInfo;
.super Ljava/lang/Object;
.source "ForegroundAppEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ForegroundAppEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryDischargeUah:I

.field private mDisplayPowerUah:I

.field private mDuration:J

.field private mEndTime:J

.field private mStartTime:J

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Landroid/os/ForegroundAppEnergyInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ForegroundAppEnergyInfo;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/os/ForegroundAppEnergyInfo$1;

    invoke-direct {v0}, Landroid/os/ForegroundAppEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/os/ForegroundAppEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    .line 54
    return-void
.end method

.method public constructor <init>(IJJJII)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "duration"    # J
    .param p8, "displayPowerUah"    # I
    .param p9, "batteryDischargeUah"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 64
    iput-wide p2, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 65
    iput-wide p4, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 66
    iput-wide p6, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 67
    iput p8, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 68
    iput p9, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/ForegroundAppEnergyInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method private initialize()V
    .registers 3

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 158
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 161
    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 162
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryDischarged()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    return v0
.end method

.method public getDisplayPower()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 128
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    return-wide v0
.end method

.method public getEndTime()J
    .registers 3

    .line 103
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    return v0
.end method

.method public isTimerRunning()Z
    .registers 5

    .line 121
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 88
    return-void
.end method

.method public reset()V
    .registers 1

    .line 148
    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    .line 149
    return-void
.end method

.method public setBatteryDischarged(I)V
    .registers 2
    .param p1, "dischargedUah"    # I

    .line 140
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 141
    return-void
.end method

.method public setDisplayPower(I)V
    .registers 2
    .param p1, "powerUah"    # I

    .line 132
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 133
    return-void
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "n"    # I

    .line 91
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 92
    return-void
.end method

.method public startTimer(J)V
    .registers 5
    .param p1, "elapsedRealtime"    # J

    .line 107
    iput-wide p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 109
    return-void
.end method

.method public stopTimer(J)V
    .registers 7
    .param p1, "elapsedRealtime"    # J

    .line 112
    const-wide/16 v0, 0x0

    .line 113
    .local v0, "currentDuration":J
    invoke-virtual {p0}, Landroid/os/ForegroundAppEnergyInfo;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 114
    iput-wide p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 115
    iget-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    sub-long v0, p1, v2

    .line 117
    :cond_e
    iget-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
