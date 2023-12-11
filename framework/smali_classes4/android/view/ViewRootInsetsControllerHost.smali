.class public Landroid/view/ViewRootInsetsControllerHost;
.super Ljava/lang/Object;
.source "ViewRootInsetsControllerHost.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmViewRoot(Landroid/view/ViewRootInsetsControllerHost;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "VRInsetsControllerHost"

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->TAG:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 51
    return-void
.end method

.method private isVisibleToUser()Z
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$releaseSurfaceControlFromRt$0(Landroid/view/SurfaceControl;J)V
    .registers 3
    .param p0, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p1, "frame"    # J

    .line 246
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 247
    return-void
.end method


# virtual methods
.method public addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 65
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 66
    return-void

    .line 68
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$1;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootInsetsControllerHost$1;-><init>(Landroid/view/ViewRootInsetsControllerHost;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 77
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 78
    return-void
.end method

.method public varargs applySurfaceParams(Z[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 5
    .param p1, "ignoreVisibility"    # Z
    .param p2, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 135
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3b

    .line 138
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_15

    .line 139
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 141
    :cond_15
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Landroid/view/ViewRootInsetsControllerHost;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_27

    if-eqz p1, :cond_2d

    .line 149
    :cond_27
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_3a

    .line 155
    :cond_2d
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 156
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v1, v0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 157
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 159
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :goto_3a
    return-void

    .line 136
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View of the ViewRootImpl is not initiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewRootInsetsControllerHost;->applySurfaceParams(Z[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 129
    return-void
.end method

.method public dipToPx(I)I
    .registers 3
    .param p1, "dips"    # I

    .line 275
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_9

    .line 276
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v0

    return v0

    .line 278
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 118
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 120
    return-void

    .line 122
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 123
    return-void
.end method

.method public dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 82
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 83
    return-void

    .line 85
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 86
    return-void
.end method

.method public dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 102
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 4
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 92
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object v0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 257
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getRootViewContext()Landroid/content/Context;
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getRootViewTitle()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_6

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemBarsAppearance()I
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    return v0
.end method

.method public getSystemBarsBehavior()I
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    return v0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    .line 296
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object v0

    .line 298
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 3

    .line 283
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 284
    return-object v1

    .line 286
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_d

    .line 288
    return-object v1

    .line 290
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public hasAnimationCallbacks()Z
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 188
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    return v0
.end method

.method public isSystemBarsAppearanceControlled()Z
    .registers 3

    .line 212
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isSystemBarsBehaviorControlled()Z
    .registers 3

    .line 232
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public notifyInsetsChanged()V
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    .line 61
    return-void
.end method

.method public postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 163
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 244
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 245
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 249
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_25

    .line 251
    :cond_22
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 253
    :goto_25
    return-void
.end method

.method public setSystemBarsAppearance(II)V
    .registers 7
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 195
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 196
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 197
    .local v0, "insetsFlags":Landroid/view/InsetsFlags;
    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    .line 198
    .local v1, "newAppearance":I
    iget v2, v0, Landroid/view/InsetsFlags;->appearance:I

    if-eq v2, v1, :cond_28

    .line 199
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 200
    iget-object v2, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 201
    iget-object v2, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 203
    :cond_28
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .registers 5
    .param p1, "behavior"    # I

    .line 217
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 218
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    if-eq v0, p1, :cond_27

    .line 219
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput p1, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 220
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 221
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 223
    :cond_27
    return-void
.end method

.method public updateCompatSysUiVisibility(III)V
    .registers 5
    .param p1, "visibleTypes"    # I
    .param p2, "requestedVisibleTypes"    # I
    .param p3, "controllableTypes"    # I

    .line 170
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->updateCompatSysUiVisibility(III)V

    .line 172
    return-void
.end method

.method public updateRequestedVisibleTypes(I)V
    .registers 5
    .param p1, "types"    # I

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_11

    .line 178
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->updateRequestedVisibleTypes(Landroid/view/IWindow;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 182
    :cond_11
    goto :goto_1a

    .line 180
    :catch_12
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VRInsetsControllerHost"

    const-string v2, "Failed to call insetsModified"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method
