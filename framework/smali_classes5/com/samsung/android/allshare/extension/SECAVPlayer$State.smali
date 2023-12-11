.class Lcom/samsung/android/allshare/extension/SECAVPlayer$State;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field private mItemDuration:J

.field private mLastPos:J

.field private mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

.field private mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPlayRequested:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompareAndSetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;ZZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->compareAndSetNearlyFinished(ZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->getItemDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->getLastPos()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->isPlayRequested()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setItemDuration(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setLastPos(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/media/MediaInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setMediaInfo(Lcom/samsung/android/allshare/media/MediaInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setNearlyFinished(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setNewPlayState(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setPlayRequested(Z)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    .line 309
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    .line 313
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    .line 317
    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/allshare/extension/SECAVPlayer$State-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;-><init>()V

    return-void
.end method

.method private compareAndSetNearlyFinished(ZZ)Z
    .registers 4
    .param p1, "expected"    # Z
    .param p2, "updated"    # Z

    .line 343
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method private getItemDuration()J
    .registers 3

    .line 369
    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    return-wide v0
.end method

.method private getLastPos()J
    .registers 3

    .line 357
    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    return-wide v0
.end method

.method private getMediaInfo()Lcom/samsung/android/allshare/media/MediaInfo;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    return-object v0
.end method

.method private isPlayRequested()Z
    .registers 2

    .line 335
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    return v0
.end method

.method private setItemDuration(J)V
    .registers 3
    .param p1, "duration"    # J

    .line 365
    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    .line 366
    return-void
.end method

.method private setLastPos(J)V
    .registers 5
    .param p1, "pos"    # J

    .line 351
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    .line 352
    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    .line 354
    :cond_8
    return-void
.end method

.method private setMediaInfo(Lcom/samsung/android/allshare/media/MediaInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/samsung/android/allshare/media/MediaInfo;

    .line 347
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    .line 348
    return-void
.end method

.method private setNearlyFinished(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 339
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 340
    return-void
.end method

.method private setNewPlayState(J)V
    .registers 6
    .param p1, "pos"    # J

    .line 322
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    .line 323
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    .line 324
    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    .line 326
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 328
    return-void
.end method

.method private setPlayRequested(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 331
    iput-boolean p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    .line 332
    return-void
.end method
