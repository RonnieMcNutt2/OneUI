.class final Landroid/media/AudioManager$ModeDispatcherStub;
.super Landroid/media/IAudioModeDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ModeDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 3388
    iput-object p1, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioModeDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$dispatchAudioModeChanged$0(ILandroid/media/AudioManager$OnModeChangedListener;)V
    .registers 2
    .param p0, "mode"    # I
    .param p1, "listener"    # Landroid/media/AudioManager$OnModeChangedListener;

    .line 3406
    invoke-interface {p1, p0}, Landroid/media/AudioManager$OnModeChangedListener;->onModeChanged(I)V

    return-void
.end method


# virtual methods
.method public dispatchAudioModeChanged(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3406
    iget-object v0, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmModeChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioManager$ModeDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/media/AudioManager$ModeDispatcherStub$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 3407
    return-void
.end method

.method public register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 3394
    if-eqz p1, :cond_a

    .line 3395
    :try_start_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    goto :goto_11

    .line 3397
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 3401
    :goto_11
    goto :goto_16

    .line 3399
    :catch_12
    move-exception v0

    .line 3400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3402
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
