.class Landroid/app/SystemServiceRegistry$16;
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
        "Landroid/view/selectiontoolbar/SelectionToolbarManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 577
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/view/selectiontoolbar/SelectionToolbarManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 580
    const-string/jumbo v0, "selection_toolbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 581
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .line 582
    invoke-static {v0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/selectiontoolbar/SelectionToolbarManager;-><init>(Landroid/content/Context;Landroid/view/selectiontoolbar/ISelectionToolbarManager;)V

    .line 581
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 577
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$16;->createService(Landroid/app/ContextImpl;)Landroid/view/selectiontoolbar/SelectionToolbarManager;

    move-result-object p1

    return-object p1
.end method
