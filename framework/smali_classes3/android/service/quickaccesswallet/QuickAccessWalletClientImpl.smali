.class public Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
.super Ljava/lang/Object;
.source "QuickAccessWalletClientImpl.java"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;,
        Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT_SERVICE:I = 0x5

.field private static final SERVICE_CONNECTION_TIMEOUT_MS:J = 0xea60L

.field public static final SETTING_KEY:Ljava/lang/String; = "lockscreen_show_wallet"

.field private static final TAG:Ljava/lang/String; = "QAWalletSClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private final mLifecycleExecutor:Ljava/util/concurrent/Executor;

.field private final mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

.field private final mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;


# direct methods
.method public static synthetic $r8$lambda$M0_nlVjgoSEexrEHK0ttX0BsJQA(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$resetServiceConnectionTimeout$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$SJzEnZRpE3jtsf1vx_aQaPLPWBA(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$executeApiCall$6(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_outROQQtKw0OWrZWCzl-FcztRg(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$disconnectInternal$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$pRzMmNKA6ZWyg2qYFZLB3lUktt0(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$disconnect$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$v-Q6sSXK55wlNJCpOydHAOPYVOI(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$onServiceConnected$7(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vlBtwaqr5bpE1ltd5_WOUTP8Fyw(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->connectInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$xqGx39K5PyGhxgPjBT-OfB2yTag(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$connectInternal$2(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xqOEXTzP-xmQx-DrPLeQoQ9E0B8(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$disconnectInternal$5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEventListeners(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgExecutor"    # Ljava/util/concurrent/Executor;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->tryCreate(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    .line 87
    if-nez p2, :cond_22

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_23

    :cond_22
    move-object v0, p2

    :goto_23
    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    .line 88
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    .line 90
    return-void
.end method

.method private checkSecureSetting(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method private checkUserSetupComplete()Z
    .registers 5

    .line 487
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    .line 488
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 487
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v2, v1

    :cond_13
    return v2
.end method

.method private connect()V
    .registers 3

    .line 354
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method private connectInternal()V
    .registers 5

    .line 358
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_c

    .line 359
    const-string v0, "QAWalletSClient"

    const-string v1, "Wallet service unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 362
    :cond_c
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_11

    .line 363
    return-void

    .line 365
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 368
    const/16 v1, 0x21

    .line 369
    .local v1, "flags":I
    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/content/Intent;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 370
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->resetServiceConnectionTimeout()V

    .line 371
    return-void
.end method

.method private createIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 284
    invoke-static {v0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->queryActivityForAction(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 287
    return-object v2

    .line 289
    :cond_18
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v1, "component":Landroid/content/ComponentName;
    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isActivityEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 291
    return-object v2

    .line 293
    :cond_24
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private disconnectInternal(Z)V
    .registers 4
    .param p1, "clearEventListeners"    # Z

    .line 399
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-nez v0, :cond_c

    .line 400
    const-string v0, "QAWalletSClient"

    const-string v1, "already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 403
    :cond_c
    if-eqz p1, :cond_3b

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 404
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 405
    .local v1, "listener":Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;
    invoke-virtual {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 406
    .end local v1    # "listener":Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;
    goto :goto_20

    .line 407
    :cond_30
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void

    .line 410
    :cond_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    .line 411
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 413
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 414
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 415
    return-void
.end method

.method private executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 4
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 418
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    return-void
.end method

.method private executeInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 3
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 422
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    if-eqz v0, :cond_c

    .line 423
    invoke-direct {p0, p1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    goto :goto_14

    .line 425
    :cond_c
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->connect()V

    .line 428
    :goto_14
    return-void
.end method

.method private static isActivityEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 310
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 311
    .local v0, "setting":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 312
    return v1

    .line 314
    :cond_8
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 315
    return v1

    .line 318
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_15

    return v1

    .line 319
    :catch_15
    move-exception v2

    .line 320
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private synthetic lambda$connectInternal$2(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 369
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private synthetic lambda$disconnect$1()V
    .registers 2

    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method private synthetic lambda$disconnectInternal$4()V
    .registers 2

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method private synthetic lambda$disconnectInternal$5()V
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private synthetic lambda$executeApiCall$6(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 2
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 418
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method static synthetic lambda$getWalletCards$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 3
    .param p0, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 124
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;->onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$7(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 463
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->onConnectedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    return-void
.end method

.method private synthetic lambda$resetServiceConnectionTimeout$3()V
    .registers 2

    .line 393
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method private onConnectedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 5
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 374
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-nez v0, :cond_10

    .line 375
    const-string v0, "QAWalletSClient"

    const-string/jumbo v1, "onConnectInternal but connection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 377
    return-void

    .line 379
    :cond_10
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 381
    .local v1, "apiCaller":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-direct {p0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    .line 382
    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 383
    .end local v1    # "apiCaller":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    goto :goto_1d

    .line 384
    :cond_34
    return-void
.end method

.method private performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 6
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    .param p2, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 431
    if-nez p2, :cond_6

    .line 432
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->onApiError()V

    .line 433
    return-void

    .line 436
    :cond_6
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    .line 437
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->resetServiceConnectionTimeout()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 442
    goto :goto_30

    .line 438
    :catch_d
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeInternal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->-$$Nest$fgetmDesc(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QAWalletSClient"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->onApiError()V

    .line 441
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method private static queryActivityForAction(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 301
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_20

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_20

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_1b

    goto :goto_20

    .line 306
    :cond_1b
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v2

    .line 304
    :cond_20
    :goto_20
    const/4 v2, 0x0

    return-object v2
.end method

.method private resetServiceConnectionTimeout()V
    .registers 6

    .line 391
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda8;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 396
    return-void
.end method


# virtual methods
.method public addWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 181
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 182
    return-void
.end method

.method public addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 188
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 189
    return-void

    .line 191
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 198
    .local v0, "callback":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;

    const-string/jumbo v2, "registerListener"

    invoke-direct {v1, p0, v2, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 208
    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 232
    return-void
.end method

.method public createWalletIntent()Landroid/content/Intent;
    .registers 4

    .line 242
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_6
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletActivity()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "walletActivity":Ljava/lang/String;
    const-string v2, "android.service.quickaccesswallet.action.VIEW_WALLET"

    invoke-direct {p0, v1, v0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->createIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public createWalletSettingsIntent()Landroid/content/Intent;
    .registers 4

    .line 272
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_6
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "settingsActivity":Ljava/lang/String;
    const-string v2, "android.service.quickaccesswallet.action.VIEW_WALLET_SETTINGS"

    invoke-direct {p0, v1, v0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->createIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public disconnect()V
    .registers 3

    .line 236
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 327
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getServiceLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 339
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getServiceLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getShortcutLongLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 350
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getShortcutLongLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getShortcutShortLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 345
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getShortcutShortLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getTileIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getTileIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getWalletCards(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 114
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    .line 115
    return-void
.end method

.method public getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p3, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 122
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 123
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void

    .line 128
    :cond_f
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    .line 140
    .local v0, "serviceCallback":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;

    const-string/jumbo v2, "onWalletCardsRequested"

    invoke-direct {v1, p0, v2, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 151
    return-void
.end method

.method public getWalletPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "pendingIntentCallback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    .line 254
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V

    .line 261
    .local v0, "callbacks":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;

    const-string/jumbo v2, "getTargetActivityPendingIntent"

    invoke-direct {v1, p0, v2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 267
    return-void
.end method

.method public isWalletFeatureAvailable()Z
    .registers 4

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 100
    .local v0, "currentUser":I
    if-nez v0, :cond_1b

    .line 101
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->checkUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 100
    :goto_1c
    return v1
.end method

.method public isWalletFeatureAvailableWhenDeviceLocked()Z
    .registers 2

    .line 107
    const-string/jumbo v0, "lockscreen_show_wallet"

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->checkSecureSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWalletServiceAvailable()Z
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public notifyWalletDismissed()V
    .registers 3

    .line 168
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 169
    return-void

    .line 171
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;

    const-string/jumbo v1, "onWalletDismissed"

    invoke-direct {v0, p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 177
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 474
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 475
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 479
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 480
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 462
    invoke-static {p2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v0

    .line 463
    .local v0, "service":Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 469
    return-void
.end method

.method public removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 212
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 213
    return-void

    .line 215
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;

    const-string/jumbo v1, "unregisterListener"

    invoke-direct {v0, p0, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 227
    return-void
.end method

.method public selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    .line 155
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 156
    return-void

    .line 158
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;

    const-string/jumbo v1, "onWalletCardSelected"

    invoke-direct {v0, p0, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 164
    return-void
.end method
