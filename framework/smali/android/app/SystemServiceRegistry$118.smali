.class Landroid/app/SystemServiceRegistry$118;
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
        "Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1587
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1591
    const-string/jumbo v0, "wallpaper_effects_generation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1593
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_14

    .line 1594
    :cond_b
    new-instance v1, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    .line 1595
    invoke-static {v0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;-><init>(Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;)V

    .line 1593
    :goto_14
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1587
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$118;->createService(Landroid/app/ContextImpl;)Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    move-result-object p1

    return-object p1
.end method
