.class public final Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
.super Ljava/lang/Object;
.source "VaultKeeperManager.java"


# static fields
.field public static final ERR_DEVICE_NOT_READY:I = -0x6d

.field public static final ERR_EXCEPTION:I = -0x67

.field public static final ERR_FAILURE_ACQUIRE_LOCK:I = -0x69

.field public static final ERR_GENERAL_FAILED:I = -0x65

.field public static final ERR_INVALID_ARGUMENT:I = -0x66

.field public static final ERR_PERMISSION_DENIED:I = -0x6a

.field public static final ERR_SERVICE_NOT_SUPPORT:I = -0x68

.field public static final ERR_TA_SERVICE_ERROR:I = -0x6e

.field public static final ERR_VAULT_NOT_AVAILABLE:I = -0x6b

.field public static final ERR_VERIFICATION_FAILURE:I = -0x6c

.field public static final MAX_LEN_VAULT_NAME:I = 0x20

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VaultKeeperManager"

.field public static final TYPE_COMMERCIAL_DEVICE:I = 0x6

.field public static final TYPE_EMT:I = 0x3

.field public static final TYPE_NONCE:I = 0x1

.field public static final TYPE_VAULT_DATA_MAX:I = 0x2

.field public static final TYPE_VAULT_DATA_MIN:I = 0x1

.field public static final TYPE_VAULT_DATA_SHELTERED:I = 0x2

.field public static final TYPE_VAULT_DATA_UNSHELTERED:I = 0x1

.field public static final TYPE_VK_API_LEVEL:I = 0x9

.field public static final TYPE_WB:I = 0x2


# instance fields
.field private mErrorCode:I

.field private mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

.field private mVaultName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "vaultName"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, -0x65

    iput v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 58
    iput-object p1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    .line 59
    const-string v0, "VaultKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    .line 60
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .registers 6
    .param p0, "vaultName"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    const-string v1, "VaultKeeperManager"

    if-nez p0, :cond_c

    .line 65
    const-string/jumbo v2, "vaultName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object v0

    .line 69
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1b

    goto :goto_21

    .line 75
    :cond_1b
    new-instance v0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "vkm":Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    return-object v0

    .line 70
    .end local v0    # "vkm":Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    :cond_21
    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vaultName length is wrong("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "). It should be less than ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v0
.end method


# virtual methods
.method public checkDataWritable()I
    .registers 3

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->checkDataWritable(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 239
    :catch_9
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const/16 v1, -0x67

    return v1
.end method

.method public destroy()I
    .registers 4

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 119
    :catch_a
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const/16 v1, -0x67

    return v1
.end method

.method public destroy([B)I
    .registers 5
    .param p1, "hmac"    # [B

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 129
    :catch_a
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/16 v1, -0x67

    return v1
.end method

.method public destroy([B[B)I
    .registers 6
    .param p1, "cert"    # [B
    .param p2, "sig"    # [B

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 139
    :catch_a
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const/16 v1, -0x67

    return v1
.end method

.method public encryptMessage([B)[B
    .registers 4
    .param p1, "msg"    # [B

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->encryptMessage(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 209
    :catch_9
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const/4 v1, 0x0

    return-object v1
.end method

.method public generateHotpCode()I
    .registers 3

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->generateHotpCode(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 249
    :catch_9
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const/16 v1, -0x67

    return v1
.end method

.method public getErrorCode()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    return v0
.end method

.method public initialize([B[B[B)I
    .registers 10
    .param p1, "key"    # [B
    .param p2, "cert"    # [B
    .param p3, "sig"    # [B

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;[B[B[B[B)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 99
    :catch_d
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const/16 v1, -0x67

    return v1
.end method

.method public initialize([B[B[B[B)I
    .registers 11
    .param p1, "key"    # [B
    .param p2, "initUnsheltered"    # [B
    .param p3, "cert"    # [B
    .param p4, "sig"    # [B

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;[B[B[B[B)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 109
    :catch_d
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/16 v1, -0x67

    return v1
.end method

.method public isInitialized()Z
    .registers 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->isInitialized(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 89
    :catch_9
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    return v1
.end method

.method public migrationStorage()Z
    .registers 3

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->migrationStorage(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 219
    :catch_9
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    const/4 v1, 0x0

    return v1
.end method

.method public read(I)[B
    .registers 6
    .param p1, "type"    # I

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 148
    .local v0, "ret":[I
    const/16 v1, -0x66

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 151
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->read(Ljava/lang/String;I[I)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_17
    .catchall {:try_start_8 .. :try_end_10} :catchall_15

    .line 156
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 151
    return-object v2

    .line 156
    :catchall_15
    move-exception v2

    goto :goto_22

    .line 152
    :catch_17
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 154
    nop

    .line 156
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 154
    const/4 v1, 0x0

    return-object v1

    .line 156
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_22
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 157
    throw v2
.end method

.method public sensitiveBox(I)[B
    .registers 6
    .param p1, "type"    # I

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 193
    .local v0, "ret":[I
    const/16 v1, -0x66

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 196
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->sensitiveBox(Ljava/lang/String;I[I)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_17
    .catchall {:try_start_8 .. :try_end_10} :catchall_15

    .line 201
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 196
    return-object v2

    .line 201
    :catchall_15
    move-exception v2

    goto :goto_22

    .line 197
    :catch_17
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 199
    nop

    .line 201
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 199
    const/4 v1, 0x0

    return-object v1

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_22
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    .line 202
    throw v2
.end method

.method public verifyCertificate([B)Z
    .registers 4
    .param p1, "cert"    # [B

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->verifyCertificate(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 229
    :catch_9
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    const/4 v1, 0x0

    return v1
.end method

.method public write(I[B)I
    .registers 9
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;I[B[B[B)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 164
    :catch_d
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const/16 v1, -0x67

    return v1
.end method

.method public write(I[B[B)I
    .registers 10
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "hmac"    # [B

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;I[B[B[B)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 174
    :catch_d
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/16 v1, -0x67

    return v1
.end method

.method public write(I[B[B[B)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "cert"    # [B
    .param p4, "sig"    # [B

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;I[B[B[B)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 184
    :catch_d
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/16 v1, -0x67

    return v1
.end method
