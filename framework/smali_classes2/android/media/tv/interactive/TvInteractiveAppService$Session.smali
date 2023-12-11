.class public abstract Landroid/media/tv/interactive/TvInteractiveAppService$Session;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMediaFrame:Landroid/graphics/Rect;

.field private mMediaView:Landroid/view/View;

.field private mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

.field private mMediaViewContainer:Landroid/widget/FrameLayout;

.field private mMediaViewEnabled:Z

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

.field private mSurface:Landroid/view/Surface;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$23Du2bhfrxoDZ4QeIedi5exCW3U(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestTvRecordingInfoList$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$31ddCNENfTmJBEt1i1OveWKLInI(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$setTvRecordingInfo$4(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OsfVgk063NPcMbNpD0n3iIlF46M(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestScheduleRecording$2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$USyan2iPpI_wIdSHXE0wh90QEu8(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestStopRecording$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1PG9y3sYu_4e6_4PLgAqUKf2tc(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestTvRecordingInfo$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aICSFs1UVkouVw4NN6lPoWFcZ7A(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestScheduleRecording$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bq8JGf0K40CUGYloTkgPpu6hSxY(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestStartRecording$0(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMediaFrame(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowToken(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minitialize(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    .line 446
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    .line 447
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    .line 448
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    .line 449
    return-void
.end method

.method private executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 2065
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2066
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-nez v1, :cond_d

    .line 2068
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2070
    :cond_d
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2071
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    .line 2074
    :cond_1d
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2077
    :goto_22
    monitor-exit v0

    .line 2078
    return-void

    .line 2077
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 2032
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2033
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 2034
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 2035
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2036
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_b

    .line 2037
    :cond_1b
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2038
    monitor-exit v0

    .line 2039
    return-void

    .line 2038
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private synthetic lambda$requestScheduleRecording$2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "programUri"    # Landroid/net/Uri;
    .param p5, "params"    # Landroid/os/Bundle;

    .line 1430
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_c

    .line 1431
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1436
    :cond_c
    goto :goto_15

    .line 1434
    :catch_d
    move-exception v0

    .line 1435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestScheduleRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method private synthetic lambda$requestScheduleRecording$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 22
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "startTime"    # J
    .param p6, "duration"    # J
    .param p8, "repeatDays"    # I
    .param p9, "params"    # Landroid/os/Bundle;

    .line 1470
    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v2, :cond_13

    .line 1471
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    .line 1476
    :cond_13
    goto :goto_1c

    .line 1474
    :catch_14
    move-exception v0

    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TvInteractiveAppService"

    const-string v3, "error in requestScheduleRecording"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method private synthetic lambda$requestStartRecording$0(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "programUri"    # Landroid/net/Uri;

    .line 1368
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_7

    .line 1369
    invoke-interface {v0, p1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1373
    :cond_7
    goto :goto_10

    .line 1371
    :catch_8
    move-exception v0

    .line 1372
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestStartRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1374
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private synthetic lambda$requestStopRecording$1(Ljava/lang/String;)V
    .registers 5
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1394
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_7

    .line 1395
    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestStopRecording(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1399
    :cond_7
    goto :goto_10

    .line 1397
    :catch_8
    move-exception v0

    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestStopRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private synthetic lambda$requestTvRecordingInfo$5(Ljava/lang/String;)V
    .registers 5
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1517
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_7

    .line 1518
    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestTvRecordingInfo(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1522
    :cond_7
    goto :goto_10

    .line 1520
    :catch_8
    move-exception v0

    .line 1521
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestTvRecordingInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1523
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private synthetic lambda$requestTvRecordingInfoList$6(I)V
    .registers 5
    .param p1, "type"    # I

    .line 1538
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_7

    .line 1539
    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestTvRecordingInfoList(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1543
    :cond_7
    goto :goto_10

    .line 1541
    :catch_8
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestTvRecordingInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private synthetic lambda$setTvRecordingInfo$4(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 6
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 1495
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_7

    .line 1496
    invoke-interface {v0, p1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1500
    :cond_7
    goto :goto_10

    .line 1498
    :catch_8
    move-exception v0

    .line 1499
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in setTvRecordingInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1501
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method


# virtual methods
.method createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1626
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1627
    return-void
.end method

.method createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 2088
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 2089
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 2092
    :cond_8
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 2093
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2094
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    .line 2095
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-nez v0, :cond_1e

    .line 2096
    return-void

    .line 2098
    :cond_1e
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateMediaView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    .line 2099
    if-nez v0, :cond_27

    .line 2100
    return-void

    .line 2102
    :cond_27
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    if-eqz v0, :cond_32

    .line 2103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->cancel(Z)Z

    .line 2104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    .line 2109
    :cond_32
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 2110
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2112
    const/16 v0, 0x3e9

    .line 2116
    .local v0, "type":I
    const/16 v1, 0x218

    .line 2119
    .local v1, "flags":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2120
    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 2122
    :cond_51
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v9, -0x2

    move-object v2, v10

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v10, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2125
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2127
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2128
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2129
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2130
    return-void
.end method

.method destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 2
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 1630
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .line 2003
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 2004
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 2005
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2006
    return v1

    .line 2005
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_11
    goto :goto_3c

    .line 2010
    :cond_12
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3c

    .line 2011
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 2012
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 2013
    .local v2, "source":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2014
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2015
    return v1

    .line 2017
    :cond_2a
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_35

    .line 2018
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2019
    return v1

    .line 2022
    :cond_35
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2023
    return v1

    .line 2010
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "source":I
    :cond_3c
    :goto_3c
    nop

    .line 2028
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method dispatchSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2061
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSurfaceChanged(III)V

    .line 2062
    return-void
.end method

.method public isMediaViewEnabled()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return v0
.end method

.method public layoutSurface(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1003
    if-gt p1, p3, :cond_13

    if-gt p2, p4, :cond_13

    .line 1006
    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;IIII)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1023
    return-void

    .line 1004
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 2
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 1792
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    .line 1793
    return-void
.end method

.method public notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 1969
    :try_start_0
    invoke-static {p1}, Landroid/media/tv/AdBuffer;->dupAdBuffer(Landroid/media/tv/AdBuffer;)Landroid/media/tv/AdBuffer;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_e

    .line 1973
    .local v0, "dupBuffer":Landroid/media/tv/AdBuffer;
    nop

    .line 1974
    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;

    invoke-direct {v1, p0, p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdBuffer;Landroid/media/tv/AdBuffer;)V

    invoke-direct {p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1995
    return-void

    .line 1970
    .end local v0    # "dupBuffer":Landroid/media/tv/AdBuffer;
    :catch_e
    move-exception v0

    .line 1971
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "dup AdBuffer error in notifyAdBufferReady:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1972
    return-void
.end method

.method notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 1774
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdResponse(Landroid/media/tv/AdResponse;)V

    .line 1775
    return-void
.end method

.method public final notifyBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "biIAppId"    # Ljava/lang/String;

    .line 1914
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$19;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$19;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1931
    return-void
.end method

.method notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 1764
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 1765
    return-void
.end method

.method notifyContentAllowed()V
    .registers 1

    .line 1739
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentAllowed()V

    .line 1740
    return-void
.end method

.method notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 2
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1746
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentBlocked(Landroid/media/tv/TvContentRating;)V

    .line 1747
    return-void
.end method

.method notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1682
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1683
    return-void
.end method

.method notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 1813
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    return-void
.end method

.method notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 1820
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    return-void
.end method

.method notifyRecordingError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "err"    # I

    .line 1834
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingError(Ljava/lang/String;I)V

    .line 1835
    return-void
.end method

.method notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 1841
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    return-void
.end method

.method notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 1799
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    return-void
.end method

.method notifyRecordingStopped(Ljava/lang/String;)V
    .registers 2
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1806
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingStopped(Ljava/lang/String;)V

    .line 1807
    return-void
.end method

.method notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1827
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1828
    return-void
.end method

.method public notifySessionStateChanged(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "err"    # I

    .line 1884
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$18;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$18;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1901
    return-void
.end method

.method notifySignalStrength(I)V
    .registers 2
    .param p1, "strength"    # I

    .line 1753
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSignalStrength(I)V

    .line 1754
    return-void
.end method

.method public final notifyTeletextAppStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1940
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$20;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$20;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1957
    return-void
.end method

.method notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 1869
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    .line 1870
    return-void
.end method

.method notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 1848
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1849
    return-void
.end method

.method notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 1862
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    .line 1863
    return-void
.end method

.method notifyTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1855
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    .line 1856
    return-void
.end method

.method notifyTrackSelected(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 1711
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackSelected(ILjava/lang/String;)V

    .line 1712
    return-void
.end method

.method notifyTracksChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1718
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTracksChanged(Ljava/util/List;)V

    .line 1719
    return-void
.end method

.method notifyTuned(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1704
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTuned(Landroid/net/Uri;)V

    .line 1705
    return-void
.end method

.method notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1781
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvMessage(ILandroid/os/Bundle;)V

    .line 1782
    return-void
.end method

.method notifyVideoAvailable()V
    .registers 1

    .line 1725
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoAvailable()V

    .line 1726
    return-void
.end method

.method notifyVideoUnavailable(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1732
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoUnavailable(I)V

    .line 1733
    return-void
.end method

.method public onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 2
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 916
    return-void
.end method

.method public onAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 908
    return-void
.end method

.method public onAvailableSpeeds([F)V
    .registers 2
    .param p1, "speeds"    # [F

    .line 603
    return-void
.end method

.method public onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 902
    return-void
.end method

.method public onContentAllowed()V
    .registers 1

    .line 884
    return-void
.end method

.method public onContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 2
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 890
    return-void
.end method

.method public onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 520
    return-void
.end method

.method public onCreateMediaView()Landroid/view/View;
    .registers 2

    .line 840
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCurrentChannelLcn(I)V
    .registers 2
    .param p1, "lcn"    # I

    .line 559
    return-void
.end method

.method public onCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 553
    return-void
.end method

.method public onCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 579
    return-void
.end method

.method public onCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 547
    return-void
.end method

.method public onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V
    .registers 2
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 532
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 744
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 937
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 952
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaViewSizeChanged(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 830
    return-void
.end method

.method public onRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 663
    return-void
.end method

.method public onRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 674
    return-void
.end method

.method public onRecordingError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "err"    # I

    .line 704
    return-void
.end method

.method public onRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 719
    return-void
.end method

.method public onRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 640
    return-void
.end method

.method public onRecordingStopped(Ljava/lang/String;)V
    .registers 2
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 650
    return-void
.end method

.method public onRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 686
    return-void
.end method

.method public abstract onRelease()V
.end method

.method public onResetInteractiveApp()V
    .registers 1

    .line 507
    return-void
.end method

.method public abstract onSetSurface(Landroid/view/Surface;)Z
.end method

.method public onSetTeletextAppEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 539
    return-void
.end method

.method public onSignalStrength(I)V
    .registers 2
    .param p1, "strength"    # I

    .line 896
    return-void
.end method

.method public onSigningResult(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 730
    return-void
.end method

.method public onStartInteractiveApp()V
    .registers 1

    .line 495
    return-void
.end method

.method public onStopInteractiveApp()V
    .registers 1

    .line 501
    return-void
.end method

.method public onStreamVolume(F)V
    .registers 2
    .param p1, "volume"    # F

    .line 567
    return-void
.end method

.method public onSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 816
    return-void
.end method

.method public onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 791
    return-void
.end method

.method public onTimeShiftMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 590
    return-void
.end method

.method public onTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 753
    return-void
.end method

.method public onTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 781
    return-void
.end method

.method public onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 771
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 964
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public onTrackSelected(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 860
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public onTracksChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 866
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public onTuned(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 854
    return-void
.end method

.method public onTvMessage(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 933
    return-void
.end method

.method public onTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .registers 2
    .param p1, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 612
    return-void
.end method

.method public onTvRecordingInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    .line 621
    .local p1, "recordingInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    return-void
.end method

.method public onVideoAvailable()V
    .registers 1

    .line 872
    return-void
.end method

.method public onVideoUnavailable(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 878
    return-void
.end method

.method relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 2139
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2140
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_27

    .line 2143
    :cond_1a
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    .line 2145
    :cond_27
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2146
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_32

    goto :goto_5a

    .line 2149
    :cond_32
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2150
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2151
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2152
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2153
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2154
    return-void

    .line 2147
    :cond_5a
    :goto_5a
    return-void
.end method

.method release()V
    .registers 3

    .line 1686
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRelease()V

    .line 1687
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1688
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1689
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    .line 1691
    :cond_d
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1692
    :try_start_10
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 1693
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1694
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1d

    .line 1697
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 1698
    return-void

    .line 1694
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public removeBroadcastInfo(I)V
    .registers 3
    .param p1, "requestId"    # I

    .line 1056
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1073
    return-void
.end method

.method removeMediaView(Z)V
    .registers 5
    .param p1, "clearWindowToken"    # Z

    .line 2161
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2162
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 2163
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2165
    :cond_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1d

    .line 2169
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2170
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    .line 2171
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2172
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 2173
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2175
    :cond_1d
    return-void
.end method

.method public requestAd(Landroid/media/tv/AdRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 1595
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1611
    return-void
.end method

.method public requestAvailableSpeeds()V
    .registers 2

    .line 1322
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1338
    return-void
.end method

.method public requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 1031
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/BroadcastInfoRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1048
    return-void
.end method

.method public requestCurrentChannelLcn()V
    .registers 2

    .line 1205
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method

.method public requestCurrentChannelUri()V
    .registers 2

    .line 1182
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1198
    return-void
.end method

.method public requestCurrentTvInputId()V
    .registers 2

    .line 1276
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1292
    return-void
.end method

.method public requestCurrentVideoBounds()V
    .registers 2

    .line 1159
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1175
    return-void
.end method

.method public requestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 22
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "startTime"    # J
    .param p6, "duration"    # J
    .param p8, "repeatDays"    # I
    .param p9, "params"    # Landroid/os/Bundle;

    .line 1465
    new-instance v11, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda5;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    move-object v0, p0

    invoke-direct {p0, v11}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1478
    return-void
.end method

.method public requestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "programUri"    # Landroid/net/Uri;
    .param p5, "params"    # Landroid/os/Bundle;

    .line 1425
    new-instance v7, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1438
    return-void
.end method

.method public requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 12
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 1570
    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1586
    return-void
.end method

.method public requestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "programUri"    # Landroid/net/Uri;

    .line 1363
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1375
    return-void
.end method

.method public requestStopRecording(Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1389
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1401
    return-void
.end method

.method public requestStreamVolume()V
    .registers 2

    .line 1228
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1244
    return-void
.end method

.method public requestTimeShiftMode()V
    .registers 2

    .line 1299
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1315
    return-void
.end method

.method public requestTrackInfoList()V
    .registers 2

    .line 1251
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1267
    return-void
.end method

.method public requestTvRecordingInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1512
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1524
    return-void
.end method

.method public requestTvRecordingInfoList(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1533
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1545
    return-void
.end method

.method resetInteractiveApp()V
    .registers 1

    .line 1622
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onResetInteractiveApp()V

    .line 1623
    return-void
.end method

.method scheduleMediaViewCleanup()V
    .registers 6

    .line 2182
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 2183
    .local v0, "mediaViewParent":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 2184
    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask-IA;)V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    .line 2185
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2188
    :cond_17
    return-void
.end method

.method sendAvailableSpeeds([F)V
    .registers 2
    .param p1, "speeds"    # [F

    .line 1666
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAvailableSpeeds([F)V

    .line 1667
    return-void
.end method

.method sendCurrentChannelLcn(I)V
    .registers 2
    .param p1, "lcn"    # I

    .line 1646
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelLcn(I)V

    .line 1647
    return-void
.end method

.method sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1642
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelUri(Landroid/net/Uri;)V

    .line 1643
    return-void
.end method

.method sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1658
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentTvInputId(Ljava/lang/String;)V

    .line 1659
    return-void
.end method

.method sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1638
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 1639
    return-void
.end method

.method public sendPlaybackCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 1084
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1101
    return-void
.end method

.method sendSigningResult(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 1678
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSigningResult(Ljava/lang/String;[B)V

    .line 1679
    return-void
.end method

.method sendStreamVolume(F)V
    .registers 2
    .param p1, "volume"    # F

    .line 1650
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStreamVolume(F)V

    .line 1651
    return-void
.end method

.method public sendTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 1112
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1129
    return-void
.end method

.method sendTimeShiftMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1662
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftMode(I)V

    .line 1663
    return-void
.end method

.method sendTrackInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1654
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackInfoList(Ljava/util/List;)V

    .line 1655
    return-void
.end method

.method sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .registers 2
    .param p1, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 1670
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V

    .line 1671
    return-void
.end method

.method sendTvRecordingInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    .line 1674
    .local p1, "recordingInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvRecordingInfoList(Ljava/util/List;)V

    .line 1675
    return-void
.end method

.method public setMediaViewEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 464
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2045
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetSurface(Landroid/view/Surface;)Z

    .line 2046
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    .line 2047
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2049
    :cond_a
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    .line 2051
    return-void
.end method

.method setTeletextAppEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1634
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetTeletextAppEnabled(Z)V

    .line 1635
    return-void
.end method

.method public setTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 4
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 1490
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1502
    return-void
.end method

.method public setVideoBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1136
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1152
    return-void
.end method

.method startInteractiveApp()V
    .registers 1

    .line 1614
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStartInteractiveApp()V

    .line 1615
    return-void
.end method

.method stopInteractiveApp()V
    .registers 1

    .line 1618
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStopInteractiveApp()V

    .line 1619
    return-void
.end method
