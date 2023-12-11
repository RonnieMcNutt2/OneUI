.class final Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInteractiveAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_RTE_STATE_CHANGED:I = 0x3

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppService;


# direct methods
.method private constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppService;)V
    .registers 2

    .line 2213
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppService;Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService;)V

    return-void
.end method

.method private broadcastRteStateChanged(III)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I

    .line 2219
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2220
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_28

    .line 2222
    :try_start_d
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;->onStateChanged(III)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 2225
    goto :goto_25

    .line 2223
    :catch_1d
    move-exception v2

    .line 2224
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInteractiveAppService"

    const-string v4, "error in broadcastRteStateChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2220
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2227
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 2232
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "error in onSessionCreated"

    const-string v2, "TvInteractiveAppService"

    packed-switch v0, :pswitch_data_b0

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    return-void

    .line 2280
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2281
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2282
    .local v1, "type":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2283
    .local v2, "state":I
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2284
    .local v3, "error":I
    invoke-direct {p0, v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->broadcastRteStateChanged(III)V

    .line 2285
    return-void

    .line 2263
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "type":I
    .end local v2    # "state":I
    .end local v3    # "error":I
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2264
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 2265
    .local v3, "sessionImpl":Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 2266
    .local v4, "stub":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 2269
    .local v5, "cb":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    :try_start_52
    invoke-interface {v5, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    .line 2272
    goto :goto_5a

    .line 2270
    :catch_56
    move-exception v6

    .line 2271
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2273
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_5a
    if-eqz v3, :cond_5f

    .line 2274
    invoke-static {v3, v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$minitialize(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V

    .line 2276
    :cond_5f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2277
    return-void

    .line 2234
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "sessionImpl":Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .end local v4    # "stub":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .end local v5    # "cb":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    :pswitch_63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2235
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    .line 2236
    .local v3, "channel":Landroid/view/InputChannel;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 2238
    .local v4, "cb":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2239
    .local v5, "iAppServiceId":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2240
    .local v6, "type":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2241
    iget-object v7, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {v7, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService;->onCreateSession(Ljava/lang/String;I)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v7

    .line 2242
    .local v7, "sessionImpl":Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    if-nez v7, :cond_90

    .line 2245
    const/4 v8, 0x0

    :try_start_87
    invoke-interface {v4, v8}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 2248
    goto :goto_8f

    .line 2246
    :catch_8b
    move-exception v8

    .line 2247
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2249
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_8f
    return-void

    .line 2251
    :cond_90
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-direct {v1, v2, v7, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/view/InputChannel;)V

    .line 2254
    .local v1, "stub":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2255
    .local v2, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2256
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2257
    iput-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2258
    iget-object v8, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v8}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2259
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2260
    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_63
        :pswitch_42
        :pswitch_22
    .end packed-switch
.end method
