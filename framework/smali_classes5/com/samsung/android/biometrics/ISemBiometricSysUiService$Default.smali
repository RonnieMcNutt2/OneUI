.class public Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Default;
.super Ljava/lang/Object;
.source "ISemBiometricSysUiService.java"

# interfaces
.implements Lcom/samsung/android/biometrics/ISemBiometricSysUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/ISemBiometricSysUiService;
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

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideBiometricDialog(III)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public onBiometricAuthenticated(IIZLjava/lang/String;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "modality"    # I
    .param p3, "authenticated"    # Z
    .param p4, "extraInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onBiometricError(IIIILjava/lang/String;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "modality"    # I
    .param p3, "errCode"    # I
    .param p4, "vendorCode"    # I
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public onBiometricHelp(IIIILjava/lang/String;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "modality"    # I
    .param p3, "helpCode"    # I
    .param p4, "vendorCode"    # I
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public sendCommand(IIILandroid/os/Bundle;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "cmd"    # I
    .param p3, "code"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public setBiometricTheme(ILjava/lang/String;[BLjava/io/FileDescriptor;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    .registers 11
    .param p1, "sessionId"    # I
    .param p2, "type"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "receiver"    # Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    .param p5, "requireConfirmation"    # Z
    .param p6, "userId"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "operationId"    # J
    .param p10, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
