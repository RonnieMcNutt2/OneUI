.class Lcom/android/internal/app/SmRccPolicy$MyHandler;
.super Landroid/os/Handler;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SmRccPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SmRccPolicy;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 161
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5c

    goto :goto_5a

    .line 187
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$mcallResetSmRccOpen(Lcom/android/internal/app/SmRccPolicy;Ljava/lang/String;)V

    .line 188
    goto :goto_5a

    .line 184
    :sswitch_10
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/SmRccPolicy;->updateRccRestrict(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    goto :goto_5a

    .line 181
    :sswitch_20
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/SmRccPolicy;->updateRccOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    goto :goto_5a

    .line 178
    :sswitch_30
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/SmRccPolicy;->updateRccShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    goto :goto_5a

    .line 175
    :sswitch_40
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/SmRccPolicy;->removeRccPackage(Ljava/lang/String;)V

    .line 176
    goto :goto_5a

    .line 172
    :sswitch_4a
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/SmRccPolicy$RccApp;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/SmRccPolicy;->addRccPackage(Lcom/android/internal/app/SmRccPolicy$RccApp;)V

    .line 173
    goto :goto_5a

    .line 169
    :sswitch_54
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {v0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$mloadRccAppFromSm(Lcom/android/internal/app/SmRccPolicy;)V

    .line 170
    nop

    .line 192
    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0xa -> :sswitch_54
        0x14 -> :sswitch_4a
        0x1e -> :sswitch_40
        0x28 -> :sswitch_30
        0x32 -> :sswitch_20
        0x3c -> :sswitch_10
        0x46 -> :sswitch_6
    .end sparse-switch
.end method
