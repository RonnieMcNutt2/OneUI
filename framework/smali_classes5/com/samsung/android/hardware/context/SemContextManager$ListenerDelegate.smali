.class Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
.super Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private mDereisgeredListener:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsHistoryData:Z

.field private mListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDereisgeredListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V
    .registers 5
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1283
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;-><init>()V

    .line 1284
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fputmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;Ljava/lang/String;)V

    .line 1285
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    .line 1286
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V

    .line 1287
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Z)V
    .registers 4
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p3, "isHistoryData"    # Z

    .line 1289
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;-><init>()V

    .line 1290
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    .line 1291
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V

    .line 1292
    return-void
.end method

.method private set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isHistoryData"    # Z

    .line 1295
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 1296
    if-eqz p2, :cond_6

    move-object v0, p2

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fgetmMainLooper(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;

    move-result-object v0

    .line 1297
    .local v0, "mainLooper":Landroid/os/Looper;
    :goto_c
    iput-boolean p3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    .line 1298
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1330
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    .line 1333
    return-void
.end method

.method public getListener()Lcom/samsung/android/hardware/context/SemContextListener;
    .registers 2

    .line 1340
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fgetmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1370
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fgetmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized semContextCallback(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1352
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1353
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1354
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1355
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1357
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1358
    monitor-exit p0

    return-void

    .line 1351
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    .end local p1    # "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method
