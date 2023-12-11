.class public Lcom/samsung/android/sume/core/controller/SumeClient;
.super Ljava/lang/Object;
.source "SumeClient.java"

# interfaces
.implements Lcom/samsung/android/sume/core/controller/MediaController;
.implements Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/controller/MediaController<",
        "Ljava/util/concurrent/Future<",
        "Lcom/samsung/android/sume/core/message/Response;",
        ">;>;",
        "Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

.field private final graph:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

.field private volatile serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V
    .registers 5
    .param p1, "serviceProxy"    # Lcom/samsung/android/sume/core/service/ServiceProxy;
    .param p2, "graph"    # Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->graph:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    .line 38
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->getOption()Lcom/samsung/android/sume/core/graph/Graph$Option;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 39
    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V

    .line 45
    :cond_1a
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V

    .line 46
    const/16 v0, 0x384

    const-string v1, "graph"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/sume/core/message/Request;->of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Request;->asOneWay()Lcom/samsung/android/sume/core/message/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    .line 47
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Exception;)Z
    .registers 4
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 40
    sget-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$request$4(Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/service/ServiceProxy;)Ljava/util/concurrent/Future;
    .registers 3
    .param p0, "request"    # Lcom/samsung/android/sume/core/message/Request;
    .param p1, "it"    # Lcom/samsung/android/sume/core/service/ServiceProxy;

    .line 65
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$request$5()V
    .registers 0

    .line 66
    return-void
.end method

.method static synthetic lambda$request$6()Ljava/util/concurrent/Future;
    .registers 3

    .line 66
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, -0x5

    invoke-static {v2}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$run$1(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sume/core/service/ServiceProxy;)Ljava/util/concurrent/Future;
    .registers 4
    .param p0, "inBuffers"    # Ljava/util/List;
    .param p1, "outBuffers"    # Ljava/util/List;
    .param p2, "it"    # Lcom/samsung/android/sume/core/service/ServiceProxy;

    .line 58
    const/16 v0, 0x385

    invoke-static {v0}, Lcom/samsung/android/sume/core/message/Request;->of(I)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/message/Request;->setInputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Request;->setOutputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$run$2()V
    .registers 0

    .line 59
    return-void
.end method

.method static synthetic lambda$run$3()Ljava/util/concurrent/Future;
    .registers 3

    .line 59
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda6;-><init>()V

    const/4 v2, -0x5

    invoke-static {v2}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getExceptionHandler()Lcom/samsung/android/sume/core/functional/ExceptionHandler;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->getExceptionHandler()Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public getGraph()Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->graph:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    return-object v0
.end method

.method public onEvent(Lcom/samsung/android/sume/core/message/Event;)V
    .registers 5
    .param p1, "event"    # Lcom/samsung/android/sume/core/message/Event;

    .line 94
    sget-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Event;->isError()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occur, do force-release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Event;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_39
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v0, :cond_40

    .line 101
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V

    .line 102
    :cond_40
    return-void
.end method

.method public release()V
    .registers 3

    .line 71
    sget-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    if-eqz v0, :cond_22

    .line 73
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    monitor-enter v0

    .line 74
    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    if-eqz v1, :cond_1d

    .line 75
    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/service/ServiceProxy;->release()V

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    .line 77
    iput-object v1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    .line 79
    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v1

    .line 81
    :cond_22
    :goto_22
    return-void
.end method

.method public bridge synthetic request(Lcom/samsung/android/sume/core/message/Request;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "request"    # Lcom/samsung/android/sume/core/message/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/message/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/Request;)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda4;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 64
    return-object v0
.end method

.method public bridge synthetic run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/controller/SumeClient;->run(Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/util/List;Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/concurrent/Future;
    .registers 5
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation

    .line 50
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 51
    .local v0, "outBuffers":[Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-static {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->sharedOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sume/core/controller/SumeClient;->run(Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public run(Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation

    .line 57
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda1;-><init>()V

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 57
    return-object v0
.end method

.method public setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V
    .registers 3
    .param p1, "exceptionHandler"    # Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxy;->setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V

    .line 110
    return-void
.end method

.method public setOnEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .registers 2
    .param p1, "eventListener"    # Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    .line 86
    return-void
.end method
