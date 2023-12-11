.class public Lcom/samsung/android/media/SemFragmentedBackgroundMusic;
.super Lcom/samsung/android/media/SemBackgroundMusic;
.source "SemFragmentedBackgroundMusic.java"


# static fields
.field private static final BGM_SECTION_TYPE_BODY:I = 0x1

.field private static final BGM_SECTION_TYPE_INTRO:I = 0x0

.field private static final BGM_SECTION_TYPE_OUTRO:I = 0x2


# instance fields
.field private mBodyCount:I

.field private mBodyCycle:I

.field private mEndOutro:Z

.field private mFBGMBody:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

.field private mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

.field private mLastIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/media/SemBackgroundMusic;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 206
    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    .line 214
    iput v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCycle:I

    .line 215
    iput v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mLastIndex:I

    .line 216
    iput-boolean v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mEndOutro:Z

    return-void
.end method

.method private addSections()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 189
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    if-eqz v0, :cond_18

    .line 193
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 197
    iget-object v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 200
    .end local v0    # "i":I
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    if-eqz v0, :cond_3c

    .line 201
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_3c
    return-void
.end method


# virtual methods
.method public addBody(Landroid/content/res/AssetFileDescriptor;II)I
    .registers 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 121
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    .line 122
    .local v0, "bgmInfo":Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    .line 126
    return v1
.end method

.method public addBody(Ljava/io/FileDescriptor;II)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 101
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    .line 102
    .local v0, "bgmInfo":Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    .line 106
    return v1
.end method

.method public clear()V
    .registers 3

    .line 26
    invoke-super {p0}, Lcom/samsung/android/media/SemBackgroundMusic;->clear()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 29
    iget-object v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 30
    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    .line 33
    iput v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCycle:I

    .line 34
    iput v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mLastIndex:I

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mEndOutro:Z

    .line 36
    return-void
.end method

.method public setIntro(Landroid/content/res/AssetFileDescriptor;II)V
    .registers 5
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 87
    return-void
.end method

.method public setIntro(Ljava/io/FileDescriptor;II)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 70
    return-void
.end method

.method public setOutro(Landroid/content/res/AssetFileDescriptor;II)V
    .registers 5
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 157
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 160
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 161
    return-void
.end method

.method public setOutro(Ljava/io/FileDescriptor;II)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 140
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    if-nez v0, :cond_b

    .line 141
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    .line 144
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

    .line 177
    iget v0, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    if-gt p2, v0, :cond_b

    .line 182
    iput p1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCycle:I

    .line 183
    iput p2, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mLastIndex:I

    .line 184
    iput-boolean p3, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mEndOutro:Z

    .line 185
    return-void

    .line 178
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

    iget v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel(Ljava/lang/String;)Landroid/os/Parcel;
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->addSections()V

    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/media/SemBackgroundMusic;->writeToParcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v0

    .line 47
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mBodyCycle:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mLastIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v1, p0, Lcom/samsung/android/media/SemFragmentedBackgroundMusic;->mEndOutro:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-object v0
.end method
