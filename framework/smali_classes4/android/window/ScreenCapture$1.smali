.class Landroid/window/ScreenCapture$1;
.super Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$bufferRef:[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field final synthetic val$consumer:Ljava/util/function/Consumer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 5

    .line 779
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;>;"
    iput-object p2, p0, Landroid/window/ScreenCapture$1;->val$consumer:Ljava/util/function/Consumer;

    iput-object p3, p0, Landroid/window/ScreenCapture$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Landroid/window/ScreenCapture$1;->val$bufferRef:[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;-><init>(Ljava/util/function/Consumer;)V

    .line 784
    iput-object p2, p0, Landroid/window/ScreenCapture$1;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 5

    .line 789
    :try_start_0
    iget-object v0, p0, Landroid/window/ScreenCapture$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 790
    iget-object v0, p0, Landroid/window/ScreenCapture$1;->val$bufferRef:[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 791
    :catch_f
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ScreenCapture"

    const-string v2, "Failed to wait for screen capture result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    const/4 v1, 0x0

    return-object v1
.end method
