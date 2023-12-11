.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;
.super Ljava/lang/Object;
.source "CameraAdvancedExtensionSessionImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageReaderHandler"
.end annotation


# instance fields
.field private final mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

.field private final mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

.field private final mPhysicalCameraId:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;)V
    .registers 5
    .param p1, "outputConfigId"    # I
    .param p2, "iImageProcessor"    # Landroid/hardware/camera2/extension/IImageProcessorImpl;
    .param p3, "physicalCameraId"    # Ljava/lang/String;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    new-instance v0, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    .line 961
    iput p1, v0, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 962
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    .line 963
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mPhysicalCameraId:Ljava/lang/String;

    .line 964
    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;-><init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 8
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 968
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    if-nez v1, :cond_7

    .line 969
    return-void

    .line 974
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_b} :catch_b4

    .line 978
    .local v1, "img":Landroid/media/Image;
    nop

    .line 979
    if-nez v1, :cond_14

    .line 980
    const-string v2, "Invalid image!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void

    .line 985
    :cond_14
    :try_start_14
    invoke-virtual {p1, v1}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_aa

    .line 990
    nop

    .line 992
    new-instance v2, Landroid/hardware/camera2/extension/ParcelImage;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/ParcelImage;-><init>()V

    .line 993
    .local v2, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    invoke-virtual {v1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    .line 995
    :try_start_23
    invoke-virtual {v1}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v3

    .line 996
    .local v3, "fd":Landroid/hardware/SyncFence;
    invoke-virtual {v3}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 997
    invoke-virtual {v3}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, v2, Landroid/hardware/camera2/extension/ParcelImage;->fence:Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_33} :catch_34

    .line 1001
    .end local v3    # "fd":Landroid/hardware/SyncFence;
    :cond_33
    goto :goto_3a

    .line 999
    :catch_34
    move-exception v3

    .line 1000
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Failed to parcel buffer fence!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3a
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->width:I

    .line 1003
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->height:I

    .line 1004
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->format:I

    .line 1005
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->timestamp:J

    .line 1006
    invoke-virtual {v1}, Landroid/media/Image;->getTransform()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->transform:I

    .line 1007
    invoke-virtual {v1}, Landroid/media/Image;->getScalingMode()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->scalingMode:I

    .line 1008
    invoke-virtual {v1}, Landroid/media/Image;->getPlaneCount()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->planeCount:I

    .line 1009
    invoke-virtual {v1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->crop:Landroid/graphics/Rect;

    .line 1012
    :try_start_6a
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mPhysicalCameraId:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v5}, Landroid/hardware/camera2/extension/IImageProcessorImpl;->onNextImageAvailable(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/ParcelImage;Ljava/lang/String;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_7f
    .catchall {:try_start_6a .. :try_end_73} :catchall_7d

    .line 1018
    nop

    :goto_74
    iget-object v0, v2, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1019
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1020
    goto :goto_a0

    .line 1018
    :catchall_7d
    move-exception v0

    goto :goto_a1

    .line 1014
    :catch_7f
    move-exception v3

    .line 1015
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to propagate image buffer on output surface id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extension service does not respond!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_80 .. :try_end_9e} :catchall_7d

    .line 1018
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_74

    .line 1021
    :goto_a0
    return-void

    .line 1018
    :goto_a1
    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1019
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1020
    throw v0

    .line 986
    .end local v2    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :catch_aa
    move-exception v2

    .line 987
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to detach image"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 989
    return-void

    .line 975
    .end local v1    # "img":Landroid/media/Image;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_b4
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Failed to acquire image, too many images pending!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method
