.class public interface abstract Landroid/view/inputmethod/InputMethodSession;
.super Ljava/lang/Object;
.source "InputMethodSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSession$EventCallback;
    }
.end annotation


# virtual methods
.method public abstract appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
.end method

.method public abstract dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
.end method

.method public abstract dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
.end method

.method public abstract displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract finishInput()V
.end method

.method public invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "sessionId"    # I

    .line 217
    return-void
.end method

.method public abstract removeImeSurface()V
.end method

.method public abstract toggleSoftInput(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateCursor(Landroid/graphics/Rect;)V
.end method

.method public abstract updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
.end method

.method public abstract updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
.end method

.method public abstract updateSelection(IIIIII)V
.end method

.method public abstract viewClicked(Z)V
.end method
