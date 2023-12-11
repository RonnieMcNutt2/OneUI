.class Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

.field final synthetic this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V
    .registers 4
    .param p2, "mc"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1329
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .line 1330
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1331
    iput-object p2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .line 1332
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmNativeContext(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "SemMediaCapture"

    if-nez v0, :cond_15

    .line 1337
    const-string/jumbo v0, "mediacapture went away with unhandled events"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void

    .line 1340
    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_f4

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    return-void

    .line 1367
    :sswitch_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v0, 0x0

    .line 1369
    .local v0, "error_was_handled":Z
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 1370
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;->onError(Lcom/samsung/android/media/mediacapture/SemMediaCapture;II)Z

    move-result v0

    .line 1372
    :cond_76
    return-void

    .line 1375
    .end local v0    # "error_was_handled":Z
    :sswitch_77
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingUpdatedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 1376
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingUpdatedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;->onUpdated(Lcom/samsung/android/media/mediacapture/SemMediaCapture;I)V

    .line 1378
    :cond_8c
    return-void

    .line 1362
    :sswitch_8d
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRenderingStartedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRenderingStartedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;->onRenderingStarted(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 1364
    :cond_a0
    return-void

    .line 1347
    :sswitch_a1
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 1348
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;->onRecordingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 1349
    :cond_b4
    return-void

    .line 1342
    :sswitch_b5
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPlaybackCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_c8

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPlaybackCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;->onPlaybackCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 1344
    :cond_c8
    return-void

    .line 1352
    :sswitch_c9
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;->onDecodingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 1354
    :cond_dc
    return-void

    .line 1357
    :sswitch_dd
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 1358
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;->onPrepared(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 1359
    :cond_f0
    return-void

    .line 1381
    :sswitch_f1
    nop

    .line 1387
    return-void

    nop

    :sswitch_data_f4
    .sparse-switch
        0x0 -> :sswitch_f1
        0x1 -> :sswitch_dd
        0x5 -> :sswitch_c9
        0x6 -> :sswitch_b5
        0x7 -> :sswitch_a1
        0x8 -> :sswitch_8d
        0xa -> :sswitch_77
        0x64 -> :sswitch_33
    .end sparse-switch
.end method
