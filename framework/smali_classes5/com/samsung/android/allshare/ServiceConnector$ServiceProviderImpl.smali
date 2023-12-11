.class Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;
.super Lcom/samsung/android/allshare/ServiceProvider;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectorGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceProviderImpl"
.end annotation


# instance fields
.field mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

.field mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

.field mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

.field mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceProvider;-><init>()V

    .line 484
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

    .line 488
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 491
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    .line 496
    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 497
    new-instance v0, Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-direct {v0, p2}, Lcom/samsung/android/allshare/DeviceFinderImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

    .line 499
    new-instance v0, Lcom/samsung/android/allshare/extension/SECDownloader;

    invoke-direct {v0, p2}, Lcom/samsung/android/allshare/extension/SECDownloader;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    .line 501
    return-void
.end method


# virtual methods
.method public getAllShareConnector()Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    return-object v0
.end method

.method public bridge synthetic getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
    .registers 2

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinderImpl;
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/samsung/android/allshare/DeviceFinderImpl;

    return-object v0
.end method

.method public getDownloader()Lcom/samsung/android/allshare/extension/SECDownloader;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    return-object v0
.end method

.method public getServiceState()Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    if-nez v0, :cond_e

    .line 524
    const-string v0, "ServiceProviderImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v0, ""

    return-object v0

    .line 529
    :cond_e
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .registers 2
    .param p1, "serviceState"    # Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 534
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 535
    return-void
.end method
