.class public Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Default;
.super Ljava/lang/Object;
.source "ISemBiometricSysUiCallback.java"

# interfaces
.implements Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(III)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "error"    # I
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public onEvent(III)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onSysUiDismissed(II[B)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .param p3, "credentialAttestation"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onTouchEvent(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
