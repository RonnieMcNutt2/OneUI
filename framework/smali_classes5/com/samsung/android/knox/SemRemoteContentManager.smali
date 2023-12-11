.class public Lcom/samsung/android/knox/SemRemoteContentManager;
.super Ljava/lang/Object;
.source "SemRemoteContentManager.java"


# static fields
.field public static final ERROR:I = -0x14d

.field private static final TAG:Ljava/lang/String; = "SemRemoteContentManager"


# instance fields
.field mService:Lcom/samsung/android/knox/ISemRemoteContentManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ISemRemoteContentManager;)V
    .registers 2
    .param p1, "service"    # Lcom/samsung/android/knox/ISemRemoteContentManager;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    .line 53
    return-void
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .registers 4
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_7

    .line 126
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->cancelCopyChunks(J)V

    .line 128
    :cond_7
    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 23
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_17

    .line 117
    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v1

    return v1

    .line 120
    :cond_17
    const/16 v1, -0x14d

    return v1
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_41

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile: srcContainerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " srcFilePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destContainerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destFilePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemRemoteContentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 176
    :cond_41
    const/4 v0, -0x1

    return v0
.end method

.method public copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_9

    .line 75
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 77
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_9

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 138
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_f

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 154
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_9

    .line 108
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 110
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_9

    .line 100
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 102
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_14

    .line 60
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 61
    :catch_9
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemRemoteContentManager"

    const-string v2, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_9

    .line 92
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 94
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_9

    .line 84
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 86
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public moveFiles(ILandroid/net/Uri;II)J
    .registers 10
    .param p1, "requestApp"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "fileCount"    # I
    .param p4, "containerID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    const-string v0, "SemRemoteContentManager"

    const-wide/16 v1, -0x1

    if-nez p2, :cond_d

    .line 212
    const-string/jumbo v3, "moveFiles uri is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-wide v1

    .line 215
    :cond_d
    if-gez p3, :cond_27

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveFiles total fileCount is smaller than zero : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-wide v1

    .line 220
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_30

    .line 221
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveUnlimitedFiles(ILandroid/net/Uri;II)J

    move-result-wide v0

    return-wide v0

    .line 223
    :cond_30
    return-wide v1
.end method

.method public moveFiles(ILjava/util/List;Ljava/util/List;I)J
    .registers 10
    .param p1, "requestApp"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "SemRemoteContentManager"

    const-wide/16 v1, -0x1

    if-gez p1, :cond_1d

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid App Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-wide v1

    .line 244
    :cond_1d
    if-eqz p2, :cond_44

    if-eqz p2, :cond_28

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_44

    .line 249
    :cond_28
    if-eqz p3, :cond_3d

    if-eqz p3, :cond_33

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_33

    goto :goto_3d

    .line 253
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_3c

    .line 254
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v0

    return-wide v0

    .line 256
    :cond_3c
    return-wide v1

    .line 250
    :cond_3d
    :goto_3d
    const-string/jumbo v3, "invalid destFilePaths"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-wide v1

    .line 245
    :cond_44
    :goto_44
    const-string/jumbo v3, "invalid srcFilePaths"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-wide v1
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .registers 6
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_9

    .line 193
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    .line 195
    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .registers 6
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;
    .param p2, "userId"    # I

    .line 39
    const-string v0, "SemRemoteContentManager"

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_2d

    .line 41
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRCPInterface(): My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_23

    .line 46
    goto :goto_2d

    .line 43
    :catch_23
    move-exception v1

    .line 44
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-void
.end method
