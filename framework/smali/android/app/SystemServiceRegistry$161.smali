.class Landroid/app/SystemServiceRegistry$161;
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
        "Lcom/samsung/android/knox/SemRemoteContentManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2033
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2036
    const-string/jumbo v0, "rcp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2037
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-static {v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemRemoteContentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;-><init>(Lcom/samsung/android/knox/ISemRemoteContentManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2033
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$161;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object p1

    return-object p1
.end method
