.class final Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;
.super Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;
.source "SharedConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedConnectivityCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$1P1F6H-n-AvloD3GSQ6hIlT7TLE(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onHotspotNetworksUpdated$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FfGupJi8jxKTiNm4wJ4Y4q7L8hY(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onKnownNetworksUpdated$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OUi9i900pz8tkI8v3YQbKyv7C6w(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onSharedConnectivitySettingsChanged$2(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TksDgIMobH18535iZWEjwc90ZzE(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onHotspotNetworkConnectionStatusChanged$3(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ljOCQkdNBi0dpavXRUxA9kFWXfQ(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onKnownNetworkConnectionStatusChanged$4(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    .line 79
    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 81
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    .line 82
    return-void
.end method

.method private synthetic lambda$onHotspotNetworkConnectionStatusChanged$3(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 3
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 126
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    return-void
.end method

.method private synthetic lambda$onHotspotNetworksUpdated$0(Ljava/util/List;)V
    .registers 3
    .param p1, "networks"    # Ljava/util/List;

    .line 88
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onHotspotNetworksUpdated(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onKnownNetworkConnectionStatusChanged$4(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 3
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 140
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    return-void
.end method

.method private synthetic lambda$onKnownNetworksUpdated$1(Ljava/util/List;)V
    .registers 3
    .param p1, "networks"    # Ljava/util/List;

    .line 100
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onKnownNetworksUpdated(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onSharedConnectivitySettingsChanged$2(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 3
    .param p1, "state"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 113
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    return-void
.end method


# virtual methods
.method public onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 6
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 122
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    goto :goto_1b

    .line 128
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw v2

    .line 131
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onHotspotNetworksUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;>;"
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 86
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 88
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 90
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    goto :goto_1b

    .line 90
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw v2

    .line 93
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 6
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 136
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 139
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    goto :goto_1b

    .line 142
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    throw v2

    .line 145
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onKnownNetworksUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;>;"
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 98
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 100
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    goto :goto_1b

    .line 102
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    throw v2

    .line 105
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 6
    .param p1, "state"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 110
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    goto :goto_1b

    .line 115
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw v2

    .line 118
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method
