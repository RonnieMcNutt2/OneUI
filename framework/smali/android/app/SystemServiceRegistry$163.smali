.class Landroid/app/SystemServiceRegistry$163;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2054
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2057
    const-string/jumbo v0, "remoteappmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2058
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    move-result-object v1

    .line 2059
    .local v1, "service":Lcom/samsung/android/remoteappmode/IRemoteAppMode;
    if-nez v1, :cond_16

    .line 2060
    const-string v2, "SystemServiceRegistry"

    const-string v3, "SemRemoteAppModeManager is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/4 v2, 0x0

    return-object v2

    .line 2063
    :cond_16
    new-instance v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;-><init>(Landroid/content/Context;Lcom/samsung/android/remoteappmode/IRemoteAppMode;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2054
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$163;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;

    move-result-object p1

    return-object p1
.end method
