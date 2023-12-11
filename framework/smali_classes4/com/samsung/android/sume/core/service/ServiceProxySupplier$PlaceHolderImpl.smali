.class Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;
.super Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
.source "ServiceProxySupplier.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaceHolderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private packageName:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;)V
    .registers 3
    .param p1, "other"    # Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V

    .line 93
    iget-object v0, p1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    .line 94
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-super {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public isNotEmpty()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public put(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V
    .registers 3
    .param p1, "instance"    # Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 2

    .line 81
    check-cast p1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->put(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V

    return-void
.end method

.method public reset()Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->serviceName:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->serviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/core/service/ServiceProxy;->of(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    move-result-object v0

    .line 114
    .local v0, "serviceProxySupplier":Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    iget-object v1, v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->options:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    .line 116
    return-object v0
.end method

.method public bridge synthetic reset()Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->reset()Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    move-result-object v0

    return-object v0
.end method

.method public varargs setParameters([Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/PlaceHolder;
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
            "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;",
            ">;"
        }
    .end annotation

    .line 103
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v3

    :goto_9
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 104
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->packageName:Ljava/lang/String;

    .line 105
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->serviceName:Ljava/lang/String;

    .line 106
    return-object p0
.end method
