.class public Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelSession"
.end annotation


# instance fields
.field private final mDroppedConsumerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

.field private final mModel:Landroid/media/soundtrigger/SoundTriggerManager$Model;

.field private mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

.field private mModelExecutor:Ljava/util/concurrent/Executor;

.field private final mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;


# direct methods
.method static bridge synthetic -$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->wrap(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 12
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .param p2, "model"    # Landroid/media/soundtrigger/SoundModel;
    .param p3, "phrases"    # [Landroid/media/soundtrigger/Phrase;
    .param p4, "injection"    # Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    .line 262
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 295
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    .line 263
    iget-object v1, p2, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p2, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    .line 264
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    iget v4, p2, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    .line 265
    invoke-static {v3, v4}, Landroid/hardware/soundtrigger/ConversionUtil;->sharedMemoryToByteArray(Landroid/os/ParcelFileDescriptor;I)[B

    move-result-object v3

    .line 263
    invoke-static {v1, v2, v3}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->create(Ljava/util/UUID;Ljava/util/UUID;[B)Landroid/media/soundtrigger/SoundTriggerManager$Model;

    move-result-object v1

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModel:Landroid/media/soundtrigger/SoundTriggerManager$Model;

    .line 266
    if-eqz p3, :cond_48

    .line 267
    array-length v0, p3

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "i":I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_47

    aget-object v3, p3, v2

    .line 270
    .local v3, "phrase":Landroid/media/soundtrigger/Phrase;
    iget-object v4, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhrase(Landroid/media/soundtrigger/Phrase;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v6

    aput-object v6, v4, v0

    .line 269
    .end local v3    # "phrase":Landroid/media/soundtrigger/Phrase;
    add-int/lit8 v2, v2, 0x1

    move v0, v5

    goto :goto_35

    .line 272
    .end local v5    # "i":I
    :cond_47
    goto :goto_4a

    .line 273
    :cond_48
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 275
    :goto_4a
    iput-object p4, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method static synthetic lambda$setModelCallback$0(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 2
    .param p0, "droppedConsumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 241
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$wrap$1(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 282
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private wrap(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;>;"
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 280
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    if-eqz v1, :cond_17

    .line 281
    nop

    .line 282
    .local v1, "callback":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 283
    .end local v1    # "callback":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;
    goto :goto_1c

    .line 284
    :cond_17
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_1c
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method public clearModelCallback()V
    .registers 3

    .line 255
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 257
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getPhrases()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-nez v0, :cond_a

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 215
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSoundModel()Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModel:Landroid/media/soundtrigger/SoundTriggerManager$Model;

    return-object v0
.end method

.method public isKeyphrase()Z
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setModelCallback(Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 236
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 239
    :try_start_d
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    if-nez v1, :cond_31

    .line 240
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    .line 241
    .local v2, "droppedConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;>;"
    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 242
    .end local v2    # "droppedConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;>;"
    goto :goto_17

    .line 243
    :cond_2c
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 245
    :cond_31
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    .line 246
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    .line 247
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw v1
.end method

.method public triggerUnloadModel()V
    .registers 4

    .line 189
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->triggerUnloadModel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_20
    .catchall {:try_start_7 .. :try_end_c} :catchall_1e

    .line 194
    nop

    .line 195
    :try_start_d
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_1e
    move-exception v1

    goto :goto_26

    .line 192
    :catch_20
    move-exception v1

    .line 193
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    throw v2

    .line 196
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_1e

    throw v1
.end method
