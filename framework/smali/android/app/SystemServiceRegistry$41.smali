.class Landroid/app/SystemServiceRegistry$41;
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
        "Lcom/samsung/android/location/SemLocationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 809
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/location/SemLocationManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 812
    const-string v0, "SystemServiceRegistry"

    const-string v1, "create SemLocationManager service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 814
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/samsung/android/location/SemLocationManager;

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/location/SemLocationManager;-><init>(Landroid/content/Context;Lcom/samsung/android/location/ISLocationManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 809
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$41;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/location/SemLocationManager;

    move-result-object p1

    return-object p1
.end method
