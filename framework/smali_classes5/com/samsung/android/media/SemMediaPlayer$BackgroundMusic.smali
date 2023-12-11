.class public abstract Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundMusic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    }
.end annotation


# instance fields
.field protected mBGMInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .registers 7
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .param p2, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 3513
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 3514
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    .line 3515
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    .line 3516
    iput p3, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    .line 3517
    iput p4, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    .line 3518
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    .line 3520
    return-object p1
.end method

.method protected addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .registers 7
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 3501
    iput-object p2, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 3502
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    .line 3503
    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    .line 3504
    iput p3, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    .line 3505
    iput p4, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    .line 3506
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    .line 3508
    return-object p1
.end method

.method public clear()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3467
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3468
    return-void
.end method

.method public writeToParcel()Landroid/os/Parcel;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3480
    .local v0, "p":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundMusic size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_95

    .line 3484
    :try_start_34
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-object v3, v3, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 3485
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3486
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-wide v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3487
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-wide v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3488
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3489
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3490
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_8a} :catch_8b

    .line 3493
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_92

    .line 3491
    :catch_8b
    move-exception v3

    .line 3492
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "setBackgroundMusic ParcelFileDescriptor.dup failed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    .end local v3    # "e":Ljava/io/IOException;
    :goto_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 3496
    .end local v1    # "i":I
    :cond_95
    return-object v0
.end method
