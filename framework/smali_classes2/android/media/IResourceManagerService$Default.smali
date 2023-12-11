.class public Landroid/media/IResourceManagerService$Default;
.super Ljava/lang/Object;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMediaInfo(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "clientId"    # J
    .param p5, "client"    # Landroid/media/IResourceManagerClient;
    .param p6, "mediaInfo"    # [Lcom/samsung/android/media/MediaInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public addResource(Landroid/media/ClientInfoParcel;Landroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V
    .registers 4
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .param p2, "client"    # Landroid/media/IResourceManagerClient;
    .param p3, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public config([Landroid/media/MediaResourcePolicyParcel;)V
    .registers 2
    .param p1, "policies"    # [Landroid/media/MediaResourcePolicyParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public createResourceObserver(Lcom/samsung/android/media/IResourceManagerObserverClient;)Lcom/samsung/android/media/IResourceManagerObserver;
    .registers 3
    .param p1, "client"    # Lcom/samsung/android/media/IResourceManagerObserverClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemainedFrameRateFor(Ljava/lang/String;II)F
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedFrameRateFor(Ljava/lang/String;II)F
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public markClientForPendingRemoval(Landroid/media/ClientInfoParcel;)V
    .registers 2
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public notifyClientConfigChanged(Landroid/media/ClientConfigParcel;)V
    .registers 2
    .param p1, "clientConfig"    # Landroid/media/ClientConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public notifyClientCreated(Landroid/media/ClientInfoParcel;)V
    .registers 2
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public notifyClientStarted(Landroid/media/ClientConfigParcel;)V
    .registers 2
    .param p1, "clientConfig"    # Landroid/media/ClientConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public notifyClientStopped(Landroid/media/ClientConfigParcel;)V
    .registers 2
    .param p1, "clientConfig"    # Landroid/media/ClientConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public overridePid(II)V
    .registers 3
    .param p1, "originalPid"    # I
    .param p2, "newPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V
    .registers 5
    .param p1, "client"    # Landroid/media/IResourceManagerClient;
    .param p2, "pid"    # I
    .param p3, "procState"    # I
    .param p4, "oomScore"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public reclaimResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)Z
    .registers 4
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .param p2, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public reclaimResourcesFromClientsPendingRemoval(I)V
    .registers 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public removeClient(Landroid/media/ClientInfoParcel;)V
    .registers 2
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public removeResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V
    .registers 3
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .param p2, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public sendCapacityError(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "clientId"    # J
    .param p5, "client"    # Landroid/media/IResourceManagerClient;
    .param p6, "mediaInfo"    # [Lcom/samsung/android/media/MediaInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    return-void
.end method

.method public setCodecState(IIJLandroid/media/IResourceManagerClient;I)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "clientId"    # J
    .param p5, "client"    # Landroid/media/IResourceManagerClient;
    .param p6, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method
