.class public final Landroid/os/SpeakerOutEnergyInfo;
.super Ljava/lang/Object;
.source "SpeakerOutEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SpeakerOutEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_VOLUME_LEVELS:I = 0xf

.field public static final NUM_VOLUME_LEVELS:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEnergyUsed:I

.field private mSpeakerCallTimeMs:[J

.field private mSpeakerMediaTimeMs:[J

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Landroid/os/SpeakerOutEnergyInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SpeakerOutEnergyInfo;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/os/SpeakerOutEnergyInfo$1;

    invoke-direct {v0}, Landroid/os/SpeakerOutEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/os/SpeakerOutEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[J[JI)V
    .registers 10
    .param p1, "timestamp"    # J
    .param p3, "speakerTimeMs"    # [J
    .param p4, "callTimeMs"    # [J
    .param p5, "energyUsed"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x10

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerMediaTimeMs:[J

    .line 38
    new-array v2, v0, [J

    iput-object v2, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerCallTimeMs:[J

    .line 58
    iput-wide p1, p0, Landroid/os/SpeakerOutEnergyInfo;->mTimestamp:J

    .line 60
    const/4 v2, 0x0

    if-eqz p3, :cond_1a

    .line 61
    array-length v3, p3

    .line 62
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 61
    invoke-static {p3, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_1a
    if-eqz p4, :cond_26

    .line 65
    iget-object v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerCallTimeMs:[J

    array-length v3, p4

    .line 66
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 65
    invoke-static {p4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    :cond_26
    iput p5, p0, Landroid/os/SpeakerOutEnergyInfo;->mEnergyUsed:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x10

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerMediaTimeMs:[J

    .line 38
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerCallTimeMs:[J

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/SpeakerOutEnergyInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyUsed()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mEnergyUsed:I

    return v0
.end method

.method public getSpeakerCallTimeMillis()[J
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerCallTimeMs:[J

    return-object v0
.end method

.method public getSpeakerMediaTimeMillis()[J
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerMediaTimeMs:[J

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 96
    iget-wide v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mTimestamp:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mTimestamp:J

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    const/16 v1, 0x10

    if-ge v0, v1, :cond_16

    .line 87
    iget-object v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerMediaTimeMs:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 89
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_17
    if-ge v0, v1, :cond_24

    .line 90
    iget-object v2, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerCallTimeMs:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 92
    .end local v0    # "i":I
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mEnergyUsed:I

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakerOutEnergyInfo{mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpeakerMediaTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerMediaTimeMs:[J

    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpeakerCallTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerCallTimeMs:[J

    .line 116
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-wide v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    const/16 v1, 0x10

    if-ge v0, v1, :cond_14

    .line 76
    iget-object v1, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerMediaTimeMs:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 78
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_15
    if-ge v0, v1, :cond_21

    .line 79
    iget-object v2, p0, Landroid/os/SpeakerOutEnergyInfo;->mSpeakerCallTimeMs:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 81
    .end local v0    # "i":I
    :cond_21
    iget v0, p0, Landroid/os/SpeakerOutEnergyInfo;->mEnergyUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
