.class public Lcom/samsung/android/allshare/extension/FlatProvider;
.super Lcom/samsung/android/allshare/media/Provider;
.source "FlatProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    }
.end annotation


# instance fields
.field private mFlatBorwseWorker:Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

.field private mProvider:Lcom/samsung/android/allshare/media/Provider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/allshare/media/Provider;)V
    .registers 3
    .param p1, "decoratedProvider"    # Lcom/samsung/android/allshare/media/Provider;

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/Provider;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    .line 98
    invoke-static {p0}, Lcom/samsung/android/allshare/extension/impl/MediaGetterManager;->createMediaGetter(Lcom/samsung/android/allshare/media/Provider;)Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

    .line 99
    return-void
.end method


# virtual methods
.method public browse(Lcom/samsung/android/allshare/Item;II)V
    .registers 5
    .param p1, "parentFolderItem"    # Lcom/samsung/android/allshare/Item;
    .param p2, "startIndex"    # I
    .param p3, "requestCount"    # I

    .line 170
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/Provider;->browse(Lcom/samsung/android/allshare/Item;II)V

    .line 171
    return-void
.end method

.method public cancelFlatBrowse(Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 3
    .param p1, "conn"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/impl/IMediaGetter;->cancel(Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 146
    return-void
.end method

.method public getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAdress()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/FlatProvider;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    if-nez v0, :cond_a

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 269
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNIC()Ljava/lang/String;
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .registers 2

    .line 432
    const-string v0, ""

    return-object v0
.end method

.method public getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .registers 3
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 468
    const-string v0, ""

    return-object v0
.end method

.method public getReceiver()Lcom/samsung/android/allshare/media/Receiver;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getReceiver()Lcom/samsung/android/allshare/media/Receiver;

    move-result-object v0

    return-object v0
.end method

.method public getRootFolder()Lcom/samsung/android/allshare/Item;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->getRootFolder()Lcom/samsung/android/allshare/Item;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingInfo()Ljava/lang/String;
    .registers 2

    .line 442
    const-string v0, ""

    return-object v0
.end method

.method public getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .registers 3
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 475
    const-string v0, ""

    return-object v0
.end method

.method public getScreenSharingP2pMacAddr()Ljava/lang/String;
    .registers 2

    .line 459
    const-string v0, ""

    return-object v0
.end method

.method public getSecProductP2pMacAddr()Ljava/lang/String;
    .registers 2

    .line 453
    const-string v0, ""

    return-object v0
.end method

.method public isSearchable()Z
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Provider;->isSearchable()Z

    move-result v0

    return v0
.end method

.method public isSeekableOnPaused()Z
    .registers 2

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedByType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public isWholeHomeAudio()Z
    .registers 2

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public requestMobileToTV(Ljava/lang/String;I)V
    .registers 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 449
    return-void
.end method

.method public search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V
    .registers 5
    .param p1, "searchCriteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I
    .param p3, "requestCount"    # I

    .line 369
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/Provider;->search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V

    .line 371
    return-void
.end method

.method public setBrowseItemsResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    .line 381
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/Provider;->setBrowseItemsResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;)V

    .line 382
    return-void
.end method

.method public setEventListener(Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;)V
    .registers 3
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    .line 348
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/Provider;->setEventListener(Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;)V

    .line 349
    return-void
.end method

.method public setSearchResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    .line 393
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/Provider;->setSearchResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;)V

    .line 394
    return-void
.end method

.method startBrowseMedeaGetterFlatBrowse(Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 4
    .param p2, "conn"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .line 123
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/allshare/extension/impl/IMediaGetter;->start(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 124
    return-void
.end method

.method public startFlatBrowse(Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 4
    .param p1, "type"    # Lcom/samsung/android/allshare/Item$MediaType;
    .param p2, "conn"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/allshare/extension/impl/IMediaGetter;->start(Lcom/samsung/android/allshare/media/Provider;Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 111
    return-void
.end method

.method public startFlatBrowse(Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .registers 4
    .param p2, "conn"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .line 135
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/samsung/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/allshare/extension/impl/IMediaGetter;->start(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 136
    return-void
.end method
