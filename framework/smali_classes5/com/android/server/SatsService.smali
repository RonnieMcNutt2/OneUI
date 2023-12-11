.class public final Lcom/android/server/SatsService;
.super Lcom/samsung/android/service/sats/ISatsService$Stub;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SatsService$EngModesCmdHelper;,
        Lcom/android/server/SatsService$AtCmdHandler;
    }
.end annotation


# static fields
.field private static final ACTION_EM_AT_ACTIVATION_REQUEST:Ljava/lang/String; = "com.sec.atd.em_at_activation_request"

.field private static final ACTION_EM_AT_REQUEST_RECONNECT:Ljava/lang/String; = "com.sec.atd.em_at_request_reconnect"

.field private static final ACTION_FACM_REQUEST_FTCLIENT_START:Ljava/lang/String; = "com.sec.factory.entry.REQUEST_FTCLIENT_START"

.field private static final ACTION_HMT_REQUEST_RECONNECT:Ljava/lang/String; = "com.sec.hmt.request_reconnect"

.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field public static final SATS_EXCEPTION_ERROR:I = -0x7

.field public static final SATS_FLAG_NOT_EXISTS:I = -0x2

.field public static final SATS_NO_ERROR:I = 0x0

.field public static final SATS_RETURN_INVALID_ARGUMENTS:I = -0x5

.field public static final SATS_RETURN_NATIVE_ERROR:I = -0x1

.field public static final SATS_RETURN_PERMISSION_DENIED:I = -0x4

.field public static final SATS_SERVICE_NOT_AVAILABLE:I = -0x6

.field public static final SATS_SERVICE_NOT_SUPPORTED:I = 0x0

.field public static final SATS_SERVICE_SUPPORTED:I = 0x1

.field public static final SATS_STRING_NOT_EXISTS:I = -0x3

.field private static final TAG:Ljava/lang/String; = "SatsService"

.field private static mContext:Landroid/content/Context;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private cmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDrkAtCommander:Lcom/android/server/IWorkOnAt;

.field private mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

.field private mErrorCode:I

