.class Lcom/samsung/android/widget/SemTipPopup$5;
.super Landroid/os/Handler;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->setInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTipPopup;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 831
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 834
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1a

    .line 842
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$manimateScaleUp(Lcom/samsung/android/widget/SemTipPopup;)V

    goto :goto_1a

    .line 839
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdismissBubble(Lcom/samsung/android/widget/SemTipPopup;Z)V

    .line 840
    goto :goto_1a

    .line 836
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdismissBubble(Lcom/samsung/android/widget/SemTipPopup;Z)V

    .line 837
    nop

    .line 845
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
