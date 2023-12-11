.class Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
.super Landroid/view/IRotationWatcher$Stub;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProposedRotationListenerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;
    }
.end annotation


# instance fields
.field mLastRotation:I

.field private volatile mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 878
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;-><init>()V

    return-void
.end method

.method static synthetic lambda$onRotationChanged$0(Ljava/util/function/IntConsumer;I)V
    .registers 2
    .param p0, "listener"    # Ljava/util/function/IntConsumer;
    .param p1, "rotation"    # I

    .line 925
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method add(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)Z
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 896
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_1f

    .line 897
    iget-object v3, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iget-object v3, v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_1c

    .line 899
    return v2

    .line 896
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 902
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-direct {v3, p1, p2}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-array v2, v2, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iput-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    .line 904
    return v1
.end method

.method public onRotationChanged(I)V
    .registers 10
    .param p1, "rotation"    # I

    .line 920
    iput p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mLastRotation:I

    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, "alive":Z
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_23

    aget-object v4, v1, v3

    .line 923
    .local v4, "listenerWrapper":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;
    iget-object v5, v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/IntConsumer;

    .line 924
    .local v5, "listener":Ljava/util/function/IntConsumer;
    if-eqz v5, :cond_20

    .line 925
    iget-object v6, v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5, p1}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 926
    const/4 v0, 0x1

    .line 922
    .end local v4    # "listenerWrapper":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;
    .end local v5    # "listener":Ljava/util/function/IntConsumer;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 929
    :cond_23
    if-nez v0, :cond_31

    .line 932
    :try_start_25
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 935
    goto :goto_31

    .line 933
    :catch_2d
    move-exception v1

    .line 934
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 937
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method remove(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 908
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_36

    .line 909
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iget-object v2, v2, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_33

    .line 910
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 911
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-array v1, v1, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iput-object v1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    .line 912
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    return v1

    .line 908
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 915
    .end local v0    # "i":I
    :cond_36
    return v1
.end method
