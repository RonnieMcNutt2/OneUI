.class public final synthetic Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;

    iput p2, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;

    iget v1, p0, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;->$r8$lambda$pqpYdF_P8NSf6fyl0rJGhFIONFQ(Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;I)V

    return-void
.end method
