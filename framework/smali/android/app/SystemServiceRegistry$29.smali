.class Landroid/app/SystemServiceRegistry$29;
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
        "Landroid/os/SemHcmManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 700
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/SemHcmManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 703
    const-string v0, "HcmManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 704
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/ISemHcmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISemHcmManager;

    move-result-object v1

    .line 705
    .local v1, "service":Landroid/os/ISemHcmManager;
    if-nez v1, :cond_15

    .line 706
    const-string v2, "SystemServiceRegistry"

    const-string v3, "Failed to get Hcm manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v2, 0x0

    return-object v2

    .line 709
    :cond_15
    new-instance v2, Landroid/os/SemHcmManager;

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/os/SemHcmManager;-><init>(Landroid/os/ISemHcmManager;Landroid/os/Handler;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 700
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$29;->createService(Landroid/app/ContextImpl;)Landroid/os/SemHcmManager;

    move-result-object p1

    return-object p1
.end method
