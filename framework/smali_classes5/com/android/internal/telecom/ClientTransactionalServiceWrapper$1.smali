.class Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;
.super Lcom/android/internal/telecom/ICallEventCallback$Stub;
.source "ClientTransactionalServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ON_ANSWER:Ljava/lang/String; = "onAnswer"

.field private static final ON_AVAILABLE_CALL_ENDPOINTS:Ljava/lang/String; = "onAvailableCallEndpointsChanged"

.field private static final ON_CALL_STREAMING_FAILED:Ljava/lang/String; = "onCallStreamingFailed"

.field private static final ON_DISCONNECT:Ljava/lang/String; = "onDisconnect"

.field private static final ON_EVENT:Ljava/lang/String; = "onEvent"

.field private static final ON_MUTE_STATE_CHANGED:Ljava/lang/String; = "onMuteStateChanged"

.field private static final ON_REQ_ENDPOINT_CHANGE:Ljava/lang/String; = "onRequestEndpointChange"

.field private static final ON_SET_ACTIVE:Ljava/lang/String; = "onSetActive"

.field private static final ON_SET_INACTIVE:Ljava/lang/String; = "onSetInactive"

.field private static final ON_STREAMING_STARTED:Ljava/lang/String; = "onStreamingStarted"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;


# direct methods
.method public static synthetic $r8$lambda$lGlHs-rRdYz-4xM82vl1CAg1fAY(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    .line 141
    iput-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallEventCallback$Stub;-><init>()V

    return-void
.end method

.method private varargs handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V
    .registers 21
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ackResultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 156
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hCEC: id=[%s], action=[%s]"

    move-object/from16 v10, p1

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, v8, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/internal/telecom/TransactionalCall;

    .line 160
    .local v11, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v11, :cond_77

    .line 162
    invoke-virtual {v11}, Lcom/android/internal/telecom/TransactionalCall;->getCallControlCallback()Landroid/telecom/CallControlCallback;

    move-result-object v12

    .line 164
    .local v12, "callback":Landroid/telecom/CallControlCallback;
    new-instance v5, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;

    iget-object v0, v8, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    move-object/from16 v13, p3

    invoke-direct {v5, v0, v13}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;Landroid/os/ResultReceiver;)V

    .line 167
    .local v5, "outcomeReceiverWrapper":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 169
    .local v14, "identity":J
    :try_start_38
    invoke-virtual {v11}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v12

    move-object/from16 v6, p4

    move-object v8, v7

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4f} :catch_56
    .catchall {:try_start_38 .. :try_end_4f} :catchall_54

    .line 193
    nop

    :goto_50
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    goto :goto_79

    .line 193
    :catchall_54
    move-exception v0

    goto :goto_73

    .line 190
    :catch_56
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    :try_start_57
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telecom hit an exception while handling a CallEventCallback on an executor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_54

    .line 193
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_50

    :goto_73
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw v0

    .line 160
    .end local v5    # "outcomeReceiverWrapper":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
    .end local v12    # "callback":Landroid/telecom/CallControlCallback;
    .end local v14    # "identity":J
    :cond_77
    move-object/from16 v13, p3

    .line 196
    :goto_79
    return-void
.end method

