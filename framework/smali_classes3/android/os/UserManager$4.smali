.class Landroid/os/UserManager$4;
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
        "Landroid/content/pm/UserProperties;",
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

    .line 6105
    iput-object p1, p0, Landroid/os/UserManager$4;->this$0:Landroid/os/UserManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bypass(Ljava/lang/Integer;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/Integer;

    .line 6117
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

    .line 6105
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/os/UserManager$4;->bypass(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public recompute(Ljava/lang/Integer;)Landroid/content/pm/UserProperties;
    .registers 4
    .param p1, "userId"    # Ljava/lang/Integer;

    .line 6110
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager$4;->this$0:Landroid/os/UserManager;

    invoke-static {v0}, Landroid/os/UserManager;->-$$Nest$fgetmService(Landroid/os/UserManager;)Landroid/os/IUserManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 6111
    :catch_f
    move-exception v0

    .line 6112
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6105
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/os/UserManager$4;->recompute(Ljava/lang/Integer;)Landroid/content/pm/UserProperties;

    move-result-object p1

    return-object p1
.end method
