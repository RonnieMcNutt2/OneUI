.class Landroid/media/audiopolicy/AudioPolicy$EventHandler;
.super Landroid/os/Handler;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method public constructor <init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V
    .registers 4
    .param p2, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1027
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    .line 1028
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1029
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1033
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AudioPolicy"

    packed-switch v0, :pswitch_data_cc

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    .line 1069
    :pswitch_21
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmVolCb(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1070
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmVolCb(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;->onVolumeAdjustment(I)V

    goto/16 :goto_ca

    .line 1072
    :cond_36
    const-string v0, "Invalid null volume event"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    goto/16 :goto_ca

    .line 1062
    :pswitch_3d
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 1063
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioFocusInfo;

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V

    goto/16 :goto_ca

    .line 1065
    :cond_54
    const-string v0, "Invalid null focus listener for focus abandon event"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    goto/16 :goto_ca

    .line 1055
    :pswitch_5b
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 1056
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioFocusInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V

    goto :goto_ca

    .line 1058
    :cond_73
    const-string v0, "Invalid null focus listener for focus request event"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    goto :goto_ca

    .line 1050
    :pswitch_79
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmStatusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 1051
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmStatusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onMixStateUpdate(Landroid/media/audiopolicy/AudioMix;)V

    goto :goto_ca

    .line 1044
    :pswitch_8f
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 1045
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioFocusInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_a7

    const/4 v2, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    :goto_a8
    invoke-virtual {v0, v1, v2}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    goto :goto_ca

    .line 1038
    :pswitch_ac
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 1039
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioFocusInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    goto :goto_ca

    .line 1035
    :pswitch_c4
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$monPolicyStatusChange(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 1036
    nop

    .line 1078
    :cond_ca
    :goto_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_ac
        :pswitch_8f
        :pswitch_79
        :pswitch_5b
        :pswitch_3d
        :pswitch_21
    .end packed-switch
.end method
