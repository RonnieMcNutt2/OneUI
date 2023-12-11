.class Landroid/speech/RecognitionService$1;
.super Landroid/os/Handler;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method constructor <init>(Landroid/speech/RecognitionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/speech/RecognitionService;

    .line 94
    iput-object p1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    goto :goto_54

    .line 117
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/RecognitionService$ModelDownloadArgs;

    .line 118
    .local v0, "modelDownloadArgs":Landroid/speech/RecognitionService$ModelDownloadArgs;
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v4, v0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mListener:Landroid/speech/IModelDownloadListener;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchTriggerModelDownload(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    goto :goto_54

    .line 112
    .end local v0    # "modelDownloadArgs":Landroid/speech/RecognitionService$ModelDownloadArgs;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;

    .line 113
    .local v0, "checkArgs":Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->callback:Landroid/speech/IRecognitionSupportCallback;

    iget-object v4, v0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchCheckRecognitionSupport(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V

    .line 115
    goto :goto_54

    .line 109
    .end local v0    # "checkArgs":Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;
    :pswitch_26
    iget-object v0, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchClearCallback(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    .line 110
    goto :goto_54

    .line 106
    :pswitch_30
    iget-object v0, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchCancel(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    .line 107
    goto :goto_54

    .line 103
    :pswitch_3a
    iget-object v0, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchStopListening(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    .line 104
    goto :goto_54

    .line 99
    :pswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/RecognitionService$StartListeningArgs;

    .line 100
    .local v0, "args":Landroid/speech/RecognitionService$StartListeningArgs;
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    iget-object v4, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchStartListening(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 101
    nop

    .line 124
    .end local v0    # "args":Landroid/speech/RecognitionService$StartListeningArgs;
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_16
        :pswitch_6
    .end packed-switch
.end method
