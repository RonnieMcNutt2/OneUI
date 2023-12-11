.class Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$1;
.super Ljava/lang/Object;
.source "SearchMediaGetter.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->startFlatSearching(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$1;->this$0:Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V
    .registers 14
    .param p2, "requestedStartIndex"    # I
    .param p3, "requestedCount"    # I
    .param p4, "searchCriteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p5, "endOfItems"    # Z
    .param p6, "err"    # Lcom/samsung/android/allshare/ERROR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;II",
            "Lcom/samsung/android/allshare/media/SearchCriteria;",
            "Z",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    .line 160
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, "returnedCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item;

    .line 165
    .local v2, "obj":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    if-ne v3, v4, :cond_1f

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 168
    .end local v2    # "obj":Lcom/samsung/android/allshare/Item;
    :cond_1f
    goto :goto_8

    .line 170
    :cond_20
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p6, v2}, Lcom/samsung/android/allshare/ERROR;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_33

    .line 171
    const-class v2, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Feature Not Supported"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_33
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$1;->this$0:Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;

    invoke-static {v2}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->-$$Nest$fgetmConns(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 174
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;>;"
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;

    .line 177
    .local v3, "conn":Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    if-nez p4, :cond_4f

    .line 178
    invoke-virtual {v3, p6}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 179
    goto :goto_3d

    .line 182
    :cond_4f
    invoke-virtual {v3, p4, p2}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->isCurrentSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8d

    .line 185
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p6, v4}, Lcom/samsung/android/allshare/ERROR;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-eqz v4, :cond_62

    .line 186
    invoke-virtual {v3, p6}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 187
    goto :goto_3d

    .line 190
    :cond_62
    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->isCanceled()Z

    move-result v4

    if-ne v4, v5, :cond_6c

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 192
    goto :goto_3d

    .line 195
    :cond_6c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_75

    .line 196
    invoke-virtual {v3, p1}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->onProgress(Ljava/util/ArrayList;)V

    .line 198
    :cond_75
    if-ne p5, v5, :cond_7b

    .line 199
    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->onFinish()V

    goto :goto_8d

    .line 201
    :cond_7b
    add-int v4, p2, v0

    invoke-virtual {v3, p4, v4}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->setCurrentSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)V

    .line 203
    iget-object v4, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$1;->this$0:Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;

    invoke-static {v4}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->-$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;)Lcom/samsung/android/allshare/media/Provider;

    move-result-object v4

    add-int v5, p2, v0

    const/16 v6, 0x32

    invoke-virtual {v4, p4, v5, v6}, Lcom/samsung/android/allshare/media/Provider;->search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V

    .line 208
    .end local v3    # "conn":Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    :cond_8d
    :goto_8d
    goto :goto_3d

    .line 209
    :cond_8e
    return-void
.end method
