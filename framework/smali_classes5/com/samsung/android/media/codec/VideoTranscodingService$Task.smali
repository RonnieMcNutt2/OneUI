.class Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
.super Ljava/lang/Object;
.source "VideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/VideoTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private final mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mID:Ljava/lang/String;

.field private final mMode:I

.field private mState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMode(Lcom/samsung/android/media/codec/VideoTranscodingService$Task;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mMode:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "callback"    # Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mID:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mMode:I

    .line 43
    iput-object p3, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    .line 46
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .registers 5
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 78
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    invoke-interface {v1}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_11

    .line 82
    nop

    .line 84
    const/4 v0, 0x1

    return v0

    .line 79
    :catch_11
    move-exception v1

    .line 80
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    return v0
.end method

.method public start()V
    .registers 2

    .line 57
    iget v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    if-eqz v0, :cond_5

    .line 58
    return-void

    .line 60
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    .line 62
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    invoke-interface {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->onReady()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 65
    goto :goto_12

    .line 63
    :catch_e
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public stop()V
    .registers 3

    .line 69
    iget v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 70
    return-void

    .line 72
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    .line 73
    return-void
.end method

.method public unlinkToDeath()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_10

    .line 89
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    invoke-interface {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 91
    :cond_10
    return-void
.end method
