.class public Lcom/samsung/android/mocca/IMoccaEventListener$Default;
.super Ljava/lang/Object;
.source "IMoccaEventListener.java"

# interfaces
.implements Lcom/samsung/android/mocca/IMoccaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mocca/IMoccaEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onContextAvailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "contextType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public onContextChanged(Lcom/samsung/android/mocca/ContextEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/samsung/android/mocca/ContextEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public onContextStopped(Ljava/lang/String;)V
    .registers 2
    .param p1, "contextType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onContextUnavailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "contextType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
