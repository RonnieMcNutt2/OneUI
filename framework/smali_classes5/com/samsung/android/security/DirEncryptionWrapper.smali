.class public Lcom/samsung/android/security/DirEncryptionWrapper;
.super Ljava/lang/Object;
.source "DirEncryptionWrapper.java"


# static fields
.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final TAG:Ljava/lang/String; = "DirEncryptWrapper"

.field private static mExternalSDvolFsUuid:Ljava/lang/String;

.field private static mExternalSDvolId:Ljava/lang/String;

.field private static mExternalSDvolState:Ljava/lang/String;

.field private static mExternalSDvolUsedSize:J

.field private static mSavedUserId:I

.field private static mUserDiff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IStorageManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    .line 29
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 36
    sput v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    .line 39
    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private getVolumeInfo()Landroid/os/storage/VolumeInfo;
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 52
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 56
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_3f

    .line 57
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 58
    return-object v3

    .line 61
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3f
    goto :goto_1a

    .line 63
    :cond_40
    const/4 v2, 0x0

    return-object v2
.end method

.method private static logD(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_9
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_9
    return-void
.end method


# virtual methods
.method public getActivePasswordQuality()I
    .registers 3

    .line 129
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getCurrentUserID()I
    .registers 2

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getExternalSDvolFsUuid()Ljava/lang/String;
    .registers 2

    .line 204
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolId()Ljava/lang/String;
    .registers 2

    .line 192
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolState()Ljava/lang/String;
    .registers 2

    .line 212
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolUsedSize()J
    .registers 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getExternalSDvolUsedSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    .line 217
    sget-wide v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    return-wide v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .registers 2

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getMountService()Landroid/os/storage/IStorageManager;
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_19

    .line 73
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 74
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_14

    .line 75
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    goto :goto_19

    .line 77
    :cond_14
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    .line 80
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    return-object v0
.end method

.method public getSavedUserID()I
    .registers 2

    .line 184
    sget v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public getUserDiff()Z
    .registers 2

    .line 176
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExternalSDRemovable()Z
    .registers 2

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 145
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isSecure()Z
    .registers 3

    .line 139
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method public mountVolume()Z
    .registers 3

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    .line 90
    nop

    .line 91
    const/4 v0, 0x1

    return v0

    .line 87
    :catch_e
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    return v1
.end method

.method public registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .registers 5
    .param p1, "listner"    # Landroid/os/storage/StorageEventListener;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 158
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 159
    if-nez v0, :cond_15

    .line 160
    return v1

    .line 161
    :cond_15
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_1a
    return v1
.end method

.method public setExternalSDvolFsUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "volFsUuid"    # Ljava/lang/String;

    .line 196
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setExternalSDvolId(Ljava/lang/String;)V
    .registers 2
    .param p1, "volId"    # Ljava/lang/String;

    .line 188
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setExternalSDvolState(Ljava/lang/String;)V
    .registers 2
    .param p1, "volState"    # Ljava/lang/String;

    .line 208
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setExternalSDvolUsedSize(J)V
    .registers 3
    .param p1, "size"    # J

    .line 200
    sput-wide p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    .line 201
    return-void
.end method

.method public setSavedUserID(I)V
    .registers 2
    .param p1, "in"    # I

    .line 180
    sput p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    .line 181
    return-void
.end method

.method public setUserDiff(Z)V
    .registers 2
    .param p1, "in"    # Z

    .line 172
    sput-boolean p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 173
    return-void
.end method

.method public unmountHiddenVolume()Z
    .registers 3

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    .line 110
    nop

    .line 111
    const/4 v0, 0x1

    return v0

    .line 107
    :catch_e
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const/4 v1, 0x0

    return v1
.end method

.method public unmountVolume()Z
    .registers 3

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    .line 100
    nop

    .line 101
    const/4 v0, 0x1

    return v0

    .line 97
    :catch_e
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v1, 0x0

    return v1
.end method
