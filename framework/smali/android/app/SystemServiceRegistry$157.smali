.class Landroid/app/SystemServiceRegistry$157;
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
        "Landroid/app/GrammaticalInflectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1986
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/GrammaticalInflectionManager;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1990
    new-instance v0, Landroid/app/GrammaticalInflectionManager;

    .line 1992
    const-string v1, "grammatical_inflection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1991
    invoke-static {v1}, Landroid/app/IGrammaticalInflectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGrammaticalInflectionManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/app/GrammaticalInflectionManager;-><init>(Landroid/content/Context;Landroid/app/IGrammaticalInflectionManager;)V

    .line 1990
    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1986
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$157;->createService(Landroid/app/ContextImpl;)Landroid/app/GrammaticalInflectionManager;

    move-result-object p1

    return-object p1
.end method
