.class public Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;
.super Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentedBackgroundMusic"
.end annotation


# instance fields
.field private final BGM_SECTION_TYPE_BODY:I

.field private final BGM_SECTION_TYPE_INTRO:I

.field private final BGM_SECTION_TYPE_OUTRO:I

.field private mBodyCount:I

.field private mBodyCycle:I

.field private mEndOutro:Z

.field private mFBGMBody:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

.field private mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

.field private mLastIndex:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3575
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;-><init>()V

    .line 3796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3798
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    .line 3802
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_INTRO:I

    .line 3804
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_BODY:I

    .line 3806
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_OUTRO:I

    .line 3808
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3810
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 3812
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    .line 3814
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    return-void
.end method

.method private addSections()V
    .registers 4

    .line 3779
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 3780
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3783
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_18

    .line 3784
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 3788
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 3791
    .end local v0    # "i":I
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_3c

    .line 3792
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3794
    :cond_3c
    return-void
.end method


# virtual methods
.method public addBody(Landroid/content/res/AssetFileDescriptor;II)I
    .registers 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3700
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    .line 3701
    .local v0, "bgmInfo":Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 3702
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3704
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3705
    return v1
.end method

.method public addBody(Ljava/io/FileDescriptor;II)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3676
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    .line 3677
    .local v0, "bgmInfo":Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 3678
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3680
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3681
    return v1
.end method

.method public clear()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3585
    invoke-super {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->clear()V

    .line 3587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3588
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3589
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3591
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3592
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 3593
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    .line 3594
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    .line 3595
    return-void
.end method

.method public setIntro(Landroid/content/res/AssetFileDescriptor;II)V
    .registers 5
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3654
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 3655
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3657
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3658
    return-void
.end method

.method public setIntro(Ljava/io/FileDescriptor;II)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3633
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 3634
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3636
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3637
    return-void
.end method

.method public setOutro(Landroid/content/res/AssetFileDescriptor;II)V
    .registers 5
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3744
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 3745
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3747
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3748
    return-void
.end method

.method public setOutro(Ljava/io/FileDescriptor;II)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3723
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 3724
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3726
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3727
    return-void
.end method

.method public setPlaybackRule(IIZ)V
    .registers 6
    .param p1, "bodyRepeatCount"    # I
    .param p2, "bodyLastIndex"    # I
    .param p3, "useOutro"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3768
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    if-gt p2, v0, :cond_b

    .line 3773
    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 3774
    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    .line 3775
    iput-boolean p3, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    .line 3776
    return-void

    .line 3769
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bodyLastIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "is invalid; larger than BGM_SECTION_TYPE_BODY count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3770
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel()Landroid/os/Parcel;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3607
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->addSections()V

    .line 3609
    invoke-super {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 3610
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3611
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3612
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3613
    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3615
    return-object v0
.end method
