.class public final Landroid/telephony/ActivityStatsTechSpecificInfo;
.super Ljava/lang/Object;
.source "ActivityStatsTechSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ActivityStatsTechSpecificInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TX_POWER_LEVELS:I = 0x5


# instance fields
.field private mFrequencyRange:I

.field private mRat:I

.field private mRxTimeMs:I

.field private mTxTimeMs:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 221
    new-instance v0, Landroid/telephony/ActivityStatsTechSpecificInfo$1;

    invoke-direct {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ActivityStatsTechSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[II)V
    .registers 7
    .param p1, "rat"    # I
    .param p2, "frequencyRange"    # I
    .param p3, "txTimeMs"    # [I
    .param p4, "rxTimeMs"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    array-length v0, p3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 50
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    .line 51
    iput p2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    .line 52
    iput-object p3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 53
    iput p4, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 54
    return-void

    .line 48
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "txTimeMs must have length == TX_POWER_LEVELS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$isTxPowerEmpty$1(I)Z
    .registers 2
    .param p0, "i"    # I

    .line 149
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic lambda$isTxPowerValid$0(I)Z
    .registers 2
    .param p0, "i"    # I

    .line 136
    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static ratToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 177
    packed-switch p0, :pswitch_data_1e

    .line 193
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_8
    const-string v0, "NGRAN"

    return-object v0

    .line 189
    :pswitch_b
    const-string v0, "IWLAN"

    return-object v0

    .line 187
    :pswitch_e
    const-string v0, "CDMA2000"

    return-object v0

    .line 185
    :pswitch_11
    const-string v0, "EUTRAN"

    return-object v0

    .line 183
    :pswitch_14
    const-string v0, "UTRAN"

    return-object v0

    .line 181
    :pswitch_17
    const-string v0, "GERAN"

    return-object v0

    .line 179
    :pswitch_1a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 168
    :cond_4
    instance-of v1, p1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 169
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 170
    .local v1, "that":Landroid/telephony/ActivityStatsTechSpecificInfo;
    iget v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    iget v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    iget v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    iget-object v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 172
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    iget v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 170
    :goto_2b
    return v0
.end method

.method public getFrequencyRange()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    return v0
.end method

.method public getRat()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    return v0
.end method

.method public getReceiveTimeMillis()J
    .registers 3

    .line 102
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTransmitTimeMillis(I)J
    .registers 4
    .param p1, "powerLevel"    # I

    .line 83
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTransmitTimeMillis()[I
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 160
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 161
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 162
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isRxPowerEmpty()Z
    .registers 5

    .line 155
    invoke-virtual {p0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isRxPowerValid()Z
    .registers 5

    .line 141
    invoke-virtual {p0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isTxPowerEmpty()Z
    .registers 3

    .line 146
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    if-eqz v0, :cond_19

    array-length v1, v0

    if-eqz v1, :cond_19

    .line 149
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 150
    .local v0, "isTxPowerEmpty":Z
    :goto_1a
    return v0
.end method

.method public isTxPowerValid()Z
    .registers 3

    .line 136
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyRange(I)V
    .registers 2
    .param p1, "frequencyRange"    # I

    .line 111
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    .line 112
    return-void
.end method

.method public setRat(I)V
    .registers 2
    .param p1, "rat"    # I

    .line 106
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    .line 107
    return-void
.end method

.method public setReceiveTimeMillis(I)V
    .registers 2
    .param p1, "receiveTimeMillis"    # I

    .line 116
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 117
    return-void
.end method

.method public setReceiveTimeMillis(J)V
    .registers 4
    .param p1, "receiveTimeMillis"    # J

    .line 126
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 127
    return-void
.end method

.method public setTransmitTimeMillis([I)V
    .registers 3
    .param p1, "txTimeMs"    # [I

    .line 131
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string/jumbo v1, "{mRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    .line 201
    invoke-static {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    .line 203
    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string v1, ",mTxTimeMs[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 205
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string v1, ",mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 240
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 243
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    return-void
.end method
