.class public abstract Lcom/samsung/android/allshare/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/Device$DeviceType;,
        Lcom/samsung/android/allshare/Device$InformationType;,
        Lcom/samsung/android/allshare/Device$DeviceDomain;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
.end method

.method public abstract getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getIPAddress()Ljava/lang/String;
.end method

.method public abstract getIPAdress()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIcon()Landroid/net/Uri;
.end method

.method public abstract getIconList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModelName()Ljava/lang/String;
.end method

.method public abstract getNIC()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getP2pMacAddress()Ljava/lang/String;
.end method

.method public abstract getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
.end method

.method public abstract getScreenSharingInfo()Ljava/lang/String;
.end method

.method public abstract getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
.end method

.method public abstract getScreenSharingP2pMacAddr()Ljava/lang/String;
.end method

.method public abstract getSecProductP2pMacAddr()Ljava/lang/String;
.end method

.method public abstract isSeekableOnPaused()Z
.end method

.method public abstract isSupportedByType(I)Z
.end method

.method public abstract isWholeHomeAudio()Z
.end method

.method public abstract requestMobileToTV(Ljava/lang/String;I)V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Ip["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Model["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    return-object v0
.end method
