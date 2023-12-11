.class Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerEventHandler"
.end annotation


# instance fields
.field private controller:Lcom/samsung/vekit/Control/VEController;

.field final synthetic this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "controller"    # Lcom/samsung/vekit/Control/VEController;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 114
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    .line 115
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    iput-object p2, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 121
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    # getter for: Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_b8

    .line 161
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    # getter for: Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :Invalid callback msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b7

    .line 159
    :sswitch_44
    goto/16 :goto_b7

    .line 156
    :sswitch_46
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/samsung/vekit/Control/VEController;->handleItemError(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/vekit/Control/VEController;->access$200(Lcom/samsung/vekit/Control/VEController;III)V

    .line 157
    goto :goto_b7

    .line 153
    :sswitch_58
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/samsung/vekit/Control/VEController;->handleError(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/vekit/Control/VEController;->access$100(Lcom/samsung/vekit/Control/VEController;ILjava/lang/Object;)V

    .line 154
    goto :goto_b7

    .line 148
    :sswitch_62
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz v0, :cond_b7

    .line 149
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportPaused()V

    goto :goto_b7

    .line 143
    :sswitch_70
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz v0, :cond_b7

    .line 144
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportStarted()V

    goto :goto_b7

    .line 138
    :sswitch_7e
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v0, :cond_b7

    .line 139
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onShowCompleted(J)V

    goto :goto_b7

    .line 132
    :sswitch_94
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iput-boolean v1, v0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 133
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz v0, :cond_b7

    .line 134
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportCompleted()V

    goto :goto_b7

    .line 125
    :sswitch_a6
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iput-boolean v1, v0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 126
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v0, :cond_b7

    .line 127
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onPlaybackCompleted()V

    .line 164
    :cond_b7
    :goto_b7
    return-void

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_a6
        0x2 -> :sswitch_94
        0x3 -> :sswitch_7e
        0x4 -> :sswitch_70
        0x5 -> :sswitch_62
        0x64 -> :sswitch_58
        0x65 -> :sswitch_46
        0xc8 -> :sswitch_44
    .end sparse-switch
.end method
