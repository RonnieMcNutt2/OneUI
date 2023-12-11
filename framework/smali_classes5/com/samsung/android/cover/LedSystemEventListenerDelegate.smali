.class Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "LedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

.field private mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .line 24
    if-nez p2, :cond_c

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_10

    .line 25
    :cond_c
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_10
    nop

    .line 27
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    .line 28
    return-void
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    return-object v0
.end method

.method public onCoverTapLeft()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public onCoverTapMid()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public onCoverTapRight()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public onCoverTouchAccept()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public onCoverTouchReject()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 63
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    return-void
.end method
