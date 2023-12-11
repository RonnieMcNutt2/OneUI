.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
.super Ljava/lang/Object;
.source "SContextManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextListenerDelegate"
.end annotation


# instance fields
.field private mDereisgeredListener:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIsHistoryData:Z

.field private mListener:Landroid/hardware/scontext/SContextListener;

.field final synthetic this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDereisgeredListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mDereisgeredListener:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHistoryData(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object p0
.end method

.method constructor <init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
    .registers 7
    .param p2, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "isHistoryData"    # Z

    .line 1377
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mDereisgeredListener:Z

    .line 1380
    iput-object p2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    .line 1382
    if-eqz p3, :cond_e

    move-object v0, p3

    goto :goto_10

    :cond_e
    iget-object v0, p1, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 1384
    .local v0, "mLooper":Landroid/os/Looper;
    :goto_10
    iput-boolean p4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    .line 1386
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;-><init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1418
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1430
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mDereisgeredListener:Z

    .line 1431
    return-void
.end method

.method public getListener()Landroid/hardware/scontext/SContextListener;
    .registers 2

    .line 1426
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 2

    .line 1438
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v0, :cond_9

    .line 1439
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1440
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 7
    .param p1, "semContextEvent"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    monitor-enter p0

    .line 1447
    if-eqz p1, :cond_26

    .line 1448
    :try_start_3
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    .line 1449
    .local v0, "type":I
    iget-object v1, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    .line 1450
    .local v1, "context":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1451
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/hardware/scontext/SContextEvent;

    invoke-direct {v3}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    .line 1452
    .local v3, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    invoke-virtual {v3, v0, v1}, Landroid/hardware/scontext/SContextEvent;->setSContextEvent(ILandroid/os/Bundle;)V

    .line 1453
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1454
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1455
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    goto :goto_26

    .line 1446
    .end local v0    # "type":I
    .end local v1    # "context":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    .end local p0    # "this":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .end local p1    # "semContextEvent":Lcom/samsung/android/hardware/context/SemContextEvent;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1457
    .restart local p0    # "this":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local p1    # "semContextEvent":Lcom/samsung/android/hardware/context/SemContextEvent;
    :cond_26
    :goto_26
    monitor-exit p0

    return-void
.end method
