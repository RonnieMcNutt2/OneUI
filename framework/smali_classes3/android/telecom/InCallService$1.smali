.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/InCallService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 289
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 292
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_e

    .line 293
    return-void

    .line 297
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Telecom-InCallService"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_190

    goto/16 :goto_18e

    .line 385
    :pswitch_35
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->onMuteStateChanged(Z)V

    .line 386
    goto/16 :goto_18e

    .line 380
    :pswitch_44
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 382
    goto/16 :goto_18e

    .line 372
    :pswitch_4f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/CallEndpoint;

    .line 373
    .local v0, "endpoint":Landroid/telecom/CallEndpoint;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmCallEndpoint(Landroid/telecom/InCallService;)Landroid/telecom/CallEndpoint;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18e

    .line 374
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1, v0}, Landroid/telecom/InCallService;->-$$Nest$fputmCallEndpoint(Landroid/telecom/InCallService;Landroid/telecom/CallEndpoint;)V

    .line 375
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmCallEndpoint(Landroid/telecom/InCallService;)Landroid/telecom/CallEndpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    goto/16 :goto_18e

    .line 367
    .end local v0    # "endpoint":Landroid/telecom/CallEndpoint;
    :pswitch_6f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalOnHandoverComplete(Ljava/lang/String;)V

    .line 369
    goto/16 :goto_18e

    .line 361
    .end local v0    # "callId":Ljava/lang/String;
    :pswitch_7e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 362
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 363
    .local v1, "error":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnHandoverFailed(Ljava/lang/String;I)V

    .line 364
    goto/16 :goto_18e

    .line 355
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "error":I
    :pswitch_8f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 356
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 357
    .local v1, "reason":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    .line 358
    goto/16 :goto_18e

    .line 349
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "reason":I
    :pswitch_a0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 350
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 351
    .local v1, "requestId":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    .line 352
    goto/16 :goto_18e

    .line 337
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "requestId":I
    :pswitch_b1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 339
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b5
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 340
    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 341
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 342
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v4}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_ca
    .catchall {:try_start_b5 .. :try_end_ca} :catchall_d0

    .line 344
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 345
    nop

    .line 346
    goto/16 :goto_18e

    .line 344
    :catchall_d0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 345
    throw v1

    .line 334
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d5
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Phone;->internalSilenceRinger()V

    .line 335
    goto/16 :goto_18e

    .line 331
    :pswitch_e0
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_eb

    goto :goto_ec

    :cond_eb
    move v1, v2

    :goto_ec
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    .line 332
    goto/16 :goto_18e

    .line 328
    :pswitch_f1
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_fc

    goto :goto_fd

    :cond_fc
    move v1, v2

    :goto_fd
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    .line 329
    goto/16 :goto_18e

    .line 325
    :pswitch_102
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallAudioState;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 326
    goto/16 :goto_18e

    .line 314
    :pswitch_111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 316
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_115
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 317
    .restart local v1    # "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 318
    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v3}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catchall {:try_start_115 .. :try_end_126} :catchall_12b

    .line 320
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 321
    nop

    .line 322
    goto :goto_18e

    .line 320
    :catchall_12b
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 321
    throw v1

    .line 311
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_130
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    .line 312
    goto :goto_18e

    .line 308
    :pswitch_13e
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    .line 309
    goto :goto_18e

    .line 301
    :pswitch_14c
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v2, Landroid/telecom/Phone;

    new-instance v3, Landroid/telecom/InCallAdapter;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v3, v4}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 303
    invoke-virtual {v4}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {v2, v3, v0, v4}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Landroid/telecom/InCallService;->-$$Nest$fputmPhone(Landroid/telecom/InCallService;Landroid/telecom/Phone;)V

    .line 304
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhoneListener(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 305
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    .line 306
    nop

    .line 391
    .end local v0    # "callingPackage":Ljava/lang/String;
    :cond_18e
    :goto_18e
    return-void

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_14c
        :pswitch_13e
        :pswitch_130
        :pswitch_111
        :pswitch_102
        :pswitch_f1
        :pswitch_e0
        :pswitch_d5
        :pswitch_b1
        :pswitch_a0
        :pswitch_8f
        :pswitch_7e
        :pswitch_6f
        :pswitch_4f
        :pswitch_44
        :pswitch_35
    .end packed-switch
.end method
