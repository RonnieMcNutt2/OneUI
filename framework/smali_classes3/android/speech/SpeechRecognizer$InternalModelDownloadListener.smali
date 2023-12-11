.class Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;
.super Landroid/speech/IModelDownloadListener$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalModelDownloadListener"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mModelDownloadListener:Landroid/speech/ModelDownloadListener;


# direct methods
.method public static synthetic $r8$lambda$-9t527_rNYlqEXtVC8MhLiaw9Gs(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->lambda$onScheduled$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$cDTT7G2icatfdPjnI875eLgB1CI(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->lambda$onSuccess$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pqpYdF_P8NSf6fyl0rJGhFIONFQ(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->lambda$onError$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvJ1Ql5MjLcf_Ad_ujeqZXj1dko(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->lambda$onProgress$0(I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "modelDownloadListener"    # Landroid/speech/ModelDownloadListener;

    .line 1162
    invoke-direct {p0}, Landroid/speech/IModelDownloadListener$Stub;-><init>()V

    .line 1163
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1164
    iput-object p2, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    .line 1165
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizer$InternalModelDownloadListener-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method

.method private synthetic lambda$onError$3(I)V
    .registers 3
    .param p1, "error"    # I

    .line 1184
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0, p1}, Landroid/speech/ModelDownloadListener;->onError(I)V

    return-void
.end method

.method private synthetic lambda$onProgress$0(I)V
    .registers 3
    .param p1, "completedPercent"    # I

    .line 1169
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0, p1}, Landroid/speech/ModelDownloadListener;->onProgress(I)V

    return-void
.end method

.method private synthetic lambda$onScheduled$2()V
    .registers 2

    .line 1179
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0}, Landroid/speech/ModelDownloadListener;->onScheduled()V

    return-void
.end method

.method private synthetic lambda$onSuccess$1()V
    .registers 2

    .line 1174
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0}, Landroid/speech/ModelDownloadListener;->onSuccess()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 4
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda0;-><init>(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1185
    return-void
.end method

.method public onProgress(I)V
    .registers 4
    .param p1, "completedPercent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda3;-><init>(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1170
    return-void
.end method

.method public onScheduled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda1;-><init>(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1180
    return-void
.end method

.method public onSuccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda2;-><init>(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1175
    return-void
.end method
