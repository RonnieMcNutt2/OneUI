.class Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;
.super Lcom/samsung/android/wifi/SemTasPolicyListener$Stub;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TasPolicyListenerProxy"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 5071
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemTasPolicyListener$Stub;-><init>()V

    .line 5068
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mLock:Ljava/lang/Object;

    .line 5072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5073
    return-void
.end method

.method static synthetic lambda$onTasPolicyChanged$0(Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;II)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;
    .param p1, "newTasPolicy"    # I
    .param p2, "windowSize"    # I

    .line 5099
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;->onTasPolicyChanged(II)V

    .line 5100
    return-void
.end method


# virtual methods
.method cleanUpProxy()V
    .registers 3

    .line 5081
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5082
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5083
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mListener:Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;

    .line 5084
    monitor-exit v0

    .line 5085
    return-void

    .line 5084
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;

    .line 5075
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5076
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5077
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mListener:Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;

    .line 5078
    monitor-exit v0

    .line 5079
    return-void

    .line 5078
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onTasPolicyChanged(II)V
    .registers 6
    .param p1, "newTasPolicy"    # I
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5090
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5091
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mListener:Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;

    .line 5092
    .local v1, "listener":Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5093
    .local v2, "executor":Ljava/util/concurrent/Executor;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 5094
    if-eqz v1, :cond_19

    if-nez v2, :cond_d

    goto :goto_19

    .line 5097
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5098
    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;II)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5101
    return-void

    .line 5095
    :cond_19
    :goto_19
    return-void

    .line 5093
    .end local v1    # "listener":Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method
