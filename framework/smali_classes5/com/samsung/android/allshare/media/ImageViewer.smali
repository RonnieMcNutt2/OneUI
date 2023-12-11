.class public abstract Lcom/samsung/android/allshare/media/ImageViewer;
.super Lcom/samsung/android/allshare/Device;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;,
        Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;,
        Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 110
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
.end method

.method public abstract getIcon()Landroid/net/Uri;
.end method

.method public abstract getModelName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;
.end method

.method public abstract getSlideShowPlayer()Lcom/samsung/android/allshare/media/SlideShowPlayer;
.end method

.method public abstract getState()V
.end method

.method public abstract getViewController()Lcom/samsung/android/allshare/media/ViewController;
.end method

.method public abstract getViewController2()Lcom/samsung/android/allshare/media/ViewController2;
.end method

.method public abstract getViewerState()Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
.end method

.method public abstract isRedirectSupportable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSupportRedirect()Z
.end method

.method public abstract prepare(Lcom/samsung/android/allshare/Item;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setEventListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;)V
.end method

.method public abstract setResponseListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;)V
.end method

.method public abstract show(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zoom(IIII)V
.end method