.method private synthetic lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/telecom/CallControlCallback;
    .param p3, "outcomeReceiverWrapper"    # Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "callId"    # Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_6c

    :cond_8
    goto :goto_40

    :sswitch_9
    const-string/jumbo v0, "onStreamingStarted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_41

    :sswitch_14
    const-string/jumbo v0, "onAnswer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_41

    :sswitch_1f
    const-string/jumbo v0, "onSetActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_41

    :sswitch_2a
    const-string/jumbo v0, "onDisconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_41

    :sswitch_35
    const-string/jumbo v0, "onSetInactive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_41

    :goto_40
    const/4 v0, -0x1

    :goto_41
    packed-switch v0, :pswitch_data_82

    goto :goto_6a

    .line 186
    :pswitch_45
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onCallStreamingStarted(Ljava/util/function/Consumer;)V

    goto :goto_6a

    .line 183
    :pswitch_49
    aget-object v0, p4, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0, p3}, Landroid/telecom/CallControlCallback;->onAnswer(ILjava/util/function/Consumer;)V

    .line 184
    goto :goto_6a

    .line 178
    :pswitch_55
    aget-object v0, p4, v1

    check-cast v0, Landroid/telecom/DisconnectCause;

    invoke-interface {p2, v0, p3}, Landroid/telecom/CallControlCallback;->onDisconnect(Landroid/telecom/DisconnectCause;Ljava/util/function/Consumer;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v0, p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 181
    goto :goto_6a

    .line 175
    :pswitch_62
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetInactive(Ljava/util/function/Consumer;)V

    .line 176
    goto :goto_6a

    .line 172
    :pswitch_66
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetActive(Ljava/util/function/Consumer;)V

    .line 173
    nop

    .line 189
    :goto_6a
    return-void

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x6b667c72 -> :sswitch_35
        -0x19454825 -> :sswitch_2a
        0x1a612e9 -> :sswitch_1f
        0x3abf167d -> :sswitch_14
        0x615ea1be -> :sswitch_9
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_66
        :pswitch_62
        :pswitch_55
        :pswitch_49
        :pswitch_45
    .end packed-switch
.end method

.method static synthetic lambda$handleEventCallback$1(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/telecom/CallEventCallback;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5e

    :cond_7
    goto :goto_34

    :sswitch_8
    const-string/jumbo v0, "onRequestEndpointChange"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_35

    :sswitch_13
    const-string/jumbo v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_35

    :sswitch_1e
    const-string/jumbo v0, "onCallStreamingFailed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_35

    :sswitch_29
    const-string/jumbo v0, "onMuteStateChanged"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_35

    :goto_34
    const/4 v0, -0x1

    :goto_35
    packed-switch v0, :pswitch_data_70

    goto :goto_5d

    .line 286
    :pswitch_39
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onCallStreamingFailed(I)V

    goto :goto_5d

    .line 283
    :pswitch_44
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onMuteStateChanged(Z)V

    .line 284
    goto :goto_5d

    .line 280
    :pswitch_4f
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 281
    goto :goto_5d

    .line 277
    :pswitch_56
    move-object v0, p2

    check-cast v0, Landroid/telecom/CallEndpoint;

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 278
    nop

    .line 289
    :goto_5d
    return-void

    :sswitch_data_5e
    .sparse-switch
        -0x7f3ee265 -> :sswitch_29
        -0x21a2eb5e -> :sswitch_1e
        -0x62d5f62 -> :sswitch_13
        0x34696575 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4f
        :pswitch_44
        :pswitch_39
    .end packed-switch
.end method

.method static synthetic lambda$onEvent$2(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "callback"    # Landroid/telecom/CallEventCallback;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 322
    invoke-interface {p0, p1, p2}, Landroid/telecom/CallEventCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 323
    return-void
.end method


# virtual methods
.method public handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 266
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hEC: [%s], callId=[%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 269
    .local v0, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v0, :cond_3d

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object v1

    .line 271
    .local v1, "callback":Landroid/telecom/CallEventCallback;
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 272
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 274
    .local v3, "identity":J
    :try_start_2c
    new-instance v5, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2, v1, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_38

    .line 291
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    goto :goto_3d

    .line 291
    :catchall_38
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    throw v5

    .line 294
    .end local v1    # "callback":Landroid/telecom/CallEventCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    :cond_3d
    :goto_3d
    return-void
.end method

.method public onAddCallControl(Ljava/lang/String;ILcom/android/internal/telecom/ICallControl;Landroid/telecom/CallException;)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "callControl"    # Lcom/android/internal/telecom/ICallControl;
    .param p4, "transactionalException"    # Landroid/telecom/CallException;

    .line 201
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "oACC: id=[%s], code=[%d]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 204
    .local v0, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v0, :cond_50

    .line 205
    nop

    .line 206
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getPendingControl()Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 208
    .local v1, "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    if-nez p2, :cond_43

    .line 211
    new-instance v2, Landroid/telecom/CallControl;

    iget-object v3, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmRepository(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v4}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmPhoneAccountHandle(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-direct {v2, p1, p3, v3, v4}, Landroid/telecom/CallControl;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/ICallControl;Lcom/android/internal/telecom/ClientTransactionalServiceRepository;Landroid/telecom/PhoneAccountHandle;)V

    .line 214
    .local v2, "control":Landroid/telecom/CallControl;
    invoke-interface {v1, v2}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v0, v2}, Lcom/android/internal/telecom/TransactionalCall;->setCallControl(Landroid/telecom/CallControl;)V

    .line 218
    .end local v2    # "control":Landroid/telecom/CallControl;
    goto :goto_4f

    .line 219
    :cond_43
    invoke-interface {v1, p4}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v1    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    :goto_4f
    goto :goto_70

    .line 224
    :cond_50
    iget-object v1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v1, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oACC: TransactionalCall object not found for call w/ id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_70
    return-void
.end method

.method public onAnswer(Ljava/lang/String;ILandroid/os/ResultReceiver;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onAnswer"

    invoke-direct {p0, v1, p1, p3, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p2, "endpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    const-string/jumbo v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "endpoint"    # Landroid/telecom/CallEndpoint;

    .line 252
    const-string/jumbo v0, "onRequestEndpointChange"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public onCallStreamingFailed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 308
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "oCSF: id=[%s], reason=[%s]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string/jumbo v0, "onCallStreamingFailed"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public onCallStreamingStarted(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 303
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onStreamingStarted"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public onDisconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "cause"    # Landroid/telecom/DisconnectCause;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 247
    const-string/jumbo v0, "onDisconnect"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 315
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 316
    .local v0, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v0, :cond_2b

    .line 317
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object v1

    .line 318
    .local v1, "callback":Landroid/telecom/CallEventCallback;
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 319
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 321
    .local v3, "identity":J
    :try_start_1a
    new-instance v5, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, p2, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 325
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    goto :goto_2b

    .line 325
    :catchall_26
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v5

    .line 328
    .end local v1    # "callback":Landroid/telecom/CallEventCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    :cond_2b
    :goto_2b
    return-void
.end method

.method public onMuteStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isMuted"    # Z

    .line 262
    const-string/jumbo v0, "onMuteStateChanged"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public onSetActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 231
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onSetActive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public onSetInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onSetInactive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public removeCallFromTransactionalServiceWrapper(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 299
    return-void
.end method
