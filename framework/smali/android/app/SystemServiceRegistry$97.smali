.class Landroid/app/SystemServiceRegistry$97;
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
        "Landroid/media/midi/MidiManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1362
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/media/midi/MidiManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1365
    const-string/jumbo v0, "midi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1366
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/media/midi/MidiManager;

    invoke-static {v0}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/midi/MidiManager;-><init>(Landroid/media/midi/IMidiManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1362
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$97;->createService(Landroid/app/ContextImpl;)Landroid/media/midi/MidiManager;

    move-result-object p1

    return-object p1
.end method
