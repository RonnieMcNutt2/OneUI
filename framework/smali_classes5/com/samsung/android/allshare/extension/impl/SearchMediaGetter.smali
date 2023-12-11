.class public Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;
.super Ljava/lang/Object;
.source "SearchMediaGetter.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/impl/IMediaGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_SIZE:I = 0x32


# instance fields
.field private mConns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/samsung/android/allshare/media/Provider;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConns(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;)Lcom/samsung/android/allshare/media/Provider;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmProvider(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;Lcom/samsung/android/allshare/media/Provider;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    return-void
.end method

.method private startFlatSearching(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 10
    .param p1, "provider"    # Lcom/samsung/android/allshare/media/Provider;
    .param p3, "callback"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/media/Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .line 129
    .local p2, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    invoke-interface {p3}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    .line 133
    if-nez p1, :cond_d

    .line 134
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 135
    .local v0, "err":Lcom/samsung/android/allshare/ERROR;
    invoke-interface {p3, v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 136
    return-void

    .line 139
    .end local v0    # "err":Lcom/samsung/android/allshare/ERROR;
    :cond_d
    if-eqz p2, :cond_75

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_75

    .line 145
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 146
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/Item$MediaType;

    .line 147
    .local v1, "type":Lcom/samsung/android/allshare/Item$MediaType;
    sget-object v2, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    if-eq v1, v2, :cond_35

    sget-object v2, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    if-eq v1, v2, :cond_35

    sget-object v2, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    if-eq v1, v2, :cond_35

    .line 148
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 149
    .local v2, "err":Lcom/samsung/android/allshare/ERROR;
    invoke-interface {p3, v2}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 150
    return-void

    .line 145
    .end local v1    # "type":Lcom/samsung/android/allshare/Item$MediaType;
    .end local v2    # "err":Lcom/samsung/android/allshare/ERROR;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 154
    .end local v0    # "i":I
    :cond_38
    new-instance v0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$1;-><init>(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/allshare/media/Provider;->setSearchResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;)V

    .line 212
    new-instance v0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;

    invoke-direct {v0}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;-><init>()V

    .line 213
    .local v0, "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item$MediaType;

    .line 214
    .local v2, "type":Lcom/samsung/android/allshare/Item$MediaType;
    invoke-virtual {v0, v2}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->addItemType(Lcom/samsung/android/allshare/Item$MediaType;)Lcom/samsung/android/allshare/media/SearchCriteria$Builder;

    .line 215
    .end local v2    # "type":Lcom/samsung/android/allshare/Item$MediaType;
    goto :goto_49

    .line 217
    :cond_59
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->build()Lcom/samsung/android/allshare/media/SearchCriteria;

    move-result-object v1

    .line 219
    .local v1, "criteria":Lcom/samsung/android/allshare/media/SearchCriteria;
    new-instance v2, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;

    invoke-direct {v2, p0, p3, p1}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;-><init>(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/samsung/android/allshare/media/Provider;)V

    .line 220
    .local v2, "conn":Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->setCurrentSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)V

    .line 222
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->build()Lcom/samsung/android/allshare/media/SearchCriteria;

    move-result-object v4

    const/16 v5, 0x32

    invoke-virtual {p1, v4, v3, v5}, Lcom/samsung/android/allshare/media/Provider;->search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V

    .line 223
    return-void

    .line 140
    .end local v0    # "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .end local v1    # "criteria":Lcom/samsung/android/allshare/media/SearchCriteria;
    .end local v2    # "conn":Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    :cond_75
    :goto_75
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 141
    .local v0, "err":Lcom/samsung/android/allshare/ERROR;
    invoke-interface {p3, v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 142
    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 5
    .param p1, "connection"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;

    .line 104
    .local v1, "conn":Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    invoke-static {v1}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmConn(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->setCancel()V

    .line 106
    goto :goto_21

    .line 108
    .end local v1    # "conn":Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    :cond_20
    goto :goto_6

    .line 110
    :cond_21
    :goto_21
    invoke-interface {p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 111
    return-void
.end method

.method public start(Lcom/samsung/android/allshare/media/Provider;Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 5
    .param p1, "provider"    # Lcom/samsung/android/allshare/media/Provider;
    .param p2, "type"    # Lcom/samsung/android/allshare/Item$MediaType;
    .param p3, "callback"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->startFlatSearching(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 125
    return-void
.end method

.method public start(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 4
    .param p1, "provider"    # Lcom/samsung/android/allshare/media/Provider;
    .param p3, "callback"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/media/Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .line 116
    .local p2, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->startFlatSearching(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 117
    return-void
.end method
