.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_BRIGHTNESS_UID:I = 0x139d

.field public static final ADVMODEM_UID:I = 0x1399

.field public static final AUDIOSERVER_UID:I = 0x411

.field public static final BCMGR_SERVICE_UID:I = 0x138e

.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final CAMERASERVER_UID:I = 0x417

.field public static final CLAT_UID:I = 0x405

.field public static final CMH_SERVICE_UID:I = 0x138c

.field public static final CREDSTORE_UID:I = 0x434

.field public static final DEVICECARE_UID:I = 0xb57

.field public static final DNS_TETHER_UID:I = 0x41c

.field public static final DRM_UID:I = 0x3fb

.field public static final DSMS_UID:I = 0x13a7

.field public static final EUICC_SERVICE_UID:I = 0xb5e

.field public static final EXTERNAL_STORAGE_GID:I = 0x435

.field public static final EXT_DATA_RW_GID:I = 0x436

.field public static final EXT_OBB_RW_GID:I = 0x437

.field public static final FIRST_APPLICATION_CACHE_GID:I = 0x4e20

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_APP_ZYGOTE_ISOLATED_UID:I = 0x15f90

.field public static final FIRST_DATAUSAGE_UID:I = 0xb54

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SDK_SANDBOX_UID:I = 0x4e20

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final FMM_UID:I = 0xb5c

.field public static final FOTA_ATT_UID:I = 0xb59

.field public static final FOTA_UID:I = 0xb58

.field public static final FOTA_VZW_UID:I = 0xb5a

.field public static final FSVERITY_CERT_UID:I = 0x433

.field public static final IMS_DM_UID:I = 0xb5b

.field public static final INCIDENTD_UID:I = 0x42b

.field public static final INET_GID:I = 0xbbb

.field public static final INTELLIGENCE_SERVICE_UID:I = 0x1392

.field public static final INVALID_PID:I = -0x1

.field public static final INVALID_UID:I = -0x1

.field public static final IPS_GEOFENCE_UID:I = 0x139e

.field public static final ISSUETRACKER_UID:I = 0xb67

.field public static final KEYSTORE_UID:I = 0x3f9

.field public static final KNOXCORE_UID:I = 0x1482

.field public static final LAST_APPLICATION_CACHE_GID:I = 0x752f

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_APP_ZYGOTE_ISOLATED_UID:I = 0x182b7

.field public static final LAST_DATAUSAGE_UID:I = 0xbb7

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SDK_SANDBOX_UID:I = 0x752f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MDXKIT_SERVICE_UID:I = 0x13a1

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NETWORK_DIAGNOSTIC_UID:I = 0x139f

.field public static final NETWORK_STACK_UID:I = 0x431

.field public static final NFC_UID:I = 0x403
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final NOBODY_UID:I = 0x270f

.field public static final NS_FLP_UID:I = 0x1395

.field public static final NUM_UIDS_PER_APP_ZYGOTE:I = 0x64

.field public static final ODA_SERVICE_UID:I = 0xb5d

.field public static final OMC_UID:I = 0xb66

.field public static final OTA_UPDATE_UID:I = 0x425

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field private static final PIDFD_SUPPORTED:I = 0x1

.field private static final PIDFD_UNKNOWN:I = 0x0

.field private static final PIDFD_UNSUPPORTED:I = 0x2

.field public static final PROC_CHAR:I = 0x800

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_NEWLINE_TERM:I = 0xa

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final ROOT_UID:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final SCHED_RR:I = 0x2

.field public static final SCLOUD_SERVICE_UID:I = 0x1391

.field public static final SDCARD_RW_GID:I = 0x3f7

.field public static final SDK_SANDBOX_VIRTUAL_UID:I = 0x442

.field public static final SE_UID:I = 0x42c

.field public static final SHARED_RELRO_UID:I = 0x40d

.field public static final SHARED_USER_GID:I = 0x270d

.field public static final SHARE_LIVE_UID:I = 0x13a2

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SPASS_UID:I = 0x149e

.field public static final SPAY_UID:I = 0x149f

.field public static final STATSD_UID:I = 0x42a

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_ABNORMAL:I = 0x8

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BACKGROUND:I = 0x0

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_FOREGROUND_BOOST:I = 0xa

.field public static final THREAD_GROUP_MODERATE:I = 0x9

.field public static final THREAD_GROUP_RESTRICTED:I = 0x7

