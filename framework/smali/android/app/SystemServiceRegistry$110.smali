.class Landroid/app/SystemServiceRegistry$110;
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
        "Landroid/media/musicrecognition/MusicRecognitionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1481
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/media/musicrecognition/MusicRecognitionManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1484
    const-string/jumbo v0, "music_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1486
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionManager;

    .line 1487
    invoke-static {v0}, Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/musicrecognition/MusicRecognitionManager;-><init>(Landroid/media/musicrecognition/IMusicRecognitionManager;)V

    .line 1486
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1481
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$110;->createService(Landroid/app/ContextImpl;)Landroid/media/musicrecognition/MusicRecognitionManager;

    move-result-object p1

    return-object p1
.end method
