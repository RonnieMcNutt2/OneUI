.class public Landroid/telephony/ims/feature/MmTelFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficDirection;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficType;,
        Landroid/telephony/ims/feature/MmTelFeature$EpsFallbackReason;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsAudioHandler;,
        Landroid/telephony/ims/feature/MmTelFeature$ProcessCallResult;,
        Landroid/telephony/ims/feature/MmTelFeature$Listener;
    }
.end annotation


# static fields
.field public static final AUDIO_HANDLER_ANDROID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIO_HANDLER_BASEBAND:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EPS_FALLBACK_REASON_INVALID:I = -0x1

.field public static final EPS_FALLBACK_REASON_NO_NETWORK_RESPONSE:I = 0x2

.field public static final EPS_FALLBACK_REASON_NO_NETWORK_TRIGGER:I = 0x1

.field public static final EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_IS_USSD:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_USSD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final IMS_TRAFFIC_DIRECTION_INCOMING:I = 0x0

.field public static final IMS_TRAFFIC_DIRECTION_OUTGOING:I = 0x1

.field public static final IMS_TRAFFIC_TYPE_EMERGENCY:I = 0x0

.field public static final IMS_TRAFFIC_TYPE_EMERGENCY_SMS:I = 0x1

.field public static final IMS_TRAFFIC_TYPE_NONE:I = -0x1

.field public static final IMS_TRAFFIC_TYPE_REGISTRATION:I = 0x5

.field public static final IMS_TRAFFIC_TYPE_SMS:I = 0x4

.field public static final IMS_TRAFFIC_TYPE_UT_XCAP:I = 0x6

.field public static final IMS_TRAFFIC_TYPE_VIDEO:I = 0x3

.field public static final IMS_TRAFFIC_TYPE_VOICE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MmTelFeature"

.field public static final PROCESS_CALL_CSFB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROCESS_CALL_IMS:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

.field private mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

.field private mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

.field private mTrafficCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/telephony/ims/feature/ImsTrafficSessionCallback;",
            "Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$macknowledgeSmsReport(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSmsReport(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSmsFormat(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monMemoryAvailable(Landroid/telephony/ims/feature/MmTelFeature;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->onMemoryAvailable(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSmsReady(Landroid/telephony/ims/feature/MmTelFeature;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onSmsReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSms(Landroid/telephony/ims/feature/MmTelFeature;IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/telephony/ims/feature/MmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRetryCount(Landroid/telephony/ims/feature/MmTelFeature;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->setRetryCount(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSmsListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSmsc(Landroid/telephony/ims/feature/MmTelFeature;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setSmsc(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 101
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    .line 126
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 113
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    .line 126
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    .line 114
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 115
    return-void
.end method

.method private acknowledgeSms(III)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 1960
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 1961
    return-void
.end method