.field public static final THREAD_GROUP_RT_APP:I = 0x6

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_GROUP_TOP_APP:I = 0x5

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_TOP_APP_BOOST:I = -0xa

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final THREAD_PRIORITY_VIDEO:I = -0xa

.field public static final UWB_UID:I = 0x43b

.field public static final VIDEOCALL_UID:I = 0xb55

.field public static final VPN_UID:I = 0x3f8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final WEBVIEW_ZYGOTE_UID:I = 0x41d

.field public static final WIFI_UID:I = 0x3f2

.field public static final ZYGOTE_POLICY_FLAG_BATCH_LAUNCH:I = 0x2

.field public static final ZYGOTE_POLICY_FLAG_EMPTY:I = 0x0

.field public static final ZYGOTE_POLICY_FLAG_LATENCY_SENSITIVE:I = 0x1

.field public static final ZYGOTE_POLICY_FLAG_SYSTEM_PROCESS:I = 0x4

.field public static final ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

.field private static sArgV0:Ljava/lang/String;

.field private static sPidFdSupported:I

.field private static sStartElapsedRealtime:J

.field private static sStartRequestedElapsedRealtime:J

.field private static sStartRequestedUptimeMillis:J

.field private static sStartUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 817
    const/4 v0, 0x0

    sput v0, Landroid/os/Process;->sPidFdSupported:I

    .line 857
    new-instance v0, Landroid/os/ZygoteProcess;

    invoke-direct {v0}, Landroid/os/ZygoteProcess;-><init>()V

    sput-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native cleanUpCgroup(II)I
.end method

.method public static final native createProcessGroup(II)I
.end method

.method public static final native enableFreezer(Z)V
.end method

.method public static final native enableSlowdown(Z)V
.end method

.method public static final native freezeCgroupUid(IZ)V
.end method

.method public static final getAdvertisedMem()J
    .registers 5

    .line 1612
    invoke-static {}, Landroid/sysprop/MemoryProperties;->memory_ddr_size()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "0KB"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1613
    .local v0, "formatSize":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/FileUtils;->parseSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 1615
    .local v1, "memSize":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1f

    .line 1616
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v3

    return-wide v3

    .line 1619
    :cond_1f
    return-wide v1
.end method

