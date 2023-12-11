.class Lcom/samsung/android/media/SemMediaPlayer$3;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SemMediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/android/media/SemMediaPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4452
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .registers 10

    .line 4454
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const/16 v1, 0x385

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_109

    .line 4458
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 4459
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-nez v0, :cond_1f

    .line 4460
    return v1

    .line 4464
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 4465
    .local v2, "availableSize":I
    const/high16 v3, 0x1400000

    if-le v2, v3, :cond_42

    .line 4466
    const-string v3, "SemMediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrack() unsupported size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_41} :catch_fe

    .line 4467
    return v1

    .line 4472
    .end local v2    # "availableSize":I
    :cond_42
    nop

    .line 4475
    const/4 v2, 0x0

    .line 4476
    .local v2, "scanner":Ljava/util/Scanner;
    const/4 v3, 0x0

    .line 4478
    .local v3, "contents":Ljava/lang/String;
    :try_start_45
    new-instance v4, Ljava/util/Scanner;

    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v4

    .line 4479
    const-string v4, "\\A"

    invoke-virtual {v2, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_bb
    .catchall {:try_start_45 .. :try_end_59} :catchall_b9

    .line 4484
    .end local v3    # "contents":Ljava/lang/String;
    .local v4, "contents":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    .line 4485
    :try_start_60
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 4486
    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_b6

    .line 4488
    nop

    .line 4489
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 4493
    if-nez v4, :cond_73

    .line 4494
    return v1

    .line 4497
    :cond_73
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    monitor-enter v3

    .line 4498
    :try_start_7a
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4499
    monitor-exit v3
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_b3

    .line 4502
    :try_start_89
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v1
    :try_end_93
    .catch Ljava/lang/NullPointerException; {:try_start_89 .. :try_end_93} :catch_a9

    .line 4506
    .local v1, "h":Landroid/os/Handler;
    nop

    .line 4508
    const/4 v3, 0x2

    .line 4509
    .local v3, "what":I
    const/4 v5, 0x4

    .line 4510
    .local v5, "arg1":I
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 4511
    .local v6, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v5, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 4512
    .local v7, "m":Landroid/os/Message;
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4513
    const/16 v8, 0x323

    return v8

    .line 4503
    .end local v1    # "h":Landroid/os/Handler;
    .end local v3    # "what":I
    .end local v5    # "arg1":I
    .end local v6    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v7    # "m":Landroid/os/Message;
    :catch_a9
    move-exception v3

    .line 4504
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v5, "SemMediaPlayer"

    const-string/jumbo v6, "handleMessage is NullPointerException e : "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4505
    return v1

    .line 4499
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catchall_b3
    move-exception v1

    :try_start_b4
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v1

    .line 4486
    :catchall_b6
    move-exception v1

    :try_start_b7
    monitor-exit v5
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v1

    .line 4484
    .end local v4    # "contents":Ljava/lang/String;
    .local v3, "contents":Ljava/lang/String;
    :catchall_b9
    move-exception v1

    goto :goto_e2

    .line 4480
    :catch_bb
    move-exception v4

    .line 4481
    .local v4, "e":Ljava/lang/Exception;
    :try_start_bc
    const-string v5, "SemMediaPlayer"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_b9

    .line 4482
    nop

    .line 4484
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    .line 4485
    :try_start_cd
    iget-object v6, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v6}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 4486
    monitor-exit v5
    :try_end_d9
    .catchall {:try_start_cd .. :try_end_d9} :catchall_df

    .line 4488
    if-eqz v2, :cond_de

    .line 4489
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 4482
    :cond_de
    return v1

    .line 4486
    :catchall_df
    move-exception v1

    :try_start_e0
    monitor-exit v5
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v1

    .line 4484
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_e2
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v4}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 4485
    :try_start_e9
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 4486
    monitor-exit v4
    :try_end_f5
    .catchall {:try_start_e9 .. :try_end_f5} :catchall_fb

    .line 4488
    if-eqz v2, :cond_fa

    .line 4489
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 4491
    :cond_fa
    throw v1

    .line 4486
    :catchall_fb
    move-exception v1

    :try_start_fc
    monitor-exit v4
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v1

    .line 4469
    .end local v2    # "scanner":Ljava/util/Scanner;
    .end local v3    # "contents":Ljava/lang/String;
    :catch_fe
    move-exception v2

    .line 4470
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "SemMediaPlayer"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4471
    return v1

    .line 4455
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_109
    :goto_109
    return v1
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4517
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$3;->addTrack()I

    move-result v0

    .line 4518
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 4519
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4520
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4522
    .end local v1    # "m":Landroid/os/Message;
    :cond_23
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 4523
    return-void
.end method
