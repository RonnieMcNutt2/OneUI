.class Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
.super Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentInterceptorDelegate"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;


# direct methods
.method public static synthetic $r8$lambda$lhiBEXAKEsRl4U02P5cIYJ69AkM(Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->lambda$onIntentIntercepted$0(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "interceptorCallback"    # Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    .line 424
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;-><init>()V

    .line 425
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 426
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    .line 427
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    return-void
.end method

.method private synthetic lambda$onIntentIntercepted$0(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 433
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;->onIntentIntercepted(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onIntentIntercepted(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 433
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;Landroid/content/Intent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 435
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    nop

    .line 437
    return-void

    .line 435
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    throw v2
.end method
