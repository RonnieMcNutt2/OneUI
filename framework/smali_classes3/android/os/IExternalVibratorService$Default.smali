.class public Landroid/os/IExternalVibratorService$Default;
.super Ljava/lang/Object;
.source "IExternalVibratorService.java"

# interfaces
.implements Landroid/os/IExternalVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IExternalVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .registers 3
    .param p1, "vib"    # Landroid/os/ExternalVibration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 2
    .param p1, "vib"    # Landroid/os/ExternalVibration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public shouldIgnoreExternalVibrationLocked(IIII)Z
    .registers 6
    .param p1, "content_type"    # I
    .param p2, "usage"    # I
    .param p3, "source"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method
