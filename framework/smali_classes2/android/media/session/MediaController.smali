.class public final Landroid/media/session/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaController$CallbackStub;,
        Landroid/media/session/MediaController$TransportControls;,
        Landroid/media/session/MediaController$PlaybackInfo;,
        Landroid/media/session/MediaController$Callback;,
        Landroid/media/session/MediaController$MessageHandler;
    }
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x8

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_VOLUME:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/session/MediaController$MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCbRegistered:Z

.field private final mCbStub:Landroid/media/session/MediaController$CallbackStub;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private final mSessionBinder:Landroid/media/session/ISessionController;

.field private mSessionInfo:Landroid/os/Bundle;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/media/session/MediaSession$Token;

.field private final mTransportControls:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/media/session/MediaSession$Token;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/media/session/MediaController$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaController$CallbackStub;-><init>(Landroid/media/session/MediaController;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    .line 103
    if-eqz p1, :cond_48

    .line 106
    if-eqz p2, :cond_40

    .line 109
    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 112
    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    .line 113
    new-instance v0, Landroid/media/session/MediaController$TransportControls;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController$TransportControls-IA;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    .line 114
    iput-object p2, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    .line 115
    iput-object p1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    .line 116
    return-void

    .line 110
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token.getBinder() shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .registers 9
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 480
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;

    move-result-object v0

    const-string v1, "MediaController"

    if-eqz v0, :cond_e

    .line 481
    const-string v0, "Callback is already added, ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void

    .line 484
    :cond_e
    new-instance v0, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/media/session/MediaController$MessageHandler;-><init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V

    .line 485
    .local v0, "holder":Landroid/media/session/MediaController$MessageHandler;
    iget-object v2, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fputmRegistered(Landroid/media/session/MediaController$MessageHandler;Z)V

    .line 488
    iget-boolean v3, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-nez v3, :cond_3a

    .line 490
    :try_start_24
    iget-object v3, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v4, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v3, v4, v5}, Landroid/media/session/ISessionController;->registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    .line 491
    iput-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_34

    .line 494
    goto :goto_3a

    .line 492
    :catch_34
    move-exception v2

    .line 493
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in registerCallback"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;
    .registers 5
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .line 531
    if-eqz p1, :cond_20

    .line 534
    iget-object v0, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1e

    .line 535
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController$MessageHandler;

    .line 536
    .local v1, "handler":Landroid/media/session/MediaController$MessageHandler;
    invoke-static {v1}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fgetmCallback(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v2

    if-ne p1, v2, :cond_1b

    .line 537
    return-object v1

    .line 534
    .end local v1    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 540
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return-object v0

    .line 532
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 544
    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1b

    .line 546
    iget-object v2, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/session/MediaController$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 545
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 548
    .end local v1    # "i":I
    :cond_1b
    monitor-exit v0

    .line 549
    return-void

    .line 548
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z
    .registers 7
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "success":Z
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    const/4 v2, 0x0

    if-ltz v1, :cond_26

    .line 501
    iget-object v3, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController$MessageHandler;

    .line 502
    .local v3, "handler":Landroid/media/session/MediaController$MessageHandler;
    invoke-static {v3}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fgetmCallback(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v4

    if-ne p1, v4, :cond_23

    .line 503
    iget-object v4, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 504
    const/4 v0, 0x1

    .line 505
    invoke-static {v3, v2}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fputmRegistered(Landroid/media/session/MediaController$MessageHandler;Z)V

    .line 500
    .end local v3    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 508
    .end local v1    # "i":I
    :cond_26
    iget-boolean v1, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_44

    .line 510
    :try_start_32
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v1, v3}, Landroid/media/session/ISessionController;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 513
    goto :goto_42

    .line 511
    :catch_3a
    move-exception v1

    .line 512
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "MediaController"

    const-string v4, "Dead object in removeCallbackLocked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_42
    iput-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    .line 516
    :cond_44
    return v0
.end method


# virtual methods
.method public adjustVolume(II)V
    .registers 6
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 338
    goto :goto_1a

    .line 336
    :catch_12
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling adjustVolumeBy."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public controlsSameSession(Landroid/media/session/MediaController;)Z
    .registers 4
    .param p1, "other"    # Landroid/media/session/MediaController;

    .line 475
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 476
    :cond_4
    iget-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    iget-object v1, p1, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 136
    if-eqz p1, :cond_1d

    .line 139
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 140
    return v1

    .line 143
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/media/session/ISessionController;->sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1b

    return v0

    .line 144
    :catch_1b
    move-exception v0

    .line 147
    return v1

    .line 137
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyEvent may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 4

    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 212
    :catch_7
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getExtras"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags()J
    .registers 4

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getFlags()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 249
    :catch_7
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHandlerForCallback(Landroid/media/session/MediaController$Callback;)Landroid/os/Handler;
    .registers 4
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .line 525
    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 527
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .registers 4

    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 172
    :catch_7
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    .line 413
    iget-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 415
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 418
    goto :goto_15

    .line 416
    :catch_d
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Dead object in getPackageName."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 4

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 263
    :catch_7
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getAudioInfo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 4

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 158
    :catch_7
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v1, 0x0

    return-object v1
.end method

.method public getQueue()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 187
    .local v1, "list":Landroid/content/pm/ParceledListSlice;
    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_f

    :goto_e
    return-object v0

    .line 188
    .end local v1    # "list":Landroid/content/pm/ParceledListSlice;
    :catch_f
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaController"

    const-string v3, "Error calling getQueue."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 4

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 200
    :catch_7
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getQueueTitle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatingType()I
    .registers 4

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getRatingType()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 235
    :catch_7
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v1, 0x0

    return v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .registers 4

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 278
    :catch_7
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .registers 4

    .line 430
    const-string v0, "MediaController"

    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_e

    .line 431
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 436
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    .line 439
    goto :goto_1d

    .line 437
    :catch_17
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Dead object in getSessionInfo."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    if-nez v1, :cond_2b

    .line 442
    const-string v1, "sessionInfo is not set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    goto :goto_3a

    .line 444
    :cond_2b
    invoke-static {v1}, Landroid/media/session/MediaSession;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 445
    const-string v1, "sessionInfo contains custom parcelable. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    .line 448
    :cond_3a
    :goto_3a
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 4

    .line 458
    iget-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 460
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 463
    goto :goto_15

    .line 461
    :catch_d
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Dead object in getTag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportControls()Landroid/media/session/MediaController$TransportControls;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-object v0
.end method

.method public registerCallback(Landroid/media/session/MediaController$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 349
    return-void
.end method

.method public registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 360
    if-eqz p1, :cond_17

    .line 363
    if-nez p2, :cond_b

    .line 364
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    goto :goto_c

    .line 363
    :cond_b
    move-object v0, p2

    .line 366
    .end local p2    # "handler":Landroid/os/Handler;
    .local v0, "handler":Landroid/os/Handler;
    :goto_c
    iget-object v1, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_f
    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaController;->addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 368
    :catchall_14
    move-exception p2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw p2

    .line 361
    .end local v0    # "handler":Landroid/os/Handler;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 401
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionController;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 404
    goto :goto_1a

    .line 402
    :catch_12
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Dead object in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void

    .line 398
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolumeTo(II)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 313
    goto :goto_1a

    .line 311
    :catch_12
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;

    .line 378
    if-eqz p1, :cond_d

    .line 381
    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_5
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z

    .line 383
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1

    .line 379
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
