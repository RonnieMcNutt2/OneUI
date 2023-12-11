.class public Landroid/media/tv/tuner/Tuner;
.super Ljava/lang/Object;
.source "Tuner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Tuner$EventHandler;,
        Landroid/media/tv/tuner/Tuner$OnResourceLostListener;,
        Landroid/media/tv/tuner/Tuner$Frontend;,
        Landroid/media/tv/tuner/Tuner$DvrType;,
        Landroid/media/tv/tuner/Tuner$Result;,
        Landroid/media/tv/tuner/Tuner$ScanType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DVR_TYPE_PLAYBACK:I = 0x1

.field public static final DVR_TYPE_RECORD:I = 0x0

.field private static final FILTER_CLEANUP_THRESHOLD:I = 0x100

.field public static final INVALID_AV_SYNC_ID:I = -0x1

.field public static final INVALID_FILTER_ID:I = -0x1

.field public static final INVALID_FILTER_ID_LONG:J = -0x1L

.field public static final INVALID_FIRST_MACROBLOCK_IN_SLICE:I = -0x1

.field public static final INVALID_FRONTEND_ID:I = -0x1

.field public static final INVALID_FRONTEND_SETTING_FREQUENCY:I = -0x1

.field public static final INVALID_LNB_ID:I = -0x1

.field public static final INVALID_LTS_ID:I = -0x1

.field public static final INVALID_MMTP_RECORD_EVENT_MPT_SEQUENCE_NUM:I = -0x1

.field public static final INVALID_STREAM_ID:I = 0xffff

.field public static final INVALID_TIMESTAMP:J = -0x1L

.field public static final INVALID_TS_PID:I = 0xffff

.field private static final MSG_ON_FILTER_EVENT:I = 0x2

.field private static final MSG_ON_FILTER_STATUS:I = 0x3

.field private static final MSG_ON_LNB_EVENT:I = 0x4

.field private static final MSG_RESOURCE_LOST:I = 0x1

.field public static final RESULT_INVALID_ARGUMENT:I = 0x4

.field public static final RESULT_INVALID_STATE:I = 0x3

.field public static final RESULT_NOT_INITIALIZED:I = 0x2

.field public static final RESULT_OUT_OF_MEMORY:I = 0x5

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNAVAILABLE:I = 0x1

.field public static final RESULT_UNKNOWN_ERROR:I = 0x6

.field public static final SCAN_TYPE_AUTO:I = 0x1

.field public static final SCAN_TYPE_BLIND:I = 0x2

.field public static final SCAN_TYPE_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaTvTuner"

