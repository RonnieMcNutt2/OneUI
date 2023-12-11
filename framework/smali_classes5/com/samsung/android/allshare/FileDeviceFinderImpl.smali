.class final Lcom/samsung/android/allshare/FileDeviceFinderImpl;
.super Lcom/samsung/android/allshare/file/FileDeviceFinder;
.source "FileDeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "FileDeviceFinderImpl"

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

.field private mFileReceiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/FileReceiverImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/FileDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDiscoveryListenerMap(Lcom/samsung/android/allshare/FileDeviceFinderImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDeviceFromMap(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveDeviceFromMap(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmDeviceEventToDeviceTypeMap()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 55
    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v3, "com.sec.android.allshare.event.EVENT_FILERECEIVER_DISCOVERY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sput-object v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 63
    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/allshare/IAllShareConnector;)V
    .registers 4
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/allshare/file/FileDeviceFinder;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 98
    new-instance v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$1;

    .line 99
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$1;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 89
    if-nez p1, :cond_29

    .line 91
    const-string v0, "FileDeviceFinderImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 95
    :cond_29
    iput-object p1, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 96
    return-void
.end method

.method private getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 310
    const/4 v0, 0x0

    const-string v1, "FileDeviceFinderImpl"

    if-nez p1, :cond_c

    .line 311
    const-string/jumbo v2, "getDeviceFromMap : bundle is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-object v0

    .line 315
    :cond_c
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_51

    .line 323
    :cond_1b
    :try_start_1b
    new-instance v3, Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {v3, p1}, Lcom/samsung/android/allshare/DeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 325
    .local v3, "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    sget-object v4, Lcom/samsung/android/allshare/FileDeviceFinderImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_58

    .line 337
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    goto :goto_50

    .line 327
    .restart local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :pswitch_2c
    iget-object v4, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 328
    new-instance v4, Lcom/samsung/android/allshare/FileReceiverImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/FileReceiverImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 330
    .local v4, "fileReceiver":Lcom/samsung/android/allshare/FileReceiverImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .end local v4    # "fileReceiver":Lcom/samsung/android/allshare/FileReceiverImpl;
    :cond_40
    iget-object v4, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_48} :catch_49

    return-object v4

    .line 335
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :catch_49
    move-exception v3

    .line 336
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getDeviceFromMap : Exception"

    invoke-static {v1, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 339
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_50
    return-object v0

    .line 318
    :cond_51
    :goto_51
    const-string/jumbo v3, "getDeviceFromMap : id is null"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-object v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method private privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
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

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    if-nez p3, :cond_8

    .line 347
    return-object v0

    .line 349
    :cond_8
    const/4 v1, 0x0

    .line 350
    .local v1, "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    new-instance v2, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker-IA;)V

    move-object v1, v2

    .line 352
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BUNDLE_ENUM_DEVICE_TYPE"

    if-eqz v2, :cond_2d

    if-eqz p2, :cond_2d

    .line 354
    const-string v2, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 356
    :cond_2d
    nop

    .line 357
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz p4, :cond_4b

    .line 358
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4b

    .line 359
    const-string v2, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {v1, v2, p4}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 361
    :cond_4b
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 362
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_5a
    invoke-virtual {v1}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 369
    .local v2, "resBundle":Landroid/os/Bundle;
    if-nez v2, :cond_61

    .line 370
    return-object v0

    .line 372
    :cond_61
    nop

    .line 373
    const-string v3, "BUNDLE_PARCELABLE_ARRAYLIST_DEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 375
    .local v3, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_71

    goto :goto_aa

    .line 378
    :cond_71
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_75
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 379
    .local v5, "b":Landroid/os/Bundle;
    invoke-direct {p0, v5, p3}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v6

    .line 380
    .local v6, "d":Lcom/samsung/android/allshare/Device;
    if-eqz v6, :cond_a8

    .line 381
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FileDeviceFinderImpl"

    invoke-static {v8, v7}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .end local v5    # "b":Landroid/os/Bundle;
    .end local v6    # "d":Lcom/samsung/android/allshare/Device;
    :cond_a8
    goto :goto_75

    .line 386
    :cond_a9
    return-object v0

    .line 376
    :cond_aa
    :goto_aa
    return-object v0

    .line 364
    .end local v2    # "resBundle":Landroid/os/Bundle;
    .end local v3    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_ab
    return-object v0
.end method

.method private removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 280
    const-string v0, "FileDeviceFinderImpl"

    if-nez p1, :cond_b

    .line 281
    const-string/jumbo v1, "removeDeviceFromMap : bundle is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 285
    :cond_b
    const-string v1, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_58

    .line 293
    :cond_1a
    :try_start_1a
    sget-object v2, Lcom/samsung/android/allshare/FileDeviceFinderImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_60

    goto :goto_4f

    .line 295
    :pswitch_26
    iget-object v2, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/FileReceiverImpl;

    .line 296
    .local v2, "fr":Lcom/samsung/android/allshare/FileReceiverImpl;
    if-eqz v2, :cond_39

    .line 297
    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileReceiverImpl;->removeEventHandler()V

    .line 298
    iget-object v3, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 300
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get FileReceiver with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4f} :catch_50

    .line 306
    .end local v2    # "fr":Lcom/samsung/android/allshare/FileReceiverImpl;
    :goto_4f
    goto :goto_57

    .line 304
    :catch_50
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "removeDeviceFromMap : Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 307
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_57
    return-void

    .line 288
    :cond_58
    :goto_58
    const-string/jumbo v2, "removeDeviceFromMap : id is Empty"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public final getDevice(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 260
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_41

    .line 263
    :cond_c
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    if-nez p2, :cond_17

    goto :goto_40

    .line 266
    :cond_17
    new-instance v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;

    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICE_BY_ID_SYNC"

    invoke-direct {v0, p0, v2, v1}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 268
    .local v0, "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 273
    .local v2, "device_bundle":Landroid/os/Bundle;
    if-nez v2, :cond_33

    .line 274
    return-object v1

    .line 275
    :cond_33
    const-string v1, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 276
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v3

    return-object v3

    .line 264
    .end local v0    # "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    .end local v2    # "device_bundle":Landroid/os/Bundle;
    :cond_40
    :goto_40
    return-object v1

    .line 261
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

    .line 240
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3c

    .line 243
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

    const-string v1, "FileDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    .line 245
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 241
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

    .line 250
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    .line 253
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

    const-string v1, "FileDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    .line 255
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 251
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

    .line 230
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3c

    .line 233
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

    const-string v1, "FileDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    .line 235
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 231
    .end local v0    # "action":Ljava/lang/String;
    :cond_3c
    :goto_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final refresh()V
    .registers 6

    .line 164
    const-string/jumbo v0, "refresh"

    const-string v1, "FileDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_34

    .line 169
    :cond_13
    const-string v0, ""

    .line 170
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_23

    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 173
    if-nez v0, :cond_23

    .line 174
    const-string v0, ""

    .line 177
    :cond_23
    new-instance v2, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;

    const-string v3, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 179
    .local v2, "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 182
    return-void

    .line 166
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    :cond_34
    :goto_34
    const-string/jumbo v0, "refresh : mAllShareConnector is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public refresh(Lcom/samsung/android/allshare/Device$DeviceType;)V
    .registers 5
    .param p1, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 186
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

    const-string v2, "FileDeviceFinderImpl"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_3f

    .line 192
    :cond_2a
    new-instance v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;

    const-string v1, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH_TARGET"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 194
    .local v0, "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    const-string v1, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 196
    return-void

    .line 188
    .end local v0    # "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
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

    .line 189
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

    .line 426
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_51

    .line 429
    :cond_b
    if-nez p1, :cond_e

    .line 430
    return-void

    .line 432
    :cond_e
    const-string v0, ""

    .line 433
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 434
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_1e

    .line 435
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 436
    if-nez v0, :cond_1e

    .line 437
    const-string v0, ""

    .line 441
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
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

    .line 443
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 445
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3b
    new-instance v3, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;

    const-string v4, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REGISTER_SEARCH_TARGET_SYNC"

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 447
    .local v3, "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 450
    invoke-virtual {v3}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 451
    return-void

    .line 427
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    :cond_51
    :goto_51
    return-void
.end method

.method public setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V
    .registers 8
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "l"    # Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "FileDeviceFinderImpl"

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4d

    .line 205
    :cond_d
    if-nez p1, :cond_16

    .line 206
    const-string/jumbo v0, "setEventListener error! deviceType is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 210
    :cond_16
    sget-object v0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, "deviceTypeEvent":Ljava/lang/String;
    if-nez v0, :cond_27

    .line 212
    const-string/jumbo v2, "setEventListener error! deviceTypeEvent is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 216
    :cond_27
    iget-object v1, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 217
    .local v1, "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    iget-object v2, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/4 v2, 0x0

    if-nez v1, :cond_41

    if-eqz p2, :cond_41

    .line 220
    iget-object v3, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    goto :goto_4c

    .line 221
    :cond_41
    if-eqz v1, :cond_4c

    if-nez p2, :cond_4c

    .line 222
    iget-object v3, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 226
    :cond_4c
    :goto_4c
    return-void

    .line 201
    .end local v0    # "deviceTypeEvent":Ljava/lang/String;
    .end local v1    # "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :cond_4d
    :goto_4d
    const-string/jumbo v0, "setEventListener error! AllShareService is not connected"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
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

    .line 456
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_51

    .line 459
    :cond_b
    if-nez p1, :cond_e

    .line 460
    return-void

    .line 462
    :cond_e
    const-string v0, ""

    .line 463
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 464
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_1e

    .line 465
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 466
    if-nez v0, :cond_1e

    .line 467
    const-string v0, ""

    .line 471
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
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

    .line 473
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 475
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3b
    new-instance v3, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;

    const-string v4, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_UNREGISTER_SEARCH_TARGET_SYNC"

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 477
    .local v3, "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 480
    invoke-virtual {v3}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 481
    return-void

    .line 457
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
    :cond_51
    :goto_51
    return-void
.end method
