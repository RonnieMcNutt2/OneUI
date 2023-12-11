.class public final Landroid/service/voice/HotwordDetectionService$Callback;
.super Ljava/lang/Object;
.source "HotwordDetectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Callback"
.end annotation


# instance fields
.field private final mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;


# direct methods
.method private constructor <init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 2
    .param p1, "remoteCallback"    # Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService$Callback;->mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 398
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService$Callback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 6
    .param p1, "result"    # Landroid/service/voice/HotwordDetectedResult;

    .line 407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 409
    .local v0, "persistableBundle":Landroid/os/PersistableBundle;
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {v0}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v1

    .line 410
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v2

    if-gt v1, v2, :cond_18

    goto :goto_3b

    .line 411
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The bundle size of result is larger than max bundle size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of HotwordDetectedResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v1, p0, Landroid/service/voice/HotwordDetectionService$Callback;->mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;

    invoke-interface {v1, p1}, Landroid/service/voice/IDspHotwordDetectionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_42

    .line 420
    nop

    .line 421
    return-void

    .line 418
    :catch_42
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 4
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 433
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$Callback;->mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDspHotwordDetectionCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 438
    nop

    .line 439
    return-void

    .line 436
    :catch_a
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