.field public static final VOID_KEYTOKEN:[B

.field private static sTunerVersion:I


# instance fields
.field private final mClientId:I

.field private final mContext:Landroid/content/Context;

.field private mDemuxHandle:Ljava/lang/Integer;

.field private final mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mDescramblers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/Descrambler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

.field private mDesiredFrontendId:Ljava/lang/Integer;

.field private mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/filter/Filter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

.field private mFrontendCiCamHandle:Ljava/lang/Integer;

.field private mFrontendCiCamId:Ljava/lang/Integer;

.field private final mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mFrontendHandle:Ljava/lang/Integer;

.field private mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

.field private final mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mFrontendType:I

.field private mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

.field private mLnb:Landroid/media/tv/tuner/Lnb;

.field private mLnbHandle:Ljava/lang/Integer;

.field private final mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNativeContext:J

.field private mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

.field private mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

.field private final mOnResourceLostListenerLock:Ljava/lang/Object;

.field private mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

.field private mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

.field private final mOnTuneEventLock:Ljava/lang/Object;

.field private mRequestedCiCamId:I

.field private final mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

.field private mScanCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mScanCallbackLock:Ljava/lang/Object;

.field private final mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$1PojH3i2zeOyB-HkZg9gkQD1isM(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onProgress$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CahF9p_u-MI7gCO7wETeFbfIwJg(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onUnlocked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$E4PKRPsZ0ry8FTG-NpX9hE4nPa4(Landroid/media/tv/tuner/Tuner;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onPriorityReported$18(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EnYQo0dfs6AxVrTht0piaOaJzz4(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onInputStreamIds$12([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HAdMZEVCNya4KhnIlPML5leHnpc(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onSymbolRates$7([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IANs_qJcbWVq1T1XMmEeXxKAhsQ(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbtStandard$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHE7G6e0M8ud8udJAiDntGya30Y(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onHierarchy$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NVs8pe0qWSjffvAqveC9LF4u9iw(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onScanStopped$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SnhUTm-sEmTcTQuNCLdOy9WFV4U(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onPlpIds$10([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UV-jf4lKANyF3KtG0ixXPYqPthk(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbsStandard$13(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wk1aIqCaJ7W8MY-l6sCiFVplHYQ(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onAnalogSifStandard$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_EfJLFLGpqKGuJrWOPEriPDXqMg(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onAtsc3PlpInfos$16([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_FEjyJLlzDUXgk8yTdqbrrZ033M(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbtCellIdsReported$20([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Lj6v1pWuCnIwSlSwfJaGheM6ec(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$erSCYBSKkipdSwdolRyIPJ0OUjo(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onFrontendEvent$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jhWg1_ZLd3mtXz2p9QQLKdy7lDQ(Landroid/media/tv/tuner/Tuner;[J)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onFrequenciesReport$6([J)V

    return-void
.end method

.method public static synthetic $r8$lambda$oy_KP3uqLTPzMIVwYIXfauW2yN8(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onModulationReported$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qX87jje8SpvlzeZEimAFiOuf3g0(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onGroupIds$11([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x_8fwSTYDJHobBNBds0phMx6hRA(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onSignalType$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zw60iix6mOo1cCk2Evh9Lg4uPnE(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbcAnnexReported$19(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFrontend(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Landroid/media/tv/tuner/Tuner;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mreleaseAll(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Landroid/media/tv/tuner/Tuner;->VOID_KEYTOKEN:[B

    .line 246
    const/4 v0, 0x3

    const-string v2, "MediaTvTuner"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    .line 273
    :try_start_11
    const-string v0, "media_tv_tuner"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->nativeInit()V
    :try_end_19
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_11 .. :try_end_19} :catch_1a

    .line 277
    goto :goto_20

    .line 275
    :catch_1a
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "tuner JNI library not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_20
    sput v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tvInputSessionId"    # Ljava/lang/String;
    .param p3, "useCase"    # I

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Landroid/media/tv/tuner/DemuxInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/DemuxInfo;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 292
    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 293
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 310
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    .line 312
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    .line 313
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 314
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 315
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 316
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    .line 325
    new-instance v0, Landroid/media/tv/tuner/Tuner$1;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner$1;-><init>(Landroid/media/tv/tuner/Tuner;)V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 349
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mContext:Landroid/content/Context;

    .line 350
    const-class v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 353
    if-eqz v2, :cond_d2

    .line 359
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeSetup()V

    .line 360
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetTunerVersion()I

    move-result v3

    sput v3, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 361
    const-string v4, "MediaTvTuner"

    if-nez v3, :cond_79

    .line 362
    const-string v3, "Unknown Tuner version!"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 364
    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Tuner version is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 365
    invoke-static {v5}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v6, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 366
    invoke-static {v6}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_a9
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v3, :cond_b3

    .line 369
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    .line 372
    :cond_b3
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 373
    .local v3, "clientId":[I
    new-instance v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v4}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 374
    .local v4, "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    iput-object p2, v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 375
    iput p3, v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 376
    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v4, v5, v0, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    .line 378
    aget v0, v3, v1

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    .line 380
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 381
    return-void

    .line 354
    .end local v3    # "clientId":[I
    .end local v4    # "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuner instance is created, but the device doesn\'t have tuner feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private acquireTRMSLock(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionNameForLog"    # Ljava/lang/String;

    .line 2796
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_28

    .line 2797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTEMPT:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    :cond_28
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->acquireLock(I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - this can cause deadlock between Tuner API calls and onReclaimResources()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_5a
    return-void
.end method

.method private checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .registers 5
    .param p1, "resourceType"    # I
    .param p2, "localLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 2685
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_34

    .line 2711
    :pswitch_4
    return v0

    .line 2705
    :pswitch_5
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2706
    return v0

    .line 2693
    :pswitch_10
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2694
    return v0

    .line 2699
    :pswitch_1b
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2700
    return v0

    .line 2687
    :pswitch_26
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2688
    return v0

    .line 2713
    :cond_31
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1b
        :pswitch_4
        :pswitch_10
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private closeLnb()V
    .registers 4

    .line 901
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 904
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_50

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_2d

    .line 905
    :try_start_b
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling mLnb.close() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_27
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Lnb;->close()V

    goto :goto_49

    .line 910
    :cond_2d
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_49

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT calling mLnb.close() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_50

    .line 915
    :cond_49
    :goto_49
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 916
    nop

    .line 917
    return-void

    .line 915
    :catchall_50
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 916
    throw v0
.end method

.method private configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I
    .registers 14
    .param p1, "desiredDemuxInfo"    # Landroid/media/tv/tuner/DemuxInfo;
    .param p2, "reduceDesiredFilterTypes"    # Z

    .line 2571
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 2572
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 2573
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    .line 2574
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    .line 2576
    :cond_d
    return v0

    .line 2579
    :cond_e
    invoke-virtual {p1}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v1

    .line 2583
    .local v1, "desiredFilterTypes":I
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_23

    .line 2585
    if-eqz p2, :cond_22

    .line 2586
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2, v1}, Landroid/media/tv/tuner/DemuxInfo;->setFilterTypes(I)V

    .line 2588
    :cond_22
    return v0

    .line 2592
    :cond_23
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v2

    .line 2593
    .local v2, "caps":Landroid/media/tv/tuner/DemuxCapabilities;
    const-string v3, "MediaTvTuner"

    const/4 v4, 0x1

    if-nez v2, :cond_32

    .line 2594
    const-string v0, "configureDemuxInternal:failed to get DemuxCapabilities"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    return v4

    .line 2598
    :cond_32
    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxCapabilities;->getFilterTypeCapabilityList()[I

    move-result-object v5

    .line 2599
    .local v5, "filterCapsList":[I
    array-length v6, v5

    if-gtz v6, :cond_3f

    .line 2600
    const-string v0, "configureDemuxInternal: getFilterTypeCapabilityList() returned an empty array"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    return v4

    .line 2605
    :cond_3f
    const/4 v6, 0x0

    .line 2606
    .local v6, "supported":Z
    array-length v7, v5

    move v8, v0

    :goto_42
    if-ge v8, v7, :cond_4f

    aget v9, v5, v8

    .line 2607
    .local v9, "filterCaps":I
    and-int v10, v1, v9

    if-ne v10, v1, :cond_4c

    .line 2608
    const/4 v6, 0x1

    .line 2609
    goto :goto_4f

    .line 2606
    .end local v9    # "filterCaps":I
    :cond_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 2612
    :cond_4f
    :goto_4f
    if-nez v6, :cond_6e

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureDemuxInternal: requested caps:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " is not supported by the system"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    return v4

    .line 2619
    :cond_6e
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v3, :cond_8b

    .line 2620
    if-eqz v1, :cond_8b

    .line 2623
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxInfo(I)Landroid/media/tv/tuner/DemuxInfo;

    move-result-object v3

    .line 2624
    .local v3, "currentDemuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    if-eqz v3, :cond_8b

    .line 2625
    invoke-virtual {v3}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v4

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_8b

    .line 2627
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    .line 2628
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    .line 2633
    .end local v3    # "currentDemuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    :cond_8b
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v3, v1}, Landroid/media/tv/tuner/DemuxInfo;->setFilterTypes(I)V

    .line 2634
    return v0
.end method

.method private createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;
    .registers 4

    .line 1062
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 1063
    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$EventHandler-IA;)V

    return-object v0

    .line 1064
    :cond_e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1b

    .line 1065
    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$EventHandler-IA;)V

    return-object v0

    .line 1067
    :cond_1b
    return-object v2
.end method

.method private getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 8

    .line 388
    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendIds()Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_8

    .line 390
    const/4 v1, 0x0

    return-object v1

    .line 392
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 393
    .local v1, "infos":[Landroid/media/tv/tuner/frontend/FrontendInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 394
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 395
    .local v3, "id":I
    invoke-virtual {p0, v3}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v4

    .line 396
    .local v4, "frontendInfo":Landroid/media/tv/tuner/frontend/FrontendInfo;
    if-nez v4, :cond_44

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get a FrontendInfo on frontend id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaTvTuner"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    goto :goto_46

    .line 400
    :cond_44
    aput-object v4, v1, v2

    .line 393
    .end local v3    # "id":I
    .end local v4    # "frontendInfo":Landroid/media/tv/tuner/frontend/FrontendInfo;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 402
    .end local v2    # "i":I
    :cond_49
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v2
.end method

.method public static getTunerVersion()I
    .registers 1

    .line 407
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return v0
.end method

.method private isFrontendOwner()Z
    .registers 5

    .line 604
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 605
    .local v0, "notAnOwner":Z
    :goto_9
    if-eqz v0, :cond_13

    .line 606
    const-string v1, "MediaTvTuner"

    const-string v3, "transferOwner() - cannot be called on the non-owner"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return v2

    .line 609
    :cond_13
    return v1
.end method

.method private isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z
    .registers 7
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 618
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_12

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 619
    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 620
    .local v0, "newOwnerIsTheCurrentSharee":Z
    :goto_13
    const-string v3, "MediaTvTuner"

    if-nez v0, :cond_1d

    .line 621
    const-string v1, "transferOwner() - new owner must be the current sharee"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return v2

    .line 626
    :cond_1d
    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-nez v4, :cond_28

    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v4, :cond_26

    goto :goto_28

    :cond_26
    move v4, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v4, v1

    .line 628
    .local v4, "newOwnerAlreadyHoldsToBeSharedResource":Z
    :goto_29
    if-eqz v4, :cond_31

    .line 629
    const-string v1, "transferOwner() - new owner cannot be holding CiCam nor Lnb resource"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return v2

    .line 634
    :cond_31
    return v1
.end method

.method static synthetic lambda$getFrontendInfoListInternal$0(I)[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 2
    .param p0, "x$0"    # I

    .line 402
    new-array v0, p0, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v0
.end method

.method private synthetic lambda$onAnalogSifStandard$15(I)V
    .registers 4
    .param p1, "sif"    # I

    .line 2145
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2147
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAnalogSifStandardReported(I)V

    .line 2149
    :cond_a
    monitor-exit v0

    .line 2150
    return-void

    .line 2149
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onAtsc3PlpInfos$16([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 4
    .param p1, "atsc3PlpInfos"    # [Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    .line 2159
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2160
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2161
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    .line 2163
    :cond_a
    monitor-exit v0

    .line 2164
    return-void

    .line 2163
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onDvbcAnnexReported$19(I)V
    .registers 4
    .param p1, "dvbcAnnex"    # I

    .line 2201
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2202
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2203
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbcAnnexReported(I)V

    .line 2205
    :cond_a
    monitor-exit v0

    .line 2206
    return-void

    .line 2205
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onDvbsStandard$13(I)V
    .registers 4
    .param p1, "dvbsStandandard"    # I

    .line 2117
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2118
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2119
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbsStandardReported(I)V

    .line 2121
    :cond_a
    monitor-exit v0

    .line 2122
    return-void

    .line 2121
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onDvbtCellIdsReported$20([I)V
    .registers 4
    .param p1, "dvbtCellIds"    # [I

    .line 2215
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2216
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2217
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtCellIdsReported([I)V

    .line 2219
    :cond_a
    monitor-exit v0

    .line 2220
    return-void

    .line 2219
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onDvbtStandard$14(I)V
    .registers 4
    .param p1, "dvbtStandard"    # I

    .line 2131
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2132
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2133
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtStandardReported(I)V

    .line 2135
    :cond_a
    monitor-exit v0

    .line 2136
    return-void

    .line 2135
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onFrequenciesReport$6([J)V
    .registers 4
    .param p1, "frequencies"    # [J

    .line 2019
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2020
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2021
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesLongReported([J)V

    .line 2023
    :cond_a
    monitor-exit v0

    .line 2024
    return-void

    .line 2023
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onFrontendEvent$1(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 1925
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1926
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v1, :cond_a

    .line 1927
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/OnTuneEventListener;->onTuneEvent(I)V

    .line 1929
    :cond_a
    monitor-exit v0

    .line 1930
    return-void

    .line 1929
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onGroupIds$11([I)V
    .registers 4
    .param p1, "groupIds"    # [I

    .line 2089
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2090
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2091
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onGroupIdsReported([I)V

    .line 2093
    :cond_a
    monitor-exit v0

    .line 2094
    return-void

    .line 2093
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onHierarchy$8(I)V
    .registers 4
    .param p1, "hierarchy"    # I

    .line 2047
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2048
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2049
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onHierarchyReported(I)V

    .line 2051
    :cond_a
    monitor-exit v0

    .line 2052
    return-void

    .line 2051
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onInputStreamIds$12([I)V
    .registers 4
    .param p1, "inputStreamIds"    # [I

    .line 2103
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2104
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2105
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onInputStreamIdsReported([I)V

    .line 2107
    :cond_a
    monitor-exit v0

    .line 2108
    return-void

    .line 2107
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onLocked$2()V
    .registers 3

    .line 1959
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1960
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 1961
    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onLocked()V

    .line 1963
    :cond_a
    monitor-exit v0

    .line 1964
    return-void

    .line 1963
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onModulationReported$17(I)V
    .registers 4
    .param p1, "modulation"    # I

    .line 2173
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2174
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2175
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onModulationReported(I)V

    .line 2177
    :cond_a
    monitor-exit v0

    .line 2178
    return-void

    .line 2177
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onPlpIds$10([I)V
    .registers 4
    .param p1, "plpIds"    # [I

    .line 2075
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2076
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2077
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPlpIdsReported([I)V

    .line 2079
    :cond_a
    monitor-exit v0

    .line 2080
    return-void

    .line 2079
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onPriorityReported$18(Z)V
    .registers 4
    .param p1, "isHighPriority"    # Z

    .line 2187
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2188
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2189
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPriorityReported(Z)V

    .line 2191
    :cond_a
    monitor-exit v0

    .line 2192
    return-void

    .line 2191
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onProgress$5(I)V
    .registers 4
    .param p1, "percent"    # I

    .line 2005
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2006
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2007
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onProgress(I)V

    .line 2009
    :cond_a
    monitor-exit v0

    .line 2010
    return-void

    .line 2009
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onScanStopped$4()V
    .registers 3

    .line 1991
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1992
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 1993
    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onScanStopped()V

    .line 1995
    :cond_a
    monitor-exit v0

    .line 1996
    return-void

    .line 1995
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onSignalType$9(I)V
    .registers 4
    .param p1, "signalType"    # I

    .line 2061
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2063
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSignalTypeReported(I)V

    .line 2065
    :cond_a
    monitor-exit v0

    .line 2066
    return-void

    .line 2065
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onSymbolRates$7([I)V
    .registers 4
    .param p1, "rate"    # [I

    .line 2033
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2034
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 2035
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSymbolRatesReported([I)V

    .line 2037
    :cond_a
    monitor-exit v0

    .line 2038
    return-void

    .line 2037
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$onUnlocked$3()V
    .registers 3

    .line 1977
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1978
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_a

    .line 1979
    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onUnlocked()V

    .line 1981
    :cond_a
    monitor-exit v0

    .line 1982
    return-void

    .line 1981
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private native nativeClose()I
.end method

.method private native nativeCloseDemux(I)I
.end method

.method private native nativeCloseFrontend(I)I
.end method

.method private native nativeConnectCiCam(I)I
.end method

.method private native nativeDisconnectCiCam()I
.end method

.method private native nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;
.end method

.method private native nativeGetAvSyncTime(I)Ljava/lang/Long;
.end method

.method private native nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
.end method

.method private native nativeGetDemuxInfo(I)Landroid/media/tv/tuner/DemuxInfo;
.end method

.method private native nativeGetFrontendHardwareInfo()Ljava/lang/String;
.end method

.method private native nativeGetFrontendIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
.end method

.method private native nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
.end method

.method private native nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
.end method

.method private native nativeGetMaxNumberOfFrontends(I)I
.end method

.method private native nativeGetTunerVersion()I
.end method

.method private static native nativeInit()V
.end method

.method private native nativeIsLnaSupported()Z
.end method

.method private native nativeLinkCiCam(I)I
.end method

.method private native nativeOpenDemuxByhandle(I)I
.end method

.method private native nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;
.end method

.method private native nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;
.end method

.method private native nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;
.end method

.method private native nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;
.end method

.method private native nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;
.end method

.method private native nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;
.end method

.method private native nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;
.end method

.method private static native nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;
.end method

.method private native nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
.end method

.method private native nativeRegisterFeCbListener(J)V
.end method

.method private native nativeRemoveOutputPid(I)I
.end method

.method private native nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I
.end method

.method private native nativeSetLna(Z)I
.end method

.method private native nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
.end method

.method private native nativeSetMaxNumberOfFrontends(II)I
.end method

.method private native nativeSetup()V
.end method

.method private native nativeShareFrontend(I)I
.end method

.method private native nativeStopScan()I
.end method

.method private native nativeStopTune()I
.end method

.method private native nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I
.end method

.method private native nativeUnlinkCiCam(I)I
.end method

.method private native nativeUnregisterFeCbListener(J)V
.end method

.method private native nativeUnshareFrontend()I
.end method

.method private native nativeUpdateFrontend(J)V
.end method

.method private onAnalogSifStandard(I)V
    .registers 5
    .param p1, "sif"    # I

    .line 2142
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2143
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2144
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2152
    :cond_13
    monitor-exit v0

    .line 2153
    return-void

    .line 2152
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onAtsc3PlpInfos([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 5
    .param p1, "atsc3PlpInfos"    # [Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    .line 2156
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2158
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2166
    :cond_13
    monitor-exit v0

    .line 2167
    return-void

    .line 2166
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onDvbcAnnexReported(I)V
    .registers 5
    .param p1, "dvbcAnnex"    # I

    .line 2198
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2199
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2200
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2208
    :cond_13
    monitor-exit v0

    .line 2209
    return-void

    .line 2208
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onDvbsStandard(I)V
    .registers 5
    .param p1, "dvbsStandandard"    # I

    .line 2114
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2115
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2116
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2124
    :cond_13
    monitor-exit v0

    .line 2125
    return-void

    .line 2124
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onDvbtCellIdsReported([I)V
    .registers 5
    .param p1, "dvbtCellIds"    # [I

    .line 2212
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2213
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2214
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2222
    :cond_13
    monitor-exit v0

    .line 2223
    return-void

    .line 2222
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onDvbtStandard(I)V
    .registers 5
    .param p1, "dvbtStandard"    # I

    .line 2128
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2129
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2130
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2138
    :cond_13
    monitor-exit v0

    .line 2139
    return-void

    .line 2138
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onFrequenciesReport([J)V
    .registers 5
    .param p1, "frequencies"    # [J

    .line 2016
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2017
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2018
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/tuner/Tuner;[J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2026
    :cond_13
    monitor-exit v0

    .line 2027
    return-void

    .line 2026
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onFrontendEvent(I)V
    .registers 5
    .param p1, "eventType"    # I

    .line 1921
    const-string v0, "MediaTvTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got event from tuning. Event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1923
    :try_start_25
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_35

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v2, :cond_35

    .line 1924
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1932
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_5b

    .line 1934
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for the events from tuning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const/4 v0, 0x2

    const/16 v1, 0x114

    if-nez p1, :cond_48

    .line 1936
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1937
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_5a

    .line 1939
    :cond_48
    const/4 v2, 0x1

    if-ne p1, v2, :cond_52

    .line 1940
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1941
    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_5a

    .line 1943
    :cond_52
    if-ne p1, v0, :cond_5a

    .line 1944
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1945
    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1948
    :cond_5a
    :goto_5a
    return-void

    .line 1932
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private onGroupIds([I)V
    .registers 5
    .param p1, "groupIds"    # [I

    .line 2086
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2088
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2096
    :cond_13
    monitor-exit v0

    .line 2097
    return-void

    .line 2096
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onHierarchy(I)V
    .registers 5
    .param p1, "hierarchy"    # I

    .line 2044
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2045
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2046
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2054
    :cond_13
    monitor-exit v0

    .line 2055
    return-void

    .line 2054
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onInputStreamIds([I)V
    .registers 5
    .param p1, "inputStreamIds"    # [I

    .line 2100
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2101
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2102
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2110
    :cond_13
    monitor-exit v0

    .line 2111
    return-void

    .line 2110
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onLocked()V
    .registers 4

    .line 1951
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for locked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v1, 0x2

    const/16 v2, 0x114

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1956
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1957
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_22

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_22

    .line 1958
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1966
    :cond_22
    monitor-exit v0

    .line 1967
    return-void

    .line 1966
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private onModulationReported(I)V
    .registers 5
    .param p1, "modulation"    # I

    .line 2170
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2171
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2172
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2180
    :cond_13
    monitor-exit v0

    .line 2181
    return-void

    .line 2180
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onPlpIds([I)V
    .registers 5
    .param p1, "plpIds"    # [I

    .line 2072
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2073
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2074
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2082
    :cond_13
    monitor-exit v0

    .line 2083
    return-void

    .line 2082
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onPriorityReported(Z)V
    .registers 5
    .param p1, "isHighPriority"    # Z

    .line 2184
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2185
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2186
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Tuner;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2194
    :cond_13
    monitor-exit v0

    .line 2195
    return-void

    .line 2194
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onProgress(I)V
    .registers 5
    .param p1, "percent"    # I

    .line 2002
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2003
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2004
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2012
    :cond_13
    monitor-exit v0

    .line 2013
    return-void

    .line 2012
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onScanStopped()V
    .registers 4

    .line 1988
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1989
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 1990
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1998
    :cond_13
    monitor-exit v0

    .line 1999
    return-void

    .line 1998
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onSignalType(I)V
    .registers 5
    .param p1, "signalType"    # I

    .line 2058
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2059
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2060
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2068
    :cond_13
    monitor-exit v0

    .line 2069
    return-void

    .line 2068
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onSymbolRates([I)V
    .registers 5
    .param p1, "rate"    # [I

    .line 2030
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2031
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_13

    .line 2032
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2040
    :cond_13
    monitor-exit v0

    .line 2041
    return-void

    .line 2040
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onUnlocked()V
    .registers 4

    .line 1970
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for unlocked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v1, 0x2

    const/16 v2, 0x114

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1974
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1975
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_22

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_22

    .line 1976
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1984
    :cond_22
    monitor-exit v0

    .line 1985
    return-void

    .line 1984
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static openSharedFilter(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/SharedFilterCallback;)Landroid/media/tv/tuner/filter/SharedFilter;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedFilterToken"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cb"    # Landroid/media/tv/tuner/filter/SharedFilterCallback;

    .line 2522
    const-string v0, "sharedFilterToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2523
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2524
    const-string v0, "SharedFilterCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2526
    const-string v0, "android.permission.ACCESS_TV_SHARED_FILTER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 2532
    invoke-static {p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;

    move-result-object v0

    .line 2533
    .local v0, "filter":Landroid/media/tv/tuner/filter/SharedFilter;
    if-eqz v0, :cond_20

    .line 2534
    invoke-virtual {v0, p3, p2}, Landroid/media/tv/tuner/filter/SharedFilter;->setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V

    .line 2536
    :cond_20
    return-object v0

    .line 2529
    .end local v0    # "filter":Landroid/media/tv/tuner/filter/SharedFilter;
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have ACCESS_TV_SHAREDFILTER permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .registers 4
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 783
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeRegisterFeCbListener(J)V

    .line 784
    return-void
.end method

.method private releaseAll()V
    .registers 1

    .line 966
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseCiCam()V

    .line 967
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V

    .line 968
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->closeLnb()V

    .line 969
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDescramblers()V

    .line 970
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    .line 971
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    .line 972
    return-void
.end method

.method private releaseCiCam()V
    .registers 5

    .line 876
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 878
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_a3

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_80

    .line 879
    :try_start_b
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinking CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_33
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    move-result v0

    .line 883
    .local v0, "result":I
    if-nez v0, :cond_51

    .line 884
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(II)V

    .line 885
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    goto :goto_7f

    .line 887
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeUnlinkCiCam("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for mClientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed with result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v0    # "result":I
    :goto_7f
    goto :goto_9c

    .line 891
    :cond_80
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_9c

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT unlinking CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_a3

    .line 896
    :cond_9c
    :goto_9c
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 897
    nop

    .line 898
    return-void

    .line 896
    :catchall_a3
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 897
    throw v0
.end method

.method private releaseDemux()V
    .registers 5

    .line 949
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 951
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_28

    .line 952
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeCloseDemux(I)I

    move-result v0

    .line 953
    .local v0, "res":I
    if-eqz v0, :cond_18

    .line 954
    const-string v1, "failed to close demux"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 956
    :cond_18
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDemux(II)V

    .line 957
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2f

    .line 960
    .end local v0    # "res":I
    :cond_28
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 961
    nop

    .line 962
    return-void

    .line 960
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 961
    throw v0
.end method

.method private releaseDescramblers()V
    .registers 8

    .line 934
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v0

    .line 935
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 936
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 937
    .local v2, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/Descrambler;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/Descrambler;

    .line 938
    .local v3, "descrambler":Landroid/media/tv/tuner/Descrambler;
    if-eqz v3, :cond_32

    .line 939
    invoke-virtual {v3}, Landroid/media/tv/tuner/Descrambler;->close()V

    .line 941
    :cond_32
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    .line 942
    .end local v2    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/Descrambler;>;>;"
    .end local v3    # "descrambler":Landroid/media/tv/tuner/Descrambler;
    goto :goto_15

    .line 943
    :cond_44
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 945
    :cond_49
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private releaseFilters()V
    .registers 5

    .line 920
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v0

    .line 921
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 922
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 923
    .local v2, "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/filter/Filter;

    .line 924
    .local v3, "filter":Landroid/media/tv/tuner/filter/Filter;
    if-eqz v3, :cond_28

    .line 925
    invoke-virtual {v3}, Landroid/media/tv/tuner/filter/Filter;->close()V

    .line 927
    .end local v2    # "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    .end local v3    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :cond_28
    goto :goto_11

    .line 928
    :cond_29
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 930
    :cond_2e
    monitor-exit v0

    .line 931
    return-void

    .line 930
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private releaseFrontend()V
    .registers 6

    .line 831
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_b

    .line 832
    const-string v2, "Tuner#releaseFrontend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_b
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 836
    :try_start_10
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v2, :cond_88

    .line 837
    if-eqz v0, :cond_1b

    .line 838
    const-string v2, "mFrontendHandle not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_1b
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 841
    if-eqz v0, :cond_27

    .line 842
    const-string v2, "mFeOwnerTuner not null - sharee"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_27
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner;->unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    .line 846
    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 847
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeUnshareFrontend()I

    goto :goto_4a

    .line 849
    :cond_32
    if-eqz v0, :cond_39

    .line 850
    const-string v2, "mFeOwnerTuner null - owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_39
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->nativeCloseFrontend(I)I

    move-result v2

    .line 854
    .local v2, "res":I
    if-eqz v2, :cond_4a

    .line 855
    const-string v4, "failed to close frontend"

    invoke-static {v2, v4}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 858
    .end local v2    # "res":I
    :cond_4a
    :goto_4a
    if-eqz v0, :cond_70

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call TRM#releaseFrontend :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_70
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseFrontend(II)V

    .line 862
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 863
    const/16 v1, 0x114

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 865
    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    :try_end_88
    .catchall {:try_start_10 .. :try_end_88} :catchall_8f

    .line 868
    :cond_88
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 869
    nop

    .line 870
    return-void

    .line 868
    :catchall_8f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 869
    throw v0
.end method

.method private releaseTRMSLock()V
    .registers 3

    .line 2808
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLock(I)Z

    .line 2809
    return-void
.end method

.method private replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 553
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 555
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_2b

    .line 556
    :try_start_9
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_25

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetting CiCamParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    .line 560
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    goto :goto_7f

    .line 562
    :cond_2b
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_77

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying CiCamParams from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrontendCiCamHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrontendCiCamId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_77
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    .line 568
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;
    :try_end_7f
    .catchall {:try_start_9 .. :try_end_7f} :catchall_86

    .line 571
    :goto_7f
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 572
    nop

    .line 573
    return-void

    .line 571
    :catchall_86
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 572
    throw v0
.end method

.method private replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 512
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 514
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_30

    .line 515
    :try_start_9
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_25

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetting Frontend params for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 519
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 520
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    goto :goto_68

    .line 523
    :cond_30
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_58

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Frontend params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_58
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 528
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 529
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 530
    iget v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_6f

    .line 533
    :goto_68
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 534
    nop

    .line 535
    return-void

    .line 533
    :catchall_6f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 534
    throw v0
.end method

.method private replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 579
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 581
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_18

    .line 582
    :try_start_9
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 583
    const-string v1, "resetting Lnb params"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 586
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    goto :goto_48

    .line 588
    :cond_18
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_40

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Lnb params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_40
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 592
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_4f

    .line 595
    :goto_48
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    nop

    .line 597
    return-void

    .line 595
    :catchall_4f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    throw v0
.end method

.method private requestDemux()Z
    .registers 5

    .line 2638
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2639
    .local v0, "demuxHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;-><init>()V

    .line 2640
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 2641
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v2

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    .line 2642
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v2

    .line 2643
    .local v2, "granted":Z
    if-eqz v2, :cond_2c

    .line 2644
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    .line 2645
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDemuxByhandle(I)I

    .line 2647
    :cond_2c
    return v2
.end method

.method private requestDescrambler()Landroid/media/tv/tuner/Descrambler;
    .registers 10

    .line 2651
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2652
    .local v0, "descramblerHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;-><init>()V

    .line 2653
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    .line 2654
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v2

    .line 2655
    .local v2, "granted":Z
    if-nez v2, :cond_16

    .line 2656
    const/4 v3, 0x0

    return-object v3

    .line 2658
    :cond_16
    const/4 v3, 0x0

    aget v3, v0, v3

    .line 2659
    .local v3, "handle":I
    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;

    move-result-object v4

    .line 2660
    .local v4, "descrambler":Landroid/media/tv/tuner/Descrambler;
    if-eqz v4, :cond_36

    .line 2661
    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v5

    .line 2662
    :try_start_22
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2663
    .local v6, "weakDescrambler":Ljava/lang/ref/WeakReference;
    iget-object v7, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2664
    nop

    .end local v6    # "weakDescrambler":Ljava/lang/ref/WeakReference;
    monitor-exit v5

    goto :goto_3d

    :catchall_33
    move-exception v6

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_33

    throw v6

    .line 2666
    :cond_36
    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v6, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v5, v3, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    .line 2668
    :goto_3d
    return-object v4
.end method

.method private requestFrontend()Z
    .registers 6

    .line 1358
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1359
    .local v0, "feHandle":[I
    const/4 v1, 0x0

    .line 1361
    .local v1, "granted":Z
    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    invoke-direct {v3}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;-><init>()V

    .line 1362
    .local v3, "request":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 1363
    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    .line 1364
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    if-nez v4, :cond_18

    .line 1365
    const/4 v4, -0x1

    goto :goto_1c

    .line 1366
    :cond_18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1c
    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    .line 1367
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v4, v3, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v4
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_67

    move v1, v4

    .line 1369
    .end local v3    # "request":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 1370
    nop

    .line 1371
    if-eqz v1, :cond_3d

    .line 1372
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 1373
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 1378
    :cond_3d
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_49

    const/4 v3, 0x7

    if-eq v2, v3, :cond_49

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5f

    .line 1381
    :cond_49
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1383
    :try_start_4e
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v2, :cond_59

    .line 1384
    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_60

    .line 1387
    :cond_59
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1388
    nop

    .line 1390
    :cond_5f
    return v1

    .line 1387
    :catchall_60
    move-exception v2

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1388
    throw v2

    .line 1369
    :catchall_67
    move-exception v3

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 1370
    throw v3
.end method

.method private requestFrontendCiCam(I)Z
    .registers 6
    .param p1, "ciCamId"    # I

    .line 2672
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2673
    .local v0, "ciCamHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;-><init>()V

    .line 2674
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 2675
    iput p1, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    .line 2676
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z

    move-result v2

    .line 2677
    .local v2, "granted":Z
    if-eqz v2, :cond_25

    .line 2678
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    .line 2679
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    .line 2681
    :cond_25
    return v2
.end method

.method private requestLnb()Z
    .registers 5

    .line 2358
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2359
    .local v0, "lnbHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;-><init>()V

    .line 2360
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 2361
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v2

    .line 2362
    .local v2, "granted":Z
    if-eqz v2, :cond_27

    .line 2363
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    .line 2364
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 2366
    :cond_27
    return v2
.end method

.method private requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .registers 7
    .param p1, "resourceType"    # I
    .param p2, "localLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 2723
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 2726
    .local v1, "enableLockOperations":Z
    :goto_6
    if-eqz v1, :cond_1a

    .line 2727
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2728
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1a

    .line 2730
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "local lock must be locked beforehand"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2735
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_32

    .line 2736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestResource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 2741
    :cond_32
    if-eqz v1, :cond_3a

    .line 2742
    :try_start_34
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3a

    .line 2761
    :catchall_38
    move-exception v0

    goto :goto_6e

    .line 2744
    :cond_3a
    :goto_3a
    packed-switch p1, :pswitch_data_76

    .line 2758
    :pswitch_3d
    nop

    .line 2761
    if-eqz v1, :cond_74

    .line 2762
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    goto :goto_74

    .line 2755
    :pswitch_44
    :try_start_44
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->requestFrontendCiCam(I)Z

    move-result v0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_38

    .line 2761
    if-eqz v1, :cond_4f

    .line 2762
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2755
    :cond_4f
    return v0

    .line 2749
    :pswitch_50
    :try_start_50
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestLnb()Z

    move-result v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_38

    .line 2761
    if-eqz v1, :cond_59

    .line 2762
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2749
    :cond_59
    return v0

    .line 2752
    :pswitch_5a
    :try_start_5a
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDemux()Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_38

    .line 2761
    if-eqz v1, :cond_63

    .line 2762
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2752
    :cond_63
    return v0

    .line 2746
    :pswitch_64
    :try_start_64
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestFrontend()Z

    move-result v0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_38

    .line 2761
    if-eqz v1, :cond_6d

    .line 2762
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2746
    :cond_6d
    return v0

    .line 2761
    :goto_6e
    if-eqz v1, :cond_73

    .line 2762
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2764
    :cond_73
    throw v0

    .line 2758
    :cond_74
    :goto_74
    return v0

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5a
        :pswitch_3d
        :pswitch_50
        :pswitch_3d
        :pswitch_44
    .end packed-switch
.end method

.method private setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V
    .registers 4
    .param p1, "owner"    # Landroid/media/tv/tuner/Tuner;

    .line 541
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 543
    :try_start_5
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_e

    .line 545
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 546
    nop

    .line 547
    return-void

    .line 545
    :catchall_e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 546
    throw v0
.end method

.method private setLnb(Landroid/media/tv/tuner/Lnb;)I
    .registers 4
    .param p1, "lnb"    # Landroid/media/tv/tuner/Lnb;

    .line 1405
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1407
    :try_start_5
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 1409
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1407
    return v0

    .line 1409
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1410
    throw v0
.end method

.method private transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 8
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 669
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 670
    .local v0, "notAnOwner":Z
    :goto_8
    if-eqz v0, :cond_b

    .line 672
    return v1

    .line 678
    :cond_b
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 679
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 682
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v4, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 685
    return v1

    .line 687
    :cond_20
    const/4 v1, 0x6

    return v1
.end method

.method private transferFeOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 6
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 643
    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    .line 644
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    .line 647
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 650
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 651
    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 654
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 657
    return v3

    .line 659
    :cond_24
    const/4 v0, 0x6

    return v0
.end method

.method private transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 8
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 697
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    move v2, v1

    .line 698
    .local v2, "notAnOwner":Z
    :goto_8
    if-eqz v2, :cond_b

    .line 700
    return v1

    .line 706
    :cond_b
    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 708
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 712
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v4, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 715
    return v1

    .line 717
    :cond_23
    const/4 v0, 0x6

    return v0
.end method

.method private unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .registers 4
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 790
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUnregisterFeCbListener(J)V

    .line 791
    return-void
.end method


# virtual methods
.method public applyFrontend(Landroid/media/tv/tuner/frontend/FrontendInfo;)I
    .registers 5
    .param p1, "desiredFrontendInfo"    # Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 2480
    const-string v0, "desiredFrontendInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2481
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2483
    :try_start_a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_7d

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-eqz v0, :cond_1d

    .line 2484
    :try_start_11
    const-string v0, "Operation connot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_7d

    .line 2485
    nop

    .line 2502
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2485
    return v1

    .line 2487
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_2d

    .line 2488
    const-string v0, "A frontend has been opened before"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_7d

    .line 2489
    nop

    .line 2502
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2489
    return v1

    .line 2491
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 2492
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 2493
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_65

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying frontend with type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :cond_65
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_6c
    .catchall {:try_start_2d .. :try_end_6c} :catchall_7d

    if-nez v0, :cond_76

    .line 2498
    nop

    .line 2502
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2498
    const/4 v0, 0x1

    return v0

    .line 2500
    :cond_76
    nop

    .line 2502
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2500
    return v1

    .line 2502
    :catchall_7d
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2503
    throw v0
.end method

.method public cancelScanning()I
    .registers 5

    .line 1337
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1339
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_18

    .line 1340
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_36

    .line 1341
    nop

    .line 1353
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1341
    const/4 v0, 0x3

    return v0

    .line 1343
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_36

    .line 1344
    :try_start_1b
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x6

    const/16 v3, 0x114

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1347
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopScan()I

    move-result v1

    .line 1348
    .local v1, "retVal":I
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1349
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1350
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_33

    .line 1353
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1350
    return v1

    .line 1351
    .end local v1    # "retVal":I
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :try_start_35
    throw v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1353
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_36
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1354
    throw v0
.end method

.method public cancelTuning()I
    .registers 3

    .line 1239
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1241
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_18

    .line 1242
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_22

    .line 1243
    nop

    .line 1247
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1243
    const/4 v0, 0x3

    return v0

    .line 1245
    :cond_18
    :try_start_18
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopTune()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_22

    .line 1247
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1245
    return v0

    .line 1247
    :catchall_22
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1248
    throw v0
.end method

.method public clearOnTuneEventListener()V
    .registers 3

    .line 1140
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1142
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    .line 1143
    monitor-exit v0

    .line 1144
    return-void

    .line 1143
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public clearResourceLostListener()V
    .registers 3

    .line 440
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 442
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public close()V
    .registers 3

    .line 805
    const-string v0, "close()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 807
    :try_start_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    .line 808
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    .line 809
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeClose()I

    move-result v0

    const-string v1, "failed to close tuner"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1d

    .line 811
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 812
    nop

    .line 813
    return-void

    .line 811
    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 812
    throw v0
.end method

.method public closeFrontend()V
    .registers 2

    .line 819
    const-string v0, "closeFrontend()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 821
    :try_start_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 823
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 824
    nop

    .line 825
    return-void

    .line 823
    :catchall_d
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 824
    throw v0
.end method

.method public configureDemux(Landroid/media/tv/tuner/DemuxInfo;)I
    .registers 7
    .param p1, "desiredDemuxInfo"    # Landroid/media/tv/tuner/DemuxInfo;

    .line 2555
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v0

    .line 2556
    .local v0, "tunerMajorVersion":I
    sget v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const/high16 v2, 0x30000

    const/4 v3, 0x1

    if-ge v1, v2, :cond_42

    .line 2557
    const-string v1, "MediaTvTuner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureDemux() is not supported for tuner version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 2558
    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 2559
    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2557
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    return v3

    .line 2563
    :cond_42
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v1

    .line 2564
    :try_start_45
    invoke-direct {p0, p1, v3}, Landroid/media/tv/tuner/Tuner;->configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I

    move-result v2

    monitor-exit v1

    return v2

    .line 2565
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public connectCiCam(I)I
    .registers 4
    .param p1, "ciCamId"    # I

    .line 1526
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1528
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1529
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeConnectCiCam(I)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1f

    .line 1533
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1529
    return v0

    .line 1531
    :cond_18
    nop

    .line 1533
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1531
    return v1

    .line 1533
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1534
    throw v0
.end method

.method public connectFrontendToCiCam(I)I
    .registers 4
    .param p1, "ciCamId"    # I

    .line 1564
    const-string v0, "connectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1566
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1568
    :try_start_f
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_2a

    .line 1569
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_68

    .line 1570
    nop

    .line 1586
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1587
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1588
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1570
    const/4 v0, 0x3

    return v0

    .line 1572
    :cond_2a
    :try_start_2a
    const-string v0, "linkFrontendToCiCam"

    const v1, 0x10001

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1575
    iput p1, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    .line 1578
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1579
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1581
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeLinkCiCam(I)I

    move-result v0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_68

    .line 1586
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1587
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1588
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1581
    return v0

    .line 1584
    :cond_58
    nop

    .line 1586
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1587
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1588
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1584
    const/4 v0, -0x1

    return v0

    .line 1586
    :catchall_68
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1587
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1588
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1589
    throw v0
.end method

.method public disconnectCiCam()I
    .registers 3

    .line 1604
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1606
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 1607
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeDisconnectCiCam()I

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    .line 1611
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1607
    return v0

    .line 1609
    :cond_13
    nop

    .line 1611
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1609
    const/4 v0, 0x1

    return v0

    .line 1611
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1612
    throw v0
.end method

.method public disconnectFrontendToCiCam(I)I
    .registers 6
    .param p1, "ciCamId"    # I

    .line 1633
    const-string v0, "disconnectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 1635
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_23

    .line 1636
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_7e

    .line 1637
    nop

    .line 1656
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1657
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1659
    :cond_1e
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1637
    const/4 v0, 0x3

    return v0

    .line 1639
    :cond_23
    :try_start_23
    const-string v0, "unlinkFrontendToCiCam"

    const v1, 0x10001

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1642
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1643
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    if-eqz v0, :cond_6b

    .line 1644
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_6b

    .line 1645
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    move-result v0

    .line 1646
    .local v0, "result":I
    if-nez v0, :cond_59

    .line 1647
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(II)V

    .line 1648
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    .line 1649
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;
    :try_end_59
    .catchall {:try_start_23 .. :try_end_59} :catchall_7e

    .line 1651
    :cond_59
    nop

    .line 1656
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1657
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1659
    :cond_67
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1651
    return v0

    .line 1654
    .end local v0    # "result":I
    :cond_6b
    nop

    .line 1656
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1657
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1659
    :cond_79
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1654
    const/4 v0, 0x1

    return v0

    .line 1656
    :catchall_7e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1657
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1659
    :cond_8c
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1660
    throw v0
.end method

.method public getAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 5
    .param p1, "filter"    # Landroid/media/tv/tuner/filter/Filter;

    .line 1478
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1480
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_27

    const/4 v1, -0x1

    if-nez v0, :cond_16

    .line 1481
    nop

    .line 1486
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1481
    return v1

    .line 1483
    :cond_16
    :try_start_16
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;

    move-result-object v0

    .line 1484
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_27

    .line 1486
    :goto_21
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1484
    return v1

    .line 1486
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_27
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1487
    throw v0
.end method

.method public getAvSyncTime(I)J
    .registers 6
    .param p1, "avSyncHwId"    # I

    .line 1500
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1502
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    const-wide/16 v1, -0x1

    if-nez v0, :cond_17

    .line 1503
    nop

    .line 1508
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1503
    return-wide v1

    .line 1505
    :cond_17
    :try_start_17
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncTime(I)Ljava/lang/Long;

    move-result-object v0

    .line 1506
    .local v0, "time":Ljava/lang/Long;
    if-nez v0, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_28

    .line 1508
    :goto_22
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1506
    return-wide v1

    .line 1508
    .end local v0    # "time":Ljava/lang/Long;
    :catchall_28
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1509
    throw v0
.end method

.method public getAvailableFrontendInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendInfo;",
            ">;"
        }
    .end annotation

    .line 1771
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    .line 1772
    .local v0, "feInfoList":[Landroid/media/tv/tuner/frontend/FrontendInfo;
    if-nez v0, :cond_8

    .line 1773
    const/4 v1, 0x0

    return-object v1

    .line 1775
    :cond_8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getClientId()I
    .registers 2

    .line 2792
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    return v0
.end method

.method public getCurrentDemuxInfo()Landroid/media/tv/tuner/DemuxInfo;
    .registers 3

    .line 1904
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1906
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1f

    if-nez v0, :cond_11

    .line 1907
    nop

    .line 1911
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1907
    const/4 v0, 0x0

    return-object v0

    .line 1909
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxInfo(I)Landroid/media/tv/tuner/DemuxInfo;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    .line 1911
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1909
    return-object v0

    .line 1911
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1912
    throw v0
.end method

.method public getCurrentFrontendHardwareInfo()Ljava/lang/String;
    .registers 3

    .line 1791
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1793
    :try_start_5
    const-string v0, "Get Frontend hardware info"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_39

    if-nez v0, :cond_17

    .line 1795
    nop

    .line 1805
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1795
    const/4 v0, 0x0

    return-object v0

    .line 1797
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_31

    .line 1800
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_29

    .line 1803
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendHardwareInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_39

    .line 1805
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1803
    return-object v0

    .line 1801
    :cond_29
    :try_start_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0

    .line 1798
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_39

    .line 1805
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_39
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1806
    throw v0
.end method

.method public getDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
    .registers 3

    .line 1888
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1890
    :try_start_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 1892
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1890
    return-object v0

    .line 1892
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1893
    throw v0
.end method

.method public getDesiredDemuxInfo()Landroid/media/tv/tuner/DemuxInfo;
    .registers 2

    .line 1917
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    return-object v0
.end method

.method public getFrontendIds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    :try_start_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendIds()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 416
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 414
    return-object v0

    .line 416
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    throw v0
.end method

.method public getFrontendInfo()Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 3

    .line 1743
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1745
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_38

    if-nez v0, :cond_16

    .line 1746
    nop

    .line 1756
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1746
    const/4 v0, 0x0

    return-object v0

    .line 1748
    :cond_16
    :try_start_16
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_30

    .line 1751
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    if-nez v1, :cond_28

    .line 1752
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1754
    :cond_28
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_38

    .line 1756
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1754
    return-object v0

    .line 1749
    :cond_30
    :try_start_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    .line 1756
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_38
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1757
    throw v0
.end method

.method public getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 4
    .param p1, "id"    # I

    .line 1872
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1874
    :try_start_5
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 1876
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1874
    return-object v0

    .line 1876
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1877
    throw v0
.end method

.method public getFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
    .registers 4
    .param p1, "statusTypes"    # [I

    .line 1457
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1459
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1f

    .line 1462
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_17

    .line 1465
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_27

    .line 1467
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1465
    return-object v0

    .line 1463
    :cond_17
    :try_start_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0

    .line 1460
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_27

    .line 1467
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :catchall_27
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1468
    throw v0
.end method

.method public getFrontendStatusReadiness([I)Ljava/util/List;
    .registers 5
    .param p1, "statusTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;",
            ">;"
        }
    .end annotation

    .line 1712
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1714
    :try_start_5
    const-string v0, "Get fronted status readiness"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1716
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_47

    .line 1730
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1716
    return-object v0

    .line 1718
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_3f

    .line 1721
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_37

    .line 1724
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;

    move-result-object v0

    .line 1725
    .local v0, "readiness":[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
    if-nez v0, :cond_2d

    .line 1726
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_47

    .line 1730
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1726
    return-object v1

    .line 1728
    :cond_2d
    :try_start_2d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_47

    .line 1730
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1728
    return-object v1

    .line 1722
    .end local v0    # "readiness":[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
    :cond_37
    :try_start_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0

    .line 1719
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_47

    .line 1730
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :catchall_47
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1731
    throw v0
.end method

.method public getMaxNumberOfFrontends(I)I
    .registers 6
    .param p1, "frontendType"    # I

    .line 1857
    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1859
    const/4 v0, -0x1

    return v0

    .line 1861
    :cond_c
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetMaxNumberOfFrontends(I)I

    move-result v0

    .line 1862
    .local v0, "maxNumFromHAL":I
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->getMaxNumberOfFrontends(I)I

    move-result v1

    .line 1863
    .local v1, "maxNumFromTRM":I
    if-eq v0, v1, :cond_3a

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max num of usable frontend is out-of-sync b/w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaTvTuner"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_3a
    return v0
.end method

.method getNativeContext()J
    .registers 3

    .line 797
    iget-wide v0, p0, Landroid/media/tv/tuner/Tuner;->mNativeContext:J

    return-wide v0
.end method

.method public hasUnusedFrontend(I)Z
    .registers 3
    .param p1, "frontendType"    # I

    .line 747
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->hasUnusedFrontend(I)Z

    move-result v0

    return v0
.end method

.method public isLnaSupported()Z
    .registers 4

    .line 1425
    const/high16 v0, 0x30000

    const-string v1, "isLnaSupported"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1430
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeIsLnaSupported()Z

    move-result v0

    return v0

    .line 1427
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuner HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1428
    invoke-static {}, Landroid/media/tv/tuner/TunerVersionChecker;->getTunerVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support this method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLowestPriority(I)Z
    .registers 4
    .param p1, "frontendType"    # I

    .line 774
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->isLowestPriority(II)Z

    move-result v0

    return v0
.end method

.method public openDescrambler()Landroid/media/tv/tuner/Descrambler;
    .registers 3

    .line 2395
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2397
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_20

    if-nez v0, :cond_16

    .line 2398
    nop

    .line 2402
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2398
    const/4 v0, 0x0

    return-object v0

    .line 2400
    :cond_16
    :try_start_16
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDescrambler()Landroid/media/tv/tuner/Descrambler;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_20

    .line 2402
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2400
    return-object v0

    .line 2402
    :catchall_20
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2403
    throw v0
.end method

.method public openDvrPlayback(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrPlayback;
    .registers 7
    .param p1, "bufferSize"    # J
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "l"    # Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    .line 2451
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2453
    :try_start_5
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2454
    const-string v0, "OnPlaybackStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2455
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2e

    if-nez v0, :cond_20

    .line 2456
    nop

    .line 2462
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2456
    const/4 v0, 0x0

    return-object v0

    .line 2458
    :cond_20
    :try_start_20
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;

    move-result-object v0

    .line 2459
    .local v0, "dvr":Landroid/media/tv/tuner/dvr/DvrPlayback;
    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrPlayback;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2e

    .line 2460
    nop

    .line 2462
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2460
    return-object v0

    .line 2462
    .end local v0    # "dvr":Landroid/media/tv/tuner/dvr/DvrPlayback;
    :catchall_2e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2463
    throw v0
.end method

.method public openDvrRecorder(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrRecorder;
    .registers 7
    .param p1, "bufferSize"    # J
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "l"    # Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    .line 2421
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2423
    :try_start_5
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2424
    const-string v0, "OnRecordStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2425
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2e

    if-nez v0, :cond_20

    .line 2426
    nop

    .line 2432
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2426
    const/4 v0, 0x0

    return-object v0

    .line 2428
    :cond_20
    :try_start_20
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;

    move-result-object v0

    .line 2429
    .local v0, "dvr":Landroid/media/tv/tuner/dvr/DvrRecorder;
    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrRecorder;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2e

    .line 2430
    nop

    .line 2432
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2430
    return-object v0

    .line 2432
    .end local v0    # "dvr":Landroid/media/tv/tuner/dvr/DvrRecorder;
    :catchall_2e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2433
    throw v0
.end method

.method public openFilter(IIJLjava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/FilterCallback;)Landroid/media/tv/tuner/filter/Filter;
    .registers 14
    .param p1, "mainType"    # I
    .param p2, "subType"    # I
    .param p3, "bufferSize"    # J
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "cb"    # Landroid/media/tv/tuner/filter/FilterCallback;

    .line 2246
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2248
    :try_start_5
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v0

    .line 2249
    .local v0, "tunerMajorVersion":I
    sget v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const/high16 v2, 0x30000

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3d

    .line 2250
    new-instance v1, Landroid/media/tv/tuner/DemuxInfo;

    invoke-direct {v1, p1}, Landroid/media/tv/tuner/DemuxInfo;-><init>(I)V

    .line 2251
    .local v1, "demuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/tv/tuner/Tuner;->configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I

    move-result v2

    .line 2252
    .local v2, "res":I
    if-eqz v2, :cond_3d

    .line 2253
    const-string v4, "MediaTvTuner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openFilter called for unsupported mainType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_a7

    .line 2254
    nop

    .line 2284
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2254
    return-object v3

    .line 2257
    .end local v1    # "demuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    .end local v2    # "res":I
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_a7

    if-nez v1, :cond_4d

    .line 2258
    nop

    .line 2284
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2258
    return-object v3

    .line 2260
    :cond_4d
    nop

    .line 2261
    :try_start_4e
    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v1

    .line 2260
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/media/tv/tuner/Tuner;->nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;

    move-result-object v1

    .line 2262
    .local v1, "filter":Landroid/media/tv/tuner/filter/Filter;
    if-eqz v1, :cond_a0

    .line 2263
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/tuner/filter/Filter;->setType(II)V

    .line 2264
    invoke-virtual {v1, p6, p5}, Landroid/media/tv/tuner/filter/Filter;->setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V

    .line 2265
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v2, :cond_68

    .line 2266
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    .line 2268
    :cond_68
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v2
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_a7

    .line 2269
    :try_start_6b
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2270
    .local v3, "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2271
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x100

    if-le v4, v5, :cond_9b

    .line 2272
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2273
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;>;"
    :goto_85
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 2274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 2275
    .local v5, "wFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9a

    .line 2276
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 2278
    .end local v5    # "wFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    :cond_9a
    goto :goto_85

    .line 2280
    .end local v3    # "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;>;"
    :cond_9b
    monitor-exit v2

    goto :goto_a0

    :catchall_9d
    move-exception v3

    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_6b .. :try_end_9f} :catchall_9d

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "mainType":I
    .end local p2    # "subType":I
    .end local p3    # "bufferSize":J
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "cb":Landroid/media/tv/tuner/filter/FilterCallback;
    :try_start_9f
    throw v3
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a7

    .line 2282
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "mainType":I
    .restart local p2    # "subType":I
    .restart local p3    # "bufferSize":J
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "cb":Landroid/media/tv/tuner/filter/FilterCallback;
    :cond_a0
    :goto_a0
    nop

    .line 2284
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2282
    return-object v1

    .line 2284
    .end local v0    # "tunerMajorVersion":I
    .end local v1    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :catchall_a7
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2285
    throw v0
.end method

.method public openLnb(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/tv/tuner/LnbCallback;

    .line 2300
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2302
    :try_start_5
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2303
    const-string v0, "LnbCallback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2304
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_1e

    .line 2305
    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2306
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_4b

    .line 2318
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2306
    return-object v0

    .line 2308
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_43

    .line 2310
    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2311
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_3b

    .line 2312
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    .line 2314
    :cond_3b
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_4b

    .line 2318
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2314
    return-object v0

    .line 2316
    :cond_43
    nop

    .line 2318
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2316
    const/4 v0, 0x0

    return-object v0

    .line 2318
    :catchall_4b
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2319
    throw v0
.end method

.method public openLnbByName(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cb"    # Landroid/media/tv/tuner/LnbCallback;

    .line 2334
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2336
    :try_start_5
    const-string v0, "LNB name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2337
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2338
    const-string v0, "LnbCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2339
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;

    move-result-object v0

    .line 2340
    .local v0, "newLnb":Landroid/media/tv/tuner/Lnb;
    if-eqz v0, :cond_36

    .line 2341
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v1, :cond_24

    .line 2342
    invoke-virtual {v1}, Landroid/media/tv/tuner/Lnb;->close()V

    .line 2343
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    .line 2345
    :cond_24
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 2346
    invoke-virtual {v0, p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2347
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v1, :cond_36

    .line 2348
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    .line 2351
    :cond_36
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3e

    .line 2353
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2351
    return-object v1

    .line 2353
    .end local v0    # "newLnb":Landroid/media/tv/tuner/Lnb;
    :catchall_3e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2354
    throw v0
.end method

.method public openTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
    .registers 3

    .line 2376
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2378
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_20

    if-nez v0, :cond_16

    .line 2379
    nop

    .line 2383
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2379
    const/4 v0, 0x0

    return-object v0

    .line 2381
    :cond_16
    :try_start_16
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_20

    .line 2383
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2381
    return-object v0

    .line 2383
    :catchall_20
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2384
    throw v0
.end method

.method releaseLnb()V
    .registers 5

    .line 2768
    const-string v0, "releaseLnb()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 2769
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2771
    :try_start_a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3f

    const-string v1, "MediaTvTuner"

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 2773
    :try_start_11
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 2774
    const-string v0, "releasing Lnb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_1a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLnb(II)V

    .line 2777
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    goto :goto_33

    .line 2779
    :cond_2a
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 2780
    const-string v0, "NOT releasing Lnb because mLnbHandle is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_33
    :goto_33
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_3f

    .line 2785
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2786
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2787
    nop

    .line 2788
    return-void

    .line 2785
    :catchall_3f
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2786
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2787
    throw v0
.end method

.method public removeOutputPid(I)I
    .registers 4
    .param p1, "pid"    # I

    .line 1678
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1680
    :try_start_5
    const-string v0, "Remove output PID"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_40

    if-nez v0, :cond_17

    .line 1682
    nop

    .line 1693
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1682
    const/4 v0, 0x1

    return v0

    .line 1684
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_38

    .line 1687
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_2e

    .line 1688
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_40

    .line 1689
    nop

    .line 1693
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1689
    const/4 v0, 0x3

    return v0

    .line 1691
    :cond_2e
    :try_start_2e
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeRemoveOutputPid(I)I

    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_40

    .line 1693
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1691
    return v0

    .line 1685
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "pid":I
    throw v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_40

    .line 1693
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "pid":I
    :catchall_40
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1694
    throw v0
.end method

.method public scan(Landroid/media/tv/tuner/frontend/FrontendSettings;ILjava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/ScanCallback;)I
    .registers 9
    .param p1, "settings"    # Landroid/media/tv/tuner/frontend/FrontendSettings;
    .param p2, "scanType"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "scanCallback"    # Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1276
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1278
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_18

    .line 1279
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_95

    .line 1280
    nop

    .line 1320
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1280
    const/4 v0, 0x3

    return v0

    .line 1282
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_95

    .line 1285
    :try_start_1b
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_21

    if-ne v1, p4, :cond_28

    :cond_21
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_30

    if-ne v1, p3, :cond_28

    goto :goto_30

    .line 1288
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Different Scan session already in progress.  stopScan must be called before a new scan session can be started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .end local p2    # "scanType":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    throw v1

    .line 1292
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .restart local p2    # "scanType":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :cond_30
    :goto_30
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 1293
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4d

    .line 1294
    const-string v1, "Scan with DTMB Frontend"

    const v2, 0x10001

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1297
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_92

    .line 1320
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1297
    return v3

    .line 1300
    :cond_4d
    :try_start_4d
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_64

    .line 1301
    const-string v1, "Tuner with IPTV Frontend"

    const/high16 v2, 0x30000

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 1304
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_92

    .line 1320
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1304
    return v3

    .line 1307
    :cond_64
    :try_start_64
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1309
    iput-object p4, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1310
    iput-object p3, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1311
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1312
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1313
    const/16 v2, 0x114

    const/4 v3, 0x5

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1315
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I

    move-result v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_64 .. :try_end_85} :catchall_92

    .line 1320
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1315
    return v1

    .line 1317
    :cond_8b
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_92

    .line 1320
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1317
    return v3

    .line 1318
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .end local p2    # "scanType":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :try_start_94
    throw v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 1320
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .restart local p2    # "scanType":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :catchall_95
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1321
    throw v0
.end method

.method public setLnaEnabled(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 1443
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLna(Z)I

    move-result v0

    return v0
.end method

.method public setMaxNumberOfFrontends(II)I
    .registers 5
    .param p1, "frontendType"    # I
    .param p2, "maxNumber"    # I

    .line 1825
    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1827
    const/4 v0, 0x1

    return v0

    .line 1829
    :cond_c
    if-gez p2, :cond_10

    .line 1830
    const/4 v0, 0x4

    return v0

    .line 1832
    :cond_10
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_1d

    .line 1833
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/4 v0, 0x3

    return v0

    .line 1836
    :cond_1d
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeSetMaxNumberOfFrontends(II)I

    move-result v0

    .line 1837
    .local v0, "res":I
    if-nez v0, :cond_2c

    .line 1838
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setMaxNumberOfFrontends(II)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1839
    const/4 v0, 0x4

    .line 1842
    :cond_2c
    return v0
.end method

.method public setOnTuneEventListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/OnTuneEventListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventListener"    # Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1127
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    :try_start_3
    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1129
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    .line 1130
    monitor-exit v0

    .line 1131
    return-void

    .line 1130
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public setResourceLostListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/Tuner$OnResourceLostListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 428
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    const-string v1, "OnResourceLostListener must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    const-string v1, "executor must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 432
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    .line 433
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public shareFrontendFromTuner(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 452
    const-string v0, "shareFrontendFromTuner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 455
    :try_start_a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->shareFrontend(II)V

    .line 456
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 457
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    .line 458
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iget-object v1, v0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 459
    iget-object v0, v0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 460
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeShareFrontend(I)I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_33

    .line 462
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 463
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 464
    nop

    .line 465
    return-void

    .line 462
    :catchall_33
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 463
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 464
    throw v0
.end method

.method public transferOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 4
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 475
    const-string v0, "transferOwner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 477
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 478
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 481
    :try_start_14
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->isFrontendOwner()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_86

    .line 485
    :cond_21
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferFeOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_9b

    .line 486
    .local v0, "res":I
    if-eqz v0, :cond_3b

    .line 487
    nop

    .line 500
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 487
    return v0

    .line 490
    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v1
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_9b

    move v0, v1

    .line 491
    if-eqz v0, :cond_56

    .line 492
    nop

    .line 500
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 492
    return v0

    .line 495
    :cond_56
    :try_start_56
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v1
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_9b

    move v0, v1

    .line 496
    if-eqz v0, :cond_71

    .line 497
    nop

    .line 500
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 497
    return v0

    .line 500
    .end local v0    # "res":I
    :cond_71
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 504
    nop

    .line 505
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_86
    :goto_86
    nop

    .line 500
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 482
    const/4 v0, 0x3

    return v0

    .line 500
    :catchall_9b
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 504
    throw v0
.end method

.method public tune(Landroid/media/tv/tuner/frontend/FrontendSettings;)I
    .registers 7
    .param p1, "settings"    # Landroid/media/tv/tuner/frontend/FrontendSettings;

    .line 1186
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1188
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_c5

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-eqz v0, :cond_18

    .line 1189
    :try_start_c
    const-string v0, "Operation cannot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_c5

    .line 1190
    nop

    .line 1225
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1190
    return v1

    .line 1192
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    .line 1193
    .local v0, "type":I
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v3, :cond_4d

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    if-eq v0, v3, :cond_4d

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend was opened with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_c5

    .line 1196
    nop

    .line 1225
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1196
    return v1

    .line 1198
    :cond_4d
    :try_start_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tune to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getFrequencyLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 1200
    const/16 v1, 0xa

    const/4 v3, 0x1

    if-ne v0, v1, :cond_80

    .line 1201
    const-string v1, "Tuner with DTMB Frontend"

    const v4, 0x10001

    invoke-static {v4, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1
    :try_end_77
    .catchall {:try_start_4d .. :try_end_77} :catchall_c5

    if-nez v1, :cond_80

    .line 1203
    nop

    .line 1225
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1203
    return v3

    .line 1206
    :cond_80
    :try_start_80
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v4, 0xb

    if-ne v1, v4, :cond_97

    .line 1207
    const-string v1, "Tuner with IPTV Frontend"

    const/high16 v4, 0x30000

    invoke-static {v4, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_c5

    if-nez v1, :cond_97

    .line 1209
    nop

    .line 1225
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1209
    return v3

    .line 1213
    :cond_97
    :try_start_97
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 1214
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1215
    const-string v1, "Write Stats Log for tuning."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1217
    const/16 v2, 0x114

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1219
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/media/tv/tuner/Tuner;->nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I

    move-result v1
    :try_end_b7
    .catchall {:try_start_97 .. :try_end_b7} :catchall_c5

    .line 1220
    .local v1, "res":I
    nop

    .line 1225
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1220
    return v1

    .line 1222
    .end local v1    # "res":I
    :cond_be
    nop

    .line 1225
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1222
    return v3

    .line 1225
    .end local v0    # "type":I
    :catchall_c5
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1226
    throw v0
.end method

.method public updateResourcePriority(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "niceValue"    # I

    .line 736
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateClientPriority(III)Z

    .line 737
    return-void
.end method
