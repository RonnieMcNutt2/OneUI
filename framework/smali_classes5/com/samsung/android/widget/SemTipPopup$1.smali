.class Lcom/samsung/android/widget/SemTipPopup$1;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup;

    .line 365
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmState(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5e

    .line 369
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fputmState(Lcom/samsung/android/widget/SemTipPopup;I)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 371
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmState(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    .line 372
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsShowing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V

    .line 374
    :cond_45
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 375
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 376
    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfputmHandler(Landroid/os/Handler;)V

    .line 378
    :cond_56
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$1;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const-string/jumbo v1, "onDismiss - BubblePopup"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V

    .line 380
    :cond_5e
    return-void
.end method
