.class public Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Default;
.super Ljava/lang/Object;
.source "ICaptureProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onImageFormatUpdate(I)V
    .registers 2
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onOutputSurface(Landroid/view/Surface;I)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public onPostviewOutputSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V
    .registers 3
    .param p1, "size"    # Landroid/hardware/camera2/extension/Size;
    .param p2, "postviewSize"    # Landroid/hardware/camera2/extension/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    .registers 4
    .param p2, "resultCallback"    # Landroid/hardware/camera2/extension/IProcessResultImpl;
    .param p3, "isPostviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;",
            "Landroid/hardware/camera2/extension/IProcessResultImpl;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    .local p1, "capturelist":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    return-void
.end method
