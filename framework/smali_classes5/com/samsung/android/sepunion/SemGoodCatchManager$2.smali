.class Lcom/samsung/android/sepunion/SemGoodCatchManager$2;
.super Landroid/os/Handler;
.source "SemGoodCatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/SemGoodCatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    goto :goto_3f

    .line 136
    :pswitch_6
    invoke-static {}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 138
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-static {v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->-$$Nest$fgetmListener(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;->onStop(Ljava/lang/String;)V

    goto :goto_3f

    .line 131
    :pswitch_23
    invoke-static {}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-static {v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->-$$Nest$fgetmListener(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;->onStart(Ljava/lang/String;)V

    .line 141
    :cond_3f
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_23
        :pswitch_6
    .end packed-switch
.end method
