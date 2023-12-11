.class final Landroid/inputmethodservice/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/NavigationBarController$Impl;,
        Landroid/inputmethodservice/NavigationBarController$Callback;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 3
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 90
    new-instance v0, Landroid/inputmethodservice/NavigationBarController$Impl;

    invoke-direct {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_11

    :cond_f
    sget-object v0, Landroid/inputmethodservice/NavigationBarController$Callback;->NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;

    :goto_11
    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    .line 91
    return-void
.end method


# virtual methods
.method onDestroy()V
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onDestroy()V

    .line 112
    return-void
.end method

.method onNavButtonFlagsChanged(I)V
    .registers 3
    .param p1, "navButtonFlags"    # I

    .line 115
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onNavButtonFlagsChanged(I)V

    .line 116
    return-void
.end method

.method onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 3
    .param p1, "softInputWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 99
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    .line 100
    return-void
.end method

.method onViewInitialized()V
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onViewInitialized()V

    .line 104
    return-void
.end method

.method onWindowShown()V
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onWindowShown()V

    .line 108
    return-void
.end method

.method toDebugString()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 4
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "dest"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 95
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/NavigationBarController$Callback;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 96
    return-void
.end method