.method public static final getAppUidForSdkSandboxUid(I)I
    .registers 2
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1146
    add-int/lit16 v0, p0, -0x2710

    return v0
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getExclusiveCores()[I
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .registers 6
    .param p0, "pid"    # I

    .line 1205
    const-string v0, "PPid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "procStatusLabels":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1207
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1209
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final native getRss(I)[J
.end method

.method public static getSharedSystemUidPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "uid"    # I

    .line 1973
    packed-switch p0, :pswitch_data_24

    .line 1995
    :pswitch_3
    const-string v0, ""

    return-object v0

    .line 1993
    :pswitch_6
    const-string v0, "com.salab.issuetracker"

    return-object v0

    .line 1991
    :pswitch_9
    const-string v0, "com.samsung.android.app.omcagent"

    return-object v0

    .line 1989
    :pswitch_c
    const-string v0, "com.samsung.euicc"

    return-object v0

    .line 1987
    :pswitch_f
    const-string v0, "com.samsung.oda.service"

    return-object v0

    .line 1985
    :pswitch_12
    const-string v0, "com.samsung.android.fmm"

    return-object v0

    .line 1983
    :pswitch_15
    const-string v0, "com.ims.dm"

    return-object v0

    .line 1981
    :pswitch_18
    const-string v0, "com.samsung.sdm"

    return-object v0

    .line 1979
    :pswitch_1b
    const-string v0, "com.ws.dm"

    return-object v0

    .line 1977
    :pswitch_1e
    const-string v0, "com.wssyncmldm"

    return-object v0

    .line 1975
    :pswitch_21
    const-string v0, "com.samsung.android.lool"

    return-object v0

    :pswitch_data_24
    .packed-switch 0xb57
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getStartElapsedRealtime()J
    .registers 2

    .line 981
    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    return-wide v0
.end method

.method public static getStartRequestedElapsedRealtime()J
    .registers 2

    .line 1003
    sget-wide v0, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    return-wide v0
.end method

.method public static getStartRequestedUptimeMillis()J
    .registers 2

    .line 1016
    sget-wide v0, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    return-wide v0
.end method

.method public static getStartUptimeMillis()J
    .registers 2

    .line 990
    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    return-wide v0
.end method

.method public static final getThreadGroupLeader(I)I
    .registers 6
    .param p0, "tid"    # I

    .line 1220
    const-string v0, "Tgid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "procStatusLabels":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1222
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1224
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .registers 6
    .param p0, "pid"    # I

    .line 1190
    const-string v0, "Uid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "procStatusLabels":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1192
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1194
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final is64Bit()Z
    .registers 1

    .line 1032
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static isApplicationUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 1095
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method public static isCoreUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 1085
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    return v0
.end method

.method public static final native isFrozenState(I)Z
.end method

.method public static final isIsolated()Z
    .registers 1

    .line 1102
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolated(I)Z
    .registers 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1113
    invoke-static {p0}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolatedUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 1120
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 1121
    const v0, 0x182b8

    if-lt p0, v0, :cond_e

    const v0, 0x1869f

    if-le p0, v0, :cond_18

    :cond_e
    const v0, 0x15f90

    if-lt p0, v0, :cond_1a

    const v0, 0x182b7

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static final isSdkSandbox()Z
    .registers 1

    .line 1165
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    return v0
.end method

.method public static final isSdkSandboxUid(I)Z
    .registers 2
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1133
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 1134
    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_e

    const/16 v0, 0x752f

    if-gt p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final isThreadInProcess(II)Z
    .registers 6
    .param p0, "tid"    # I
    .param p1, "pid"    # I

    .line 1816
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1818
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/task/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_3a
    .catchall {:try_start_5 .. :try_end_28} :catchall_35

    if-eqz v2, :cond_30

    .line 1819
    nop

    .line 1826
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1819
    const/4 v1, 0x1

    return v1

    .line 1821
    :cond_30
    nop

    .line 1826
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1821
    return v1

    .line 1826
    :catchall_35
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1827
    throw v1

    .line 1823
    :catch_3a
    move-exception v2

    .line 1824
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 1826
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1824
    return v1
.end method

.method public static final killProcess(I)V
    .registers 2
    .param p0, "pid"    # I

    .line 1559
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1560
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .registers 2
    .param p0, "pid"    # I

    .line 1583
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1584
    return-void
.end method

.method public static final native killProcessWithMrelease(I)Z
.end method

.method public static final myPid()I
    .registers 1

    .line 1040
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final myPpid()I
    .registers 1

    .line 1049
    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static myProcessName()Ljava/lang/String;
    .registers 1

    .line 1544
    sget-object v0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    return-object v0
.end method

.method public static final myTid()I
    .registers 1

    .line 1057
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final myUid()I
    .registers 1

    .line 1067
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static myUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 1077
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static native nativePidFdOpen(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static openPidFd(II)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "pid"    # I
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1935
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1936
    const/4 v0, 0x0

    return-object v0

    .line 1938
    :cond_8
    if-nez p1, :cond_21

    .line 1942
    :try_start_a
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 1943
    .local v0, "pidfd":Ljava/io/FileDescriptor;
    invoke-static {p0, p1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_16} :catch_17

    .line 1944
    return-object v0

    .line 1945
    .end local v0    # "pidfd":Ljava/io/FileDescriptor;
    :catch_17
    move-exception v0

    .line 1946
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 1947
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1948
    throw v1

    .line 1939
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native removeAllProcessGroups()V
.end method

.method public static final native requestProcessProfile(II[Ljava/lang/String;)Z
.end method

.method public static final native requestTaskProfile(I[Ljava/lang/String;Z)Z
.end method

.method public static final semGetPids(Ljava/lang/String;[I)[I
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "lastArray"    # [I

    .line 1644
    invoke-static {p0, p1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native sendSignalToProcessGroup(III)I
.end method

.method public static setArgV0(Ljava/lang/String;)V
    .registers 1
    .param p0, "text"    # Ljava/lang/String;

    .line 1529
    sput-object p0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    .line 1530
    invoke-static {p0}, Landroid/os/Process;->setArgV0Native(Ljava/lang/String;)V

    .line 1531
    return-void
.end method

.method private static native setArgV0Native(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setProcessFrozen(IIZ)V
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setProcessMARsFrozen(IIZ)Z
.end method

.method public static final native setProcessSlowdown(IIZ)V
.end method

.method public static final setStartTimes(JJJJ)V
    .registers 8
    .param p0, "elapsedRealtime"    # J
    .param p2, "uptimeMillis"    # J
    .param p4, "startRequestedElapsedRealtime"    # J
    .param p6, "startRequestedUptime"    # J

    .line 1022
    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    .line 1023
    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    .line 1024
    sput-wide p4, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    .line 1025
    sput-wide p6, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    .line 1026
    return-void
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadGroupAndCpuset(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 45
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "runtimeFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "packageName"    # Ljava/lang/String;
    .param p14, "zygotePolicyFlags"    # I
    .param p15, "isTopApp"    # Z
    .param p16, "disabledCompatChanges"    # [J
    .param p19, "bindMountAppsData"    # Z
    .param p20, "bindMountAppStorageDirs"    # Z
    .param p21, "zygoteArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .local p17, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p18, "whitelistedDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move-object/from16 v22, p21

    .line 936
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    invoke-virtual/range {v0 .. v22}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 39
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "runtimeFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "packageName"    # Ljava/lang/String;
    .param p14, "disabledCompatChanges"    # [J
    .param p15, "zygoteArgs"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v17, p14

    move-object/from16 v22, p15

    .line 961
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    move-result-object v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v0 .. v22}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static supportsPidFd()Z
    .registers 6

    .line 1905
    sget v0, Landroid/os/Process;->sPidFdSupported:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_44

    .line 1906
    const/4 v0, -0x1

    .line 1908
    .local v0, "fd":I
    :try_start_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3, v1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v3

    move v0, v3

    .line 1909
    sput v2, Landroid/os/Process;->sPidFdSupported:I
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_12} :catch_22
    .catchall {:try_start_7 .. :try_end_12} :catchall_20

    .line 1914
    if-ltz v0, :cond_44

    .line 1915
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 1916
    .local v3, "f":Ljava/io/FileDescriptor;
    :goto_19
    invoke-virtual {v3, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1917
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1918
    .end local v3    # "f":Ljava/io/FileDescriptor;
    goto :goto_44

    .line 1914
    :catchall_20
    move-exception v1

    goto :goto_36

    .line 1910
    :catch_22
    move-exception v3

    .line 1911
    .local v3, "e":Landroid/system/ErrnoException;
    :try_start_23
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v4, v5, :cond_2b

    .line 1912
    move v4, v2

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x2

    :goto_2c
    sput v4, Landroid/os/Process;->sPidFdSupported:I
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_20

    .line 1914
    .end local v3    # "e":Landroid/system/ErrnoException;
    if-ltz v0, :cond_44

    .line 1915
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_19

    .line 1914
    :goto_36
    if-ltz v0, :cond_43

    .line 1915
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 1916
    .local v2, "f":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1917
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1919
    .end local v2    # "f":Ljava/io/FileDescriptor;
    :cond_43
    throw v1

    .line 1921
    .end local v0    # "fd":I
    :cond_44
    :goto_44
    sget v0, Landroid/os/Process;->sPidFdSupported:I

    if-ne v0, v2, :cond_49

    move v1, v2

    :cond_49
    return v1
.end method

.method public static final supportsProcesses()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1501
    const/4 v0, 0x1

    return v0
.end method

.method public static final toSdkSandboxUid(I)I
    .registers 2
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1158
    add-int/lit16 v0, p0, 0x2710

    return v0
.end method

.method public static waitForProcessDeath(II)V
    .registers 12
    .param p0, "pid"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1840
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    .line 1841
    .local v0, "fallback":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6d

    .line 1842
    const/4 v3, 0x0

    .line 1844
    .local v3, "pidfd":Ljava/io/FileDescriptor;
    :try_start_9
    invoke-static {p0, v2}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v4

    .line 1845
    .local v4, "fd":I
    if-ltz v4, :cond_19

    .line 1846
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    move-object v3, v5

    .line 1847
    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    goto :goto_1a

    .line 1849
    :cond_19
    const/4 v0, 0x1

    .line 1851
    :goto_1a
    if-eqz v3, :cond_4e

    .line 1852
    new-array v5, v1, [Landroid/system/StructPollfd;

    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    aput-object v6, v5, v2

    .line 1855
    .local v5, "fds":[Landroid/system/StructPollfd;
    aget-object v6, v5, v2

    iput-object v3, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 1856
    aget-object v6, v5, v2

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    .line 1857
    aget-object v6, v5, v2

    iput-short v2, v6, Landroid/system/StructPollfd;->revents:S

    .line 1858
    aget-object v6, v5, v2

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 1859
    invoke-static {v5, p1}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v6
    :try_end_3d
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_3d} :catch_56
    .catchall {:try_start_9 .. :try_end_3d} :catchall_54

    .line 1860
    .local v6, "res":I
    if-lez v6, :cond_45

    .line 1874
    if-eqz v3, :cond_44

    .line 1875
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1861
    :cond_44
    return-void

    .line 1862
    :cond_45
    if-eqz v6, :cond_48

    goto :goto_4e

    .line 1863
    :cond_48
    :try_start_48
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v7}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "fallback":Z
    .end local v3    # "pidfd":Ljava/io/FileDescriptor;
    .end local p0    # "pid":I
    .end local p1    # "timeout":I
    throw v7
    :try_end_4e
    .catch Landroid/system/ErrnoException; {:try_start_48 .. :try_end_4e} :catch_56
    .catchall {:try_start_48 .. :try_end_4e} :catchall_54

    .line 1874
    .end local v4    # "fd":I
    .end local v5    # "fds":[Landroid/system/StructPollfd;
    .end local v6    # "res":I
    .restart local v0    # "fallback":Z
    .restart local v3    # "pidfd":Ljava/io/FileDescriptor;
    .restart local p0    # "pid":I
    .restart local p1    # "timeout":I
    :cond_4e
    :goto_4e
    if-eqz v3, :cond_6d

    .line 1875
    :goto_50
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_6d

    .line 1874
    :catchall_54
    move-exception v1

    goto :goto_67

    .line 1868
    :catch_56
    move-exception v4

    .line 1869
    .local v4, "e":Landroid/system/ErrnoException;
    :try_start_57
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EINTR:I

    if-eq v5, v6, :cond_61

    .line 1872
    const/4 v0, 0x1

    .line 1874
    .end local v4    # "e":Landroid/system/ErrnoException;
    if-eqz v3, :cond_6d

    .line 1875
    goto :goto_50

    .line 1870
    .restart local v4    # "e":Landroid/system/ErrnoException;
    :cond_61
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .end local v0    # "fallback":Z
    .end local v3    # "pidfd":Ljava/io/FileDescriptor;
    .end local p0    # "pid":I
    .end local p1    # "timeout":I
    throw v1
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_54

    .line 1874
    .end local v4    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "fallback":Z
    .restart local v3    # "pidfd":Ljava/io/FileDescriptor;
    .restart local p0    # "pid":I
    .restart local p1    # "timeout":I
    :goto_67
    if-eqz v3, :cond_6c

    .line 1875
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1877
    :cond_6c
    throw v1

    .line 1879
    .end local v3    # "pidfd":Ljava/io/FileDescriptor;
    :cond_6d
    :goto_6d
    if-eqz v0, :cond_95

    .line 1880
    if-gez p1, :cond_72

    goto :goto_73

    :cond_72
    move v1, v2

    .line 1881
    .local v1, "infinity":Z
    :goto_73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1882
    .local v3, "now":J
    int-to-long v5, p1

    add-long/2addr v5, v3

    .line 1883
    .local v5, "end":J
    :goto_79
    if-nez v1, :cond_7f

    cmp-long v7, v3, v5

    if-gez v7, :cond_95

    .line 1885
    :cond_7f
    :try_start_7f
    invoke-static {p0, v2}, Landroid/system/Os;->kill(II)V
    :try_end_82
    .catch Landroid/system/ErrnoException; {:try_start_7f .. :try_end_82} :catch_83

    .line 1890
    goto :goto_8b

    .line 1886
    :catch_83
    move-exception v7

    .line 1887
    .local v7, "e":Landroid/system/ErrnoException;
    iget v8, v7, Landroid/system/ErrnoException;->errno:I

    sget v9, Landroid/system/OsConstants;->ESRCH:I

    if-ne v8, v9, :cond_8b

    .line 1888
    return-void

    .line 1891
    .end local v7    # "e":Landroid/system/ErrnoException;
    :cond_8b
    :goto_8b
    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 1892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_79

    .line 1895
    .end local v1    # "infinity":Z
    .end local v3    # "now":J
    .end local v5    # "end":J
    :cond_95
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
.end method
