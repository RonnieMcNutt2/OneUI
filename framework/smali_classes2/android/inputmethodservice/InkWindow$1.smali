.class Landroid/inputmethodservice/InkWindow$1;
.super Ljava/lang/Object;
.source "InkWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InkWindow;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InkWindow;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/InkWindow;

    .line 183
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 186
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    .line 187
    return-void

    .line 189
    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 190
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow;)Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 191
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow;)Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/inputmethodservice/InkWindow$InkVisibilityListener;->onInkViewVisible()V

    .line 193
    :cond_26
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 194
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fputmGlobalLayoutListener(Landroid/inputmethodservice/InkWindow;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    :cond_39
    return-void
.end method
