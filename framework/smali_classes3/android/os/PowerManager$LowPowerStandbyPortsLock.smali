.class public final Landroid/os/PowerManager$LowPowerStandbyPortsLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowPowerStandbyPortsLock"
.end annotation


# instance fields
.field private mHeld:Z

.field private final mPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)V"
        }
    .end annotation

    .line 4066
    .local p2, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$LowPowerStandbyPortDescription;>;"
    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4067
    iput-object p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    .line 4068
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 4069
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 5

    .line 4074
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4076
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    .line 4077
    invoke-static {v3}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 4076
    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4078
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_1a
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    .line 4081
    nop

    .line 4082
    :try_start_16
    monitor-exit v0

    .line 4083
    return-void

    .line 4082
    :catchall_18
    move-exception v1

    goto :goto_20

    .line 4079
    :catch_1a
    move-exception v1

    .line 4080
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    throw v2

    .line 4082
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_18

    throw v1
.end method

.method protected finalize()V
    .registers 4

    .line 4105
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4106
    :try_start_3
    iget-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z

    if-eqz v1, :cond_11

    .line 4107
    const-string v1, "PowerManager"

    const-string v2, "LowPowerStandbyPorts finalized while still held"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->release()V

    .line 4110
    :cond_11
    monitor-exit v0

    .line 4111
    return-void

    .line 4110
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public release()V
    .registers 4

    .line 4093
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4095
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V

    .line 4096
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_14
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 4099
    nop

    .line 4100
    :try_start_10
    monitor-exit v0

    .line 4101
    return-void

    .line 4100
    :catchall_12
    move-exception v1

    goto :goto_1a

    .line 4097
    :catch_14
    move-exception v1

    .line 4098
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    throw v2

    .line 4100
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_12

    throw v1
.end method
