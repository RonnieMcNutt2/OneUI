.class Landroid/app/SystemServiceRegistry$58;
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
        "Landroid/os/SystemConfigManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 968
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/SystemConfigManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 971
    new-instance v0, Landroid/os/SystemConfigManager;

    invoke-direct {v0}, Landroid/os/SystemConfigManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 968
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$58;->createService(Landroid/app/ContextImpl;)Landroid/os/SystemConfigManager;

    move-result-object p1

    return-object p1
.end method
