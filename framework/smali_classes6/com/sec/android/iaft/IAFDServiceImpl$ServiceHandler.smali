.class final Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;
.super Landroid/os/Handler;
.source "IAFDServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/iaft/IAFDServiceImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 86
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const-string v3, "IAFDServiceImpl"

    packed-switch v1, :pswitch_data_a4

    :pswitch_9
    goto/16 :goto_a2

    .line 113
    :pswitch_b
    const-string v1, "CMD_TYPE_GETUPDATESTATUS_RESULT"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 115
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v3, v1, v2}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$mIAFDstartApp(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;Z)Z

    .line 116
    goto/16 :goto_a2

    .line 108
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_1b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 109
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "CMD_TYPE_GETUPDATESTATUS"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v2, v1}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$mcheckUpdate(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;)V

    .line 111
    goto/16 :goto_a2

    .line 118
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_2b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .restart local v1    # "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmIAFDRepair(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDRepair;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDServiceImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/iaft/IAFDRepair;->repairHandle(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3

    .line 120
    .local v3, "repairResult":Z
    const-string v4, "repairTrigAPP"

    const-string v5, "vocApp"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "trigApp":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 122
    const-string v5, "OneKeyRepairMode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 123
    .local v5, "OneKeyRepairMode":I
    if-ne v5, v2, :cond_79

    .line 124
    const-string v2, "voc://view/faq?app=iafd"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 125
    .local v2, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v6

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const-string v6, "repairResult"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v6, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v6}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v5    # "OneKeyRepairMode":I
    :cond_79
    goto :goto_a2

    .line 96
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "repairResult":Z
    .end local v4    # "trigApp":Ljava/lang/String;
    :pswitch_7a
    const-string v1, "CMD_TYPE_START"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 99
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v3, "CheckUpdateFlag"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 100
    const/4 v2, 0x5

    iput v2, p1, Landroid/os/Message;->what:I

    goto :goto_98

    .line 102
    :cond_8f
    const-string v2, "hasUpdate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const/4 v2, 0x6

    iput v2, p1, Landroid/os/Message;->what:I

    .line 105
    :goto_98
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v2}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmHandler(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    nop

    .line 136
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_a2
    :goto_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_2b
        :pswitch_9
        :pswitch_9
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method