.method private acknowledgeSms(III[B)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B

    .line 1965
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III[B)V

    .line 1966
    return-void
.end method

.method private acknowledgeSmsReport(III)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 1970
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 1971
    return-void
.end method

.method private getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 122
    :cond_b
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;
    .registers 3

    .line 1191
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    monitor-exit v0

    return-object v1

    .line 1193
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getSmsFormat()Ljava/lang/String;
    .registers 2

    .line 2000
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onMemoryAvailable(I)V
    .registers 3
    .param p1, "token"    # I

    .line 1955
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailable(I)V

    .line 1956
    return-void
.end method

.method private onSmsReady()V
    .registers 2

    .line 1974
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onReady()V

    .line 1975
    return-void
.end method

.method private sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 1951
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 1952
    return-void
.end method

.method private setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 1178
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 1180
    if-eqz p1, :cond_a

    .line 1181
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onFeatureReady()V

    .line 1183
    :cond_a
    monitor-exit v0

    .line 1184
    return-void

    .line 1183
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private setRetryCount(II)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1979
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setRetryCount(II)V

    .line 1980
    return-void
.end method

.method private setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 1946
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 1947
    return-void
.end method

.method private setSmsc(Ljava/lang/String;)V
    .registers 3
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1983
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setSmsc(Ljava/lang/String;)V

    .line 1984
    return-void
.end method


# virtual methods
.method public changeAudioPath(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    return-void
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 3
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1598
    return-void
.end method

.method public changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .line 1697
    .local p1, "extensionTypes":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    return-void
.end method

.method public clearMediaThreshold(I)V
    .registers 4
    .param p1, "mediaSessionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMediaThreshold is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 4
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1678
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1724
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1704
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 1705
    .local v0, "s":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    if-eqz v0, :cond_12

    .line 1706
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1707
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    return-object v1

    .line 1709
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .registers 2

    .line 88
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 2

    .line 2028
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1817
    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    return-object v0
.end method

.method protected getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1763
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 1764
    .local v0, "ecbmImpl":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v0, :cond_12

    .line 1765
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1766
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1

    .line 1768
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .registers 4

    .line 1789
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1790
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    if-nez v1, :cond_12

    .line 1791
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    .line 1792
    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1794
    :cond_12
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    monitor-exit v0

    return-object v1

    .line 1795
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getInitialCallNetworkType(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2122
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1828
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1776
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 1777
    .local v0, "multiendpointImpl":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v0, :cond_12

    .line 1778
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1779
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1

    .line 1781
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1996
    new-instance v0, Landroid/telephony/ims/stub/ImsSmsImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    return-object v0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2074
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1806
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    return-object v0
.end method

.method protected getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1750
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getUt()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    .line 1751
    .local v0, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v0, :cond_12

    .line 1752
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1753
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    return-object v1

    .line 1755
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public initImsSmsImplAdapter()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    return-void
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2096
    const/4 v0, 0x0

    return v0
.end method

.method public final modifyImsTrafficSession(ILandroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 7
    .param p1, "accessNetworkType"    # I
    .param p2, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    .line 1517
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1518
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_28

    .line 1521
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    .line 1522
    .local v1, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    if-eqz v1, :cond_20

    .line 1527
    :try_start_10
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onModifyImsTrafficSession(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_19

    .line 1530
    nop

    .line 1531
    return-void

    .line 1528
    :catch_19
    move-exception v2

    .line 1529
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1524
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown ImsTrafficSessionCallback instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1519
    .end local v1    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1224
    if-eqz p1, :cond_6

    .line 1227
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 1228
    return-void

    .line 1225
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmTelCapabilities must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyCdpnInfo(Ljava/lang/String;I)V
    .registers 3
    .param p1, "calledPartyNumber"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 1390
    return-void
.end method

.method public notifyEpsFallbackResult(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2104
    return-void
.end method

.method public final notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/ImsCallSessionListener;
    .registers 8
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1300
    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    if-eqz p3, :cond_38

    .line 1304
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1305
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_30

    .line 1309
    :try_start_c
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1310
    nop

    .line 1311
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    .line 1312
    .local v1, "isl":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    if-eqz v1, :cond_27

    .line 1313
    new-instance v2, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 1314
    .local v2, "iCSL":Landroid/telephony/ims/ImsCallSessionListener;
    iget-object v3, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_29

    .line 1315
    return-object v2

    .line 1317
    .end local v2    # "iCSL":Landroid/telephony/ims/ImsCallSessionListener;
    :cond_27
    const/4 v2, 0x0

    return-object v2

    .line 1319
    .end local v1    # "isl":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :catch_29
    move-exception v1

    .line 1320
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1306
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1301
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallSessionImplBase, callId, and Bundle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1269
    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 1273
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1274
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_20

    .line 1278
    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1279
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_19

    .line 1282
    nop

    .line 1283
    return-void

    .line 1280
    :catch_19
    move-exception v1

    .line 1281
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1275
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1270
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallSessionImplBase and Bundle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1355
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1356
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_13

    .line 1360
    const/4 v1, 0x0

    :try_start_7
    invoke-interface {v0, p1, v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 1363
    nop

    .line 1364
    return-void

    .line 1361
    :catch_c
    move-exception v1

    .line 1362
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1357
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final notifyMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 5
    .param p1, "status"    # Landroid/telephony/ims/MediaQualityStatus;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1240
    if-eqz p1, :cond_35

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyMediaQualityStatusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1246
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_2d

    .line 1250
    :try_start_21
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_26

    .line 1253
    nop

    .line 1254
    return-void

    .line 1251
    :catch_26
    move-exception v1

    .line 1252
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1247
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1241
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaQualityStatus must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "reason"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1335
    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 1339
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1340
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_16

    .line 1344
    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    .line 1347
    nop

    .line 1348
    return-void

    .line 1345
    :catch_f
    move-exception v1

    .line 1346
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1341
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1336
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallProfile and ImsReasonInfo must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifySrvccCanceled()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1943
    return-void
.end method

.method public notifySrvccCompleted()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1905
    return-void
.end method

.method public notifySrvccFailed()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1923
    return-void
.end method

.method public notifySrvccStarted(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;>;)V"
        }
    .end annotation

    .line 1890
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/telephony/ims/SrvccCall;>;>;"
    return-void
.end method

.method public final notifyVoiceMessageCountUpdate(I)V
    .registers 5
    .param p1, "count"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1373
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1374
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_12

    .line 1378
    :try_start_6
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onVoiceMessageCountUpdate(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1381
    nop

    .line 1382
    return-void

    .line 1379
    :catch_b
    move-exception v1

    .line 1380
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1375
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onFeatureReady()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2021
    return-void
.end method

.method public onFeatureRemoved()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2011
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1577
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 88
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1209
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-object v0
.end method

.method public queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .registers 4
    .param p1, "mediaSessionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryMediaQualityStatus is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "dtmfEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2067
    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2082
    return-void
.end method

.method public final setCallAudioHandler(I)V
    .registers 5
    .param p1, "imsAudioHandler"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1404
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1405
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_12

    .line 1409
    :try_start_6
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onAudioModeIsVoipChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1412
    nop

    .line 1413
    return-void

    .line 1410
    :catch_b
    move-exception v1

    .line 1411
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1406
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 2132
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 2133
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2135
    :cond_6
    return-void
.end method

.method public setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .registers 5
    .param p1, "mediaSessionType"    # I
    .param p2, "mediaThreshold"    # Landroid/telephony/ims/MediaThreshold;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMediaThreshold is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return-void
.end method

.method public setTerminalBasedCallWaitingStatus(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1872
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x2

    const-string v2, "Not implemented on device."

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public setTtyMode(I)V
    .registers 2
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2116
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1856
    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2060
    return-void
.end method

.method public shouldProcessCall([Ljava/lang/String;)I
    .registers 3
    .param p1, "numbers"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1742
    const/4 v0, 0x0

    return v0
.end method

.method public final startImsTrafficSession(IIILjava/util/concurrent/Executor;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 14
    .param p1, "trafficType"    # I
    .param p2, "accessNetworkType"    # I
    .param p3, "trafficDirection"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    .line 1475
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v6

    .line 1476
    .local v6, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v6, :cond_3a

    .line 1480
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    .line 1481
    .local v0, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    if-nez v0, :cond_1e

    .line 1482
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p5, v2}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper-IA;)V

    move-object v0, v1

    .line 1483
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    goto :goto_1f

    .line 1481
    :cond_1e
    move-object v7, v0

    .line 1486
    .end local v0    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    .local v7, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    :goto_1f
    :try_start_1f
    invoke-virtual {v7, p4}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->update(Ljava/util/concurrent/Executor;)V

    .line 1487
    invoke-virtual {v7}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v1

    .line 1489
    invoke-virtual {v7}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getCallbackBinder()Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    move-result-object v5

    .line 1487
    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_31} :catch_33

    .line 1492
    nop

    .line 1493
    return-void

    .line 1490
    :catch_33
    move-exception v0

    .line 1491
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1477
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startLocalRingBackTone(III)I
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2044
    const/4 v0, 0x0

    return v0
.end method

.method public final stopImsTrafficSession(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    .line 1545
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1546
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_30

    .line 1549
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    .line 1550
    .local v1, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    if-eqz v1, :cond_28

    .line 1555
    :try_start_10
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onStopImsTrafficSession(I)V

    .line 1556
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->reset()V

    .line 1557
    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_21

    .line 1560
    nop

    .line 1561
    return-void

    .line 1558
    :catch_21
    move-exception v2

    .line 1559
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1552
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown ImsTrafficSessionCallback instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1547
    .end local v1    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopLocalRingBackTone()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    const/4 v0, 0x0

    return v0
.end method

.method public triggerAutoConfigurationForApp(I)V
    .registers 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2110
    return-void
.end method

.method public final triggerEpsFallback(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 1422
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1423
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_12

    .line 1427
    :try_start_6
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onTriggerEpsFallback(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1430
    nop

    .line 1431
    return-void

    .line 1428
    :catch_b
    move-exception v1

    .line 1429
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1424
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
