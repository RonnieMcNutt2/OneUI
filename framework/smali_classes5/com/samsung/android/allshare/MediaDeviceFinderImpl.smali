.class final Lcom/samsung/android/allshare/MediaDeviceFinderImpl;
.super Lcom/samsung/android/allshare/media/MediaDeviceFinder;
.source "MediaDeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;,
        Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "MediaDeviceFinderImpl"

.field private static mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeviceTypeToEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAVPlayerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/AVPlayerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private mDiscoveryListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private mImageViewerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/ImageViewerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/ProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenSharingDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/DeviceImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDiscoveryListenerMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDeviceFromMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveDeviceFromMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmDeviceEventToDeviceTypeMap()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 58
    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v3, "com.sec.android.allshare.event.EVENT_PROVIDER_DISCOVERY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v4, "com.sec.android.allshare.event.EVENT_AV_PLAYER_DISCOVERY"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v5, "com.sec.android.allshare.event.EVENT_IMAGE_VIEWER_DISCOVERY"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v6, "com.sec.android.allshare.event.EVENT_SCREENSHARING_DISCOVERY"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v7, "com.sec.android.allshare.event.EVENT_DMR_DISCOVERY"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sput-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 74
    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/allshare/IAllShareConnector;)V
    .registers 4
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 115
    if-nez p1, :cond_3a

    .line 117
    const-string v0, "MediaDeviceFinderImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    :cond_3a
    iput-object p1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 122
    new-instance v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;

    .line 123
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;-><init>(Landroid/os/Looper;Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 124
    return-void
.end method

.method private getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 394
    const/4 v0, 0x0

    const-string v1, "MediaDeviceFinderImpl"

    if-nez p1, :cond_c

    .line 395
    const-string/jumbo v2, "getDeviceFromMap : bundle is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-object v0

    .line 399
    :cond_c
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_fc

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto/16 :goto_fc

    .line 406
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting device from maps id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :try_start_3c
    new-instance v3, Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {v3, p1}, Lcom/samsung/android/allshare/DeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 410
    .local v3, "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    sget-object v4, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$1;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_104

    .line 452
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    goto/16 :goto_fb

    .line 439
    .restart local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :pswitch_4e
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 440
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-nez v4, :cond_72

    .line 441
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-nez v4, :cond_72

    .line 442
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_72

    .line 445
    :cond_6c
    const-string v4, "all types are not supported"

    invoke-static {v1, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 443
    :cond_72
    :goto_72
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_77
    :goto_77
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 431
    :pswitch_80
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 432
    new-instance v4, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 434
    .local v4, "upnpDevice":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v4    # "upnpDevice":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    :cond_94
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 425
    :pswitch_9d
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 426
    new-instance v4, Lcom/samsung/android/allshare/ProviderImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ProviderImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 427
    .local v4, "provider":Lcom/samsung/android/allshare/ProviderImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v4    # "provider":Lcom/samsung/android/allshare/ProviderImpl;
    :cond_b1
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 418
    :pswitch_ba
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ce

    .line 419
    new-instance v4, Lcom/samsung/android/allshare/ImageViewerImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ImageViewerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 421
    .local v4, "imageViewer":Lcom/samsung/android/allshare/ImageViewerImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v4    # "imageViewer":Lcom/samsung/android/allshare/ImageViewerImpl;
    :cond_ce
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 412
    :pswitch_d7
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_eb

    .line 413
    new-instance v4, Lcom/samsung/android/allshare/AVPlayerImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/AVPlayerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 414
    .local v4, "avPlayer":Lcom/samsung/android/allshare/AVPlayerImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v4    # "avPlayer":Lcom/samsung/android/allshare/AVPlayerImpl;
    :cond_eb
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_f3} :catch_f4

    return-object v4

    .line 450
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :catch_f4
    move-exception v3

    .line 451
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getDeviceFromMap : Exception"

    invoke-static {v1, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 454
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_fb
    return-object v0

    .line 402
    :cond_fc
    :goto_fc
    const-string/jumbo v3, "getDeviceFromMap : id is null"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object v0

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_ba
        :pswitch_9d
        :pswitch_80
        :pswitch_4e
    .end packed-switch
.end method

.method private privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "domain"    # Lcom/samsung/android/allshare/Device$DeviceDomain;
    .param p3, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p4, "deviceIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/Device$DeviceDomain;",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    if-nez p3, :cond_8

    .line 462
    return-object v0

    .line 464
    :cond_8
    const/4 v1, 0x0

    .line 465
    .local v1, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    new-instance v2, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    move-object v1, v2

    .line 467
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BUNDLE_ENUM_DEVICE_TYPE"

    if-eqz v2, :cond_2d

    if-eqz p2, :cond_2d

    .line 469
    const-string v2, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 471
    :cond_2d
    nop

    .line 472
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz p4, :cond_4b

    .line 473
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4b

    .line 474
    const-string v2, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {v1, v2, p4}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 476
    :cond_4b
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 477
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_5a
    invoke-virtual {v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 484
    .local v2, "resBundle":Landroid/os/Bundle;
    if-nez v2, :cond_61

    .line 485
    return-object v0

    .line 487
    :cond_61
    nop

    .line 488
    const-string v3, "BUNDLE_PARCELABLE_ARRAYLIST_DEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 490
    .local v3, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v4, "MediaDeviceFinderImpl"

    if-eqz v3, :cond_ca

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_73

    goto :goto_ca

    .line 495
    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returned bundle list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_91
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 498
    .local v6, "b":Landroid/os/Bundle;
    invoke-direct {p0, v6, p3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v7

    .line 499
    .local v7, "d":Lcom/samsung/android/allshare/Device;
    if-eqz v7, :cond_c3

    .line 500
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to result"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 503
    :cond_c3
    const-string v8, "device not present in any map"

    invoke-static {v4, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v7    # "d":Lcom/samsung/android/allshare/Device;
    :goto_c8
    goto :goto_91

    .line 507
    :cond_c9
    return-object v0

    .line 491
    :cond_ca
    :goto_ca
    const-string v5, "device list is empty or null!"

    invoke-static {v4, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-object v0

    .line 479
    .end local v2    # "resBundle":Landroid/os/Bundle;
    .end local v3    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_d0
    return-object v0
.end method

.method private removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 324
    const-string v0, "MediaDeviceFinderImpl"

    if-nez p1, :cond_b

    .line 325
    const-string/jumbo v1, "removeDeviceFromMap : bundle is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 329
    :cond_b
    const-string v1, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 332
    const-string/jumbo v2, "removeDeviceFromMap : id is null"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void

    .line 335
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 336
    const-string/jumbo v2, "removeDeviceFromMap : id is Empty"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void

    .line 341
    :cond_27
    :try_start_27
    sget-object v2, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$1;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_114

    goto/16 :goto_10a

    .line 379
    :pswitch_34
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/DeviceImpl;

    .line 380
    .local v2, "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    if-eqz v2, :cond_48

    .line 381
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->removeEventHandler()V

    .line 382
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10a

    .line 384
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get Device(UNKNOWN) with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10a

    .line 370
    .end local v2    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :pswitch_60
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    .line 371
    .local v2, "kd":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    if-eqz v2, :cond_74

    .line 372
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->removeEventHandler()V

    .line 373
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10a

    .line 375
    :cond_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get ScreenSharingDevice with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    goto/16 :goto_10a

    .line 361
    .end local v2    # "kd":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    :pswitch_8c
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ProviderImpl;

    .line 362
    .local v2, "p":Lcom/samsung/android/allshare/ProviderImpl;
    if-eqz v2, :cond_9f

    .line 363
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ProviderImpl;->removeEventHandler()V

    .line 364
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10a

    .line 366
    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get Provider with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    goto :goto_10a

    .line 352
    .end local v2    # "p":Lcom/samsung/android/allshare/ProviderImpl;
    :pswitch_b6
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ImageViewerImpl;

    .line 353
    .local v2, "iv":Lcom/samsung/android/allshare/ImageViewerImpl;
    if-eqz v2, :cond_c9

    .line 354
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ImageViewerImpl;->removeEventHandler()V

    .line 355
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10a

    .line 357
    :cond_c9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get ImageViewer with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    goto :goto_10a

    .line 343
    .end local v2    # "iv":Lcom/samsung/android/allshare/ImageViewerImpl;
    :pswitch_e0
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/AVPlayerImpl;

    .line 344
    .local v2, "av":Lcom/samsung/android/allshare/AVPlayerImpl;
    if-eqz v2, :cond_f3

    .line 345
    invoke-virtual {v2}, Lcom/samsung/android/allshare/AVPlayerImpl;->removeEventHandler()V

    .line 346
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10a

    .line 348
    :cond_f3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get AVPlayer with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_109} :catch_10b

    .line 350
    nop

    .line 390
    .end local v2    # "av":Lcom/samsung/android/allshare/AVPlayerImpl;
    :goto_10a
    goto :goto_112

    .line 388
    :catch_10b
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "removeDeviceFromMap : Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 391
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_112
    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_b6
        :pswitch_8c
        :pswitch_60
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    .line 608
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 609
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    .line 611
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 612
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    .line 614
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 615
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    .line 617
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 618
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    .line 620
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 621
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    .line 623
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 624
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 625
    return-void
.end method

.method public final getDevice(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_41

    .line 307
    :cond_c
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    if-nez p2, :cond_17

    goto :goto_40

    .line 310
    :cond_17
    new-instance v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICE_BY_ID_SYNC"

    invoke-direct {v0, p0, v2, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 312
    .local v0, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v2, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 317
    .local v2, "device_bundle":Landroid/os/Bundle;
    if-nez v2, :cond_33

    .line 318
    return-object v1

    .line 319
    :cond_33
    const-string v1, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 320
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v3

    return-object v3

    .line 308
    .end local v0    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    .end local v2    # "device_bundle":Landroid/os/Bundle;
    :cond_40
    :goto_40
    return-object v1

    .line 305
    :cond_41
    :goto_41
    return-object v1
.end method

.method public final getDevices(Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "domain"    # Lcom/samsung/android/allshare/Device$DeviceDomain;
    .param p2, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceDomain;",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3c

    .line 286
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDevices - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], domain["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    .line 288
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 284
    .end local v0    # "action":Ljava/lang/String;
    :cond_3c
    :goto_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    .line 297
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDevices - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    .line 299
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 294
    .end local v0    # "action":Ljava/lang/String;
    :cond_32
    :goto_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getDevices(Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "NIC"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3c

    .line 276
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDevices - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], NIC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    .line 278
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 274
    .end local v0    # "action":Ljava/lang/String;
    :cond_3c
    :goto_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final refresh()V
    .registers 6

    .line 206
    const-string/jumbo v0, "refresh"

    const-string v1, "MediaDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_34

    .line 212
    :cond_13
    const-string v0, ""

    .line 213
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_23

    .line 215
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 216
    if-nez v0, :cond_23

    .line 217
    const-string v0, ""

    .line 220
    :cond_23
    new-instance v2, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const-string v3, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 222
    .local v2, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 225
    return-void

    .line 208
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    :cond_34
    :goto_34
    const-string/jumbo v0, "refresh : mAllShareConnector is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public refresh(Lcom/samsung/android/allshare/Device$DeviceType;)V
    .registers 5
    .param p1, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaDeviceFinderImpl"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_3f

    .line 235
    :cond_2a
    new-instance v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const-string v1, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH_TARGET"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 237
    .local v0, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v1, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 239
    return-void

    .line 231
    .end local v0    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    :cond_3f
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : mAllShareConnector is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public registerSearchTarget(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_51

    .line 550
    :cond_b
    if-nez p1, :cond_e

    .line 551
    return-void

    .line 553
    :cond_e
    const-string v0, ""

    .line 554
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 555
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_1e

    .line 556
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 557
    if-nez v0, :cond_1e

    .line 558
    const-string v0, ""

    .line 562
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v2, "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device$DeviceType;

    .line 564
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 566
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3b
    new-instance v3, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const-string v4, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REGISTER_SEARCH_TARGET_SYNC"

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 568
    .local v3, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 571
    invoke-virtual {v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 572
    return-void

    .line 548
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    :cond_51
    :goto_51
    return-void
.end method

.method public setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V
    .registers 8
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "l"    # Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "MediaDeviceFinderImpl"

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4d

    .line 248
    :cond_d
    if-nez p1, :cond_16

    .line 249
    const-string/jumbo v0, "setEventListener error! deviceType is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 253
    :cond_16
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "deviceTypeEvent":Ljava/lang/String;
    if-nez v0, :cond_27

    .line 255
    const-string/jumbo v2, "setEventListener error! deviceTypeEvent is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void

    .line 259
    :cond_27
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 260
    .local v1, "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v2, 0x0

    if-nez v1, :cond_41

    if-eqz p2, :cond_41

    .line 263
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    goto :goto_4c

    .line 264
    :cond_41
    if-eqz v1, :cond_4c

    if-nez p2, :cond_4c

    .line 265
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 269
    :cond_4c
    :goto_4c
    return-void

    .line 244
    .end local v0    # "deviceTypeEvent":Ljava/lang/String;
    .end local v1    # "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :cond_4d
    :goto_4d
    const-string/jumbo v0, "setEventListener error! AllShareService is not connected"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public unregisterSearchTarget(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation

    .line 577
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_51

    .line 580
    :cond_b
    if-nez p1, :cond_e

    .line 581
    return-void

    .line 583
    :cond_e
    const-string v0, ""

    .line 584
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 585
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_1e

    .line 586
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 587
    if-nez v0, :cond_1e

    .line 588
    const-string v0, ""

    .line 592
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v2, "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device$DeviceType;

    .line 594
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 596
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3b
    new-instance v3, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const-string v4, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_UNREGISTER_SEARCH_TARGET_SYNC"

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 598
    .local v3, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 601
    invoke-virtual {v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 602
    return-void

    .line 578
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    :cond_51
    :goto_51
    return-void
.end method
