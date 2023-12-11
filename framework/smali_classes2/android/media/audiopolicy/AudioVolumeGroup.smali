.class public final Landroid/media/audiopolicy/AudioVolumeGroup;
.super Ljava/lang/Object;
.source "AudioVolumeGroup.java"

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
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_VOLUME_GROUP:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AudioVolumeGroup"

.field private static sAudioVolumeGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mAudioAttributes:[Landroid/media/AudioAttributes;

.field private mId:I

.field private mLegacyStreamTypes:[I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroup$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioVolumeGroup$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Landroid/media/AudioAttributes;[I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "audioAttributes"    # [Landroid/media/AudioAttributes;
    .param p4, "legacyStreamTypes"    # [I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "name must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "audioAttributes must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "legacyStreamTypes must not be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    .line 104
    iput p2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    .line 105
    iput-object p3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 106
    iput-object p4, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    .line 107
    return-void
.end method

.method public static getAudioVolumeGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    if-nez v0, :cond_16

    .line 71
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_7
    sget-object v1, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    if-nez v1, :cond_11

    .line 73
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->initializeAudioVolumeGroups()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    .line 75
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 77
    :cond_16
    :goto_16
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    return-object v0
.end method

.method private static initializeAudioVolumeGroups()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "avgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-static {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->native_list_audio_volume_groups(Ljava/util/ArrayList;)I

    move-result v1

    .line 83
    .local v1, "status":I
    if-eqz v1, :cond_12

    .line 84
    const-string v2, "AudioVolumeGroup"

    const-string v3, ": listAudioVolumeGroups failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_12
    return-object v0
.end method

.method private static native native_list_audio_volume_groups(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 112
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 114
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 116
    .local v2, "thatAvg":Landroid/media/audiopolicy/AudioVolumeGroup;
    iget-object v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    iget v4, v2, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 117
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 116
    :goto_31
    return v0

    .line 112
    .end local v2    # "thatAvg":Landroid/media/audiopolicy/AudioVolumeGroup;
    :cond_32
    :goto_32
    return v1
.end method

.method public getAudioAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    return v0
.end method

.method public getLegacyStreamTypes()[I
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "\n Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, " Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "\n     Supported Audio Attributes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_27
    if-ge v4, v2, :cond_3a

    aget-object v5, v1, v4

    .line 203
    .local v5, "attribute":Landroid/media/AudioAttributes;
    const-string v6, "\n       -"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v5}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .end local v5    # "attribute":Landroid/media/AudioAttributes;
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 206
    :cond_3a
    const-string v1, "\n     Supported Legacy Stream Types: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v2, v1

    :goto_42
    if-ge v3, v2, :cond_55

    aget v4, v1, v3

    .line 208
    .local v4, "legacyStreamType":I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .end local v4    # "legacyStreamType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 211
    :cond_55
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    .line 159
    .local v4, "attributes":Landroid/media/AudioAttributes;
    or-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    .end local v4    # "attributes":Landroid/media/AudioAttributes;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 161
    :cond_21
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v1, v0

    :goto_2a
    if-ge v2, v1, :cond_34

    aget v3, v0, v2

    .line 163
    .local v3, "streamType":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    .end local v3    # "streamType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 165
    :cond_34
    return-void
.end method
