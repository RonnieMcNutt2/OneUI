.class Lcom/android/server/SatsService$1;
.super Landroid/os/UEventObserver;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SatsService;


# direct methods
.method constructor <init>(Lcom/android/server/SatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/SatsService;

    .line 166
    iput-object p1, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 170
    invoke-static {}, Lcom/android/server/SatsService;->-$$Nest$sfgetmLockUEvent()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_5
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_84

    const/4 v2, -0x1

    if-eq v1, v2, :cond_82

    .line 174
    :try_start_12
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "switchName":Ljava/lang/String;
    const-string/jumbo v2, "uart3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 177
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "switchState":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 180
    .local v3, "state":I
    packed-switch v3, :pswitch_data_88

    .line 193
    const-string v4, "SatsService"

    goto :goto_61

    .line 186
    :pswitch_31
    const-string v4, "SatsService"

    const-string v5, "SATServiceAt will wake up."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/SatsService;->-$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V

    .line 188
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v4}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_45} :catch_7e
    .catchall {:try_start_12 .. :try_end_45} :catchall_84

    .line 189
    :try_start_45
    iget-object v5, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v5}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 190
    monitor-exit v4

    .line 191
    goto :goto_7d

    .line 190
    :catchall_50
    move-exception v5

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    .end local p0    # "this":Lcom/android/server/SatsService$1;
    .end local p1    # "event":Landroid/os/UEventObserver$UEvent;
    :try_start_52
    throw v5

    .line 182
    .restart local p0    # "this":Lcom/android/server/SatsService$1;
    .restart local p1    # "event":Landroid/os/UEventObserver$UEvent;
    :pswitch_53
    const-string v4, "SatsService"

    const-string v5, "SATServiceAt will wait."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/SatsService;->-$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V

    .line 184
    goto :goto_7d

    .line 193
    :goto_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown state["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7d} :catch_7e
    .catchall {:try_start_52 .. :try_end_7d} :catchall_84

    .line 199
    .end local v1    # "switchName":Ljava/lang/String;
    .end local v2    # "switchState":Ljava/lang/String;
    .end local v3    # "state":I
    :cond_7d
    :goto_7d
    goto :goto_82

    .line 197
    :catch_7e
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_82
    :goto_82
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_84

    throw v1

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_53
        :pswitch_31
    .end packed-switch
.end method
