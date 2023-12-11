.class final Landroid/telecom/VideoCallImpl$MessageHandler;
.super Landroid/os/Handler;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method public constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 174
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    .line 175
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 180
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    if-nez v0, :cond_9

    .line 181
    return-void

    .line 185
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b4

    goto/16 :goto_b3

    .line 223
    :pswitch_10
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/telecom/VideoCallImpl;->-$$Nest$fputmVideoQuality(Landroid/telecom/VideoCallImpl;I)V

    .line 224
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onVideoQualityChanged(I)V

    .line 225
    goto/16 :goto_b3

    .line 219
    :pswitch_24
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 221
    goto/16 :goto_b3

    .line 216
    :pswitch_33
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallDataUsageChanged(J)V

    .line 217
    goto :goto_b3

    .line 206
    :pswitch_45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 208
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_49
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 209
    .local v1, "width":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    .local v2, "height":I
    iget-object v3, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v3}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/InCallService$VideoCall$Callback;->onPeerDimensionsChanged(II)V
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_67

    .line 212
    .end local v1    # "width":I
    .end local v2    # "height":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 213
    nop

    .line 214
    goto :goto_b3

    .line 212
    :catchall_67
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 213
    throw v1

    .line 203
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6c
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallSessionEvent(I)V

    .line 204
    goto :goto_b3

    .line 190
    :pswitch_7e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 192
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_82
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 193
    .local v1, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 194
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 196
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v4, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v4}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_9b
    .catchall {:try_start_82 .. :try_end_9b} :catchall_a0

    .line 199
    .end local v1    # "status":I
    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 200
    nop

    .line 201
    goto :goto_b3

    .line 199
    :catchall_a0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 200
    throw v1

    .line 187
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a5
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V

    .line 188
    nop

    .line 229
    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_7e
        :pswitch_6c
        :pswitch_45
        :pswitch_33
        :pswitch_24
        :pswitch_10
    .end packed-switch
.end method
