.class Landroid/app/SystemServiceRegistry$122;
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
        "Lcom/samsung/android/wifi/SemWifiManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1631
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1634
    nop

    .line 1635
    const-string/jumbo v0, "sem_wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1634
    invoke-static {v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiManager;

    move-result-object v0

    .line 1636
    .local v0, "service":Lcom/samsung/android/wifi/ISemWifiManager;
    new-instance v1, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1637
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/wifi/SemWifiManager;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/ISemWifiManager;Landroid/os/Looper;)V

    .line 1636
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1631
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$122;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    return-object p1
.end method
