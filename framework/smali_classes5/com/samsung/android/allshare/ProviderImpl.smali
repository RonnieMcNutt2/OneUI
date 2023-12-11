.class final Lcom/samsung/android/allshare/ProviderImpl;
.super Lcom/samsung/android/allshare/media/Provider;
.source "ProviderImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ProviderImpl$RootFolderItem;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "ProviderImpl"

.field private static mRootFolderItem:Lcom/samsung/android/allshare/Item;


# instance fields
.field private mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field private mBrowseResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

.field private mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field private mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private mIsSubscribed:Z

.field private mProviderEventListener:Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

.field private mReceiver:Lcom/samsung/android/allshare/media/Receiver;

.field private mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBrowseResponseListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProviderEventListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchResponseListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/allshare/ProviderImpl;->mRootFolderItem:Lcom/samsung/android/allshare/Item;

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v1, "mFolderBunle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ITEM_TITLE"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    const-string v0, "BUNDLE_LONG_ITEM_DATE"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    const-string v0, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 78
    const-string v0, "BUNDLE_STRING_OBJECT_ID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/samsung/android/allshare/ProviderImpl$RootFolderItem;

    invoke-direct {v0, v1}, Lcom/samsung/android/allshare/ProviderImpl$RootFolderItem;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/samsung/android/allshare/ProviderImpl;->mRootFolderItem:Lcom/samsung/android/allshare/Item;

    .line 81
    .end local v1    # "mFolderBunle":Landroid/os/Bundle;
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .registers 7
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/Provider;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mIsSubscribed:Z

    .line 132
    new-instance v1, Lcom/samsung/android/allshare/ProviderImpl$1;

    .line 133
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/allshare/ProviderImpl$1;-><init>(Lcom/samsung/android/allshare/ProviderImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 161
    new-instance v1, Lcom/samsung/android/allshare/ProviderImpl$2;

    .line 162
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/allshare/ProviderImpl$2;-><init>(Lcom/samsung/android/allshare/ProviderImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 109
    const-string v1, "ProviderImpl"

    if-nez p1, :cond_31

    .line 111
    const-string v0, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 115
    :cond_31
    iput-object p2, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 119
    invoke-virtual {p2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 120
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_43

    .line 121
    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mReceiver:Lcom/samsung/android/allshare/media/Receiver;

    .line 122
    const-string v0, "bundle == null!"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 125
    :cond_43
    const-string v1, "BUNDLE_BOOLEAN_RECEIVERABLE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 126
    .local v1, "isReceiverable":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 127
    new-instance v0, Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/allshare/ReceiverImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mReceiver:Lcom/samsung/android/allshare/media/Receiver;

    goto :goto_5d

    .line 129
    :cond_5b
    iput-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mReceiver:Lcom/samsung/android/allshare/media/Receiver;

    .line 130
    :goto_5d
    return-void
.end method


# virtual methods
.method public browse(Lcom/samsung/android/allshare/Item;II)V
    .registers 16
    .param p1, "parentFolderItem"    # Lcom/samsung/android/allshare/Item;
    .param p2, "startIndex"    # I
    .param p3, "requestCount"    # I

    .line 301
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "ProviderImpl"

    if-eqz v0, :cond_bd

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_bd

    .line 309
    :cond_e
    const-string v0, "browse fail : INVALID_ARGUMENT"

    if-eqz p1, :cond_a7

    const/4 v2, -0x1

    if-eq p2, v2, :cond_a7

    if-gtz p3, :cond_19

    goto/16 :goto_a7

    .line 317
    :cond_19
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allshare/Item$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 318
    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/samsung/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    if-eqz v3, :cond_3a

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    sget-object v9, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/Item;ZLcom/samsung/android/allshare/ERROR;)V

    .line 322
    :cond_3a
    return-void

    .line 325
    :cond_3b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 326
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_ITEMS"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 327
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v2, "req_bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 329
    .local v3, "folderBundle":Landroid/os/Bundle;
    instance-of v4, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v4, :cond_56

    .line 330
    move-object v4, p1

    check-cast v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v4}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 332
    :cond_56
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ProviderImpl;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v4, "BUNDLE_PARCELABLE_FOLDERITEM"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    const-string v4, "BUNDLE_INT_STARTINDEX"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-string v4, "BUNDLE_INT_REQUESTCOUNT"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "browse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ProviderImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 342
    iget-object v1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v1, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 343
    return-void

    .line 310
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "req_bundle":Landroid/os/Bundle;
    .end local v3    # "folderBundle":Landroid/os/Bundle;
    :cond_a7
    :goto_a7
    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Lcom/samsung/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    if-eqz v5, :cond_bc

    .line 312
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    sget-object v11, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    move v7, p2

    move v8, p3

    move-object v9, p1

    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/Item;ZLcom/samsung/android/allshare/ERROR;)V

    .line 314
    :cond_bc
    return-void

    .line 302
    :cond_bd
    :goto_bd
    const-string v0, "browse fail : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/samsung/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    if-eqz v2, :cond_d4

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/Item;ZLcom/samsung/android/allshare/ERROR;)V

    .line 306
    :cond_d4
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_6

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 353
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 355
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 393
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 395
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 361
    const-string v0, ""

    return-object v0

    .line 363
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 416
    const-string v0, ""

    return-object v0

    .line 418
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAdress()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ProviderImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_6

    .line 369
    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIcon()Landroid/net/Uri;

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

    .line 376
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_a

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 379
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 401
    const-string v0, ""

    return-object v0

    .line 403
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNIC()Ljava/lang/String;
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 538
    const-string v0, ""

    return-object v0

    .line 540
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 385
    const-string v0, ""

    return-object v0

    .line 387
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .registers 2

    .line 571
    const-string v0, ""

    return-object v0
