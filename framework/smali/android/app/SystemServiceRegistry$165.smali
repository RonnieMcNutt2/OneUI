.class Landroid/app/SystemServiceRegistry$165;
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
        "Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2082
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 2085
    const-string v0, "DisplaySolution"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2086
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    move-result-object v1

    .line 2087
    .local v1, "service":Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
    new-instance v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-direct {v2, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;-><init>(Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2082
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$165;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object p1

    return-object p1
.end method
