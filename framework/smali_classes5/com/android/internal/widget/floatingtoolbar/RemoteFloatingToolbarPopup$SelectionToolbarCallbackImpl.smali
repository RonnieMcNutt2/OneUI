.class Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;
.super Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;
.source "RemoteFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionToolbarCallbackImpl"
.end annotation


# instance fields
.field private final mRemotePopup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;)V
    .registers 3
    .param p1, "popup"    # Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 428
    invoke-direct {p0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;-><init>()V

    .line 429
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    .line 430
    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 486
    invoke-static {}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionToolbarCallbackImpl onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "floating_toolbar"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1e
    return-void
.end method

.method public onMenuItemClicked(Landroid/view/selectiontoolbar/ToolbarMenuItem;)V
    .registers 5
    .param p1, "toolbarMenuItem"    # Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 476
    .local v0, "remoteFloatingToolbarPopup":Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
    if-eqz v0, :cond_e

    .line 477
    invoke-static {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monMenuItemClicked(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/ToolbarMenuItem;)V

    goto :goto_15

    .line 479
    :cond_e
    const-string v1, "floating_toolbar"

    const-string v2, "Lost remoteFloatingToolbarPopup reference for onMenuItemClicked."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_15
    return-void
.end method

.method public onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/selectiontoolbar/WidgetInfo;

    .line 434
    invoke-static {}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "floating_toolbar"

    if-eqz v0, :cond_1e

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectionToolbarCallbackImpl onShown: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 439
    .local v0, "remoteFloatingToolbarPopup":Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
    if-eqz v0, :cond_2c

    .line 440
    invoke-static {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monShow(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V

    goto :goto_31

    .line 442
    :cond_2c
    const-string v2, "Lost remoteFloatingToolbarPopup reference for onShown."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_31
    return-void
.end method

.method public onToolbarShowTimeout()V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 465
    .local v0, "remoteFloatingToolbarPopup":Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
    if-eqz v0, :cond_e

    .line 466
    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monToolbarShowTimeout(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;)V

    goto :goto_15

    .line 468
    :cond_e
    const-string v1, "floating_toolbar"

    const-string v2, "Lost remoteFloatingToolbarPopup reference for onToolbarShowTimeout."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_15
    return-void
.end method

.method public onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/selectiontoolbar/WidgetInfo;

    .line 449
    invoke-static {}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "floating_toolbar"

    if-eqz v0, :cond_1e

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectionToolbarCallbackImpl onWidgetUpdated: info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 454
    .local v0, "remoteFloatingToolbarPopup":Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
    if-eqz v0, :cond_2c

    .line 455
    invoke-static {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monWidgetUpdated(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V

    goto :goto_31

    .line 457
    :cond_2c
    const-string v2, "Lost remoteFloatingToolbarPopup reference for onWidgetUpdated."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_31
    return-void
.end method
