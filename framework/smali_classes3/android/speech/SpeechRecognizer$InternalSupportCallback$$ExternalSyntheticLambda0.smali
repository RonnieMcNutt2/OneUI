.class public final synthetic Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

.field public final synthetic f$1:Landroid/speech/RecognitionSupport;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/SpeechRecognizer$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    iput-object p2, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$1:Landroid/speech/RecognitionSupport;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$1:Landroid/speech/RecognitionSupport;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->$r8$lambda$MMpUEnEd9aWfol7tYXhHeMSEv58(Landroid/speech/SpeechRecognizer$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V

    return-void
.end method
