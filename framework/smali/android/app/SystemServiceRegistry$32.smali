.class Landroid/app/SystemServiceRegistry$32;
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
        "Landroid/transparency/BinaryTransparencyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 734
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/transparency/BinaryTransparencyManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 738
    const-string/jumbo v0, "transparency"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 740
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IBinaryTransparencyService;

    move-result-object v1

    .line 741
    .local v1, "service":Lcom/android/internal/os/IBinaryTransparencyService;
    new-instance v2, Landroid/transparency/BinaryTransparencyManager;

    invoke-direct {v2, p1, v1}, Landroid/transparency/BinaryTransparencyManager;-><init>(Landroid/content/Context;Lcom/android/internal/os/IBinaryTransparencyService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 734
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$32;->createService(Landroid/app/ContextImpl;)Landroid/transparency/BinaryTransparencyManager;

    move-result-object p1

    return-object p1
.end method
