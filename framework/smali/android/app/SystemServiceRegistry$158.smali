.class Landroid/app/SystemServiceRegistry$158;
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
        "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1997
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2000
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->create(Landroid/content/Context;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1997
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$158;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    move-result-object p1

    return-object p1
.end method
