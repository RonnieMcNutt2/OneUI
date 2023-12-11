.class final Landroid/media/AudioManager$StreamAliasingDispatcherStub;
.super Landroid/media/IStreamAliasingDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StreamAliasingDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 9639
    iput-object p1, p0, Landroid/media/AudioManager$StreamAliasingDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IStreamAliasingDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$dispatchStreamAliasingChanged$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "listener"    # Ljava/lang/Runnable;

    .line 9653
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dispatchStreamAliasingChanged()V
    .registers 3

    .line 9653
    iget-object v0, p0, Landroid/media/AudioManager$StreamAliasingDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmStreamAliasingListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioManager$StreamAliasingDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/AudioManager$StreamAliasingDispatcherStub$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 9654
    return-void
.end method

.method public register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 9645
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->registerStreamAliasingDispatcher(Landroid/media/IStreamAliasingDispatcher;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 9648
    goto :goto_c

    .line 9646
    :catch_8
    move-exception v0

    .line 9647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9649
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method
