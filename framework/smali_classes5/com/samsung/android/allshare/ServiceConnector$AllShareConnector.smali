.class final Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/samsung/android/allshare/IAllShareConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllShareConnector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    }
.end annotation


# static fields
.field public static final INVALID_REQUEST_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "AllShareConnector"


# instance fields
.field private mAllShareConnection:Landroid/content/ServiceConnection;

.field private mComponentName:Landroid/content/ComponentName;

.field private mConnecting:Z

.field private mConnectionCallback:Landroid/os/Handler$Callback;

.field private mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventHandlerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mID:Ljava/lang/String;

.field private mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriberTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConstData(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmComponentName(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmISubscriber(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Lcom/sec/android/allshare/iface/ISubscriber;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    return-void
.end method

.method static bridge synthetic -$$Nest$monConnected(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->onConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisconnected(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->onDisconnected()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 745
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    .line 750
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    .line 753
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 759
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 761
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    .line 763
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    .line 765
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    .line 985
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;-><init>(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    .line 1010
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;-><init>(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 773
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 776
    if-eqz p2, :cond_54

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_54

    .line 779
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    goto :goto_5c

    .line 777
    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    .line 784
    :goto_5c
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "str_array":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    .line 787
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    invoke-direct {v1}, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    .line 788
    return-void
.end method

.method private addHandlerToHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .registers 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 1369
    :try_start_3
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 1370
    .local v1, "value":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1371
    nop

    .end local v1    # "value":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    monitor-exit v0

    .line 1372
    return-void

    .line 1371
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private bindAllShareService()Z
    .registers 8

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : bindAllShareService..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 836
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    if-nez v0, :cond_3e

    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : bindAllShareService error - context is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return v2

    .line 841
    :cond_3e
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v3, "bind_service":Landroid/content/Intent;
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    const-string v5, "com.samsung.android.allshare.service.mediashare"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 845
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6f

    .line 846
    :cond_60
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    const-string v5, "com.samsung.android.allshare.service.fileshare"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 847
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    :cond_6f
    :goto_6f
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    .line 851
    .local v4, "bindResult":Z
    if-nez v4, :cond_95

    .line 854
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->startAllShareLauncher()Z

    .line 856
    iput-boolean v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : bindAllShareService FAIL - check if app use ApplicationContext or not"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return v2

    .line 864
    :cond_95
    const/4 v1, 0x1

    return v1
.end method

.method private notifyAllShareDisable()V
    .registers 4

    .line 973
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_12

    .line 974
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 975
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_DISCONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 976
    .local v1, "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 977
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 980
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    :cond_12
    return-void
.end method

.method private notifyAllShareEnable()V
    .registers 4

    .line 958
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_12

    .line 959
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 960
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_CONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 961
    .local v1, "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 965
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    :cond_12
    return-void
.end method

.method private onConnected()V
    .registers 3

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 937
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->notifyAllShareEnable()V

    .line 938
    return-void
.end method

.method private onDisconnected()V
    .registers 3

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 948
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->notifyAllShareDisable()V

    .line 950
    return-void
.end method

.method private registerSvcCastReceiver()V
    .registers 5

    .line 872
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 874
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_25

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registerSvcCastReceiver error - context is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllShareConnector"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 877
    :cond_25
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 878
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v2, v2, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v2, v2, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 883
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_3e
    return-void
.end method

.method private removeHandlerFromHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .registers 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1376
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 1377
    :try_start_3
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 1378
    .local v1, "value":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1379
    nop

    .end local v1    # "value":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    monitor-exit v0

    .line 1380
    return-void

    .line 1379
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private startAllShareLauncher()Z
    .registers 8

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1088
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    const-string v2, "AllShareConnector"

    if-nez v0, :cond_26

    .line 1089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startAllShareLauncher error - context is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return v1

    .line 1093
    :cond_26
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    const-string v5, "com.samsung.android.allshare.service.mediashare"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1096
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4e

    .line 1097
    :cond_3f
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    const-string v5, "com.samsung.android.allshare.service.fileshare"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1098
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_6d

    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : AllShare Service is not installed yet..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_6c} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6c} :catch_70

    .line 1103
    return v1

    .line 1111
    :cond_6d
    nop

    .line 1113
    const/4 v1, 0x1

    return v1

    .line 1108
    :catch_70
    move-exception v4

    .line 1109
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startAllShareLauncher exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1110
    return v1

    .line 1105
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8a
    move-exception v4

    .line 1106
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startAllShareLauncher error...SecurityException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1107
    return v1
.end method

.method private unregisterSvcCastReceiver()V
    .registers 5

    .line 891
    const-string v0, "AllShareConnector"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 893
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_25

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unregisterSvcCastReceiver error - context is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 897
    :cond_25
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 900
    .end local v1    # "context":Landroid/content/Context;
    :goto_2a
    goto :goto_32

    .line 898
    :catch_2b
    move-exception v1

    .line 899
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterSvcCastReceiver Exception "

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 901
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_32
    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .registers 4

    monitor-enter p0

    .line 809
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 810
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Already trying to connecting...wait.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_54

    .line 811
    monitor-exit p0

    return-void

    .line 813
    .end local p0    # "this":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    :cond_22
    :try_start_22
    iput-boolean v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 815
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 816
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Already connected to AllShare service framework"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_54

    .line 817
    monitor-exit p0

    return-void

    .line 821
    :cond_46
    :try_start_46
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->startAllShareLauncher()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 822
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->bindAllShareService()Z

    .line 826
    :cond_4f
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->registerSvcCastReceiver()V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_54

    .line 827
    monitor-exit p0

    return-void

    .line 808
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyInstance()V
    .registers 4

    .line 1129
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->disconnect()V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before destroyInstance, mConnecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 1135
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after destroyInstance, mConnecting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public disconnect()V
    .registers 5

    .line 909
    const-string v0, "AllShareConnector"

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->unregisterSvcCastReceiver()V

    .line 911
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_46

    .line 913
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 915
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_2c

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disconnect error - context is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 918
    :cond_2c
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    .line 921
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_40

    .line 925
    .end local v1    # "context":Landroid/content/Context;
    :cond_3f
    :goto_3f
    goto :goto_46

    .line 923
    :catch_40
    move-exception v1

    .line 924
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "disconnect Exception"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 927
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method

.method public getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .line 1062
    const-string v0, "AllShareConnector"

    const/4 v1, 0x0

    .line 1065
    .local v1, "filePath":Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    invoke-interface {v2, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1067
    if-nez v1, :cond_23

    .line 1068
    const-string v0, ""
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-object v1, v0

    goto :goto_23

    .line 1073
    :catch_10
    move-exception v2

    .line 1074
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getCaptionFilePathFromURI Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1075
    const-string v1, ""

    goto :goto_24

    .line 1070
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v2

    .line 1071
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "getCaptionFilePathFromURI RemoteException"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1072
    const-string v1, ""

    .line 1076
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    nop

    .line 1078
    :goto_24
    return-object v1
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 3

    .line 1384
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1385
    return-object v1

    .line 1386
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1387
    return-object v1

    .line 1388
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .registers 5

    .line 1316
    const-string v0, "AllShareConnector"

    const/4 v1, 0x0

    .line 1319
    .local v1, "version":Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    invoke-interface {v2}, Lcom/sec/android/allshare/iface/ISubscriber;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1321
    if-nez v1, :cond_23

    .line 1322
    const-string v0, "1.0.0"
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-object v1, v0

    goto :goto_23

    .line 1326
    :catch_10
    move-exception v2

    .line 1327
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getServiceVersion Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1328
    const-string v1, ""

    goto :goto_24

    .line 1323
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v2

    .line 1324
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "getServiceVersion RemoteException"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1325
    const-string v1, ""

    .line 1329
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    nop

    .line 1331
    :goto_24
    return-object v1
.end method

.method public isAllShareServiceConnected()Z
    .registers 2

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v0, :cond_6

    .line 1052
    const/4 v0, 0x0

    return v0

    .line 1054
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J
    .registers 11
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;
    .param p2, "handler"    # Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 1148
    const-string v0, "AllShareConnector"

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_85

    if-nez p2, :cond_b

    goto :goto_85

    .line 1153
    :cond_b
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_19

    .line 1154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1158
    :cond_19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1159
    .local v4, "req_id":J
    invoke-virtual {p1, v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgID(J)V

    .line 1162
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgType(I)V

    .line 1163
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 1169
    :try_start_2c
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v1, v6, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->requestCVAsync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " requestCVMAsync fail...Maybe Invalid Action Request"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4e} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4e} :catch_51

    .line 1172
    return-wide v2

    .line 1180
    :cond_4f
    nop

    .line 1182
    return-wide v4

    .line 1177
    :catch_51
    move-exception v1

    .line 1178
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestCVMAsync error...Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1179
    return-wide v2

    .line 1174
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_6b
    move-exception v1

    .line 1175
    .local v1, "rex":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestCVMAsync error...RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1176
    return-wide v2

    .line 1149
    .end local v1    # "rex":Landroid/os/RemoteException;
    .end local v4    # "req_id":J
    :cond_85
    :goto_85
    return-wide v2
.end method

.method public requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;
    .registers 7
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 1192
    const-string v0, "AllShareConnector"

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-eqz v1, :cond_61

    if-nez p1, :cond_9

    goto :goto_61

    .line 1197
    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_17

    .line 1198
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1202
    :cond_17
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgType(I)V

    .line 1205
    const/4 v1, 0x0

    .line 1207
    .local v1, "res":Lcom/sec/android/allshare/iface/CVMessage;
    :try_start_1c
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->requestCVSync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_40
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_26

    move-object v1, v0

    goto :goto_5f

    .line 1211
    :catch_26
    move-exception v2

    .line 1212
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestCVMSync error...Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_60

    .line 1208
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_40
    move-exception v2

    .line 1209
    .local v2, "rex":Landroid/os/RemoteException;
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    move-object v1, v3

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestCVMSync error...RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1213
    .end local v2    # "rex":Landroid/os/RemoteException;
    :goto_5f
    nop

    .line 1216
    :goto_60
    return-object v1

    .line 1193
    .end local v1    # "res":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_61
    :goto_61
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    return-object v0
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 802
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 803
    return-void
.end method

.method public setProfileConstData(Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;)V
    .registers 2
    .param p1, "data"    # Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    .line 791
    if-eqz p1, :cond_4

    .line 792
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    .line 794
    :cond_4
    return-void
.end method

.method public subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z
    .registers 10
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1229
    const-string v0, "AllShareConnector"

    const/4 v1, 0x0

    .line 1231
    .local v1, "res":Z
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v2, :cond_8

    .line 1233
    return v1

    .line 1236
    :cond_8
    if-nez p2, :cond_10

    .line 1237
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p2, v2

    .line 1240
    :cond_10
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1241
    .local v2, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 1242
    .local v3, "messenger":Landroid/os/Messenger;
    invoke-virtual {v2, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 1245
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->addHandlerToHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 1248
    :try_start_21
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v5, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/sec/android/allshare/iface/ISubscriber;->subscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_29} :catch_2b

    move v1, v0

    .line 1253
    :goto_2a
    goto :goto_3b

    .line 1251
    :catch_2b
    move-exception v4

    .line 1252
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "subscribeAllShareEvent RuntimeException"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3b

    .line 1249
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_33
    move-exception v4

    .line 1250
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "subscribeAllShareEvent RemoteException"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_2a

    .line 1255
    :goto_3b
    return v1
.end method

.method public unsubscribeAllEvents()V
    .registers 8

    .line 1296
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 1298
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    .line 1300
    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1301
    .local v1, "copySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1302
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    .line 1304
    .local v3, "value":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v4, v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iget-object v6, v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 1305
    .end local v3    # "value":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    goto :goto_f

    .line 1306
    :cond_25
    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1307
    .end local v1    # "copySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;>;"
    monitor-exit v0

    .line 1308
    return-void

    .line 1307
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .registers 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1266
    const-string v0, "AllShareConnector"

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v1, :cond_7

    .line 1268
    return-void

    .line 1271
    :cond_7
    if-nez p2, :cond_f

    .line 1272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p2, v1

    .line 1275
    :cond_f
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1276
    .local v1, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 1277
    .local v2, "messenger":Landroid/os/Messenger;
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 1279
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->removeHandlerFromHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 1282
    :try_start_20
    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/sec/android/allshare/iface/ISubscriber;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_37

    .line 1285
    :catch_28
    move-exception v3

    .line 1286
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "unsubscribeAllShareEvent RuntimeException"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_38

    .line 1283
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_30
    move-exception v3

    .line 1284
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "unsubscribeAllShareEvent RemoteException"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1287
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_37
    nop

    .line 1289
    :goto_38
    return-void
.end method
