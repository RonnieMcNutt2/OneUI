.class public Landroid/hardware/ISensorPrivacyManager$Default;
.super Ljava/lang/Object;
.source "ISensorPrivacyManager.java"

# interfaces
.implements Landroid/hardware/ISensorPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISensorPrivacyManager;
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
.method public addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCombinedToggleSensorPrivacyEnabled(I)Z
    .registers 3
    .param p1, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isSensorPrivacyEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public isToggleSensorPrivacyEnabled(II)Z
    .registers 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public requiresAuthentication()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public setSensorPrivacy(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public setToggleSensorPrivacy(IIIZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public setToggleSensorPrivacyForProfileGroup(IIIZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public setToggleSensorPrivacyForProfileGroupWithConfirmPopup(IIIZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public showSensorUseDialog(I)V
    .registers 2
    .param p1, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public supportsSensorToggle(II)Z
    .registers 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "suppress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method
