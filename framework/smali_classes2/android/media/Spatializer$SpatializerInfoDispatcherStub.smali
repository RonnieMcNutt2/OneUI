.class final Landroid/media/Spatializer$SpatializerInfoDispatcherStub;
.super Landroid/media/ISpatializerCallback$Stub;
.source "Spatializer.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerInfoDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Spatializer;


# direct methods
.method public static synthetic $r8$lambda$E7sg6WPFRqLkRHrrC5faHjAp76s(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->lambda$dispatchSpatializerAvailableChanged$1(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TpvSIxuoVNqB3dQPheR4BM5GSWg(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->lambda$dispatchSpatializerEnabledChanged$0(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/media/Spatializer;)V
    .registers 2

    .line 607
    iput-object p1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerInfoDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method

.method private synthetic lambda$dispatchSpatializerAvailableChanged$1(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4
    .param p1, "available"    # Z
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 634
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method

.method private synthetic lambda$dispatchSpatializerEnabledChanged$0(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 626
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method


# virtual methods
.method public dispatchSpatializerAvailableChanged(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 633
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 636
    return-void
.end method

.method public dispatchSpatializerEnabledChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 625
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 628
    return-void
.end method

.method public register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 612
    if-eqz p1, :cond_f

    .line 613
    :try_start_2
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    goto :goto_1b

    .line 615
    :cond_f
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 619
    :goto_1b
    goto :goto_20

    .line 617
    :catch_1c
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 620
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method
