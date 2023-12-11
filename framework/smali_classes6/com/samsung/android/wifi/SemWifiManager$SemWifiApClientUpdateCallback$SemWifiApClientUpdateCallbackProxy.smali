.class Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
.super Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback$Stub;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemWifiApClientUpdateCallbackProxy"
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1193
    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback$Stub;-><init>()V

    .line 1187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mLock:Ljava/lang/Object;

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1195
    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    .line 1196
    return-void
.end method

.method static synthetic lambda$onClientUpdated$0(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .registers 2
    .param p0, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
    .param p1, "clientDetails"    # Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 1231
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;->onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    return-void
.end method


# virtual methods
.method cleanUpProxy()V
    .registers 3

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1208
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1209
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    .line 1210
    monitor-exit v0

    .line 1211
    return-void

    .line 1210
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1201
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1202
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    .line 1203
    monitor-exit v0

    .line 1204
    return-void

    .line 1203
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .registers 5
    .param p1, "clientDetails"    # Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    const-string v0, "SemWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_1f
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1225
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    .line 1226
    .local v2, "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_36

    .line 1227
    if-eqz v2, :cond_35

    if-nez v1, :cond_29

    goto :goto_35

    .line 1230
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1231
    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1232
    return-void

    .line 1228
    :cond_35
    :goto_35
    return-void

    .line 1226
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method