.end method

.method public getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .registers 3
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 599
    const-string v0, ""

    return-object v0
.end method

.method public getReceiver()Lcom/samsung/android/allshare/media/Receiver;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mReceiver:Lcom/samsung/android/allshare/media/Receiver;

    return-object v0
.end method

.method public getRootFolder()Lcom/samsung/android/allshare/Item;
    .registers 2

    .line 287
    sget-object v0, Lcom/samsung/android/allshare/ProviderImpl;->mRootFolderItem:Lcom/samsung/android/allshare/Item;

    return-object v0
.end method

.method public getScreenSharingInfo()Ljava/lang/String;
    .registers 2

    .line 578
    const-string v0, ""

    return-object v0
.end method

.method public getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .registers 3
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 606
    const-string v0, ""

    return-object v0
.end method

.method public getScreenSharingP2pMacAddr()Ljava/lang/String;
    .registers 2

    .line 594
    const-string v0, ""

    return-object v0
.end method

.method public getSecProductP2pMacAddr()Ljava/lang/String;
    .registers 2

    .line 589
    const-string v0, ""

    return-object v0
.end method

.method public isSearchable()Z
    .registers 3

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ProviderImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    .local v0, "result":Landroid/os/Bundle;
    if-nez v0, :cond_8

    .line 294
    const/4 v1, 0x0

    return v1

    .line 296
    :cond_8
    const-string v1, "BUNDLE_BOOLEAN_SEARCHABLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isSeekableOnPaused()Z
    .registers 2

    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedByType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 613
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_6

    .line 614
    const/4 v0, 0x0

    return v0

    .line 616
    :cond_6
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public isWholeHomeAudio()Z
    .registers 2

    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public removeEventHandler()V
    .registers 5

    .line 545
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 546
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ProviderImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ProviderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 545
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mIsSubscribed:Z

    .line 549
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mReceiver:Lcom/samsung/android/allshare/media/Receiver;

    if-eqz v0, :cond_19

    .line 550
    check-cast v0, Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ReceiverImpl;->removeEventHandler()V

    .line 552
    :cond_19
    return-void
.end method

