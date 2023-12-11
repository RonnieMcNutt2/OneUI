.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;

    .line 92
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :pswitch_7
    goto :goto_19

    .line 102
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v0}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mstopWarp(Lcom/android/internal/app/PlatLogoActivity;)V

    goto :goto_19

    .line 97
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v0, p2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mmeasureTouchPressure(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/MotionEvent;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v0}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mstartWarp(Lcom/android/internal/app/PlatLogoActivity;)V

    .line 99
    nop

    .line 105
    :goto_19
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
