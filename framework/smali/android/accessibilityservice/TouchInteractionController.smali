.class public final Landroid/accessibilityservice/TouchInteractionController;
.super Ljava/lang/Object;
.source "TouchInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/TouchInteractionController$Callback;,
        Landroid/accessibilityservice/TouchInteractionController$State;
    }
.end annotation


# static fields
.field private static final MAX_POINTER_COUNT:I = 0x20

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_DELEGATING:I = 0x4

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_TOUCH_EXPLORING:I = 0x2

.field public static final STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/TouchInteractionController$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private final mLock:Ljava/lang/Object;

.field private mQueuedMotionEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/accessibilityservice/AccessibilityService;

.field private mServiceDetectsGestures:Z

.field private mState:I

.field private mStateChangeRequested:Z


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .registers 5
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    .line 114
    iput v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 118
    iput p3, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    .line 119
    iput-object p2, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 121
    return-void
.end method

.method static synthetic lambda$onStateChanged$1(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;
    .param p1, "state"    # I

    .line 221
    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$sendEventToAllListeners$0(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 197
    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private sendEventToAllListeners(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 188
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 192
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_30

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_10
    if-ge v0, v2, :cond_2f

    .line 194
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 195
    .local v3, "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 196
    .local v4, "executor":Ljava/util/concurrent/Executor;
    if-eqz v4, :cond_29

    .line 197
    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 200
    :cond_29
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 193
    .end local v3    # "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 203
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_2f
    return-void

    .line 192
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private setServiceDetectsGestures(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 246
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 247
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 248
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1e

    .line 250
    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceDetectsGesturesEnabled(IZ)V

    .line 251
    iput-boolean p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    .line 254
    goto :goto_1e

    .line 252
    :catch_17
    move-exception v1

    .line 253
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 256
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 411
    packed-switch p0, :pswitch_data_26

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 421
    :pswitch_17
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 419
    :pswitch_1a
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 417
    :pswitch_1d
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    .line 415
    :pswitch_20
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    .line 413
    :pswitch_23
    const-string v0, "STATE_CLEAR"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private validateTransitionRequest()V
    .registers 4

    .line 375
    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-eqz v0, :cond_34

    .line 379
    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 383
    return-void

    .line 380
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State transition requests are not allowed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 381
    invoke-static {v2}, Landroid/accessibilityservice/TouchInteractionController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State transitions are not allowed without first adding a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDisplayId()I
    .registers 2

    .line 392
    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    return v0
.end method

.method public getMaxPointerCount()I
    .registers 2

    .line 387
    const/16 v0, 0x20

    return v0
.end method

.method public getState()I
    .registers 3

    .line 403
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    monitor-exit v0

    return v1

    .line 405
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 179
    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    if-eqz v0, :cond_a

    .line 180
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 182
    :cond_a
    invoke-direct {p0, p1}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    .line 184
    :goto_d
    return-void
.end method

.method onStateChanged(I)V
    .registers 8
    .param p1, "state"    # I

    .line 210
    iput p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    .line 212
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_5
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 216
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_49

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_12
    if-ge v0, v2, :cond_31

    .line 218
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 219
    .local v3, "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 220
    .local v4, "executor":Ljava/util/concurrent/Executor;
    if-eqz v4, :cond_2b

    .line 221
    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 224
    :cond_2b
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    .line 217
    .end local v3    # "callback":Landroid/accessibilityservice/TouchInteractionController$Callback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 227
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    .line 228
    :goto_34
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 229
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    goto :goto_34

    .line 231
    :cond_48
    return-void

    .line 216
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/TouchInteractionController$Callback;Ljava/util/concurrent/Executor;>;"
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public performClick()V
    .registers 4

    .line 341
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 342
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 343
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 345
    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTap(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 348
    goto :goto_1c

    .line 346
    :catch_15
    move-exception v1

    .line 347
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 350
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public performLongClickAndStartDrag()V
    .registers 4

    .line 363
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 364
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 365
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1c

    .line 367
    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTapAndHold(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 370
    goto :goto_1c

    .line 368
    :catch_15
    move-exception v1

    .line 369
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 372
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/TouchInteractionController$Callback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 132
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    .line 136
    :cond_e
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 138
    invoke-direct {p0, v2}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 140
    :cond_1f
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public requestDelegating()V
    .registers 4

    .line 316
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 318
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 319
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 320
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 322
    :try_start_12
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDelegating(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1c

    .line 325
    nop

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_23

    .line 323
    :catch_1c
    move-exception v1

    .line 324
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 328
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public requestDragging(I)V
    .registers 5
    .param p1, "pointerId"    # I

    .line 291
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 292
    if-ltz p1, :cond_2a

    const/16 v0, 0x20

    if-gt p1, v0, :cond_2a

    .line 296
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 297
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 298
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_29

    .line 300
    :try_start_18
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDragging(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_22

    .line 303
    nop

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_29

    .line 301
    :catch_22
    move-exception v1

    .line 302
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 306
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_29
    :goto_29
    return-void

    .line 293
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestTouchExploration()V
    .registers 4

    .line 265
    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    .line 267
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 268
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 269
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 271
    :try_start_12
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestTouchExploration(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1c

    .line 274
    nop

    .line 275
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_23

    .line 272
    :catch_1c
    move-exception v1

    .line 273
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 277
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public unregisterAllCallbacks()V
    .registers 3

    .line 166
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v0, :cond_15

    .line 167
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_7
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 169
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 170
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 172
    :cond_15
    :goto_15
    return-void
.end method

.method public unregisterCallback(Landroid/accessibilityservice/TouchInteractionController$Callback;)Z
    .registers 6
    .param p1, "callback"    # Landroid/accessibilityservice/TouchInteractionController$Callback;

    .line 150
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 151
    return v1

    .line 153
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_9
    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v1

    .line 155
    .local v2, "result":Z
    :goto_14
    if-eqz v2, :cond_21

    iget-object v3, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_21

    .line 156
    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    .line 158
    :cond_21
    monitor-exit v0

    return v2

    .line 159
    .end local v2    # "result":Z
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v1
.end method
