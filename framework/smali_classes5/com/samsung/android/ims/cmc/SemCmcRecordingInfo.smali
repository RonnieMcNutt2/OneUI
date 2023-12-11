.class public Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
.super Ljava/lang/Object;
.source "SemCmcRecordingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAudioChannels:I

.field mAudioEncoder:I

.field mAudioEncodingBitRate:I

.field mAudioSamplingRate:I

.field mAudioSource:I

.field mAuthor:Ljava/lang/String;

.field mDurationInterval:I

.field mFileSizeInterval:J

.field mMaxDuration:I

.field mMaxFileSize:J

.field mOutputFormat:I

.field mOutputPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSource:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputFormat:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxFileSize:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxDuration:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncodingBitRate:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioChannels:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSamplingRate:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncoder:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mDurationInterval:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mFileSizeInterval:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAuthor:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioChannels()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioChannels:I

    return v0
.end method

.method public getAudioEncoder()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncoder:I

    return v0
.end method

.method public getAudioEncodingBitRate()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncodingBitRate:I

    return v0
.end method

.method public getAudioSamplingRate()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSamplingRate:I

    return v0
.end method

.method public getAudioSource()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSource:I

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationInterval()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mDurationInterval:I

    return v0
.end method

.method public getFileSizeInterval()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mFileSizeInterval:J

    return-wide v0
.end method

.method public getMaxDuration()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxDuration:I

    return v0
.end method

.method public getMaxFileSize()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxFileSize:J

    return-wide v0
.end method

.method public getOutputFormat()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputFormat:I

    return v0
.end method

.method public getOutputPath()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioChannels(I)V
    .registers 2
    .param p1, "mAudioChannels"    # I

    .line 78
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioChannels:I

    .line 79
    return-void
.end method

.method public setAudioEncoder(I)V
    .registers 2
    .param p1, "mAudioEncoder"    # I

    .line 94
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncoder:I

    .line 95
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 2
    .param p1, "mAudioEncodingBitRate"    # I

    .line 70
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncodingBitRate:I

    .line 71
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .registers 2
    .param p1, "mAudioSamplingRate"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSamplingRate:I

    .line 87
    return-void
.end method

.method public setAudioSource(I)V
    .registers 2
    .param p1, "mAudioSource"    # I

    .line 30
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSource:I

    .line 31
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2
    .param p1, "mAuthor"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAuthor:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setDurationInterval(I)V
    .registers 2
    .param p1, "mDurationInterval"    # I

    .line 102
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mDurationInterval:I

    .line 103
    return-void
.end method

.method public setFileSizeInterval(J)V
    .registers 3
    .param p1, "mFileSizeInterval"    # J

    .line 110
    iput-wide p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mFileSizeInterval:J

    .line 111
    return-void
.end method

.method public setMaxDuration(I)V
    .registers 2
    .param p1, "mMaxDuration"    # I

    .line 54
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxDuration:I

    .line 55
    return-void
.end method

.method public setMaxFileSize(J)V
    .registers 3
    .param p1, "mMaxFileSize"    # J

    .line 46
    iput-wide p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxFileSize:J

    .line 47
    return-void
.end method

.method public setOutputFormat(I)V
    .registers 2
    .param p1, "mOutputFormat"    # I

    .line 38
    iput p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputFormat:I

    .line 39
    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "mOutputPath"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SemCmcRecordingInfo = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAudioSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mOutputFormat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mMaxFileSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mMaxDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mOutputPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioEncodingBitRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncodingBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioChannels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioSamplingRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAudioEncoder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mDurationInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mDurationInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mFileSizeInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mFileSizeInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAuthor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-wide v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mMaxDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncodingBitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioChannels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioSamplingRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAudioEncoder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mDurationInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-wide v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mFileSizeInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return-void
.end method
