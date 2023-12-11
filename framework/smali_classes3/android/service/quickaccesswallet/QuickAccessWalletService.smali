.class public abstract Landroid/service/quickaccesswallet/QuickAccessWalletService;
.super Landroid/app/Service;
.source "QuickAccessWalletService.java"


# static fields
.field public static final ACTION_VIEW_WALLET:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET"

.field public static final ACTION_VIEW_WALLET_SETTINGS:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET_SETTINGS"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.quickaccesswallet.QuickAccessWalletService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.quickaccesswallet"

.field private static final TAG:Ljava/lang/String; = "QAWalletService"

.field public static final TILE_SERVICE_META_DATA:Ljava/lang/String; = "android.quickaccesswallet.tile"


# instance fields
.field private mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

.field private mEventListenerId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# direct methods
.method public static synthetic $r8$lambda$YZCNEw1Sf2q_EFPefsNLOf-GvWQ(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->lambda$sendWalletServiceEvent$0(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 158
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    invoke-direct {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-void
.end method

.method private synthetic lambda$sendWalletServiceEvent$0(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 2
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 336
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method

.method private onTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5
    .param p1, "callbacks"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 272
    :try_start_0
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->getTargetActivityPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 275
    goto :goto_10

    .line 273
    :catch_8
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QAWalletService"

    const-string v2, "Error returning wallet cards"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 265
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V

    .line 267
    return-void
.end method

.method private registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 369
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 370
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 371
    return-void
.end method

.method private sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 5
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 353
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    const-string v1, "QAWalletService"

    if-nez v0, :cond_c

    .line 354
    const-string v0, "No dismiss listener registered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 358
    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 363
    goto :goto_1c

    .line 359
    :catch_10
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "onWalletServiceEvent error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 362
    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 364
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method private unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    .line 375
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 377
    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    goto :goto_1b

    .line 379
    :cond_14
    const-string v0, "QAWalletService"

    const-string v1, "dismiss listener missing or replaced"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_1b
    return-void
.end method


# virtual methods
.method public getTargetActivityPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 281
    nop

    .line 288
    const-string v0, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 289
    const-string v0, "QAWalletService"

    const-string v1, "Wrong action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_16
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
.end method

.method public abstract onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V
.end method

.method public abstract onWalletDismissed()V
.end method

.method public final sendWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 4
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 336
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method