.field private mHermesAtCommander:Lcom/android/server/IWorkOnAt;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private serviceInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/IWorkOnAt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcmdList(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmCmdHelper(Lcom/android/server/SatsService;)Lcom/android/server/SatsService$EngModesCmdHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreadUartGoWait(Lcom/android/server/SatsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetserviceInterfaces(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmLockUEvent()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/service/sats/ISatsService$Stub;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    .line 85
    iput-object v1, p0, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    .line 87
    iput-object v1, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    .line 165
    new-instance v1, Lcom/android/server/SatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SatsService$1;-><init>(Lcom/android/server/SatsService;)V

    iput-object v1, p0, Lcom/android/server/SatsService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 205
    new-instance v2, Lcom/android/server/SatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SatsService$2;-><init>(Lcom/android/server/SatsService;)V

    iput-object v2, p0, Lcom/android/server/SatsService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/SatsService;->mErrorCode:I

    .line 95
    invoke-static {p1}, Lcom/android/server/SatsService;->setContext(Landroid/content/Context;)V

    .line 99
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/ReactiveATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/ReactiveATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+REACTIVE"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/AuthUnlockATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/AuthUnlockATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+FRPUNLCK"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/HdcptestATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/HdcptestATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+HDCPTEST"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/SamsungAttestationATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/SamsungAttestationATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+DEVROOTK"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/HermesATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/HermesATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+ISOSECHW"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/QRNGATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/QRNGATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+QRNGTEST"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/UserDeviceATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/UserDeviceATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+URDEVICE"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/AutoBlockATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/AutoBlockATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+ABSTACHK"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v3, Lcom/android/server/SatsService$EngModesCmdHelper;

    invoke-direct {v3, p0}, Lcom/android/server/SatsService$EngModesCmdHelper;-><init>(Lcom/android/server/SatsService;)V

    iput-object v3, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    .line 137
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+ENGMODES"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v3, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/CassATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/CassATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v3, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v4, "AT+MGRTCASS"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v4, p0, v2}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v2, "SATServiceAt"

    invoke-direct {v3, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    .line 145
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v3, p0, v0}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v0, "SATServiceData"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    .line 146
    iget-object v0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    iget-object v0, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    const-string v0, "SWITCH_NAME"

    invoke-virtual {v1, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/android/server/SatsService;->registerForBroadcasts()V
    :try_end_128
    .catchall {:try_start_2f .. :try_end_128} :catchall_129

    .line 156
    goto :goto_12d

    .line 154
    :catchall_129
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12d
    const-string v0, ".engmodejni.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private registerForBroadcasts()V
    .registers 4

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.atd.em_at_request_reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "com.sec.atd.em_at_activation_request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "com.sec.hmt.request_reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "com.sec.factory.entry.REQUEST_FTCLIENT_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SatsService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 232
    sput-object p0, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    .line 233
    return-void
.end method


# virtual methods
.method public native commandForESS(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method public executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "cmd"    # Ljava/lang/String;

    .line 550
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "AT+"

    const-string v3, "\r\n\r\nOK\r\n"

    const-string v4, "="

    const-string v5, "NG (Exception OCCURS)"

    .line 551
    .local v5, "RESPONSE_NG":Ljava/lang/String;
    const-string v6, "NG (Permission Denied)"

    .line 552
    .local v6, "RESPONSE_PERM":Ljava/lang/String;
    const-string v7, "\r\n\r\nOK\r\n"

    .line 553
    .local v7, "RESPONSE_END":Ljava/lang/String;
    const-string v8, "NG (INVALID PARAM)"

    .line 555
    .local v8, "RESPONSE_INVALID_PARAM":Ljava/lang/String;
    const-string v9, "\r\n"

    .line 557
    .local v9, "response":Ljava/lang/String;
    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "SatsService"

    if-nez v10, :cond_27

    .line 558
    const-string v0, "It is only supported on eng binary."

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 564
    .local v10, "callerPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 565
    .local v12, "callerUid":I
    const-string v13, ""

    .line 566
    .local v13, "callerName":Ljava/lang/String;
    sget-object v14, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    .line 568
    .local v14, "am":Landroid/app/ActivityManager;
    invoke-virtual {v14}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_20a
    .catchall {:try_start_27 .. :try_end_3f} :catchall_202

    if-eqz v15, :cond_81

    .line 569
    :try_start_41
    invoke-virtual {v14}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_49
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_55} :catch_78
    .catchall {:try_start_41 .. :try_end_55} :catchall_6f

    move-object/from16 v17, v16

    .line 570
    .local v17, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    .end local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .local v16, "RESPONSE_NG":Ljava/lang/String;
    .local v17, "RESPONSE_PERM":Ljava/lang/String;
    :try_start_5d
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v10, :cond_65

    .line 571
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_ad
    .catchall {:try_start_5d .. :try_end_63} :catchall_a8

    move-object v13, v6

    .line 572
    goto :goto_85

    .line 574
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_65
    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_49

    .line 569
    .end local v16    # "RESPONSE_NG":Ljava/lang/String;
    .end local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .local v5, "RESPONSE_NG":Ljava/lang/String;
    .restart local v6    # "RESPONSE_PERM":Ljava/lang/String;
    :cond_6a
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "RESPONSE_NG":Ljava/lang/String;
    .end local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v16    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v17    # "RESPONSE_PERM":Ljava/lang/String;
    goto :goto_85

    .line 604
    .end local v10    # "callerPid":I
    .end local v12    # "callerUid":I
    .end local v13    # "callerName":Ljava/lang/String;
    .end local v14    # "am":Landroid/app/ActivityManager;
    .end local v16    # "RESPONSE_NG":Ljava/lang/String;
    .end local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v5    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v6    # "RESPONSE_PERM":Ljava/lang/String;
    :catchall_6f
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v5    # "RESPONSE_NG":Ljava/lang/String;
    .end local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v16    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v17    # "RESPONSE_PERM":Ljava/lang/String;
    goto/16 :goto_252

    .line 599
    .end local v16    # "RESPONSE_NG":Ljava/lang/String;
    .end local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v5    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v6    # "RESPONSE_PERM":Ljava/lang/String;
    :catch_78
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v5    # "RESPONSE_NG":Ljava/lang/String;
    .end local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v16    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v17    # "RESPONSE_PERM":Ljava/lang/String;
    goto/16 :goto_211

    .line 568
    .end local v16    # "RESPONSE_NG":Ljava/lang/String;
    .end local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v5    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v10    # "callerPid":I
    .restart local v12    # "callerUid":I
    .restart local v13    # "callerName":Ljava/lang/String;
    .restart local v14    # "am":Landroid/app/ActivityManager;
    :cond_81
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 577
    .end local v5    # "RESPONSE_NG":Ljava/lang/String;
    .end local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v16    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v17    # "RESPONSE_PERM":Ljava/lang/String;
    :goto_85
    :try_start_85
    const-string/jumbo v5, "system"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bc

    const/16 v5, 0x3e8

    if-eq v12, v5, :cond_96

    move-object/from16 v18, v7

    goto/16 :goto_1be

    .line 582
    :cond_96
    iget-object v5, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_98} :catch_1fe
    .catchall {:try_start_85 .. :try_end_98} :catchall_1fa

    if-nez v5, :cond_b2

    .line 583
    :try_start_9a
    new-instance v5, Lcom/android/server/SamsungAttestationATCmd;

    sget-object v6, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/SamsungAttestationATCmd;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a7} :catch_ad
    .catchall {:try_start_9a .. :try_end_a7} :catchall_a8

    goto :goto_b2

    .line 604
    .end local v10    # "callerPid":I
    .end local v12    # "callerUid":I
    .end local v13    # "callerName":Ljava/lang/String;
    .end local v14    # "am":Landroid/app/ActivityManager;
    :catchall_a8
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_252

    .line 599
    :catch_ad
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_211

    .line 585
    .restart local v10    # "callerPid":I
    .restart local v12    # "callerUid":I
    .restart local v13    # "callerName":Ljava/lang/String;
    .restart local v14    # "am":Landroid/app/ActivityManager;
    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v5, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b4} :catch_1fe
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_1fa

    if-nez v5, :cond_c3

    .line 586
    :try_start_b6
    new-instance v5, Lcom/android/server/HermesATCmd;

    sget-object v6, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/HermesATCmd;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c3} :catch_ad
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_a8

    .line 588
    :cond_c3
    :try_start_c3
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v6, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-interface {v6}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_e7} :catch_1fe
    .catchall {:try_start_c3 .. :try_end_e7} :catchall_1fa

    const-string v6, ":"

    const-string v15, "+"

    if-eqz v5, :cond_12a

    .line 589
    :try_start_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    .line 590
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_126} :catch_ad
    .catchall {:try_start_ed .. :try_end_126} :catchall_a8

    move-object/from16 v18, v7

    .end local v9    # "response":Ljava/lang/String;
    .local v0, "response":Ljava/lang/String;
    goto/16 :goto_1b5

    .line 591
    .end local v0    # "response":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    :cond_12a
    :try_start_12a
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12e} :catch_1fe
    .catchall {:try_start_12a .. :try_end_12e} :catchall_1fa

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "RESPONSE_END":Ljava/lang/String;
    .local v18, "RESPONSE_END":Ljava/lang/String;
    :try_start_131
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-interface {v7}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    .line 593
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v9    # "response":Ljava/lang/String;
    .restart local v0    # "response":Ljava/lang/String;
    goto :goto_1b5

    .line 595
    .end local v0    # "response":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    :cond_18c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "NG (INVALID PARAM)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_1b5} :catch_1f8
    .catchall {:try_start_131 .. :try_end_1b5} :catchall_251

    .line 604
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "callerPid":I
    .end local v12    # "callerUid":I
    .end local v13    # "callerName":Ljava/lang/String;
    .end local v14    # "am":Landroid/app/ActivityManager;
    .restart local v0    # "response":Ljava/lang/String;
    :goto_1b5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_243

    .line 577
    .end local v0    # "response":Ljava/lang/String;
    .end local v18    # "RESPONSE_END":Ljava/lang/String;
    .restart local v7    # "RESPONSE_END":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v10    # "callerPid":I
    .restart local v12    # "callerUid":I
    .restart local v13    # "callerName":Ljava/lang/String;
    .restart local v14    # "am":Landroid/app/ActivityManager;
    :cond_1bc
    move-object/from16 v18, v7

    .line 578
    .end local v7    # "RESPONSE_END":Ljava/lang/String;
    .restart local v18    # "RESPONSE_END":Ljava/lang/String;
    :goto_1be
    :try_start_1be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied : Name = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "], UID = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v0, "NG (Permission Denied)"
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1e6} :catch_1f8
    .catchall {:try_start_1be .. :try_end_1e6} :catchall_251

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    .end local v9    # "response":Ljava/lang/String;
    .local v3, "response":Ljava/lang/String;
    return-object v0

    .line 599
    .end local v3    # "response":Ljava/lang/String;
    .end local v10    # "callerPid":I
    .end local v12    # "callerUid":I
    .end local v13    # "callerName":Ljava/lang/String;
    .end local v14    # "am":Landroid/app/ActivityManager;
    .restart local v9    # "response":Ljava/lang/String;
    :catch_1f8
    move-exception v0

    goto :goto_211

    .line 604
    .end local v18    # "RESPONSE_END":Ljava/lang/String;
    .restart local v7    # "RESPONSE_END":Ljava/lang/String;
    :catchall_1fa
    move-exception v0

    move-object/from16 v18, v7

    .end local v7    # "RESPONSE_END":Ljava/lang/String;
    .restart local v18    # "RESPONSE_END":Ljava/lang/String;
    goto :goto_252

    .line 599
    .end local v18    # "RESPONSE_END":Ljava/lang/String;
    .restart local v7    # "RESPONSE_END":Ljava/lang/String;
    :catch_1fe
    move-exception v0

    move-object/from16 v18, v7

    .end local v7    # "RESPONSE_END":Ljava/lang/String;
    .restart local v18    # "RESPONSE_END":Ljava/lang/String;
    goto :goto_211

    .line 604
    .end local v16    # "RESPONSE_NG":Ljava/lang/String;
    .end local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .end local v18    # "RESPONSE_END":Ljava/lang/String;
    .restart local v5    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v7    # "RESPONSE_END":Ljava/lang/String;
    :catchall_202
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v5    # "RESPONSE_NG":Ljava/lang/String;
    .end local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .end local v7    # "RESPONSE_END":Ljava/lang/String;
    .restart local v16    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v18    # "RESPONSE_END":Ljava/lang/String;
    goto :goto_252

    .line 599
    .end local v16    # "RESPONSE_NG":Ljava/lang/String;
    .end local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .end local v18    # "RESPONSE_END":Ljava/lang/String;
    .restart local v5    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v7    # "RESPONSE_END":Ljava/lang/String;
    :catch_20a
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 600
    .end local v5    # "RESPONSE_NG":Ljava/lang/String;
    .end local v6    # "RESPONSE_PERM":Ljava/lang/String;
    .end local v7    # "RESPONSE_END":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "RESPONSE_NG":Ljava/lang/String;
    .restart local v17    # "RESPONSE_PERM":Ljava/lang/String;
    .restart local v18    # "RESPONSE_END":Ljava/lang/String;
    :goto_211
    :try_start_211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to excute Pseudo DRK AT command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (Exception OCCURS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_23d
    .catchall {:try_start_211 .. :try_end_23d} :catchall_251

    move-object v0, v4

    .line 604
    .end local v9    # "response":Ljava/lang/String;
    .local v0, "response":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_243
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    nop

    .line 607
    return-object v0

    .line 604
    .end local v0    # "response":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    :catchall_251
    move-exception v0

    :goto_252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .end local v9    # "response":Ljava/lang/String;
    .restart local v3    # "response":Ljava/lang/String;
    throw v0
.end method
