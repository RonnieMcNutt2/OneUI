.class Lcom/samsung/android/speech/PDTAudioTask$1;
.super Landroid/os/Handler;
.source "PDTAudioTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/speech/PDTAudioTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/speech/PDTAudioTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/speech/PDTAudioTask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/speech/PDTAudioTask;

    .line 348
    iput-object p1, p0, Lcom/samsung/android/speech/PDTAudioTask$1;->this$0:Lcom/samsung/android/speech/PDTAudioTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 350
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "recognition_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask$1;->this$0:Lcom/samsung/android/speech/PDTAudioTask;

    invoke-static {v1}, Lcom/samsung/android/speech/PDTAudioTask;->-$$Nest$fgetm_listener(Lcom/samsung/android/speech/PDTAudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 352
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask$1;->this$0:Lcom/samsung/android/speech/PDTAudioTask;

    invoke-static {v1}, Lcom/samsung/android/speech/PDTAudioTask;->-$$Nest$fgetm_listener(Lcom/samsung/android/speech/PDTAudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;->onResults([Ljava/lang/String;)V

    .line 354
    :cond_1c
    return-void
.end method
