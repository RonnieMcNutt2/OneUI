.class Landroid/speech/SpeechRecognizer$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 316
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    goto :goto_50

    .line 342
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;

    .line 344
    .local v0, "modelDownloadListenerArgs":Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;
    iget-object v1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v2, v0, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    goto :goto_50

    .line 337
    .end local v0    # "modelDownloadListenerArgs":Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;

    .line 338
    .local v0, "args":Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;
    iget-object v1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v2, v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    .line 340
    goto :goto_50

    .line 334
    .end local v0    # "args":Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;
    :pswitch_26
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizer;Landroid/content/ComponentName;)V

    .line 335
    goto :goto_50

    .line 331
    :pswitch_30
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/RecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V

    .line 332
    goto :goto_50

    .line 328
    :pswitch_3a
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizer;)V

    .line 329
    goto :goto_50

    .line 325
    :pswitch_40
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizer;)V

    .line 326
    goto :goto_50

    .line 322
    :pswitch_46
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V

    .line 323
    nop

    .line 350
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_16
        :pswitch_6
    .end packed-switch
.end method
