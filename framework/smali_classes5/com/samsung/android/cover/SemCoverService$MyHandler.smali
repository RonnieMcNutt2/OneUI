.class final Lcom/samsung/android/cover/SemCoverService$MyHandler;
.super Landroid/os/Handler;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SemCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_COVER_APP_COVERED:I = 0x3

.field static final MSG_SYSTEM_READY:I = 0x1

.field static final MSG_UPDATE_COVER_STATE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cover/SemCoverService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cover/SemCoverService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    .line 155
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_46

    goto :goto_45

    .line 177
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/SemCoverService;->onCoverAppCovered(Z)I

    goto :goto_45

    .line 165
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_45

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_45

    .line 166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    .line 167
    .local v0, "cs":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 168
    iget-object v2, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v2}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmAttach(Lcom/samsung/android/cover/SemCoverService;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 169
    iget-object v2, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v2, v0}, Lcom/samsung/android/cover/SemCoverService;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 170
    iget-object v2, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v2, v1}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fputmAttach(Lcom/samsung/android/cover/SemCoverService;Z)V

    .line 173
    :cond_39
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/SemCoverService;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    .line 174
    .end local v0    # "cs":Lcom/samsung/android/cover/CoverState;
    goto :goto_45

    .line 162
    :pswitch_3f
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SemCoverService;->onSystemReady()V

    .line 163
    nop

    .line 180
    :cond_45
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_13
        :pswitch_7
    .end packed-switch
.end method
