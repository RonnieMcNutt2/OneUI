.class public interface abstract Landroid/view/inputmethod/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethod$SessionCallback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.view.InputMethod"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.im"

.field public static final SHOW_EXPLICIT:I = 0x1

.field public static final SHOW_FORCED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "InputMethod"


# virtual methods
.method public abstract attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract bindInput(Landroid/view/inputmethod/InputBinding;)V
.end method

.method public canStartStylusHandwriting(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 382
    return-void
.end method

.method public abstract changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
.end method

.method public dispatchStartInput(Landroid/view/inputmethod/InputConnection;Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    .registers 4
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "params"    # Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 224
    iget-boolean v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_f

    .line 227
    :cond_a
    iget-object v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 229
    :goto_f
    return-void
.end method

.method public finishStylusHandwriting()V
    .registers 1

    .line 416
    return-void
.end method

.method public abstract hideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "hideInputToken"    # Landroid/os/IBinder;
    .param p4, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 348
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    .line 349
    return-void
.end method

.method public initInkWindow()V
    .registers 1

    .line 408
    return-void
.end method

.method public initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    .registers 3
    .param p1, "params"    # Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    .line 108
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    .line 109
    return-void
.end method

.method public minimizeSoftInput(I)V
    .registers 2
    .param p1, "height"    # I

    .line 440
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .registers 6
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 122
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 125
    goto :goto_c

    .line 123
    :catch_4
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethod"

    const-string v2, "Failed to call onInlineSuggestionsUnsupported."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public onNavButtonFlagsChanged(I)V
    .registers 2
    .param p1, "navButtonFlags"    # I

    .line 239
    return-void
.end method

.method public removeStylusHandwritingWindow()V
    .registers 1

    .line 424
    return-void
.end method

.method public abstract restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
.end method

.method public abstract setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
.end method

.method public setStylusWindowIdleTimeoutForTest(J)V
    .registers 3
    .param p1, "timeout"    # J

    .line 432
    return-void
.end method

.method public abstract showSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "showInputToken"    # Landroid/os/IBinder;
    .param p4, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 309
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 310
    return-void
.end method

.method public abstract startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "channel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    return-void
.end method

.method public unMinimizeSoftInput()V
    .registers 1

    .line 447
    return-void
.end method

.method public abstract unbindInput()V
.end method

.method public updateEditorToolType(I)V
    .registers 2
    .param p1, "toolType"    # I

    .line 391
    return-void
.end method
