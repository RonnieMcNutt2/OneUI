.class public interface abstract Landroid/speech/RecognitionListener;
.super Ljava/lang/Object;
.source "RecognitionListener.java"


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onBufferReceived([B)V
.end method

.method public onEndOfSegmentedSession()V
    .registers 1

    .line 117
    return-void
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method public onLanguageDetection(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "results"    # Landroid/os/Bundle;

    .line 147
    return-void
.end method

.method public abstract onPartialResults(Landroid/os/Bundle;)V
.end method

.method public abstract onReadyForSpeech(Landroid/os/Bundle;)V
.end method

.method public abstract onResults(Landroid/os/Bundle;)V
.end method

.method public abstract onRmsChanged(F)V
.end method

.method public onSegmentResults(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "segmentResults"    # Landroid/os/Bundle;

    .line 111
    return-void
.end method
