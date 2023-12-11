.class public Lcom/samsung/android/core/IFoldStarManager$Default;
.super Ljava/lang/Object;
.source "IFoldStarManager.java"

# interfaces
.implements Lcom/samsung/android/core/IFoldStarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/IFoldStarManager;
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

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "option"    # I
    .param p3, "requestedPackages"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "option"    # I
    .param p3, "requestedPackages"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public initAppContinuityValueWhenReset(ZZ)V
    .registers 3
    .param p1, "allAppContinuityModeOn"    # Z
    .param p2, "frontScreenOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/android/core/IFoldStarCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public setAllAppContinuityMode(IZ)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "allAppContinuityModeOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public setAppContinuityMode(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "applyAppContinuityMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public setDisplayCompatPackages(ILjava/util/Map;Z)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "requestedPackages"    # Ljava/util/Map;
    .param p3, "replaceAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "requestedPackages"    # Ljava/util/Map;
    .param p3, "replaceAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public setFrontScreenOnWhenAppContinuityMode(Z)V
    .registers 2
    .param p1, "frontScreenOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/android/core/IFoldStarCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
