.class Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;
.super Lcom/samsung/android/allshare/media/MediaServiceProvider;
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
    name = "MediaServiceProviderImpl"
.end annotation


# instance fields
.field mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

.field mMediaDeviceFinder:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

.field mMediaServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

.field mMediaServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 559
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/MediaServiceProvider;-><init>()V

    .line 548
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaDeviceFinder:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    .line 552
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 555
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    .line 560
    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    .line 561
    new-instance v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    invoke-direct {v0, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaDeviceFinder:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    .line 563
    new-instance v0, Lcom/samsung/android/allshare/extension/SECDownloader;

    invoke-direct {v0, p2}, Lcom/samsung/android/allshare/extension/SECDownloader;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    .line 565
    return-void
.end method


# virtual methods
.method public getAllShareConnector()Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    return-object v0
.end method

.method public bridge synthetic getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
    .registers 2

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->getDeviceFinder()Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceFinder()Lcom/samsung/android/allshare/MediaDeviceFinderImpl;
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaDeviceFinder:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    return-object v0
.end method

.method public bridge synthetic getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .registers 2

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->getDeviceFinder()Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDownloader()Lcom/samsung/android/allshare/extension/SECDownloader;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mDownloader:Lcom/samsung/android/allshare/extension/SECDownloader;

    return-object v0
.end method

.method public getServiceState()Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaServiceConnector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    if-nez v0, :cond_e

    .line 588
    const-string v0, "MediaServiceProviderImpl"

    const-string v1, "Connection FAIL: AllShare Media Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, ""

    return-object v0

    .line 593
    :cond_e
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .registers 3
    .param p1, "serviceState"    # Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 598
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 599
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    if-ne v0, p1, :cond_10

    .line 601
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaDeviceFinder:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    if-eqz v0, :cond_10

    .line 602
    invoke-virtual {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->cleanup()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;->mMediaDeviceFinder:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    .line 606
    :cond_10
    return-void
.end method
