.class Landroid/app/SystemServiceRegistry$73;
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
        "Landroid/view/WindowManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1106
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/view/WindowManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1109
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1106
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$73;->createService(Landroid/app/ContextImpl;)Landroid/view/WindowManager;

    move-result-object p1

    return-object p1
.end method
