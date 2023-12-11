.class final Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;
.super Landroid/os/Handler;
.source "FreeformResizeGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final DISMISS_FREEFORM_RESIZE_GUIDE:I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 510
    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 515
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    goto :goto_3e

    .line 517
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fputmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;Z)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 519
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->dismiss()V

    .line 520
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 521
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmWindowManager(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 524
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fputmState(Lcom/samsung/android/multiwindow/FreeformResizeGuide;I)V

    .line 527
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
