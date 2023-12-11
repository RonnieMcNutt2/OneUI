.class Lcom/android/server/DrmMediaResourceHelper;
.super Ljava/lang/Object;
.source "DrmEventService.java"


# instance fields
.field private BoostedPIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field private final mMediaResourceCodecStateChangeListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

.field private final mMediaResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddPIDToBoostedList(Lcom/android/server/DrmMediaResourceHelper;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DrmMediaResourceHelper;->addPIDToBoostedList(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misResourcePresent(Lcom/android/server/DrmMediaResourceHelper;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DrmMediaResourceHelper;->isResourcePresent(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremovePID(Lcom/android/server/DrmMediaResourceHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DrmMediaResourceHelper;->removePID(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "DrmMediaResourceHelper"

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Lcom/android/server/DrmMediaResourceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/DrmMediaResourceHelper$1;-><init>(Lcom/android/server/DrmMediaResourceHelper;)V

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->mMediaResourceCodecStateChangeListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 207
    new-instance v0, Lcom/android/server/DrmMediaResourceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/DrmMediaResourceHelper$2;-><init>(Lcom/android/server/DrmMediaResourceHelper;)V

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->mMediaResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 144
    invoke-direct {p0}, Lcom/android/server/DrmMediaResourceHelper;->createMediaResourceHelper()V

    .line 145
    return-void
.end method

.method private addPIDToBoostedList(I)Z
    .registers 4
    .param p1, "pid"    # I

    .line 159
    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private createMediaResourceHelper()V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    const-string v1, "createMediaResourceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 150
    :try_start_f
    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper;->mMediaResourceCodecStateChangeListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper;->mMediaResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_1b} :catch_1c

    .line 154
    goto :goto_24

    .line 152
    :catch_1c
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    const-string v2, "IllegalStateException SemMediaResourceHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_24
    return-void
.end method

.method private isResourcePresent(I)Z
    .registers 5
    .param p1, "pid"    # I

    .line 164
    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, "i":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 167
    .local v1, "in":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1a

    .line 168
    const/4 v2, 0x1

    return v2

    .line 169
    .end local v1    # "in":Ljava/lang/Integer;
    :cond_1a
    goto :goto_6

    .line 170
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private removePID(I)V
    .registers 5
    .param p1, "pid"    # I

    .line 175
    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, "i":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 178
    .local v1, "in":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1c

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 180
    return-void

    .line 182
    .end local v1    # "in":Ljava/lang/Integer;
    :cond_1c
    goto :goto_6

    .line 184
    :cond_1d
    return-void
.end method
