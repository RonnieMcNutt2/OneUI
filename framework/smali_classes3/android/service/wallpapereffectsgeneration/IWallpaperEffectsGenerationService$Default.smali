.class public Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Default;
.super Ljava/lang/Object;
.source "IWallpaperEffectsGenerationService.java"

# interfaces
.implements Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
