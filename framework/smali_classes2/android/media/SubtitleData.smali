.class public final Landroid/media/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleData"


# instance fields
.field private mData:[B

.field private mDurationUs:J

.field private mStartTimeUs:J

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(IJJ[B)V
    .registers 9
    .param p1, "trackIndex"    # I
    .param p2, "startTimeUs"    # J
    .param p4, "durationUs"    # J
    .param p6, "data"    # [B

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p6, :cond_e

    .line 95
    iput p1, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    .line 96
    iput-wide p2, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    .line 97
    iput-wide p4, p0, Landroid/media/SubtitleData;->mDurationUs:J

    .line 98
    iput-object p6, p0, Landroid/media/SubtitleData;->mData:[B

    .line 99
    return-void

    .line 93
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null data is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0, p1}, Landroid/media/SubtitleData;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    return-void

    .line 78
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_b

    .line 141
    return v0

    .line 144
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 150
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    return-object v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 122
    iget-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    return-wide v0
.end method

.method public getStartTimeUs()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    return-wide v0
.end method

.method public getTrackIndex()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    return v0
.end method
