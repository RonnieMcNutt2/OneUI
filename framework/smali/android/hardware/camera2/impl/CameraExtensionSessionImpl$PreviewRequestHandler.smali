.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

.field private mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

.field private final mClientNotificationsEnabled:Z

.field private final mClientRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

.field private mPendingResultMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private mRequestUpdatedNeeded:Z

.field private final mSingleCapture:Z

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method public static synthetic $r8$lambda$54pBTl0v8iuKxS-PMJfh2eRMVnY(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureFailed$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$9xKLkeWM8BeYT6U5FqeIx1ftdGY(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureSequenceCompleted$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LFro3m_5kCpc3-CC_mSIjJRqMcU(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureCompleted$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lz7QQZ5PLrgPtccTikjT9kvwlJo(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureSequenceAborted$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WyDPzEAfnwhOg6Q4Y9PxOgIcuwo(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$discardPendingRepeatingResults$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yx3O6fMZWW6DnMCxJ82WYKHqjXg(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureStarted$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$yc4dh687tJY5yfgkFAoGqy_PQro(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureCompleted$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureResultHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientNotificationsEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CaptureRequest;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcalculatePruneThreshold(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/util/LongSparseArray;)Ljava/lang/Long;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->calculatePruneThreshold(Landroid/util/LongSparseArray;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V
    .registers 13
    .param p2, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .param p5, "imageCallback"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1595
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;Z)V

    .line 1596
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;Z)V
    .registers 8
    .param p2, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .param p5, "imageCallback"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    .param p6, "singleCapture"    # Z

    .line 1600
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 1585
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    .line 1586
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    .line 1588
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    .line 1590
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    .line 1601
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1602
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1603
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 1604
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    if-eqz p4, :cond_21

    const/4 p1, 0x1

    :cond_21
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    .line 1606
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1607
    iput-boolean p6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    .line 1608
    return-void
.end method

.method private calculatePruneThreshold(Landroid/util/LongSparseArray;)Ljava/lang/Long;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1864
    .local p1, "previewMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 1865
    .local v0, "oldestTimestamp":J
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_6
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 1866
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1867
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 1868
    .local v4, "timestamp":J
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_1f

    cmp-long v6, v4, v0

    if-gez v6, :cond_1f

    .line 1869
    move-wide v0, v4

    .line 1865
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    .end local v4    # "timestamp":J
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1872
    .end local v2    # "idx":I
    :cond_22
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const-wide/16 v2, 0x0

    goto :goto_2f

    :cond_2e
    move-wide v2, v0

    :goto_2f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V
    .registers 11
    .param p1, "idx"    # I
    .param p3, "notifyCurrentIndex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1877
    .local p2, "previewMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    if-gez p1, :cond_3

    .line 1878
    return-void

    .line 1880
    :cond_3
    move v0, p1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_8d

    .line 1881
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1e

    .line 1882
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_86

    .line 1883
    :cond_1e
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v1, :cond_86

    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_86

    if-ne v0, p1, :cond_30

    if-eqz p3, :cond_86

    .line 1885
    :cond_30
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1886
    .local v1, "result":Landroid/hardware/camera2/TotalCaptureResult;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1887
    .local v2, "timestamp":Ljava/lang/Long;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-eqz v3, :cond_53

    .line 1888
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1889
    invoke-static {v6, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    .line 1888
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1892
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview frame drop with timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraExtensionSessionImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1895
    .local v3, "ident":J
    :try_start_73
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_81

    .line 1900
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1901
    goto :goto_86

    .line 1900
    :catchall_81
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1901
    throw v5

    .line 1904
    .end local v1    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v2    # "timestamp":Ljava/lang/Long;
    .end local v3    # "ident":J
    :cond_86
    :goto_86
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 1880
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    .line 1906
    .end local v0    # "i":I
    :cond_8d
    return-void
.end method

.method private synthetic lambda$discardPendingRepeatingResults$6()V
    .registers 4

    .line 1896
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1897
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    .line 1896
    return-void
.end method

.method private synthetic lambda$onCaptureCompleted$4()V
    .registers 4

    .line 1809
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1810
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    .line 1809
    return-void
.end method

.method private synthetic lambda$onCaptureCompleted$5()V
    .registers 4

    .line 1820
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1821
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    .line 1820
    return-void
.end method

.method private synthetic lambda$onCaptureFailed$3()V
    .registers 4

    .line 1710
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private synthetic lambda$onCaptureSequenceAborted$1(I)V
    .registers 4
    .param p1, "sequenceId"    # I

    .line 1663
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1664
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    .line 1663
    return-void
.end method

.method private synthetic lambda$onCaptureSequenceCompleted$2(I)V
    .registers 4
    .param p1, "sequenceId"    # I

    .line 1692
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1693
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    .line 1692
    return-void
.end method

.method private synthetic lambda$onCaptureStarted$0(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .line 1640
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method

.method private resumeInternalRepeatingRequest(Z)V
    .registers 13
    .param p1, "internal"    # Z

    .line 1842
    const-string v0, "Failed to resume internal repeating request!"

    const-string v1, "CameraExtensionSessionImpl"

    if-eqz p1, :cond_21

    .line 1843
    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    new-instance v10, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-static {v2, v3, v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    goto :goto_41

    .line 1847
    :cond_21
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2, v3, p0, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_30} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_30} :catch_36
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_30} :catch_31

    goto :goto_41

    .line 1856
    :catch_31
    move-exception v2

    .line 1857
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1852
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_36
    move-exception v2

    .line 1855
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_41

    .line 1849
    :catch_3b
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to resume internal repeating request, extension service fails to respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    nop

    .line 1859
    :goto_42
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 15
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 1722
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    .line 1723
    .local v0, "notifyClient":Z
    const/4 v1, 0x1

    .line 1725
    .local v1, "processStatus":Z
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1726
    :try_start_8
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1727
    .local v3, "timestamp":Ljava/lang/Long;
    if-eqz v3, :cond_1a8

    .line 1728
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmCaptureResultsSupported(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v4, :cond_36

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-nez v4, :cond_36

    .line 1730
    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 1731
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;I)V

    iput-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    .line 1733
    :cond_36
    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_7d

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v4
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_1b8

    if-nez v4, :cond_7d

    .line 1735
    const/4 v4, 0x0

    .line 1737
    .local v4, "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :try_start_45
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewRequestUpdateProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v7

    .line 1738
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v9

    .line 1737
    invoke-interface {v7, v8, v9}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->process(Landroid/hardware/camera2/impl/CameraMetadataNative;I)Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v7
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_57} :catch_59
    .catchall {:try_start_45 .. :try_end_57} :catchall_1b8

    move-object v4, v7

    .line 1742
    goto :goto_61

    .line 1739
    :catch_59
    move-exception v7

    .line 1740
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_5a
    const-string v8, "CameraExtensionSessionImpl"

    const-string v9, "Extension service does not respond during processing!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_1b8

    .line 1743
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_61
    if-eqz v4, :cond_79

    .line 1745
    :try_start_63
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v5, v4, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    .line 1746
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_6a} :catch_76
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_63 .. :try_end_6a} :catch_6b
    .catchall {:try_start_63 .. :try_end_6a} :catchall_1b8

    goto :goto_77

    .line 1751
    :catch_6b
    move-exception v5

    .line 1752
    .local v5, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_6c
    const-string v7, "CameraExtensionSessionImpl"

    const-string v8, "Failed to update repeating request settings!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    nop

    .end local v5    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto/16 :goto_164

    .line 1747
    :catch_76
    move-exception v5

    .line 1753
    :goto_77
    goto/16 :goto_164

    .line 1755
    :cond_79
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    goto/16 :goto_164

    .line 1757
    .end local v4    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_7d
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v4

    if-ne v4, v6, :cond_164

    .line 1759
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    .line 1761
    .local v4, "idx":I
    if-ltz v4, :cond_b9

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v7, :cond_b9

    .line 1763
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-eqz v7, :cond_b2

    .line 1764
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1765
    invoke-static {v10, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v10

    .line 1764
    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1767
    :cond_b2
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-direct {p0, v4, v7, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V

    goto/16 :goto_165

    .line 1768
    :cond_b9
    if-ltz v4, :cond_153

    .line 1770
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    .line 1771
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/media/Image;

    .line 1770
    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$sminitializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object v7
    :try_end_cf
    .catchall {:try_start_6c .. :try_end_cf} :catchall_1b8

    .line 1773
    .local v7, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :try_start_cf
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-virtual {v8, v7, p3, v9}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/extension/IProcessResultImpl;)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_da} :catch_114
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_da} :catch_f5
    .catchall {:try_start_cf .. :try_end_da} :catchall_f3

    .line 1791
    :try_start_da
    iget-object v8, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1792
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/Image;

    :goto_ef
    invoke-virtual {v8}, Landroid/media/Image;->close()V
    :try_end_f2
    .catchall {:try_start_da .. :try_end_f2} :catchall_1b8

    .line 1793
    goto :goto_133

    .line 1791
    :catchall_f3
    move-exception v5

    goto :goto_139

    .line 1779
    :catch_f5
    move-exception v8

    .line 1787
    .local v8, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 1788
    :try_start_f7
    const-string v9, "CameraExtensionSessionImpl"

    const-string v10, "Runtime exception encountered during buffer processing, dropping frame!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_f3

    .line 1791
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :try_start_fe
    iget-object v8, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1792
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/Image;
    :try_end_113
    .catchall {:try_start_fe .. :try_end_113} :catchall_1b8

    goto :goto_ef

    .line 1775
    :catch_114
    move-exception v8

    .line 1776
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1777
    :try_start_116
    const-string v9, "CameraExtensionSessionImpl"

    const-string v10, "Extension service does not respond during processing, dropping frame!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_116 .. :try_end_11d} :catchall_f3

    .line 1791
    .end local v8    # "e":Landroid/os/RemoteException;
    :try_start_11d
    iget-object v8, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1792
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/Image;

    goto :goto_ef

    .line 1794
    :goto_133
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-direct {p0, v4, v8, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V

    .line 1795
    .end local v7    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    goto :goto_165

    .line 1791
    .restart local v7    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :goto_139
    iget-object v6, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1792
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 1793
    nop

    .end local v0    # "notifyClient":Z
    .end local v1    # "processStatus":Z
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    throw v5

    .line 1797
    .end local v7    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    .restart local v0    # "notifyClient":Z
    .restart local v1    # "processStatus":Z
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_153
    const/4 v0, 0x0

    .line 1798
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_165

    .line 1757
    .end local v4    # "idx":I
    :cond_164
    :goto_164
    nop

    .line 1805
    :goto_165
    if-eqz v0, :cond_1af

    .line 1806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_16b
    .catchall {:try_start_11d .. :try_end_16b} :catchall_1b8

    .line 1808
    .local v4, "ident":J
    if-eqz v1, :cond_193

    .line 1809
    :try_start_16d
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1813
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-eqz v7, :cond_19d

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v7

    if-eq v7, v6, :cond_19d

    .line 1815
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1816
    invoke-static {v9, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    .line 1815
    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V

    goto :goto_19d

    .line 1819
    :cond_193
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19d
    .catchall {:try_start_16d .. :try_end_19d} :catchall_1a2

    .line 1826
    :cond_19d
    :goto_19d
    :try_start_19d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    nop

    .line 1828
    .end local v4    # "ident":J
    goto :goto_1af

    .line 1826
    .restart local v4    # "ident":J
    :catchall_1a2
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    nop

    .end local v0    # "notifyClient":Z
    .end local v1    # "processStatus":Z
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    throw v6

    .line 1830
    .end local v4    # "ident":J
    .restart local v0    # "notifyClient":Z
    .restart local v1    # "processStatus":Z
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_1a8
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "Result without valid sensor timestamp!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    .end local v3    # "timestamp":Ljava/lang/Long;
    :cond_1af
    :goto_1af
    monitor-exit v2
    :try_end_1b0
    .catchall {:try_start_19d .. :try_end_1b0} :catchall_1b8

    .line 1835
    if-nez v0, :cond_1b7

    .line 1836
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationSuccess(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1838
    :cond_1b7
    return-void

    .line 1833
    :catchall_1b8
    move-exception v3

    :try_start_1b9
    monitor-exit v2
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1b8

    throw v3
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 8
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 1706
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_1b

    .line 1707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1709
    .local v0, "ident":J
    :try_start_8
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 1713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1714
    goto :goto_1b

    .line 1713
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1714
    throw v2

    .line 1716
    .end local v0    # "ident":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 1653
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1654
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmInternalRepeatingRequestEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    if-nez v1, :cond_15

    .line 1655
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->resumeInternalRepeatingRequest(Z)V

    .line 1657
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_38

    .line 1659
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_32

    .line 1660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1662
    .local v0, "ident":J
    :try_start_1e
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2d

    .line 1667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1668
    nop

    .line 1669
    .end local v0    # "ident":J
    goto :goto_37

    .line 1667
    .restart local v0    # "ident":J
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1668
    throw v2

    .line 1670
    .end local v0    # "ident":J
    :cond_32
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1672
    :goto_37
    return-void

    .line 1657
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 1679
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1680
    :try_start_5
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    if-nez v1, :cond_14

    .line 1681
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    .line 1682
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->resumeInternalRepeatingRequest(Z)V

    goto :goto_24

    .line 1683
    :cond_14
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmInternalRepeatingRequestEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    if-nez v1, :cond_24

    .line 1684
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->resumeInternalRepeatingRequest(Z)V

    .line 1686
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_41

    .line 1688
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_40

    .line 1689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1691
    .local v0, "ident":J
    :try_start_2d
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_3b

    .line 1696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1697
    goto :goto_40

    .line 1696
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1697
    throw v2

    .line 1699
    .end local v0    # "ident":J
    :cond_40
    :goto_40
    return-void

    .line 1686
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 12
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 1615
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1618
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    if-nez v1, :cond_5c

    .line 1619
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_43

    .line 1621
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v1, :cond_31

    .line 1622
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmClientRepeatingRequestSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;

    move-result-object v2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmClientRepeatingRequestSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;

    move-result-object v4

    .line 1623
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$smnativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    .line 1622
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    goto :goto_3b

    .line 1625
    :cond_31
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    .line 1627
    :goto_3b
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;

    invoke-direct {v1, p0, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback-IA;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    goto :goto_5c

    .line 1629
    :cond_43
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v1, :cond_53

    .line 1630
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmRepeatingRequestImageWriter(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/media/ImageWriter;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/media/ImageWriter;)V

    goto :goto_5a

    .line 1631
    :cond_53
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback-IA;)V

    :goto_5a
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    .line 1634
    :cond_5c
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_84

    .line 1636
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_78

    .line 1637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1639
    .local v0, "ident":J
    :try_start_65
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p3, p4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_73

    .line 1643
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1644
    goto :goto_78

    .line 1643
    :catchall_73
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1644
    throw v2

    .line 1647
    .end local v0    # "ident":J
    :cond_78
    :goto_78
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V

    .line 1648
    return-void

    .line 1634
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1
.end method
