.class public Landroid/window/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$ScreenCaptureListener;,
        Landroid/window/ScreenCapture$DisplayCaptureArgs;,
        Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;,
        Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;,
        Landroid/window/ScreenCapture$LayerCaptureArgs;,
        Landroid/window/ScreenCapture$CaptureArgs;
    }
.end annotation


# static fields
.field private static final SCREENSHOT_WAIT_TIME_S:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScreenCapture"


# direct methods
.method static bridge synthetic -$$Nest$smgetNativeListenerFinalizer()J
    .registers 2

    invoke-static {}, Landroid/window/ScreenCapture;->getNativeListenerFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeCreateScreenCaptureListener(Ljava/util/function/Consumer;)J
    .registers 3

    invoke-static {p0}, Landroid/window/ScreenCapture;->nativeCreateScreenCaptureListener(Ljava/util/function/Consumer;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeReadListenerFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/window/ScreenCapture;->nativeReadListenerFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteListenerToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/window/ScreenCapture;->nativeWriteListenerToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I
    .registers 4
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$DisplayCaptureArgs;
    .param p1, "captureListener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 64
    invoke-static {p1}, Landroid/window/ScreenCapture$ScreenCaptureListener;->-$$Nest$fgetmNativeObject(Landroid/window/ScreenCapture$ScreenCaptureListener;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCapture;->nativeCaptureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;J)I

    move-result v0

    return v0
.end method

.method public static captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 5
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$DisplayCaptureArgs;

    .line 75
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 76
    .local v0, "syncScreenCapture":Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    invoke-static {p0, v0}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v1

    .line 77
    .local v1, "status":I
    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 78
    return-object v2

    .line 82
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object v2

    .line 83
    :catch_11
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method public static captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I
    .registers 4
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$LayerCaptureArgs;
    .param p1, "captureListener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 173
    invoke-static {p1}, Landroid/window/ScreenCapture$ScreenCaptureListener;->-$$Nest$fgetmNativeObject(Landroid/window/ScreenCapture$ScreenCaptureListener;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCapture;->nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;J)I

    move-result v0

    return v0
.end method

.method public static captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 4
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F

    .line 103
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 6
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F
    .param p3, "format"    # I

    .line 122
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 124
    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 125
    invoke-virtual {v0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    .line 128
    .local v0, "captureArgs":Landroid/window/ScreenCapture$LayerCaptureArgs;
    invoke-static {v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 5
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 135
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 136
    .local v0, "syncScreenCapture":Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    invoke-static {p0, v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v1

    .line 137
    .local v1, "status":I
    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 138
    return-object v2

    .line 142
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object v2

    .line 143
    :catch_11
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method public static captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 7
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F
    .param p3, "format"    # I
    .param p4, "exclude"    # [Landroid/view/SurfaceControl;

    .line 156
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 158
    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 159
    invoke-virtual {v0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 160
    invoke-virtual {v0, p4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    .line 163
    .local v0, "captureArgs":Landroid/window/ScreenCapture$LayerCaptureArgs;
    invoke-static {v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    .registers 4

    .line 772
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 773
    .local v1, "bufferRef":[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v2

    .line 774
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/window/ScreenCapture$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Landroid/window/ScreenCapture$$ExternalSyntheticLambda0;-><init>([Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;)V

    .line 779
    .local v2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;>;"
    new-instance v3, Landroid/window/ScreenCapture$1;

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/window/ScreenCapture$1;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-object v3
.end method

.method private static native getNativeListenerFinalizer()J
.end method

.method static synthetic lambda$createSyncCaptureListener$0([Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 4
    .param p0, "bufferRef"    # [Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "buffer"    # Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 775
    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 776
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 777
    return-void
.end method

.method private static native nativeCaptureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;J)I
.end method

.method private static native nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;J)I
.end method

.method private static native nativeCreateScreenCaptureListener(Ljava/util/function/Consumer;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeReadListenerFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeWriteListenerToParcel(JLandroid/os/Parcel;)V
.end method
