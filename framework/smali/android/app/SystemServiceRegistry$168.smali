.class Landroid/app/SystemServiceRegistry$168;
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
        "Lcom/samsung/android/sepunion/SemUnionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2122
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/sepunion/SemUnionManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2125
    const-string/jumbo v0, "sepunion"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2126
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/samsung/android/sepunion/SemUnionManager;

    invoke-static {v0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/sepunion/SemUnionManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sepunion/IUnionManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2122
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$168;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/sepunion/SemUnionManager;

    move-result-object p1

    return-object p1
.end method
