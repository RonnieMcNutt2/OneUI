.class Landroid/hardware/camera2/impl/CameraDeviceImpl$6;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 242
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v2

    if-nez v2, :cond_10

    monitor-exit v1

    return-void

    .line 249
    :cond_10
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    move-object v0, v2

    .line 250
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_20

    .line 251
    if-eqz v0, :cond_1f

    .line 252
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onIdle(Landroid/hardware/camera2/CameraDevice;)V

    .line 254
    :cond_1f
    return-void

    .line 250
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method
