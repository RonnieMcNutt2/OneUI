.class Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;
.super Ljava/lang/Object;
.source "FileDeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FileDeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncActionInvoker"
.end annotation


# instance fields
.field private mMessage:Lcom/sec/android/allshare/iface/CVMessage;

.field final synthetic this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance p1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 396
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;)V
    .registers 3
    .param p2, "action_id"    # Ljava/lang/String;

    .line 398
    iput-object p1, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance p1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 399
    invoke-virtual {p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method invoke()Landroid/os/Bundle;
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/FileDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/FileDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2a

    .line 415
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/FileDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-interface {v0, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v0

    .line 416
    .local v0, "resMessage":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v0, :cond_25

    .line 417
    return-object v1

    .line 419
    :cond_25
    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 413
    .end local v0    # "resMessage":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 408
    return-void
.end method
