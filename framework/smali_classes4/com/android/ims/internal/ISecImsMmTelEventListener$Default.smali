.class public Lcom/android/ims/internal/ISecImsMmTelEventListener$Default;
.super Ljava/lang/Object;
.source "ISecImsMmTelEventListener.java"

# interfaces
.implements Lcom/android/ims/internal/ISecImsMmTelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ISecImsMmTelEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCdpnInfo(Ljava/lang/String;I)V
    .registers 3
    .param p1, "calledPartyNumber"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onIncomingCall(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "callId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
