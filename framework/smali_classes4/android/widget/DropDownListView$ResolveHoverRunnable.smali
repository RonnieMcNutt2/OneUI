.class Landroid/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DropDownListView;


# direct methods
.method private constructor <init>(Landroid/widget/DropDownListView;)V
    .registers 2

    .line 379
    iput-object p1, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 388
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    .line 389
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/DropDownListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method public post()V
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/DropDownListView;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method public run()V
    .registers 3

    .line 383
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    .line 384
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->drawableStateChanged()V

    .line 385
    return-void
.end method
