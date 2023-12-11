.class public interface abstract Landroid/webkit/WebViewProvider$ViewDelegate;
.super Ljava/lang/Object;
.source "WebViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewDelegate"
.end annotation


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p1, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    return-void
.end method

.method public dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .registers 5
    .param p2, "supportedFormats"    # [I
    .param p3, "capability"    # Landroid/view/translation/TranslationCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "[J>;[I",
            "Landroid/view/translation/TranslationCapability;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p1, "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    .local p4, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    return-void
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract findFocus(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
.end method

.method public abstract getHandler(Landroid/os/Handler;)Landroid/os/Handler;
.end method

.method public isVisibleToUserForAutofill(I)Z
    .registers 3
    .param p1, "virtualId"    # I

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end method

.method public onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .registers 4
    .param p1, "virtualIds"    # [J
    .param p2, "supportedFormats"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p3, "requestsCollector":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/ViewTranslationRequest;>;"
    return-void
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onDragEvent(Landroid/view/DragEvent;)Z
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
.end method

.method public abstract onFinishTemporaryDetach()V
.end method

.method public abstract onFocusChanged(ZILandroid/graphics/Rect;)V
.end method

.method public abstract onGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onHoverEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyMultiple(IILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onMeasure(II)V
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 433
    return-void
.end method

.method public abstract onOverScrolled(IIZZ)V
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .registers 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 357
    return-void
.end method

.method public onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V
    .registers 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 369
    return-void
.end method

.method public abstract onProvideVirtualStructure(Landroid/view/ViewStructure;)V
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onScrollChanged(IIII)V
.end method

.method public abstract onSizeChanged(IIII)V
.end method

.method public abstract onStartTemporaryDetach()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p1, "response":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    return-void
.end method

.method public abstract onVisibilityChanged(Landroid/view/View;I)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract onWindowVisibilityChanged(I)V
.end method

.method public abstract performAccessibilityAction(ILandroid/os/Bundle;)Z
.end method

.method public abstract performLongClick()Z
.end method

.method public abstract preDispatchDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
.end method

.method public abstract requestFocus(ILandroid/graphics/Rect;)Z
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setFrame(IIII)Z
.end method

.method public abstract setLayerType(ILandroid/graphics/Paint;)V
.end method

.method public abstract setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setOverScrollMode(I)V
.end method

.method public abstract setScrollBarStyle(I)V
.end method

.method public abstract shouldDelayChildPressedState()Z
.end method
