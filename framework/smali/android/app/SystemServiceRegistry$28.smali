.class Landroid/app/SystemServiceRegistry$28;
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
        "Landroid/os/SemHqmManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 684
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/SemHqmManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 687
    const-string v0, "HqmManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 688
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/ISemHqmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISemHqmManager;

    move-result-object v1

    .line 689
    .local v1, "service":Landroid/os/ISemHqmManager;
    if-nez v1, :cond_15

    .line 690
    const-string v2, "SystemServiceRegistry"

    const-string v3, "Failed to get Hqm manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v2, 0x0

    return-object v2

    .line 693
    :cond_15
    new-instance v2, Landroid/os/SemHqmManager;

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/os/SemHqmManager;-><init>(Landroid/os/ISemHqmManager;Landroid/os/Handler;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 684
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$28;->createService(Landroid/app/ContextImpl;)Landroid/os/SemHqmManager;

    move-result-object p1

    return-object p1
.end method
