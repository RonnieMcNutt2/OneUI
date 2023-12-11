.class final Lcom/samsung/android/allshare/ViewController2Impl;
.super Lcom/samsung/android/allshare/media/ViewController2;
.source "ViewController2Impl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewController2Impl"


# instance fields
.field private mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private mConnectResult:Z

.field private mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field private mDos:Ljava/io/DataOutputStream;

.field private mEventListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2EventListener;

.field private mExcutor:Ljava/util/concurrent/ExecutorService;

.field private mIPAddress:Ljava/lang/String;

.field private mIsConnected:Z

.field private mIsSubscribed:Z

.field private mMACAddress:Ljava/lang/String;

.field private mPacketSize:I

.field mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field private mResponseListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

.field private mSocket:Ljava/net/Socket;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIPAddress(Lcom/samsung/android/allshare/ViewController2Impl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIPAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewController2Impl;)Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectResult(Lcom/samsung/android/allshare/ViewController2Impl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mConnectResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSocket(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/net/Socket;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnect(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ViewController2Impl;->connect(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .registers 19
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/media/ViewController2;-><init>()V

    .line 39
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 41
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mEventListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2EventListener;

    .line 43
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    .line 45
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 47
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mMACAddress:Ljava/lang/String;

    .line 49
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mIPAddress:Ljava/lang/String;

    .line 51
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsConnected:Z

    .line 53
    iput-boolean v3, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsSubscribed:Z

    .line 55
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mSocket:Ljava/net/Socket;

    .line 57
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mDos:Ljava/io/DataOutputStream;

    .line 59
    const/16 v2, 0xd

    iput v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mPacketSize:I

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mExcutor:Ljava/util/concurrent/ExecutorService;

    .line 63
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mConnectResult:Z

    .line 157
    new-instance v5, Lcom/samsung/android/allshare/ViewController2Impl$1;

    .line 158
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/allshare/ViewController2Impl$1;-><init>(Lcom/samsung/android/allshare/ViewController2Impl;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 255
    new-instance v5, Lcom/samsung/android/allshare/ViewController2Impl$2;

    .line 256
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/allshare/ViewController2Impl$2;-><init>(Lcom/samsung/android/allshare/ViewController2Impl;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 66
    if-nez v1, :cond_4a

    .line 68
    const-string v2, "ViewController2Impl"

    const-string v3, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 72
    :cond_4a
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 74
    .local v5, "context":Landroid/content/Context;
    if-eqz v5, :cond_104

    .line 76
    nop

    .line 77
    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 78
    .local v6, "conManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v6, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 84
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    const-string/jumbo v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 85
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v7, :cond_78

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_78

    .line 86
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mMACAddress:Ljava/lang/String;

    .line 88
    :cond_78
    if-eqz v2, :cond_104

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-ne v8, v4, :cond_104

    .line 89
    iget-object v8, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mMACAddress:Ljava/lang/String;

    if-eqz v8, :cond_104

    .line 90
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "strMACPart":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/4 v13, 0x4

    if-lt v10, v11, :cond_bf

    .line 99
    aget-object v10, v8, v3

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 100
    .local v10, "nTempMAC1":I
    aget-object v14, v8, v13

    invoke-static {v14, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 102
    .local v11, "nTempMAC2":I
    or-int/2addr v10, v12

    .line 103
    xor-int/lit16 v11, v11, 0x80

    .line 105
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "%02x"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v3

    .line 106
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    .line 110
    .end local v10    # "nTempMAC1":I
    .end local v11    # "nTempMAC2":I
    :cond_bf
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v8, v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v8, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v8, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mMACAddress:Ljava/lang/String;

    .line 123
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "conManager":Landroid/net/ConnectivityManager;
    .end local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v8    # "strMACPart":[Ljava/lang/String;
    :cond_104
    iput-object v1, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 125
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/allshare/ViewController2Impl;->mIPAddress:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private connect(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "serverIp"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mSocket:Ljava/net/Socket;

    .line 325
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/allshare/ViewController2Impl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/allshare/ViewController2Impl$3;-><init>(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 341
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mConnectResult:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsConnected:Z

    .line 343
    return v0
.end method

.method private float2bytes(F)[B
    .registers 6
    .param p1, "value"    # F

    .line 357
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 359
    .local v0, "array":[B
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 361
    .local v1, "intBits":I
    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x0

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 362
    const v2, 0xff00

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 363
    const/high16 v2, 0xff0000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 364
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 366
    return-object v0
.end method

.method private int2bytes(I)[B
    .registers 5
    .param p1, "i"    # I

    .line 347
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 348
    .local v0, "dest":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 349
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 350
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 351
    shr-int/lit8 v1, p1, 0x19

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 352
    return-object v0
.end method


# virtual methods
.method public connect()V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2e

    .line 148
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 149
    .local v0, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_VIEWCONTROLLER_REQUEST_GET_ZOOM_PORT"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 150
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ViewController2Impl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 154
    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 155
    return-void

    .line 140
    .end local v0    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    if-eqz v0, :cond_37

    .line 141
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController2;Lcom/samsung/android/allshare/ERROR;)V

    .line 145
    :cond_37
    return-void
.end method

.method public disconnect()V
    .registers 3

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsConnected:Z

    .line 199
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1a

    .line 208
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    if-eqz v1, :cond_19

    .line 209
    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsConnected:Z

    .line 210
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;->onDisconnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController2;Lcom/samsung/android/allshare/ERROR;)V

    .line 212
    :cond_19
    return-void

    .line 200
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    if-eqz v0, :cond_23

    .line 201
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;->onDisconnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController2;Lcom/samsung/android/allshare/ERROR;)V

    .line 205
    :cond_23
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_7

    .line 131
    const-string v0, ""

    return-object v0

    .line 133
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_e

    .line 226
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsConnected:Z

    return v0

    .line 222
    :cond_e
    :goto_e
    const-string v0, "ViewController2Impl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public removeEventHandler()V
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 371
    invoke-virtual {v1}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 370
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsSubscribed:Z

    .line 373
    return-void
.end method

.method public setEventListener(Lcom/samsung/android/allshare/media/ViewController2$IViewController2EventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/ViewController2$IViewController2EventListener;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 302
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mEventListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2EventListener;

    .line 304
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    .line 305
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 306
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 305
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsSubscribed:Z

    goto :goto_3a

    .line 308
    :cond_26
    if-eqz v0, :cond_3a

    if-nez p1, :cond_3a

    .line 309
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 310
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 309
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mIsSubscribed:Z

    .line 315
    :cond_3a
    :goto_3a
    return-void

    .line 298
    :cond_3b
    :goto_3b
    const-string v0, "ViewController2Impl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public setResponseListener(Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    .line 319
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    .line 320
    return-void
.end method

.method public setViewAngle(I)V
    .registers 7
    .param p1, "angle"    # I

    .line 231
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_40

    .line 234
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_10

    .line 235
    return-void

    .line 237
    :cond_10
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 238
    .local v1, "buf1":[B
    iget v2, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mPacketSize:I

    new-array v2, v2, [B

    .line 240
    .local v2, "buf":[B
    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 241
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ViewController2Impl;->int2bytes(I)[B

    move-result-object v0

    .line 243
    .end local v1    # "buf1":[B
    .local v0, "buf1":[B
    const/4 v1, 0x1

    array-length v4, v0

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :try_start_23
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDos:Ljava/io/DataOutputStream;

    .line 247
    iget v4, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mPacketSize:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3a} :catch_3b

    .line 252
    goto :goto_3f

    .line 249
    :catch_3b
    move-exception v1

    .line 251
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3f
    return-void

    .line 232
    .end local v0    # "buf1":[B
    .end local v2    # "buf":[B
    :cond_40
    :goto_40
    return-void
.end method

.method public zoom(IIF)V
    .registers 12
    .param p1, "posX"    # I
    .param p2, "posY"    # I
    .param p3, "zoomRatio"    # F

    .line 268
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_5

    .line 269
    return-void

    .line 271
    :cond_5
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 272
    .local v1, "buf1":[B
    new-array v2, v0, [B

    .line 273
    .local v2, "buf2":[B
    new-array v0, v0, [B

    .line 274
    .local v0, "buf3":[B
    iget v3, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mPacketSize:I

    new-array v3, v3, [B

    .line 276
    .local v3, "buf":[B
    const/16 v4, 0x9

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 277
    int-to-float v4, p1

    invoke-direct {p0, v4}, Lcom/samsung/android/allshare/ViewController2Impl;->float2bytes(F)[B

    move-result-object v1

    .line 278
    int-to-float v4, p2

    invoke-direct {p0, v4}, Lcom/samsung/android/allshare/ViewController2Impl;->float2bytes(F)[B

    move-result-object v2

    .line 279
    invoke-direct {p0, p3}, Lcom/samsung/android/allshare/ViewController2Impl;->float2bytes(F)[B

    move-result-object v0

    .line 281
    array-length v4, v1

    const/4 v6, 0x1

    invoke-static {v1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v4, v1

    add-int/2addr v4, v6

    array-length v7, v2

    invoke-static {v2, v5, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    array-length v4, v1

    array-length v7, v2

    add-int/2addr v4, v7

    add-int/2addr v4, v6

    array-length v6, v0

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    :try_start_36
    new-instance v4, Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDos:Ljava/io/DataOutputStream;

    .line 287
    iget v6, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mPacketSize:I

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 288
    iget-object v4, p0, Lcom/samsung/android/allshare/ViewController2Impl;->mDos:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_4e

    .line 292
    goto :goto_52

    .line 289
    :catch_4e
    move-exception v4

    .line 291
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    .end local v4    # "e":Ljava/io/IOException;
    :goto_52
    return-void
.end method
