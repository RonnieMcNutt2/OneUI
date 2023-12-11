.class public Lcom/android/internal/os/BinderStats;
.super Ljava/lang/Object;
.source "BinderStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderStats$BinderStatsEntry;,
        Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/BinderStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAGIC:I = -0x7efadcdc

.field private static final MAX_ENTRY_NUMBER:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BinderStats"


# instance fields
.field private final mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderStats$BinderStatsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcom/android/internal/os/BinderStats$1;

    invoke-direct {v0}, Lcom/android/internal/os/BinderStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/os/BinderStats;->reset()V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/os/BinderStats;->reset()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .local v0, "mg":I
    const v1, -0x7efadcdc

    const-string v2, "BinderStats"

    if-eq v0, v1, :cond_25

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAGIC number mismatch expected=-2130369756 actual="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 124
    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v1, :cond_8d

    .line 126
    new-instance v4, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    invoke-direct {v4}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;-><init>()V

    .line 127
    .local v4, "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStartTime:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mEndTime:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 130
    .local v5, "num":I
    const/4 v6, 0x5

    if-le v5, v6, :cond_4d

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/os/BinderStats;->reset()V

    .line 132
    const-string v6, "The binder_calls_stats file seems to be broken. We discard previous stats."

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 135
    :cond_4d
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4e
    if-ge v6, v5, :cond_85

    .line 136
    new-instance v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    invoke-direct {v7}, Lcom/android/internal/os/BinderStats$BinderStatsUnit;-><init>()V

    .line 137
    .local v7, "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->binderClass:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->methodName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->cpuTimeMicros:J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callCount:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->recordedCallCount:J

    .line 144
    invoke-virtual {v4, v7}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->addUnit(Lcom/android/internal/os/BinderStats$BinderStatsUnit;)V

    .line 135
    .end local v7    # "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 146
    .end local v6    # "j":I
    :cond_85
    iget-object v6, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v4    # "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    .end local v5    # "num":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 148
    .end local v3    # "i":I
    :cond_8d
    return-void
.end method

.method private readFully(Ljava/io/InputStream;[I)[B
    .registers 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "pos":I
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 154
    .local v1, "data":[B
    :goto_5
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 155
    .local v2, "amt":I
    const/4 v3, 0x0

    if-gez v2, :cond_34

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** FINISHED READING: pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BinderStats"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    aput v0, p2, v3

    .line 158
    return-object v1

    .line 160
    :cond_34
    add-int/2addr v0, v2

    .line 161
    array-length v4, v1

    if-lt v0, v4, :cond_40

    .line 162
    add-int/lit16 v4, v0, 0x4000

    new-array v4, v4, [B

    .line 163
    .local v4, "newData":[B
    invoke-static {v1, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    move-object v1, v4

    .line 166
    .end local v2    # "amt":I
    .end local v4    # "newData":[B
    :cond_40
    goto :goto_5
.end method


# virtual methods
.method public addData(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderStats$BinderStatsEntry;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderStats$BinderStatsEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    .line 188
    .local v1, "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    iget-object v2, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 189
    iget-object v2, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v1    # "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    :cond_1d
    goto :goto_4

    .line 195
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2f

    .line 196
    iget-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_2e} :catch_30

    goto :goto_1e

    .line 200
    :cond_2f
    goto :goto_38

    .line 198
    :catch_30
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "BinderStats"

    const-string v2, "IndexOutOfBoundsException occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_38
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 204
    const-string v0, "*** History of binder_calls_stats ***"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    .line 206
    .local v1, "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    const-string v2, "Time Duration: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    iget-wide v3, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStartTime:J

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 208
    const-string v2, " to "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    const-string v2, "HH:mm:ss"

    iget-wide v3, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mEndTime:J

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 210
    iget-object v2, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    .line 211
    .local v3, "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    if-eqz v3, :cond_ac

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->binderClass:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->cpuTimeMicros:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callCount:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->recordedCallCount:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .end local v3    # "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    :cond_ac
    goto :goto_3e

    .line 217
    .end local v1    # "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    :cond_ad
    goto/16 :goto_b

    .line 218
    :cond_af
    return-void
.end method

.method public getSize()I
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "in":Landroid/os/Parcel;
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [I

    .line 173
    .local v1, "outLen":[I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/os/BinderStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v2

    .line 174
    .local v2, "raw":[B
    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 175
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 176
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 178
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1d
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    .line 182
    .end local v1    # "outLen":[I
    .end local v2    # "raw":[B
    goto :goto_26

    :catchall_1b
    move-exception v1

    goto :goto_2b

    .line 179
    :catch_1d
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    :try_start_1e
    const-string v2, "BinderStats"

    const-string v3, "Failed to read stat files"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 182
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    return-void

    .line 182
    :goto_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v1
.end method

.method public reset()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    const v0, -0x7efadcdc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 88
    iget-object v1, p0, Lcom/android/internal/os/BinderStats;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    .line 89
    .local v1, "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    if-eqz v1, :cond_6b

    .line 90
    iget-wide v2, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStartTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-wide v2, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mEndTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object v2, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v2, v1, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    .line 94
    .local v3, "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    iget v4, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v4, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v4, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->binderClass:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v4, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-wide v4, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->cpuTimeMicros:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v4, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v4, v3, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->recordedCallCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    .end local v3    # "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    goto :goto_3b

    .line 87
    .end local v1    # "e":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 104
    .end local v0    # "i":I
    :cond_6e
    return-void
.end method
