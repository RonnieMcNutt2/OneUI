.class Landroid/widget/ZoomButton$1;
.super Ljava/lang/Object;
.source "ZoomButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButton;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButton;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ZoomButton;

    .line 41
    iput-object p1, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 43
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-static {v0}, Landroid/widget/ZoomButton;->-$$Nest$fgetmIsInLongpress(Landroid/widget/ZoomButton;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 44
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->callOnClick()Z

    .line 45
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-static {v0}, Landroid/widget/ZoomButton;->-$$Nest$fgetmZoomSpeed(Landroid/widget/ZoomButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ZoomButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_26
    return-void
.end method
