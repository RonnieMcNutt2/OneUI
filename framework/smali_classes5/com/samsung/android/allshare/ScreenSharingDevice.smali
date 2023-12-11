.class public abstract Lcom/samsung/android/allshare/ScreenSharingDevice;
.super Lcom/samsung/android/allshare/Device;
.source "ScreenSharingDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;,
        Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public abstract connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract connectScreenSharingTV2M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 2

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .registers 2

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 2

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPAdress()Ljava/lang/String;
    .registers 2

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .registers 2

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract setEventListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;)Lcom/samsung/android/allshare/ERROR;
.end method

.method public abstract setResponseListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;)V
.end method
