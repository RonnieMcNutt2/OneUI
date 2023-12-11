.class public final synthetic Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/speech/RecognitionSupportCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/RecognitionSupportCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda1;->f$0:Landroid/speech/RecognitionSupportCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda1;->f$0:Landroid/speech/RecognitionSupportCallback;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->lambda$handleCheckRecognitionSupport$0(Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method
