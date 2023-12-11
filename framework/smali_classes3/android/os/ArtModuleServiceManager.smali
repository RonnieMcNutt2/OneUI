.class public Landroid/os/ArtModuleServiceManager;
.super Ljava/lang/Object;
.source "ArtModuleServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtdServiceRegisterer()Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    .registers 3

    .line 61
    new-instance v0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;

    const-string v1, "artd"

    invoke-direct {v0, v1}, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
