.class public Landroid/os/incremental/IIncrementalService$Default;
.super Ljava/lang/Object;
.source "IIncrementalService.java"

# interfaces
.implements Landroid/os/incremental/IIncrementalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IIncrementalService;
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

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "storageId"    # I
    .param p2, "apkFullPath"    # Ljava/lang/String;
    .param p3, "libDirRelativePath"    # Ljava/lang/String;
    .param p4, "abi"    # Ljava/lang/String;
    .param p5, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public createLinkedStorage(Ljava/lang/String;II)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "otherStorageId"    # I
    .param p3, "createMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/content/pm/DataLoaderParamsParcel;
    .param p3, "createMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public deleteBindMount(ILjava/lang/String;)I
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "targetFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public deleteStorage(I)V
    .registers 2
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public disallowReadLogs(I)V
    .registers 2
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public getLoadingProgress(I)F
    .registers 3
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getMetadataById(I[B)[B
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "fileId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadataByPath(ILjava/lang/String;)[B
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetrics(I)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFileFullyLoaded(ILjava/lang/String;)I
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyLoaded(I)I
    .registers 3
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "storageId"    # I
    .param p2, "sourcePath"    # Ljava/lang/String;
    .param p3, "targetFullPath"    # Ljava/lang/String;
    .param p4, "bindType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public makeDirectories(ILjava/lang/String;)I
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public makeDirectory(ILjava/lang/String;)I
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I
    .registers 7
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "params"    # Landroid/os/incremental/IncrementalNewFileParams;
    .param p5, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I
    .registers 9
    .param p1, "storageId"    # I
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p3, "sourcePath"    # Ljava/lang/String;
    .param p4, "start"    # J
    .param p6, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public makeLink(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "sourceStorageId"    # I
    .param p2, "sourcePath"    # Ljava/lang/String;
    .param p3, "destStorageId"    # I
    .param p4, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onInstallationComplete(I)V
    .registers 2
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public openStorage(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "listener"    # Landroid/os/incremental/IStorageLoadingProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "params"    # Landroid/content/pm/DataLoaderParamsParcel;
    .param p3, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p4, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p5, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p6, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public unlink(ILjava/lang/String;)I
    .registers 4
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterLoadingProgressListener(I)Z
    .registers 3
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public waitForNativeBinariesExtraction(I)Z
    .registers 3
    .param p1, "storageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method
