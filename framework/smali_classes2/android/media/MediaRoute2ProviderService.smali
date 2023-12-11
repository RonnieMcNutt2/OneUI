.class public abstract Landroid/media/MediaRoute2ProviderService;
.super Landroid/app/Service;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;,
        Landroid/media/MediaRoute2ProviderService$Reason;
    }
.end annotation


# static fields
.field public static final CATEGORY_SELF_SCAN_ONLY:Ljava/lang/String; = "android.media.MediaRoute2ProviderService.SELF_SCAN_ONLY"

.field private static final DEBUG:Z

.field private static final MAX_REQUEST_IDS_SIZE:I = 0x1f4

.field public static final REASON_INVALID_COMMAND:I = 0x4

.field public static final REASON_NETWORK_ERROR:I = 0x2

.field public static final REASON_REJECTED:I = 0x1

.field public static final REASON_ROUTE_NOT_AVAILABLE:I = 0x3

.field public static final REASON_UNKNOWN_ERROR:I = 0x0

.field public static final REQUEST_ID_NONE:J = 0x0L

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRoute2ProviderService"

.field private static final TAG:Ljava/lang/String; = "MR2ProviderService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private volatile mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field private mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

.field private final mRequestIds:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestIdsLock:Ljava/lang/Object;

.field private final mSessionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionLock:Ljava/lang/Object;

.field private final mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;


# direct methods
.method public static synthetic $r8$lambda$CFx2VTxdk5AJhp5shILAGrgsDrs(Landroid/media/MediaRoute2ProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->publishState()V

    return-void
.end method

.method public static synthetic $r8$lambda$IXCH6Eosr-7BsM-u3O1wLon2abU(Landroid/media/MediaRoute2ProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->updateSessions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProviderInfo(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 74
    const-string v0, "MR2ProviderService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 167
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    .line 169
    return-void
.end method

.method private addRequestId(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 545
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_12

    .line 547
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 549
    :cond_12
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 550
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private publishState()V
    .registers 4

    .line 497
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 498
    return-void

    .line 501
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_10

    .line 502
    return-void

    .line 506
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 509
    goto :goto_1e

    .line 507
    :catch_16
    move-exception v0

    .line 508
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderService"

    const-string v2, "Failed to publish provider state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private removeRequestId(J)Z
    .registers 6
    .param p1, "requestId"    # J

    .line 565
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 567
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private updateSessions()V
    .registers 5

    .line 519
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 520
    return-void

    .line 523
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_10

    .line 524
    return-void

    .line 528
    :cond_10
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 530
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2e

    .line 533
    :try_start_1f
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionsUpdated(Ljava/util/List;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    .line 536
    goto :goto_2d

    .line 534
    :catch_25
    move-exception v0

    .line 535
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2ProviderService"

    const-string v3, "Failed to notify session info changed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2d
    return-void

    .line 530
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method


# virtual methods
.method public final getAllSessionInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 234
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final getSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 222
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    monitor-exit v0

    return-object v1

    .line 224
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1

    .line 220
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyRequestFailed(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 354
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_5

    .line 355
    return-void

    .line 358
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    const-string v1, "MR2ProviderService"

    if-nez v0, :cond_24

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRequestFailed: The requestId doesn\'t exist. requestId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 365
    :cond_24
    :try_start_24
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyRequestFailed(JI)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 368
    goto :goto_30

    .line 366
    :catch_2a
    move-exception v0

    .line 367
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Failed to notify that the request has failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method public final notifyRoutes(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p1, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    const-string v0, "routes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    .line 479
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoutes(Ljava/util/Collection;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 481
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 482
    return-void
.end method

.method public final notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .registers 9
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 253
    const-string v0, "sessionInfo must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 256
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionCreated: Creating a session. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_50

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    if-nez v0, :cond_50

    .line 261
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionCreated: The requestId doesn\'t exist. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_50
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_57
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 268
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionCreated: Ignoring duplicate session id."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    monitor-exit v1

    return-void

    .line 271
    :cond_68
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v2, :cond_77

    .line 274
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_57 .. :try_end_76} :catchall_85

    return-void

    .line 277
    :cond_77
    :try_start_77
    invoke-interface {v2, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_85

    .line 280
    goto :goto_83

    .line 278
    :catch_7b
    move-exception v2

    .line 279
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_7c
    const-string v3, "MR2ProviderService"

    const-string v4, "Failed to notify session created."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_83
    monitor-exit v1

    .line 282
    return-void

    .line 281
    :catchall_85
    move-exception v2

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_85

    throw v2
.end method

.method public final notifySessionReleased(Ljava/lang/String;)V
    .registers 7
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 317
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 318
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionReleased: Releasing session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_22
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_25
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 325
    .local v1, "sessionInfo":Landroid/media/RoutingSessionInfo;
    if-nez v1, :cond_38

    .line 326
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionReleased: Ignoring unknown session info."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    monitor-exit v0

    return-void

    .line 330
    :cond_38
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v2, :cond_3e

    .line 331
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_4c

    return-void

    .line 334
    :cond_3e
    :try_start_3e
    invoke-interface {v2, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    .line 337
    goto :goto_4a

    .line 335
    :catch_42
    move-exception v2

    .line 336
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_43
    const-string v3, "MR2ProviderService"

    const-string v4, "Failed to notify session released."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_4a
    monitor-exit v0

    .line 339
    return-void

    .line 338
    .end local v1    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4c

    throw v1

    .line 315
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 289
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 292
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionUpdated: Updating session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_21
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_28
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 298
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_43

    .line 304
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 305
    return-void

    .line 300
    :cond_3a
    :try_start_3a
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionUpdated: Ignoring unknown session info."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v1

    return-void

    .line 303
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_43

    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 180
    const-string v0, "android.media.MediaRoute2ProviderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 181
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    if-nez v0, :cond_17

    .line 182
    new-instance v0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    .line 184
    :cond_17
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    return-object v0

    .line 186
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onDeselectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;)V
    .registers 2
    .param p1, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 471
    return-void
.end method

.method public abstract onReleaseSession(JLjava/lang/String;)V
.end method

.method public abstract onSelectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSetRouteVolume(JLjava/lang/String;I)V
.end method

.method public abstract onSetSessionVolume(JLjava/lang/String;I)V
.end method

.method public abstract onTransferToRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method schedulePublishState()V
    .registers 4

    .line 491
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 492
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_14
    return-void
.end method

.method scheduleUpdateSessions()V
    .registers 4

    .line 513
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 514
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    :cond_14
    return-void
.end method

.method setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 485
    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 486
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 487
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 488
    return-void
.end method
