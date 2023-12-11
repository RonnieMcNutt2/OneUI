.class final Lcom/samsung/android/allshare/SlideShowPlayerImpl;
.super Lcom/samsung/android/allshare/media/SlideShowPlayer;
.source "SlideShowPlayerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideShowPlayerImpl"


# instance fields
.field private mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field private mEventListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;

.field private mIsSubscribed:Z

.field mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field private mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mEventListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .registers 5
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/SlideShowPlayer;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mEventListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mIsSubscribed:Z

    .line 68
    new-instance v0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;

    .line 69
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;-><init>(Lcom/samsung/android/allshare/SlideShowPlayerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 143
    new-instance v0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;

    .line 144
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;-><init>(Lcom/samsung/android/allshare/SlideShowPlayerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 42
    if-nez p1, :cond_2f

    .line 44
    const-string v0, "SlideShowPlayerImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 48
    :cond_2f
    iput-object p1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 51
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_6

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 55
    const-string v0, ""

    return-object v0

    .line 57
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeEventHandler()V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 353
    invoke-virtual {v1}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 352
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mIsSubscribed:Z

    .line 355
    return-void
.end method

.method public setBGMList(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_71

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_71

    .line 278
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v1, ""

    .line 281
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/Item;

    .line 282
    .local v3, "item":Lcom/samsung/android/allshare/Item;
    if-eqz v3, :cond_48

    .line 283
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 286
    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    if-eqz v2, :cond_39

    .line 287
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v2, p1, v4}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetBGMListResponseReceived(Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V

    .line 288
    :cond_39
    return-void

    .line 291
    :cond_3a
    instance-of v4, v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v4, :cond_48

    .line 292
    move-object v4, v3

    check-cast v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v4}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v3    # "item":Lcom/samsung/android/allshare/Item;
    :cond_48
    goto :goto_16

    .line 297
    :cond_49
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 298
    .local v2, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_SETBGMLIST"

    invoke-virtual {v2, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 300
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v3, "req_bundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v4, "BUNDLE_PARCELABLE_ARRAYLIST_SLIDESHOW_AUDIO_CONTENT_URI"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 304
    invoke-virtual {v2, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 306
    iget-object v4, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v5, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 307
    return-void

    .line 273
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "req_bundle":Landroid/os/Bundle;
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    if-eqz v0, :cond_7a

    .line 274
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetBGMListResponseReceived(Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V

    .line 275
    :cond_7a
    return-void
.end method

.method public setBGMVolume(I)V
    .registers 6
    .param p1, "volume"    # I

    .line 311
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_33

    .line 318
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 319
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_SETBGMVOLUME"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 321
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v1, "req_bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "BUNDLE_INT_SLIDESHOW_BGM_VOLUME"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 326
    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 327
    return-void

    .line 312
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    if-eqz v0, :cond_3c

    .line 313
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetBGMVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 315
    :cond_3c
    return-void
.end method

.method public setEventListener(Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;

    .line 331
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 336
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mEventListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;

    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    .line 339
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 340
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 339
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mIsSubscribed:Z

    goto :goto_3a

    .line 342
    :cond_26
    if-eqz v0, :cond_3a

    if-nez p1, :cond_3a

    .line 343
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 344
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 343
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mIsSubscribed:Z

    .line 349
    :cond_3a
    :goto_3a
    return-void

    .line 332
    :cond_3b
    :goto_3b
    const-string v0, "SlideShowPlayerImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public setList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "albumTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p2, "imageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_77

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_77

    .line 237
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v1, ""

    .line 240
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/Item;

    .line 241
    .local v3, "item":Lcom/samsung/android/allshare/Item;
    if-eqz v3, :cond_49

    .line 242
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string/jumbo v4, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 245
    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    if-eqz v2, :cond_3a

    .line 246
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v4}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetListResponseReceived(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V

    .line 248
    :cond_3a
    return-void

    .line 251
    :cond_3b
    instance-of v4, v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v4, :cond_49

    .line 252
    move-object v4, v3

    check-cast v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v4}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v3    # "item":Lcom/samsung/android/allshare/Item;
    :cond_49
    goto :goto_16

    .line 257
    :cond_4a
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 258
    .local v2, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_SETLIST"

    invoke-virtual {v2, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 260
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v3, "req_bundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v4, "BUNDLE_STRING_SLIDESHOW_ALBUM_TITLE"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v4, "BUNDLE_PARCELABLE_ARRAYLIST_SLIDESHOW_IMAGE_CONTENT_URI"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 265
    invoke-virtual {v2, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 267
    iget-object v4, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v5, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 268
    return-void

    .line 231
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "req_bundle":Landroid/os/Bundle;
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    if-eqz v0, :cond_80

    .line 232
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetListResponseReceived(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V

    .line 234
    :cond_80
    return-void
.end method

.method public setResponseListener(Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    .line 359
    iput-object p1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    .line 360
    return-void
.end method

.method public start(I)V
    .registers 6
    .param p1, "interval"    # I

    .line 193
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_33

    .line 199
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 200
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_START"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 202
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v1, "req_bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "BUNDLE_INT_SLIDESHOW_INTERVAL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 208
    return-void

    .line 194
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    if-eqz v0, :cond_3c

    .line 195
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onStartResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 196
    :cond_3c
    return-void
.end method

.method public stop()V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2e

    .line 218
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 219
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_STOP"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 221
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v1, "req_bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 225
    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 226
    return-void

    .line 213
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    if-eqz v0, :cond_37

    .line 214
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 215
    :cond_37
    return-void
.end method
