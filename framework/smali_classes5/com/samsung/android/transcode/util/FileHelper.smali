.class public Lcom/samsung/android/transcode/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "do not instatiate"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getExternalSdCardStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    if-eqz p0, :cond_4c

    invoke-static {p0}, Lcom/samsung/android/transcode/util/FileHelper;->isManagedProfile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 61
    nop

    .line 62
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 63
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 65
    .local v1, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    if-eqz v1, :cond_4c

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 67
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v2, :cond_4c

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 69
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "subsystem":Ljava/lang/String;
    if-eqz v5, :cond_49

    .line 71
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "storagePath":Ljava/lang/String;
    const-string/jumbo v7, "sd"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 73
    return-object v6

    .line 67
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v5    # "subsystem":Ljava/lang/String;
    .end local v6    # "storagePath":Ljava/lang/String;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 79
    .end local v0    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v1    # "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    .end local v2    # "length":I
    .end local v3    # "i":I
    :cond_4c
    const-string v0, "/NoSdCard/"

    return-object v0
.end method

.method public static getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "editPath":Ljava/lang/String;
    if-eqz p1, :cond_87

    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "uriStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_87

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uriStr :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 27
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 28
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_4c

    .line 37
    :cond_47
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    .line 29
    :cond_4c
    :goto_4c
    invoke-static {p1, p0}, Lcom/samsung/android/transcode/util/FileHelper;->getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 30
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_73

    :try_start_52
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_73

    .line 31
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 32
    const-string v3, "_data"

    .line 33
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 32
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_65
    .catchall {:try_start_52 .. :try_end_65} :catchall_67

    move-object v0, v3

    goto :goto_73

    .line 29
    :catchall_67
    move-exception v3

    if-eqz v2, :cond_72

    :try_start_6a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    throw v3

    .line 35
    :cond_73
    :goto_73
    if-eqz v2, :cond_78

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 29
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_78
    goto :goto_87

    .line 39
    :cond_79
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    .line 42
    :cond_86
    move-object v0, v1

    .line 46
    .end local v1    # "uriStr":Ljava/lang/String;
    :cond_87
    :goto_87
    return-object v0
.end method

.method private static getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const-string v0, "_data"

    const-string v1, "duration"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "cols":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 53
    .local v0, "c":Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_17

    move-object v0, v1

    .line 55
    goto :goto_18

    .line 54
    :catch_17
    move-exception v1

    .line 56
    :goto_18
    return-object v0
.end method

.method private static isManagedProfile(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_25} :catch_26

    .line 89
    return v0

    .line 91
    :catch_26
    move-exception v1

    .line 93
    return v0
.end method

.method public static isSdcardPath(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/samsung/android/transcode/util/FileHelper;->getExternalSdCardStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "removalSdPath":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
