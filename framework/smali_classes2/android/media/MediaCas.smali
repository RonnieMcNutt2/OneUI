.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$Session;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$EventHandler;,
        Landroid/media/MediaCas$OpenSessionCallback;,
        Landroid/media/MediaCas$OpenSession_1_2_Callback;,
        Landroid/media/MediaCas$PluginStatus;,
        Landroid/media/MediaCas$SessionUsage;,
        Landroid/media/MediaCas$ScramblingMode;
    }
.end annotation


# static fields
.field public static final PLUGIN_STATUS_PHYSICAL_MODULE_CHANGED:I = 0x0

.field public static final PLUGIN_STATUS_SESSION_NUMBER_CHANGED:I = 0x1

.field public static final SCRAMBLING_MODE_AES128:I = 0x9

.field public static final SCRAMBLING_MODE_AES_CBC:I = 0xe

.field public static final SCRAMBLING_MODE_AES_ECB:I = 0xa

.field public static final SCRAMBLING_MODE_AES_SCTE52:I = 0xb

.field public static final SCRAMBLING_MODE_DVB_CISSA_V1:I = 0x6

.field public static final SCRAMBLING_MODE_DVB_CSA1:I = 0x1

.field public static final SCRAMBLING_MODE_DVB_CSA2:I = 0x2

.field public static final SCRAMBLING_MODE_DVB_CSA3_ENHANCE:I = 0x5

.field public static final SCRAMBLING_MODE_DVB_CSA3_MINIMAL:I = 0x4

.field public static final SCRAMBLING_MODE_DVB_CSA3_STANDARD:I = 0x3

.field public static final SCRAMBLING_MODE_DVB_IDSA:I = 0x7

.field public static final SCRAMBLING_MODE_MULTI2:I = 0x8

.field public static final SCRAMBLING_MODE_RESERVED:I = 0x0

.field public static final SCRAMBLING_MODE_TDES_ECB:I = 0xc

.field public static final SCRAMBLING_MODE_TDES_SCTE52:I = 0xd

.field public static final SESSION_USAGE_LIVE:I = 0x0

.field public static final SESSION_USAGE_PLAYBACK:I = 0x1

.field public static final SESSION_USAGE_RECORD:I = 0x2

.field public static final SESSION_USAGE_TIMESHIFT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaCas"

.field private static final sService:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/cas/IMediaCasService;",
            ">;"
        }
    .end annotation
.end field

.field private static final sServiceHidl:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/cas/V1_0/IMediaCasService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/hardware/cas/ICasListener$Stub;

.field private final mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

.field private mCasSystemId:I

.field private mClientId:I

.field private mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICas:Landroid/hardware/cas/ICas;

.field private mICasHidl:Landroid/hardware/cas/V1_0/ICas;

.field private mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

.field private mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

.field private mListener:Landroid/media/MediaCas$EventListener;

.field private mPriorityHint:I

