.class public Landroid/nfc/INfcAdapterExtras$Default;
.super Ljava/lang/Object;
.source "INfcAdapterExtras.java"

# interfaces
.implements Landroid/nfc/INfcAdapterExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapterExtras;
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

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public authenticate(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public closeWithPackageName(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .param p3, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAtr(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAtrWithPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardEmulationRoute(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public openWithPackageName(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .param p3, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCardEmulationRoute(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "data_in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public transceiveWithPackageName(Ljava/lang/String;[BLjava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "data_in"    # [B
    .param p3, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
