.class public abstract Landroid/service/voice/VisualQueryDetectionService;
.super Landroid/app/Service;
.source "VisualQueryDetectionService.java"

# interfaces
.implements Landroid/service/voice/SandboxedDetectionInitializer;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VisualQueryDetectionService"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_TIMEOUT_MILLIS:J = 0x4e20L


# instance fields
.field private mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

.field private final mInterface:Landroid/service/voice/ISandboxedDetectionService;

.field private mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;


# direct methods
.method static bridge synthetic -$$Nest$fputmContentCaptureManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/speech/IRecognitionServiceManager;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemoteCallback(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateStateInternal(Landroid/service/voice/VisualQueryDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/VisualQueryDetectionService;->onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Landroid/service/voice/VisualQueryDetectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    .line 91
    new-instance v0, Landroid/service/voice/VisualQueryDetectionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetectionService$1;-><init>(Landroid/service/voice/VisualQueryDetectionService;)V

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    return-void
.end method

.method private onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 11
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/IRemoteCallback;

    .line 198
    nop

    .line 199
    invoke-static {p3}, Landroid/service/voice/SandboxedDetectionInitializer;->createInitializationStatusConsumer(Landroid/os/IRemoteCallback;)Ljava/util/function/IntConsumer;

    move-result-object v6

    .line 200
    .local v6, "intConsumer":Ljava/util/function/IntConsumer;
    const-wide/16 v3, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/VisualQueryDetectionService;->onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V

    .line 201
    return-void
.end method


# virtual methods
.method public final finishQuery()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryFinished()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 323
    nop

    .line 324
    return-void

    .line 320
    :catch_7
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#finishQuery must be only be triggered after calling #streamQuery to be in the query streaming state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final gainedAttention()V
    .registers 3

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionGained()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 258
    nop

    .line 259
    return-void

    .line 256
    :catch_7
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 162
    const-string v0, "content_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0

    .line 164
    :cond_b
    const-string/jumbo v0, "speech_recognition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    if-eqz v0, :cond_1d

    .line 166
    invoke-interface {v0}, Landroid/speech/IRecognitionServiceManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lostAttention()V
    .registers 3

    .line 266
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionLost()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catch_7
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 188
    const-string v0, "android.service.voice.VisualQueryDetectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {v0}, Landroid/service/voice/ISandboxedDetectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 191
    :cond_13
    sget-object v0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.voice.VisualQueryDetectionService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartDetection()V
    .registers 2

    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStopDetection()V
    .registers 1

    .line 248
    return-void
.end method

.method public onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callbackTimeoutMillis"    # J
    .param p5, "statusCallback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 183
    return-void
.end method

.method public final rejectQuery()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryRejected()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 306
    nop

    .line 307
    return-void

    .line 303
    :catch_7
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#rejectQuery must be only be triggered after calling #streamQuery to be in the query streaming state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final streamQuery(Ljava/lang/String;)V
    .registers 5
    .param p1, "partialQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryDetected(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 289
    nop

    .line 290
    return-void

    .line 286
    :catch_a
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#streamQuery must be only be triggered after calling #gainedAttention to be in the attention gained state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