.field private final mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaCas$Session;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private mTvInputServiceSessionId:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCasSystemId(Landroid/media/MediaCas;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaCas;->mCasSystemId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmICasHidl11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionMap(Landroid/media/MediaCas;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSessionFromResourceMap(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 267
    new-instance v0, Landroid/media/MediaCas$1;

    invoke-direct {v0}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->sService:Landroid/util/Singleton;

    .line 287
    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0}, Landroid/media/MediaCas$2;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->sServiceHidl:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "casSystemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 122
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 123
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 124
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 133
    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 384
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    .line 431
    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 473
    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 887
    invoke-direct {p0, p1}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 888
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "casSystemId"    # I
    .param p3, "tvInputServiceSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 122
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 123
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 124
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 133
    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 384
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    .line 431
    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 473
    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 905
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 906
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 907
    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    .line 908
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ILandroid/os/Handler;Landroid/media/MediaCas$EventListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "casSystemId"    # I
    .param p3, "tvInputServiceSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Landroid/media/MediaCas$EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 122
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 123
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 124
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 133
    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 384
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    .line 431
    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 473
    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 930
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 931
    invoke-virtual {p0, p6, p5}, Landroid/media/MediaCas;->setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V

    .line 932
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 933
    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    .line 934
    return-void
.end method

.method private addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V
    .registers 6
    .param p1, "session"    # Landroid/media/MediaCas$Session;
    .param p2, "sessionResourceHandle"    # I

    .line 1112
    const/4 v0, -0x1

    if-eq p2, v0, :cond_14

    .line 1113
    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    .line 1114
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1

    .line 1117
    :cond_14
    :goto_14
    return-void
.end method

.method private cleanupAndRethrowIllegalState()V
    .registers 2

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 342
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 343
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 344
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private createPlugin(I)V
    .registers 9
    .param p1, "casSystemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 820
    const-string v0, "Unsupported casSystemId "

    const-string v1, "MediaCas"

    :try_start_4
    iput p1, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 821
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Landroid/media/MediaCas;->mUserId:I

    .line 822
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v2

    .line 823
    .local v2, "service":Landroid/hardware/cas/IMediaCasService;
    if-eqz v2, :cond_20

    .line 824
    const-string v3, "Use CAS AIDL interface to create plugin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v3, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    invoke-interface {v2, p1, v3}, Landroid/hardware/cas/IMediaCasService;->createPlugin(ILandroid/hardware/cas/ICasListener;)Landroid/hardware/cas/ICas;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    goto :goto_65

    .line 827
    :cond_20
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v3

    .line 828
    .local v3, "serviceV10":Landroid/hardware/cas/V1_0/IMediaCasService;
    nop

    .line 829
    invoke-static {v3}, Landroid/hardware/cas/V1_2/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/IMediaCasService;

    move-result-object v4

    .line 830
    .local v4, "serviceV12":Landroid/hardware/cas/V1_2/IMediaCasService;
    if-nez v4, :cond_50

    .line 831
    nop

    .line 832
    invoke-static {v3}, Landroid/hardware/cas/V1_1/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_1/IMediaCasService;

    move-result-object v5

    .line 833
    .local v5, "serviceV11":Landroid/hardware/cas/V1_1/IMediaCasService;
    if-nez v5, :cond_40

    .line 834
    const-string v6, "Used cas@1_0 interface to create plugin"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v6, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    invoke-interface {v3, p1, v6}, Landroid/hardware/cas/V1_0/IMediaCasService;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v6

    iput-object v6, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    goto :goto_4f

    .line 837
    :cond_40
    const-string v6, "Used cas@1.1 interface to create plugin"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v6, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 839
    invoke-interface {v5, p1, v6}, Landroid/hardware/cas/V1_1/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v6

    iput-object v6, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v6, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 841
    .end local v5    # "serviceV11":Landroid/hardware/cas/V1_1/IMediaCasService;
    :goto_4f
    goto :goto_65

    .line 842
    :cond_50
    const-string v5, "Used cas@1.2 interface to create plugin"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v5, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 847
    invoke-interface {v4, p1, v5}, Landroid/hardware/cas/V1_2/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v5

    .line 846
    invoke-static {v5}, Landroid/hardware/cas/V1_2/ICas;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/ICas;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v5, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v5, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_65} :catch_88
    .catchall {:try_start_4 .. :try_end_65} :catchall_86

    .line 856
    .end local v2    # "service":Landroid/hardware/cas/IMediaCasService;
    .end local v3    # "serviceV10":Landroid/hardware/cas/V1_0/IMediaCasService;
    .end local v4    # "serviceV12":Landroid/hardware/cas/V1_2/IMediaCasService;
    :goto_65
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v1, :cond_6e

    goto :goto_85

    .line 857
    :cond_6e
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 861
    :cond_85
    :goto_85
    return-void

    .line 856
    :catchall_86
    move-exception v1

    goto :goto_bc

    .line 851
    :catch_88
    move-exception v2

    .line 852
    .local v2, "e":Ljava/lang/Exception;
    :try_start_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 854
    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;
    :try_end_a4
    .catchall {:try_start_89 .. :try_end_a4} :catchall_86

    .line 856
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 857
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 856
    :goto_bc
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v2, :cond_db

    iget-object v2, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-nez v2, :cond_db

    .line 857
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 860
    :cond_db
    throw v1
.end method

.method public static enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .registers 8

    .line 784
    sget-object v0, Landroid/media/MediaCas;->sService:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/IMediaCasService;

    .line 785
    .local v0, "service":Landroid/hardware/cas/IMediaCasService;
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 787
    :try_start_b
    invoke-interface {v0}, Landroid/hardware/cas/IMediaCasService;->enumeratePlugins()[Landroid/hardware/cas/AidlCasPluginDescriptor;

    move-result-object v2

    .line 788
    .local v2, "descriptors":[Landroid/hardware/cas/AidlCasPluginDescriptor;
    array-length v3, v2

    if-nez v3, :cond_13

    .line 789
    return-object v1

    .line 791
    :cond_13
    array-length v3, v2

    new-array v3, v3, [Landroid/media/MediaCas$PluginDescriptor;

    .line 792
    .local v3, "results":[Landroid/media/MediaCas$PluginDescriptor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    array-length v5, v3

    if-ge v4, v5, :cond_26

    .line 793
    new-instance v5, Landroid/media/MediaCas$PluginDescriptor;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/AidlCasPluginDescriptor;)V

    aput-object v5, v3, v4
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_27

    .line 792
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 795
    .end local v4    # "i":I
    :cond_26
    return-object v3

    .line 796
    .end local v2    # "descriptors":[Landroid/hardware/cas/AidlCasPluginDescriptor;
    .end local v3    # "results":[Landroid/media/MediaCas$PluginDescriptor;
    :catch_27
    move-exception v2

    .line 800
    :cond_28
    sget-object v2, Landroid/media/MediaCas;->sServiceHidl:Landroid/util/Singleton;

    invoke-virtual {v2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/cas/V1_0/IMediaCasService;

    .line 801
    .local v2, "serviceHidl":Landroid/hardware/cas/V1_0/IMediaCasService;
    if-eqz v2, :cond_59

    .line 803
    :try_start_32
    invoke-interface {v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v3

    .line 804
    .local v3, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3d

    .line 805
    return-object v1

    .line 807
    :cond_3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/media/MediaCas$PluginDescriptor;

    .line 808
    .local v4, "results":[Landroid/media/MediaCas$PluginDescriptor;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_44
    array-length v6, v4

    if-ge v5, v6, :cond_57

    .line 809
    new-instance v6, Landroid/media/MediaCas$PluginDescriptor;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    invoke-direct {v6, v7}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V

    aput-object v6, v4, v5
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_54} :catch_58

    .line 808
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 811
    .end local v5    # "i":I
    :cond_57
    return-object v4

    .line 812
    .end local v3    # "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    .end local v4    # "results":[Landroid/media/MediaCas$PluginDescriptor;
    :catch_58
    move-exception v3

    .line 815
    :cond_59
    return-object v1
.end method

.method static getService()Landroid/hardware/cas/IMediaCasService;
    .registers 1

    .line 327
    sget-object v0, Landroid/media/MediaCas;->sService:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/IMediaCasService;

    return-object v0
.end method

.method static getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;
    .registers 1

    .line 331
    sget-object v0, Landroid/media/MediaCas;->sServiceHidl:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/V1_0/IMediaCasService;

    return-object v0
.end method

.method private getSessionResourceHandle()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1093
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1095
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1096
    .local v0, "sessionResourceHandle":[I
    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1097
    iget-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v1, :cond_2c

    .line 1098
    new-instance v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;-><init>()V

    .line 1099
    .local v1, "casSessionRequest":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    iget v3, p0, Landroid/media/MediaCas;->mClientId:I

    iput v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 1100
    iget v3, p0, Landroid/media/MediaCas;->mCasSystemId:I

    iput v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    .line 1101
    iget-object v3, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 1102
    invoke-virtual {v3, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_2c

    .line 1103
    :cond_24
    new-instance v2, Landroid/media/MediaCasException$InsufficientResourceException;

    const-string v3, "insufficient resource to Open Session"

    invoke-direct {v2, v3}, Landroid/media/MediaCasException$InsufficientResourceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1107
    .end local v1    # "casSessionRequest":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    :cond_2c
    :goto_2c
    aget v1, v0, v2

    return v1
.end method

.method public static isSystemIdSupported(I)Z
    .registers 5
    .param p0, "CA_system_id"    # I

    .line 759
    sget-object v0, Landroid/media/MediaCas;->sService:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/IMediaCasService;

    .line 760
    .local v0, "service":Landroid/hardware/cas/IMediaCasService;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 762
    :try_start_b
    invoke-interface {v0, p0}, Landroid/hardware/cas/IMediaCasService;->isSystemIdSupported(I)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v1

    .line 763
    :catch_10
    move-exception v2

    .line 764
    .local v2, "e":Landroid/os/RemoteException;
    return v1

    .line 768
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_12
    sget-object v2, Landroid/media/MediaCas;->sServiceHidl:Landroid/util/Singleton;

    invoke-virtual {v2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/cas/V1_0/IMediaCasService;

    .line 769
    .local v2, "serviceHidl":Landroid/hardware/cas/V1_0/IMediaCasService;
    if-eqz v2, :cond_22

    .line 771
    :try_start_1c
    invoke-interface {v2, p0}, Landroid/hardware/cas/V1_0/IMediaCasService;->isSystemIdSupported(I)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 772
    :catch_21
    move-exception v3

    .line 775
    :cond_22
    return v1
.end method

.method private registerClient(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tvInputServiceSessionId"    # Ljava/lang/String;
    .param p3, "priorityHint"    # I

    .line 866
    nop

    .line 867
    const-string v0, "tv_tuner_resource_mgr"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 868
    if-eqz v0, :cond_29

    .line 869
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 870
    .local v0, "clientId":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 871
    .local v1, "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    iput-object p2, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 872
    iput p3, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 873
    iget-object v2, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 874
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 873
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    .line 875
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Landroid/media/MediaCas;->mClientId:I

    .line 877
    .end local v0    # "clientId":[I
    .end local v1    # "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    :cond_29
    return-void
.end method

.method private removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V
    .registers 6
    .param p1, "session"    # Landroid/media/MediaCas$Session;

    .line 1121
    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    .line 1122
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1123
    iget-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCasSession(II)V

    .line 1124
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    :cond_23
    monitor-exit v0

    .line 1127
    return-void

    .line 1126
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private toByteArray([B)Ljava/util/ArrayList;
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 537
    if-nez p1, :cond_8

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 540
    :cond_8
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private toByteArray([BII)Ljava/util/ArrayList;
    .registers 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    .local v0, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p3, :cond_16

    .line 531
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 533
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private toBytes(Ljava/util/ArrayList;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 544
    .local p1, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 545
    .local v0, "data":[B
    if-eqz p1, :cond_1c

    .line 546
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [B

    .line 547
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 548
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 551
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method private validateInternalStates()V
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_9

    goto :goto_f

    .line 336
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 338
    :cond_f
    :goto_f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1403
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1405
    :try_start_5
    invoke-interface {v0}, Landroid/hardware/cas/ICas;->release()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_e

    .line 1408
    :catchall_9
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 1409
    throw v0

    .line 1406
    :catch_d
    move-exception v0

    .line 1408
    :goto_e
    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 1409
    goto :goto_29

    .line 1410
    :cond_11
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_29

    .line 1412
    :try_start_15
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->release()I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_21
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_22

    .line 1415
    :catchall_19
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1416
    throw v0

    .line 1413
    :catch_21
    move-exception v0

    .line 1415
    :goto_22
    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1416
    nop

    .line 1419
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_34

    .line 1420
    iget v2, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    .line 1421
    iput-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 1424
    :cond_34
    iget-object v0, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3d

    .line 1425
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1426
    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1428
    :cond_3d
    return-void
.end method

.method createFromSessionId([B)Landroid/media/MediaCas$Session;
    .registers 3
    .param p1, "sessionId"    # [B

    .line 745
    if-eqz p1, :cond_c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_c

    .line 748
    :cond_6
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;[B)V

    return-object v0

    .line 746
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finalize()V
    .registers 1

    .line 1432
    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    .line 1433
    return-void
.end method

.method public forceResourceLost()V
    .registers 2

    .line 1396
    iget-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    if-eqz v0, :cond_7

    .line 1397
    invoke-virtual {v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;->onReclaimResources()V

    .line 1399
    :cond_7
    return-void
.end method

.method getBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 937
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-eqz v0, :cond_6

    .line 938
    const/4 v0, 0x0

    return-object v0

    .line 941
    :cond_6
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 943
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public isAidlHal()Z
    .registers 2

    .line 953
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public openSession()Landroid/media/MediaCas$Session;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1144
    const-string v0, "MediaCas"

    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()I

    move-result v1

    .line 1147
    .local v1, "sessionResourceHandle":I
    const/4 v2, 0x0

    const/16 v3, 0x118

    :try_start_9
    iget-object v4, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_b} :catch_50

    const/4 v5, 0x1

    const-string v6, "Write Stats Log for succeed to Open Session."

    if-eqz v4, :cond_2a

    .line 1149
    :try_start_10
    invoke-interface {v4}, Landroid/hardware/cas/ICas;->openSessionDefault()[B

    move-result-object v4

    .line 1150
    .local v4, "sessionId":[B
    invoke-virtual {p0, v4}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v7

    .line 1151
    .local v7, "session":Landroid/media/MediaCas$Session;
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget v6, p0, Landroid/media/MediaCas;->mUserId:I

    iget v8, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v3, v6, v8, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_22} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_50

    .line 1157
    return-object v7

    .line 1158
    .end local v4    # "sessionId":[B
    .end local v7    # "session":Landroid/media/MediaCas$Session;
    :catch_23
    move-exception v4

    .line 1159
    .local v4, "se":Landroid/os/ServiceSpecificException;
    :try_start_24
    iget v5, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v5}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1160
    .end local v4    # "se":Landroid/os/ServiceSpecificException;
    goto :goto_4f

    .line 1161
    :cond_2a
    iget-object v4, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v4, :cond_4f

    .line 1162
    new-instance v4, Landroid/media/MediaCas$OpenSessionCallback;

    invoke-direct {v4, p0, v2}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSessionCallback-IA;)V

    .line 1163
    .local v4, "cb":Landroid/media/MediaCas$OpenSessionCallback;
    iget-object v7, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v7, v4}, Landroid/hardware/cas/V1_0/ICas;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    .line 1164
    iget v7, v4, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    invoke-static {v7}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1165
    iget-object v7, v4, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, v7, v1}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    .line 1166
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget v6, p0, Landroid/media/MediaCas;->mUserId:I

    iget v7, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v3, v6, v7, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1172
    iget-object v0, v4, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4e} :catch_50

    return-object v0

    .line 1176
    .end local v4    # "cb":Landroid/media/MediaCas$OpenSessionCallback;
    :cond_4f
    :goto_4f
    goto :goto_54

    .line 1174
    :catch_50
    move-exception v4

    .line 1175
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1177
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_54
    const-string v4, "Write Stats Log for fail to Open Session."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget v0, p0, Landroid/media/MediaCas;->mUserId:I

    iget v4, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 1179
    const/4 v5, 0x2

    invoke-static {v3, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1181
    return-object v2
.end method

.method public openSession(II)Landroid/media/MediaCas$Session;
    .registers 12
    .param p1, "sessionUsage"    # I
    .param p2, "scramblingMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1204
    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()I

    move-result v0

    .line 1206
    .local v0, "sessionResourceHandle":I
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    const/4 v2, 0x1

    const-string v3, "Write Stats Log for succeed to Open Session."

    const/16 v4, 0x118

    const-string v5, "MediaCas"

    if-eqz v1, :cond_29

    .line 1208
    :try_start_f
    invoke-interface {v1, p1, p2}, Landroid/hardware/cas/ICas;->openSession(II)[B

    move-result-object v1

    .line 1209
    .local v1, "sessionId":[B
    invoke-virtual {p0, v1}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v6

    .line 1210
    .local v6, "session":Landroid/media/MediaCas$Session;
    invoke-direct {p0, v6, v0}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    .line 1211
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget v7, p0, Landroid/media/MediaCas;->mUserId:I

    iget v8, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v4, v7, v8, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_24} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_24} :catch_25

    .line 1217
    return-object v6

    .line 1218
    .end local v1    # "sessionId":[B
    .end local v6    # "session":Landroid/media/MediaCas$Session;
    :catch_25
    move-exception v1

    .line 1219
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1222
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_29
    iget-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    if-eqz v1, :cond_61

    .line 1228
    const/4 v1, 0x0

    :try_start_2e
    new-instance v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;

    invoke-direct {v6, p0, v1}, Landroid/media/MediaCas$OpenSession_1_2_Callback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSession_1_2_Callback-IA;)V

    .line 1229
    .local v6, "cb":Landroid/media/MediaCas$OpenSession_1_2_Callback;
    iget-object v7, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    invoke-interface {v7, p1, p2, v6}, Landroid/hardware/cas/V1_2/ICas;->openSession_1_2(IILandroid/hardware/cas/V1_2/ICas$openSession_1_2Callback;)V

    .line 1230
    iget v7, v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mStatus:I

    invoke-static {v7}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1231
    iget-object v7, v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, v7, v0}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    .line 1232
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget v3, p0, Landroid/media/MediaCas;->mUserId:I

    iget v7, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 1234
    invoke-static {v4, v3, v7, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1236
    iget-object v1, v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4e} :catch_4f

    return-object v1

    .line 1237
    .end local v6    # "cb":Landroid/media/MediaCas$OpenSession_1_2_Callback;
    :catch_4f
    move-exception v2

    .line 1238
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1240
    .end local v2    # "e":Landroid/os/RemoteException;
    const-string v2, "Write Stats Log for fail to Open Session."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget v2, p0, Landroid/media/MediaCas;->mUserId:I

    iget v3, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 1242
    const/4 v5, 0x2

    invoke-static {v4, v2, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1244
    return-object v1

    .line 1223
    :cond_61
    const-string v1, "Open Session with scrambling mode is only supported by cas@1.2+ interface"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string v2, "Open Session with scrambling mode is not supported"

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processEmm([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1290
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaCas;->processEmm([BII)V

    .line 1291
    return-void
.end method

.method public processEmm([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1260
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1263
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_24

    if-eqz v0, :cond_16

    .line 1265
    :try_start_7
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/ICas;->processEmm([B)V
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_e} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_24

    .line 1268
    :goto_e
    goto :goto_23

    .line 1266
    :catch_f
    move-exception v0

    .line 1267
    .local v0, "se":Landroid/os/ServiceSpecificException;
    :try_start_10
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .end local v0    # "se":Landroid/os/ServiceSpecificException;
    goto :goto_e

    .line 1270
    :cond_16
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1271
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->processEmm(Ljava/util/ArrayList;)I

    move-result v0

    .line 1270
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_23} :catch_24

    .line 1275
    :goto_23
    goto :goto_28

    .line 1273
    :catch_24
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public provision(Ljava/lang/String;)V
    .registers 4
    .param p1, "provisionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1340
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1343
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_1c

    if-eqz v0, :cond_12

    .line 1345
    :try_start_7
    invoke-interface {v0, p1}, Landroid/hardware/cas/ICas;->provision(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_1c

    .line 1348
    :goto_a
    goto :goto_1b

    .line 1346
    :catch_b
    move-exception v0

    .line 1347
    .local v0, "se":Landroid/os/ServiceSpecificException;
    :try_start_c
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .end local v0    # "se":Landroid/os/ServiceSpecificException;
    goto :goto_a

    .line 1350
    :cond_12
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->provision(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1c

    .line 1354
    :goto_1b
    goto :goto_20

    .line 1352
    :catch_1c
    move-exception v0

    .line 1353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1355
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public refreshEntitlements(I[B)V
    .registers 5
    .param p1, "refreshType"    # I
    .param p2, "refreshData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1369
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1372
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_28

    if-eqz v0, :cond_1a

    .line 1374
    if-nez p2, :cond_10

    .line 1375
    const/4 v1, 0x0

    :try_start_a
    new-array v1, v1, [B

    move-object p2, v1

    goto :goto_10

    .line 1378
    :catch_e
    move-exception v0

    goto :goto_14

    .line 1377
    :cond_10
    :goto_10
    invoke-interface {v0, p1, p2}, Landroid/hardware/cas/ICas;->refreshEntitlements(I[B)V
    :try_end_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_13} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_28

    .line 1380
    :goto_13
    goto :goto_27

    .line 1379
    .local v0, "se":Landroid/os/ServiceSpecificException;
    :goto_14
    :try_start_14
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .end local v0    # "se":Landroid/os/ServiceSpecificException;
    goto :goto_13

    .line 1382
    :cond_1a
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1383
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/cas/V1_0/ICas;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result v0

    .line 1382
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_28

    .line 1387
    :goto_27
    goto :goto_2c

    .line 1385
    :catch_28
    move-exception v0

    .line 1386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method public sendEvent(II[B)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "arg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1307
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1310
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_28

    if-eqz v0, :cond_1a

    .line 1312
    if-nez p3, :cond_10

    .line 1313
    const/4 v1, 0x0

    :try_start_a
    new-array v1, v1, [B

    move-object p3, v1

    goto :goto_10

    .line 1316
    :catch_e
    move-exception v0

    goto :goto_14

    .line 1315
    :cond_10
    :goto_10
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/cas/ICas;->sendEvent(II[B)V
    :try_end_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_13} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_28

    .line 1318
    :goto_13
    goto :goto_27

    .line 1317
    .local v0, "se":Landroid/os/ServiceSpecificException;
    :goto_14
    :try_start_14
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .end local v0    # "se":Landroid/os/ServiceSpecificException;
    goto :goto_13

    .line 1320
    :cond_1a
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1321
    invoke-direct {p0, p3}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/cas/V1_0/ICas;->sendEvent(IILjava/util/ArrayList;)I

    move-result v0

    .line 1320
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_28

    .line 1325
    :goto_27
    goto :goto_2c

    .line 1323
    :catch_28
    move-exception v0

    .line 1324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1326
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method public setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/MediaCas$EventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1020
    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    .line 1022
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 1023
    iput-object v0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 1024
    return-void

    .line 1027
    :cond_8
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1028
    .local v0, "looper":Landroid/os/Looper;
    :cond_e
    if-nez v0, :cond_3b

    .line 1029
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_3b

    .line 1030
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_3b

    .line 1031
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_35

    .line 1032
    :cond_28
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MediaCasEventThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1034
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1036
    :cond_35
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1038
    :cond_3b
    new-instance v1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 1039
    return-void
.end method

.method public setPrivateData([B)V
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1051
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1054
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_22

    if-eqz v0, :cond_12

    .line 1056
    :try_start_7
    invoke-interface {v0, p1}, Landroid/hardware/cas/ICas;->setPrivateData([B)V
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_22

    .line 1059
    :goto_a
    goto :goto_21

    .line 1057
    :catch_b
    move-exception v0

    .line 1058
    .local v0, "se":Landroid/os/ServiceSpecificException;
    :try_start_c
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .end local v0    # "se":Landroid/os/ServiceSpecificException;
    goto :goto_a

    .line 1061
    :cond_12
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    array-length v1, p1

    .line 1062
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->setPrivateData(Ljava/util/ArrayList;)I

    move-result v0

    .line 1061
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_22

    .line 1066
    :goto_21
    goto :goto_26

    .line 1064
    :catch_22
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1067
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method
