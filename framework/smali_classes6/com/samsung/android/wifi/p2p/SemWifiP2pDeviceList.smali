.class public Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;
.super Ljava/lang/Object;
.source "SemWifiP2pDeviceList.java"


# instance fields
.field private final mDevices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method

.method private isInvalidDevice(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z
    .registers 3
    .param p1, "device"    # Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 38
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public clear()Z
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    return-object v0
.end method

.method public getDeviceList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    return-object v0
.end method

.method public remove(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z
    .registers 5
    .param p1, "device"    # Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->isInvalidDevice(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 78
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public remove(Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;)Z
    .registers 6
    .param p1, "list"    # Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "ret":Z
    iget-object v1, p1, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 98
    .local v2, "d":Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->remove(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v0, 0x1

    .line 99
    .end local v2    # "d":Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    :cond_1e
    goto :goto_b

    .line 100
    :cond_1f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 113
    .local v2, "device":Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .end local v2    # "device":Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    goto :goto_f

    .line 115
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->isInvalidDevice(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public updateStatus(Ljava/lang/String;I)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 59
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDeviceList;->mDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 60
    .local v0, "d":Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    if-eqz v0, :cond_14

    .line 61
    invoke-virtual {v0, p2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->updateStatus(I)V

    .line 63
    :cond_14
    return-void
.end method