.method public requestMobileToTV(Ljava/lang/String;I)V
    .registers 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 585
    return-void
.end method

.method public search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V
    .registers 20
    .param p1, "searchCriteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I
    .param p3, "requestCount"    # I

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v1, v0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v2, "ProviderImpl"

    if-eqz v1, :cond_153

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_153

    .line 468
    :cond_16
    if-nez v8, :cond_34

    .line 469
    const-string/jumbo v1, "search fail : INVALID_ARGUMENT (searchCriteria)"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, v0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v1, :cond_33

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V

    .line 473
    :cond_33
    return-void

    .line 476
    :cond_34
    const/4 v1, -0x1

    if-eq v9, v1, :cond_137

    if-gtz v10, :cond_3b

    goto/16 :goto_137

    .line 484
    :cond_3b
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    move-object v11, v1

    .line 485
    .local v11, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_SEARCHCRITERIA_ITEMS"

    invoke-virtual {v11, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 486
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v12, v1

    .line 487
    .local v12, "req_bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    .line 490
    .local v13, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v8, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/samsung/android/allshare/Item$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 491
    const-string/jumbo v1, "search fail : INVALID_ARGUMENT (MediaType)"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, v0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v1, :cond_75

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V

    .line 495
    :cond_75
    return-void

    .line 498
    :cond_76
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v8, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/samsung/android/allshare/Item$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 499
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_87
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v8, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/samsung/android/allshare/Item$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 502
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_98
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v8, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/samsung/android/allshare/Item$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 505
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_a9
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v8, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/samsung/android/allshare/Item$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 508
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_ba
    const-string v1, "BUNDLE_STRING_ID"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/allshare/ProviderImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v1, "BUNDLE_STRING_SEARCHSTRING"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/media/SearchCriteria;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v1, "BUNDLE_INT_STARTINDEX"

    invoke-virtual {v12, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    const-string v1, "BUNDLE_INT_REQUESTCOUNT"

    invoke-virtual {v12, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    const-string v1, "BUNDLE_STRING_ITEM_TYPE_ARRAYLIST"

    invoke-virtual {v12, v1, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/allshare/ProviderImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v11, v12}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 520
    iget-object v1, v0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, v0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v1, v11, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    move-result-wide v14

    .line 521
    .local v14, "retVal":J
    const-wide/16 v3, -0x1

    cmp-long v1, v3, v14

    if-nez v1, :cond_136

    .line 522
    const-string v1, "Search fail : Error in sending request to Allshare Service"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, v0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v1, :cond_135

    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V

    .line 525
    :cond_135
    return-void

    .line 527
    :cond_136
    return-void

    .line 477
    .end local v11    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v12    # "req_bundle":Landroid/os/Bundle;
    .end local v13    # "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "retVal":J
    :cond_137
    :goto_137
    const-string/jumbo v1, "search fail : INVALID_ARGUMENT (index)"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v1, v0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v1, :cond_152

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V

    .line 481
    :cond_152
    return-void

    .line 461
    :cond_153
    :goto_153
    const-string/jumbo v1, "search fail : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, v0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v1, :cond_16c

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V

    .line 465
    :cond_16c
    return-void
.end method

.method public setBrowseItemsResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    .line 347
    iput-object p1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    .line 348
    return-void
.end method

.method public setEventListener(Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;)V
    .registers 6
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    .line 437
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 442
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    .line 444
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    .line 445
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 446
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ProviderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 445
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mIsSubscribed:Z

    goto :goto_3a

    .line 448
    :cond_26
    if-eqz v0, :cond_3a

    if-nez p1, :cond_3a

    .line 449
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 450
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ProviderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 449
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ProviderImpl;->mIsSubscribed:Z

    .line 455
    :cond_3a
    :goto_3a
    return-void

    .line 438
    :cond_3b
    :goto_3b
    const-string v0, "ProviderImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setSearchResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    .line 531
    iput-object p1, p0, Lcom/samsung/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    .line 533
    return-void
.end method
