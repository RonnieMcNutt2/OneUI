.class Landroid/os/UserManager$3;
.super Landroid/app/PropertyInvalidatedCache;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/os/UserManager;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/UserManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 6077
    iput-object p1, p0, Landroid/os/UserManager$3;->this$0:Landroid/os/UserManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bypass(Ljava/lang/Integer;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/Integer;

    .line 6091
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic bypass(Ljava/lang/Object;)Z
    .registers 2

    .line 6077
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/os/UserManager$3;->bypass(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6077
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/os/UserManager$3;->recompute(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public recompute(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .param p1, "query"    # Ljava/lang/Integer;

    .line 6082
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager$3;->this$0:Landroid/os/UserManager;

    invoke-static {v0}, Landroid/os/UserManager;->-$$Nest$fgetmService(Landroid/os/UserManager;)Landroid/os/IUserManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    .line 6083
    .local v0, "profileType":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    move-object v0, v1

    .line 6084
    :cond_15
    return-object v0

    .line 6085
    .end local v0    # "profileType":Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 6086
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
