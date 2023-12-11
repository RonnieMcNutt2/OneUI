.class public Landroid/mtp/MtpStorageManager$MtpObject;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtpObject"
.end annotation


# instance fields
.field private mChildren:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mIsDir:Z

.field private mName:Ljava/lang/String;

.field private mObserver:Landroid/os/FileObserver;

.field private mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

.field private mParent:Landroid/mtp/MtpStorageManager$MtpObject;

.field private mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field private mStorage:Landroid/mtp/MtpStorage;

.field private mVisited:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorage(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorage;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .registers 2

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mexists(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->exists()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getChildren()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getObserver()Landroid/os/FileObserver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getState()Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isVisited()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetDir(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setDir(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetId(Landroid/mtp/MtpStorageManager$MtpObject;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setObserver(Landroid/os/FileObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setVisited(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "storage"    # Landroid/mtp/MtpStorage;
    .param p4, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p5, "isDir"    # Z

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 158
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 159
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    .line 160
    iput-object p4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 163
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 164
    iput-boolean p5, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 165
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 166
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_2a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2a
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 167
    return-void
.end method

.method private addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 4
    .param p1, "child"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 323
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method private copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 9
    .param p1, "recursive"    # Z

    .line 339
    new-instance v6, Landroid/mtp/MtpStorageManager$MtpObject;

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    iget-object v4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    iget-boolean v5, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 340
    .local v0, "copy":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 341
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 342
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 343
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_26

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 344
    if-eqz p1, :cond_51

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_51

    .line 345
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 346
    .local v2, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    .line 347
    .local v3, "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {v3, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 348
    invoke-direct {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 349
    .end local v2    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_39

    .line 351
    :cond_51
    return-object v0
.end method

.method private exists()Z
    .registers 2

    .line 335
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method private getChildren()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getObserver()Landroid/os/FileObserver;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method private getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method

.method private getState()Landroid/mtp/MtpStorageManager$MtpObjectState;
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method private getStorage()Landroid/mtp/MtpStorage;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    return-object v0
.end method

.method private isFileTranscodeSupported()Z
    .registers 8

    .line 228
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 230
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 231
    .local v2, "stat":Landroid/system/StructStat;
    iget-wide v3, v2, Landroid/system/StructStat;->st_nlink:J
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_f} :catch_17

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 232
    .end local v2    # "stat":Landroid/system/StructStat;
    :catch_17
    move-exception v2

    .line 233
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stat path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Ignoring transcoding."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v1
.end method

.method private isTranscodeMtpEnabled()Z
    .registers 3

    .line 219
    const-string v0, "sys.fuse.transcode_mtp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVisited()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    return v0
.end method

.method private maybeApplyTranscodeLengthWorkaround(J)J
    .registers 5
    .param p1, "length"    # J

    .line 209
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->isHostWindows()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isTranscodeMtpEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isFileTranscodeSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 213
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    return-wide v0

    .line 215
    :cond_18
    return-wide p1
.end method

.method private setDir(Z)V
    .registers 3
    .param p1, "dir"    # Z

    .line 286
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eq p1, v0, :cond_11

    .line 287
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 288
    if-eqz p1, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 290
    :cond_11
    return-void
.end method

.method private setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 267
    iput p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 268
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 263
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 264
    return-void
.end method

.method private setObserver(Landroid/os/FileObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/os/FileObserver;

    .line 319
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 320
    return-void
.end method

.method private setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .registers 2
    .param p1, "op"    # Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 311
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 312
    return-void
.end method

.method private setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 4
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 275
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 276
    invoke-direct {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorage()Landroid/mtp/MtpStorage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    .line 278
    :cond_16
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 279
    return-void
.end method

.method private setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .registers 3
    .param p1, "state"    # Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 301
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 302
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-ne p1, v0, :cond_a

    .line 303
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 304
    :cond_a
    return-void
.end method

.method private setVisited(Z)V
    .registers 2
    .param p1, "visited"    # Z

    .line 293
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 294
    return-void
.end method


# virtual methods
.method public getFormat()I
    .registers 3

    .line 184
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x3001

    goto :goto_e

    :cond_7
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_e
    return v0
.end method

.method public getId()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    return v0
.end method

.method public getModifiedTime()J
    .registers 5

    .line 192
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .registers 3

    .line 239
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_1c

    :cond_10
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_1c
    return-object v0
.end method

.method public getRoot()Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    .line 200
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 204
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_17

    :cond_7
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->maybeApplyTranscodeLengthWorkaround(J)J

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public getStorageId()I
    .registers 2

    .line 188
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    return v0
.end method

.method public getVolumeName()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getVolumeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDir()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    return v0
.end method

.method public isRoot()Z
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSkipObserving()Z
    .registers 4

    .line 251
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/emulated/0/SmartSwitch/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 252
    return v1

    .line 254
    :cond_12
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/storage/emulated/0/Android/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 255
    return v1

    .line 257
    :cond_23
    const/4 v0, 0x0

    return v0
.end method
