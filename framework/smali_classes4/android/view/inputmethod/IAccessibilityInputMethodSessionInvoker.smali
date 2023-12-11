.class final Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
.super Ljava/lang/Object;
.source "IAccessibilityInputMethodSessionInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IAccessibilityInputMethodSessionInvoker"

.field private static sAsyncBinderEmulationHandler:Landroid/os/Handler;

.field private static final sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;


# instance fields
.field private final mCustomHandler:Landroid/os/Handler;

.field private final mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# direct methods
.method public static synthetic $r8$lambda$Hv2gdxaErx_9Te8R31qSLKhaL-g(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->finishInputInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$pQUjczw-1BUmWbvXktIQY1v_9Q8(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;IIIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->lambda$updateSelection$0(IIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$roELw5HxMQfDJlpK07IpmzZTVQU(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Landroid/os/Handler;)V
    .registers 3
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "customHandler"    # Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 60
    iput-object p2, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public static createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .registers 4
    .param p0, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 74
    if-eqz p0, :cond_2a

    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 75
    sget-object v0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_b
    sget-object v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    if-nez v1, :cond_23

    .line 77
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "IMM.IAIMS"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 80
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    sput-object v2, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    .line 82
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_23
    sget-object v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    .line 83
    .local v1, "customHandler":Landroid/os/Handler;
    monitor-exit v0

    goto :goto_2b

    .end local v1    # "customHandler":Landroid/os/Handler;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v1

    .line 85
    :cond_2a
    const/4 v1, 0x0

    .line 88
    .restart local v1    # "customHandler":Landroid/os/Handler;
    :goto_2b
    if-nez p0, :cond_2f

    .line 89
    const/4 v0, 0x0

    goto :goto_34

    :cond_2f
    new-instance v0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;-><init>(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Landroid/os/Handler;)V

    .line 88
    :goto_34
    return-object v0
.end method

.method private finishInputInternal()V
    .registers 4

    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishInput()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 107
    goto :goto_e

    .line 105
    :catch_6
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 7
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 150
    goto :goto_e

    .line 148
    :catch_6
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private synthetic lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method private synthetic lambda$updateSelection$0(IIIIII)V
    .registers 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "selStart"    # I
    .param p4, "selEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 117
    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    return-void
.end method

.method private updateSelectionInternal(IIIIII)V
    .registers 14
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "selStart"    # I
    .param p4, "selEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->updateSelection(IIIIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 130
    goto :goto_14

    .line 128
    :catch_c
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method


# virtual methods
.method finishInput()V
    .registers 3

    .line 94
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 95
    invoke-direct {p0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->finishInputInternal()V

    goto :goto_10

    .line 97
    :cond_8
    new-instance v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :goto_10
    return-void
.end method

.method invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 6
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 136
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    goto :goto_10

    .line 139
    :cond_8
    new-instance v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :goto_10
    return-void
.end method

.method updateSelection(IIIIII)V
    .registers 18
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "selStart"    # I
    .param p4, "selEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 113
    move-object v8, p0

    iget-object v9, v8, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v9, :cond_9

    .line 114
    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    goto :goto_1b

    .line 117
    :cond_9
    new-instance v10, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;IIIIII)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    :goto_1b
    return-void
.end method
