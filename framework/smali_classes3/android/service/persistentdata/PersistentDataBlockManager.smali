.class public Landroid/service/persistentdata/PersistentDataBlockManager;
.super Ljava/lang/Object;
.source "PersistentDataBlockManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/PersistentDataBlockManager$FlashLockState;
    }
.end annotation


# static fields
.field public static final FLASH_LOCK_LOCKED:I = 0x1

.field public static final FLASH_LOCK_UNKNOWN:I = -0x1

.field public static final FLASH_LOCK_UNLOCKED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private sService:Landroid/service/persistentdata/IPersistentDataBlockService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/persistentdata/PersistentDataBlockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/persistentdata/IPersistentDataBlockService;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    .line 80
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 3

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getDataBlockSize()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 124
    :catch_7
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getFlashLockState()I
    .registers 3

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getFlashLockState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 215
    :catch_7
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getMaximumDataBlockSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 138
    :catch_7
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOemUnlockEnabled()Z
    .registers 3

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getOemUnlockEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 184
    :catch_7
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPersistentDataPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getPersistentDataPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 231
    :catch_7
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabled()Z
    .registers 3

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->isEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 195
    :catch_7
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public read()[B
    .registers 3

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->read()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 110
    :catch_7
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setOemUnlockEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 169
    nop

    .line 170
    return-void

    .line 167
    :catch_7
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wipe()V
    .registers 3

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->wipe()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 155
    nop

    .line 156
    return-void

    .line 153
    :catch_7
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public write([B)I
    .registers 4
    .param p1, "data"    # [B

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->write([B)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 98
    :catch_7
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
