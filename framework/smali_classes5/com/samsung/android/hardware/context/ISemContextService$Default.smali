.class public Lcom/samsung/android/hardware/context/ISemContextService$Default;
.super Ljava/lang/Object;
.source "ISemContextService.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/ISemContextService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/ISemContextService;
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

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableServiceMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentServiceList()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeService(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;Ljava/lang/String;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "property"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public requestHistoryData(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public requestToUpdate(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public setReferenceData(II[B)Z
    .registers 5
    .param p1, "service"    # I
    .param p2, "data_type"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
