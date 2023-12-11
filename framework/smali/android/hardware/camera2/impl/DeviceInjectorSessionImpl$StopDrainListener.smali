.class Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;
.super Ljava/lang/Object;
.source "DeviceInjectorSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;


# direct methods
.method public static synthetic $r8$lambda$bO6fHHgAwxrfjixkF6oMdDAICiY(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->lambda$onDrained$0()V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .registers 2

    .line 93
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    return-void
.end method

.method private synthetic lambda$onDrained$0()V
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmStatusCallback(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onClose()V

    return-void
.end method


# virtual methods
.method public onDrained()V
    .registers 4

    .line 97
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmInterfaceLock(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_7
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fputmInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V

    .line 99
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method
