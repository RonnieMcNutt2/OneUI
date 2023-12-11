.class public final Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
.super Ljava/lang/Object;
.source "KnoxGuardVaultManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;,
        Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    }
.end annotation


# static fields
.field private static final BLINK_STATE:Ljava/lang/String; = "Blink"

.field private static final CHECKING_STATE:Ljava/lang/String; = "Checking"

.field private static final COMPLETED_STATE:Ljava/lang/String; = "Completed"

.field private static final KGV_AES256_IV_SIZE:I = 0x10

.field private static final KGV_AES256_KEY_SIZE:I = 0x20

.field private static final KGV_ERR_CERTIFICATE:I = -0x3

.field private static final KGV_ERR_CRYPTO_FUNCTION:I = -0x8

.field private static final KGV_ERR_GENERAL:I = -0x1

.field private static final KGV_ERR_INVALID_ARGUMENT:I = -0x2

.field private static final KGV_ERR_INVALID_PASSCODE_FORMAT:I = -0xb

.field private static final KGV_ERR_INVALID_TOKEN:I = -0x4

.field private static final KGV_ERR_LOCKSCREEN:I = -0x9

.field private static final KGV_ERR_MAX_FAILURE_COUNT_REACHED:I = -0x7

.field private static final KGV_ERR_SERIALIZATION:I = -0xa

.field private static final KGV_ERR_SERVER_RESULT_FAIL:I = -0x6

.field private static final KGV_ERR_VAULTKEEPER:I = -0x5

.field private static final KGV_FAILCOUNT_FOR_DELAY:I = 0x1

.field private static final KGV_ID_SIZE:I = 0x28

.field private static final KGV_KEY_SIZE:I = 0x20

.field private static final KGV_MAX_LIFE_TIME:I = 0x270f

.field private static final KGV_NONCE_FLAG_VERIFY:I = 0x2

.field private static final KGV_NONCE_FLAG_WRITE:I = 0x1

.field private static final KGV_NONCE_SIZE:I = 0x20

.field private static final KGV_SHA256_SIZE:I = 0x20

.field private static final KGV_SUCCESS:I = 0x0

.field private static final LOCKED_STATE:Ljava/lang/String; = "Locked"

.field private static final NORMAL_STATE:Ljava/lang/String; = "Normal"

.field private static final OTP_LENGTH:I = 0x8

.field private static final PRENORMAL_STATE:Ljava/lang/String; = "Prenormal"

.field private static final SECURITY_ENHANCE_API_LEVEL_Q:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "KgvManager"

.field private static final first_api_level:I

.field private static mCompleteUnlockingDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager; = null

.field private static mIsSupportKg2:Z = false

.field private static final mKgVaultName:Ljava/lang/String; = "KnoxGuard"

.field private static final mKgVaultName2:Ljava/lang/String; = "KnoxGuard2"

.field private static mKgvId:[B

.field private static mKgvKey:[B

.field private static mKnoxGuardVaultListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

.field private static mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private static mNonceDev:[B

.field private static mNonceDev2:[B

.field private static mNonceSvr:[B

.field private static mServerCert:[B

.field private static mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

.field private static mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# instance fields
.field mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;


# direct methods
.method static bridge synthetic -$$Nest$msetRemoteLockToLockscreen(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setRemoteLockToLockscreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mthrowException(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmCompleteUnlockingDone()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCompleteUnlockingDone:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsSupportKg2()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmKnoxGuardVaultListener()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;
    .registers 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKnoxGuardVaultListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmVkm()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 86
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    .line 88
    sput-boolean v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    .line 92
    const/16 v0, 0x20

    new-array v1, v0, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvKey:[B

    .line 93
    const/16 v1, 0x28

    new-array v1, v1, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvId:[B

    .line 94
    new-array v1, v0, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    .line 95
    new-array v1, v0, [B

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev2:[B

    .line 96
    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceSvr:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setIsSupportKg2()V

    .line 108
    invoke-static {p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setContext(Landroid/content/Context;)V

    .line 109
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setServerCert([B)V

    .line 110
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_21

    .line 111
    const-string v1, "KnoxGuard"

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setVkm(Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;)V

    .line 112
    :cond_21
    sget-boolean v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v1, :cond_32

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_32

    .line 113
    const-string v1, "KnoxGuard2"

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setVkm2(Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;)V

    .line 114
    :cond_32
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    if-nez v1, :cond_3e

    .line 115
    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V

    invoke-static {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setCrypto(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;)V

    .line 116
    :cond_3e
    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setLockSettingsService(Lcom/android/internal/widget/ILockSettings;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kgvListener"    # Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setIsSupportKg2()V

    .line 123
    invoke-static {p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setContext(Landroid/content/Context;)V

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setServerCert([B)V

    .line 125
    const-string v1, "KnoxGuard"

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setVkm(Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;)V

    .line 126
    sget-boolean v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_2e

    .line 127
    const-string v1, "KnoxGuard2"

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setVkm2(Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;)V

    .line 128
    :cond_2e
    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V

    invoke-static {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setCrypto(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;)V

    .line 129
    invoke-static {p2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setKnoxGuardVaultListener(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V

    .line 130
    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setLockSettingsService(Lcom/android/internal/widget/ILockSettings;)V

    .line 131
    return-void
.end method

.method private clearKgvData()V
    .registers 3

    .line 135
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 136
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 137
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev2:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceSvr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 141
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mServerCert:[B

    if-eqz v0, :cond_25

    .line 142
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 143
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setServerCert([B)V

    .line 145
    :cond_25
    return-void
.end method

.method private deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "objectBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1335
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 1336
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    .line 1337
    .local v1, "ois":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 1339
    .local v2, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_5d

    array-length v3, p1

    if-nez v3, :cond_9

    goto :goto_5d

    .line 1343
    :cond_9
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v3

    .line 1344
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 1345
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_2d
    .catchall {:try_start_9 .. :try_end_19} :catchall_2b

    move-object v2, v3

    .line 1351
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1352
    .end local v3    # "e":Ljava/io/IOException;
    :goto_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_47

    :catch_26
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_47

    .line 1351
    :catchall_2b
    move-exception v3

    goto :goto_48

    .line 1347
    :catch_2d
    move-exception v3

    .line 1348
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1349
    const-string v4, "Error deserialize"

    const/16 v5, -0xa

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2b

    .line 1351
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_42

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1352
    .end local v3    # "e":Ljava/io/IOException;
    :cond_42
    :goto_42
    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_26

    .line 1355
    :cond_47
    :goto_47
    return-object v2

    .line 1351
    :goto_48
    if-eqz v0, :cond_52

    :try_start_4a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1352
    .end local v4    # "e":Ljava/io/IOException;
    :cond_52
    :goto_52
    if-eqz v1, :cond_5c

    :try_start_54
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1353
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5c
    :goto_5c
    throw v3

    .line 1340
    :cond_5d
    :goto_5d
    const/4 v3, 0x0

    return-object v3
.end method

.method private generateHOTPPasscode()Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1742
    const-string v0, "[HOTP] generateHOTPPasscode"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_25

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "must not be called in first_api_level : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1746
    :cond_25
    const-string v0, ""

    .line 1747
    .local v0, "pin":Ljava/lang/String;
    const-string v2, ""

    .line 1751
    .local v2, "otpKey":Ljava/lang/String;
    :try_start_29
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v3

    .line 1752
    .local v3, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v3, :cond_36

    .line 1753
    const-string v4, "No data in Vault"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v1, 0x0

    return-object v1

    .line 1757
    :cond_36
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getOtpKey()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1758
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getOtpCount()I

    move-result v1

    .line 1760
    .local v1, "otpCount":I
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v4

    .line 1761
    .local v4, "sharedSecretBytes":[B
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 1764
    .local v5, "movingFactorBytes":[B
    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v6, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v6

    .line 1767
    .local v6, "sha256Bytes":[B
    const/4 v7, 0x0

    .line 1768
    .local v7, "offset":I
    aget-byte v8, v6, v7

    and-int/lit8 v8, v8, 0x7f

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x3

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    .line 1771
    .local v8, "binary":I
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v9, v9

    rem-int v9, v8, v9

    .line 1772
    .local v9, "otp":I
    const-string v10, "%8s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x20

    const/16 v12, 0x30

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10
    :try_end_a0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_29 .. :try_end_a0} :catch_a3

    move-object v0, v10

    .line 1777
    .end local v3    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    .end local v4    # "sharedSecretBytes":[B
    .end local v5    # "movingFactorBytes":[B
    .end local v6    # "sha256Bytes":[B
    .end local v7    # "offset":I
    .end local v8    # "binary":I
    .end local v9    # "otp":I
    nop

    .line 1779
    return-object v0

    .line 1775
    .end local v1    # "otpCount":I
    :catch_a3
    move-exception v1

    .line 1776
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method private getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1360
    const-string/jumbo v0, "getKGVaultData"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v0, 0x0

    .line 1363
    .local v0, "obj":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, -0x5

    if-nez v2, :cond_13

    .line 1364
    const-string v2, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1367
    :cond_13
    :try_start_13
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v2

    .line 1368
    .local v2, "bytes":[B
    if-nez v2, :cond_21

    .line 1369
    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1371
    :cond_21
    array-length v3, v2

    if-nez v3, :cond_2b

    .line 1372
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v1, 0x0

    return-object v1

    .line 1376
    :cond_2b
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :try_end_33
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_33} :catch_36

    move-object v0, v1

    .line 1380
    .end local v2    # "bytes":[B
    nop

    .line 1382
    return-object v0

    .line 1378
    :catch_36
    move-exception v1

    .line 1379
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method private integerToByteArray(I)[B
    .registers 4
    .param p1, "value"    # I

    .line 1929
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1930
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1931
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1932
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private makeDeviceMsg([B[B[B[B[B[B)[B
    .registers 13
    .param p1, "serverCert"    # [B
    .param p2, "kgvKey"    # [B
    .param p3, "kgvId"    # [B
    .param p4, "nonceSvr"    # [B
    .param p5, "nonceDev"    # [B
    .param p6, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "msgLength":I
    if-eqz p2, :cond_5

    array-length v1, p2

    add-int/2addr v0, v1

    .line 185
    :cond_5
    if-eqz p3, :cond_9

    array-length v1, p3

    add-int/2addr v0, v1

    .line 186
    :cond_9
    if-eqz p4, :cond_d

    array-length v1, p4

    add-int/2addr v0, v1

    .line 187
    :cond_d
    if-eqz p5, :cond_11

    array-length v1, p5

    add-int/2addr v0, v1

    .line 188
    :cond_11
    if-eqz p6, :cond_15

    array-length v1, p6

    add-int/2addr v0, v1

    .line 190
    :cond_15
    new-array v1, v0, [B

    .line 191
    .local v1, "msg":[B
    const/4 v2, 0x0

    .line 192
    .local v2, "deviceMsg":[B
    const/4 v3, 0x0

    .line 195
    .local v3, "offset":I
    const/4 v4, 0x0

    if-eqz p2, :cond_25

    .line 196
    :try_start_1c
    array-length v5, p2

    invoke-static {p2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    array-length v5, p2

    add-int/2addr v3, v5

    goto :goto_25

    .line 222
    :catch_23
    move-exception v4

    goto :goto_4c

    .line 200
    :cond_25
    :goto_25
    if-eqz p3, :cond_2d

    .line 201
    array-length v5, p3

    invoke-static {p3, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    array-length v5, p3

    add-int/2addr v3, v5

    .line 205
    :cond_2d
    if-eqz p4, :cond_35

    .line 206
    array-length v5, p4

    invoke-static {p4, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    array-length v5, p4

    add-int/2addr v3, v5

    .line 210
    :cond_35
    if-eqz p5, :cond_3d

    .line 211
    array-length v5, p5

    invoke-static {p5, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    array-length v5, p5

    add-int/2addr v3, v5

    .line 215
    :cond_3d
    if-eqz p6, :cond_45

    .line 216
    array-length v5, p6

    invoke-static {p6, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    array-length v4, p6

    add-int/2addr v3, v4

    .line 220
    :cond_45
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->encryptData([B[B)[B

    move-result-object v4
    :try_end_49
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_1c .. :try_end_49} :catch_23

    move-object v2, v4

    .line 224
    nop

    .line 226
    return-object v2

    .line 223
    .local v4, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_4c
    throw v4
.end method

.method private makeDeviceMsg([B[B[B[B[B[B[B)[B
    .registers 14
    .param p1, "serverCert"    # [B
    .param p2, "kgvKey"    # [B
    .param p3, "kgvId"    # [B
    .param p4, "nonceSvr"    # [B
    .param p5, "nonceDev"    # [B
    .param p6, "extra"    # [B
    .param p7, "nonceDev2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "msgLength":I
    if-eqz p2, :cond_5

    array-length v1, p2

    add-int/2addr v0, v1

    .line 235
    :cond_5
    if-eqz p3, :cond_9

    array-length v1, p3

    add-int/2addr v0, v1

    .line 236
    :cond_9
    if-eqz p4, :cond_d

    array-length v1, p4

    add-int/2addr v0, v1

    .line 237
    :cond_d
    if-eqz p5, :cond_11

    array-length v1, p5

    add-int/2addr v0, v1

    .line 238
    :cond_11
    if-eqz p6, :cond_15

    array-length v1, p6

    add-int/2addr v0, v1

    .line 239
    :cond_15
    if-eqz p7, :cond_19

    array-length v1, p7

    add-int/2addr v0, v1

    .line 241
    :cond_19
    new-array v1, v0, [B

    .line 242
    .local v1, "msg":[B
    const/4 v2, 0x0

    .line 243
    .local v2, "deviceMsg":[B
    const/4 v3, 0x0

    .line 246
    .local v3, "offset":I
    const/4 v4, 0x0

    if-eqz p2, :cond_29

    .line 247
    :try_start_20
    array-length v5, p2

    invoke-static {p2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    array-length v5, p2

    add-int/2addr v3, v5

    goto :goto_29

    .line 278
    :catch_27
    move-exception v4

    goto :goto_58

    .line 251
    :cond_29
    :goto_29
    if-eqz p3, :cond_31

    .line 252
    array-length v5, p3

    invoke-static {p3, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    array-length v5, p3

    add-int/2addr v3, v5

    .line 256
    :cond_31
    if-eqz p4, :cond_39

    .line 257
    array-length v5, p4

    invoke-static {p4, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v5, p4

    add-int/2addr v3, v5

    .line 261
    :cond_39
    if-eqz p5, :cond_41

    .line 262
    array-length v5, p5

    invoke-static {p5, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    array-length v5, p5

    add-int/2addr v3, v5

    .line 266
    :cond_41
    if-eqz p6, :cond_49

    .line 267
    array-length v5, p6

    invoke-static {p6, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v5, p6

    add-int/2addr v3, v5

    .line 271
    :cond_49
    if-eqz p7, :cond_51

    .line 272
    array-length v5, p7

    invoke-static {p7, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v4, p7

    add-int/2addr v3, v4

    .line 276
    :cond_51
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->encryptData([B[B)[B

    move-result-object v4
    :try_end_55
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_20 .. :try_end_55} :catch_27

    move-object v2, v4

    .line 280
    nop

    .line 282
    return-object v2

    .line 279
    .local v4, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_58
    throw v4
.end method

.method private makeResultDev()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "resultDev":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_b

    .line 290
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 293
    :cond_b
    :try_start_b
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    .line 294
    .local v1, "state":[B
    if-nez v1, :cond_19

    .line 295
    const-string v3, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 297
    :cond_19
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mServerCert:[B

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvId:[B

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceSvr:[B

    const/4 v8, 0x0

    move-object v3, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_27
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_b .. :try_end_27} :catch_34
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_29

    move-object v0, v2

    .line 305
    .end local v1    # "state":[B
    goto :goto_33

    .line 302
    :catch_29
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    const/4 v2, -0x1

    const-string v3, "Exception"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    return-object v0

    .line 300
    :catch_34
    move-exception v1

    .line 301
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method private parameterChecking([B[B[B)V
    .registers 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 157
    const/4 v0, -0x2

    if-nez p1, :cond_a

    .line 158
    const-string/jumbo v1, "serverCert is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    goto :goto_21

    .line 160
    :cond_a
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->verifyCertChain([B)Z

    move-result v1

    if-nez v1, :cond_18

    .line 161
    const/4 v1, -0x3

    const-string v2, "Failed to verify Certificate Chain"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 163
    :cond_18
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setServerCert([B)V

    .line 166
    :goto_21
    const-string v1, "), it should be "

    const/16 v2, 0x20

    if-eqz p2, :cond_4a

    array-length v3, p2

    if-eq v3, v2, :cond_4a

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nonceSvr size is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 169
    :cond_4a
    const/16 v3, 0x28

    if-eqz p3, :cond_71

    array-length v4, p3

    if-eq v4, v3, :cond_71

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "kgvId size is wrong("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 172
    :cond_71
    const/4 v0, 0x0

    if-eqz p2, :cond_79

    .line 173
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceSvr:[B

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    :cond_79
    if-eqz p3, :cond_80

    .line 176
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvId:[B

    invoke-static {p3, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_80
    return-void
.end method

.method private prepareProcessing([B[B[B)[B
    .registers 14
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 468
    const-string v0, "KgvManager"

    const-string/jumbo v1, "prepareProcessing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-nez v0, :cond_26

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "must not be called in first_api_level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 472
    :cond_26
    const/4 v9, 0x0

    .line 474
    .local v9, "deviceMsg":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v1, -0x5

    if-nez v0, :cond_31

    .line 475
    const-string v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 477
    :cond_31
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_3a

    .line 478
    const-string v0, "Error from VaultKeeper Manager2 is null object"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 481
    :cond_3a
    :try_start_3a
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 483
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v0

    .line 484
    .local v0, "nonce":[B
    if-nez v0, :cond_4b

    .line 485
    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 487
    :cond_4b
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v2

    move-object v0, v2

    .line 490
    if-nez v0, :cond_61

    .line 491
    const-string v2, "Error from VaultKeeper2 (getNonce)"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 493
    :cond_61
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev2:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    const/4 v3, 0x0

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev2:[B

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B[B)[B

    move-result-object v1
    :try_end_74
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_3a .. :try_end_74} :catch_77

    move-object v0, v1

    .line 501
    .end local v9    # "deviceMsg":[B
    .local v0, "deviceMsg":[B
    nop

    .line 503
    return-object v0

    .line 498
    .end local v0    # "deviceMsg":[B
    .restart local v9    # "deviceMsg":[B
    :catch_77
    move-exception v0

    .line 499
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 500
    throw v0
.end method

.method private serialize(Ljava/lang/Object;)[B
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1309
    const/4 v0, 0x0

    .line 1310
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1311
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    const/4 v2, 0x0

    .line 1313
    .local v2, "ret":[B
    if-nez p1, :cond_9

    .line 1314
    const/4 v3, 0x0

    new-array v3, v3, [B

    return-object v3

    .line 1317
    :cond_9
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 1318
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 1319
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1320
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_30
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2e

    move-object v2, v3

    .line 1326
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1327
    .end local v3    # "e":Ljava/io/IOException;
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_4a

    :catch_29
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4a

    .line 1326
    :catchall_2e
    move-exception v3

    goto :goto_4b

    .line 1322
    :catch_30
    move-exception v3

    .line 1323
    .local v3, "e":Ljava/lang/Exception;
    :try_start_31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1324
    const-string v4, "Error serialize"

    const/16 v5, -0xa

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_2e

    .line 1326
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_45

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1327
    .end local v3    # "e":Ljava/io/IOException;
    :cond_45
    :goto_45
    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_29

    .line 1330
    :cond_4a
    :goto_4a
    return-object v2

    .line 1326
    :goto_4b
    if-eqz v0, :cond_55

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1327
    .end local v4    # "e":Ljava/io/IOException;
    :cond_55
    :goto_55
    if-eqz v1, :cond_5f

    :try_start_57
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1328
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    throw v3
.end method

.method private static setCompleteUnlockingDone(Z)V
    .registers 1
    .param p0, "completeUnlockingDone"    # Z

    .line 1968
    sput-boolean p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCompleteUnlockingDone:Z

    .line 1969
    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1952
    sput-object p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mContext:Landroid/content/Context;

    .line 1953
    return-void
.end method

.method private static setCrypto(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;)V
    .registers 1
    .param p0, "crypto"    # Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    .line 1948
    sput-object p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    .line 1949
    return-void
.end method

.method private setIsSupportKg2()V
    .registers 3

    .line 1936
    sget v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    .line 1937
    return-void
.end method

.method private static setKnoxGuardVaultListener(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V
    .registers 1
    .param p0, "kgvListener"    # Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    .line 1964
    sput-object p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKnoxGuardVaultListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    .line 1965
    return-void
.end method

.method private static setLockSettingsService(Lcom/android/internal/widget/ILockSettings;)V
    .registers 1
    .param p0, "lockSettings"    # Lcom/android/internal/widget/ILockSettings;

    .line 1960
    sput-object p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 1961
    return-void
.end method

.method private setRemoteLockToLockscreen()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1212
    const-string v0, "KgvManager"

    const-string/jumbo v1, "setRemoteLockToLockscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-wide/16 v0, 0x0

    .line 1216
    .local v0, "kgvDelayTime":J
    const-wide/32 v2, 0xea60

    .line 1218
    .local v2, "oneMin":J
    const/16 v4, -0x9

    :try_start_f
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v5, :cond_20

    .line 1219
    const-string/jumbo v5, "lock_settings"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 1221
    :cond_20
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v5

    .line 1222
    .local v5, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v5, :cond_2c

    .line 1223
    const-string/jumbo v6, "getKGVaultData return null"

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1227
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getFailureCount()I

    move-result v6

    .line 1228
    .local v6, "failureCount":I
    const/4 v7, 0x6

    if-ne v6, v7, :cond_35

    .line 1229
    move-wide v0, v2

    goto :goto_57

    .line 1230
    :cond_35
    const/4 v7, 0x7

    if-ne v6, v7, :cond_3d

    .line 1231
    const-wide/16 v7, 0x5

    mul-long v0, v2, v7

    goto :goto_57

    .line 1232
    :cond_3d
    const/16 v7, 0x8

    if-ne v6, v7, :cond_46

    .line 1233
    const-wide/16 v7, 0xf

    mul-long v0, v2, v7

    goto :goto_57

    .line 1234
    :cond_46
    const/16 v7, 0x9

    if-ne v6, v7, :cond_4f

    .line 1235
    const-wide/16 v7, 0x3c

    mul-long v0, v2, v7

    goto :goto_57

    .line 1236
    :cond_4f
    const/16 v7, 0xa

    if-lt v6, v7, :cond_57

    .line 1237
    const-wide/16 v7, 0x5a0

    mul-long v0, v2, v7

    .line 1239
    :cond_57
    :goto_57
    new-instance v7, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const-string v8, "Locked"

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->query()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_69

    move v8, v9

    goto :goto_6a

    :cond_69
    move v8, v10

    :goto_6a
    const/4 v11, 0x3

    invoke-direct {v7, v11, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 1240
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getRequesterName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1241
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1242
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1243
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1244
    invoke-virtual {v7, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1245
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1246
    invoke-virtual {v7, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1247
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getSkipPin()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1248
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getSkipSupport()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1249
    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v7

    .line 1250
    invoke-virtual {v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v7

    .line 1252
    .local v7, "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-interface {v8, v9, v7}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_bf} :catch_c2
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_f .. :try_end_bf} :catch_c0

    .end local v0    # "kgvDelayTime":J
    .end local v2    # "oneMin":J
    .end local v5    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    .end local v6    # "failureCount":I
    .end local v7    # "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    goto :goto_cb

    .line 1257
    :catch_c0
    move-exception v0

    .line 1258
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v0

    .line 1254
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :catch_c2
    move-exception v0

    .line 1255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1256
    const-string v1, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1259
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_cb
    nop

    .line 1260
    return-void
.end method

.method private static setServerCert([B)V
    .registers 1
    .param p0, "serverCert"    # [B

    .line 1956
    sput-object p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mServerCert:[B

    .line 1957
    return-void
.end method

.method private static setVkm(Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;)V
    .registers 1
    .param p0, "vkm"    # Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 1940
    sput-object p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 1941
    return-void
.end method

.method private static setVkm2(Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;)V
    .registers 1
    .param p0, "vkm2"    # Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 1944
    sput-object p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 1945
    return-void
.end method

.method private throwException(ILjava/lang/String;)V
    .registers 5
    .param p1, "kgvErrorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToLockScreen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1264
    const-string v0, "KgvManager"

    const-string v1, "bindToLockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :try_start_7
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_19

    .line 1268
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setLockSettingsService(Lcom/android/internal/widget/ILockSettings;)V

    .line 1270
    :cond_19
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 1271
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setRemoteLockToLockscreen()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_24} :catch_27
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_7 .. :try_end_24} :catch_25

    goto :goto_32

    .line 1275
    :catch_25
    move-exception v0

    .line 1276
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v0

    .line 1272
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :catch_27
    move-exception v0

    .line 1273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1274
    const/16 v1, -0x9

    const-string v2, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    nop

    .line 1278
    return-void
.end method

.method public completeBlinking(Z[B[B)[B
    .registers 9
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 800
    const-string v0, "KgvManager"

    const-string v1, "completeBlinking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x0

    .line 803
    .local v0, "resultDev":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_12

    .line 804
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 807
    :cond_12
    if-nez p1, :cond_1b

    .line 808
    :try_start_14
    const-string/jumbo v1, "resultSvr is fail"

    const/4 v3, -0x6

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 810
    :cond_1b
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v3, "Blink"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B[B)I

    move-result v1

    .line 811
    .local v1, "vaultResult":I
    if-eqz v1, :cond_48

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write blink with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 814
    :cond_48
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->unbindFromLockScreen()V

    .line 816
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeResultDev()[B

    move-result-object v2
    :try_end_4f
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_14 .. :try_end_4f} :catch_57
    .catchall {:try_start_14 .. :try_end_4f} :catchall_55

    move-object v0, v2

    .line 821
    .end local v1    # "vaultResult":I
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 822
    nop

    .line 824
    return-object v0

    .line 821
    :catchall_55
    move-exception v1

    goto :goto_5a

    .line 818
    :catch_57
    move-exception v1

    .line 819
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "resultDev":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "resultSvr":Z
    .end local p2    # "passcode":[B
    .end local p3    # "token":[B
    :try_start_59
    throw v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_55

    .line 821
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "resultDev":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "resultSvr":Z
    .restart local p2    # "passcode":[B
    .restart local p3    # "token":[B
    :goto_5a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 822
    throw v1
.end method

.method public completeCompleting(Z[B)[B
    .registers 8
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 539
    const-string v0, "KgvManager"

    const-string v1, "completeCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "resultDev":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_12

    .line 543
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 546
    :cond_12
    if-nez p1, :cond_1b

    .line 547
    :try_start_14
    const-string/jumbo v1, "resultSvr is fail"

    const/4 v3, -0x6

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 549
    :cond_1b
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v3, "Completed"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B)I

    move-result v1

    .line 550
    .local v1, "vaultResult":I
    if-eqz v1, :cond_48

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 553
    :cond_48
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setRemoteLockToLockscreen()V

    .line 555
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeResultDev()[B

    move-result-object v2
    :try_end_4f
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_14 .. :try_end_4f} :catch_57
    .catchall {:try_start_14 .. :try_end_4f} :catchall_55

    move-object v0, v2

    .line 560
    .end local v1    # "vaultResult":I
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 561
    nop

    .line 563
    return-object v0

    .line 560
    :catchall_55
    move-exception v1

    goto :goto_5a

    .line 557
    :catch_57
    move-exception v1

    .line 558
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "resultDev":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "resultSvr":Z
    .end local p2    # "token":[B
    :try_start_59
    throw v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_55

    .line 560
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "resultDev":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "resultSvr":Z
    .restart local p2    # "token":[B
    :goto_5a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 561
    throw v1
.end method

.method public completeDestroying(Z[B)[B
    .registers 8
    .param p1, "resultSvr"    # Z
    .param p2, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 991
    const-string v0, "KgvManager"

    const-string v1, "completeDestroying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    .line 994
    .local v0, "resultDev":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_12

    .line 995
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 998
    :cond_12
    if-nez p1, :cond_1b

    .line 999
    :try_start_14
    const-string/jumbo v1, "resultSvr is fail"

    const/4 v3, -0x6

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1001
    :cond_1b
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mServerCert:[B

    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->destroy([B[B)I

    move-result v1

    .line 1002
    .local v1, "vaultResult":I
    if-eqz v1, :cond_41

    .line 1003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (destroy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1005
    :cond_41
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeResultDev()[B

    move-result-object v2
    :try_end_45
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_14 .. :try_end_45} :catch_4d
    .catchall {:try_start_14 .. :try_end_45} :catchall_4b

    move-object v0, v2

    .line 1010
    .end local v1    # "vaultResult":I
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 1011
    nop

    .line 1013
    return-object v0

    .line 1010
    :catchall_4b
    move-exception v1

    goto :goto_50

    .line 1007
    :catch_4d
    move-exception v1

    .line 1008
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "resultDev":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "resultSvr":Z
    .end local p2    # "sign":[B
    :try_start_4f
    throw v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4b

    .line 1010
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "resultDev":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "resultSvr":Z
    .restart local p2    # "sign":[B
    :goto_50
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 1011
    throw v1
.end method

.method public completeLocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "noticeMsg"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "requesterName"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "skipPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 714
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->completeLocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public completeLocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 15
    .param p1, "noticeMsg"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "requesterName"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "skipPin"    # Z
    .param p6, "skipSupport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 719
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->completeLocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public completeLocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Z
    .registers 14
    .param p1, "noticeMsg"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "requesterName"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "skipPin"    # Z
    .param p6, "skipSupport"    # Z
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 724
    const-string v0, "KgvManager"

    const-string v1, "completeLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, "result":Z
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_12

    .line 728
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 731
    :cond_12
    const/4 v1, -0x2

    if-nez p1, :cond_1b

    .line 732
    :try_start_15
    const-string/jumbo v3, "noticeMsg is null"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 734
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_27

    .line 735
    const-string/jumbo v3, "noticeMsg has nothing"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 737
    :cond_27
    if-eqz p2, :cond_35

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_35

    .line 738
    const-string/jumbo v3, "phoneNumber has nothing"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 740
    :cond_35
    if-eqz p4, :cond_42

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_42

    .line 741
    const-string v3, "emailAddress has nothing"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 743
    :cond_42
    if-nez p3, :cond_4a

    .line 744
    const-string/jumbo v3, "requesterName is null"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 746
    :cond_4a
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_56

    .line 747
    const-string/jumbo v3, "requesterName has nothing"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 749
    :cond_56
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v3, "Locked"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4, v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B[B)I

    move-result v1

    .line 750
    .local v1, "vaultResult":I
    if-eqz v1, :cond_84

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 753
    :cond_84
    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 754
    const-string/jumbo v3, "setLockscreenData"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_90
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_15 .. :try_end_90} :catch_98
    .catchall {:try_start_15 .. :try_end_90} :catchall_96

    .line 756
    :cond_90
    const/4 v0, 0x1

    .line 761
    .end local v1    # "vaultResult":I
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 762
    nop

    .line 764
    return v0

    .line 761
    :catchall_96
    move-exception v1

    goto :goto_9b

    .line 758
    :catch_98
    move-exception v1

    .line 759
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "noticeMsg":Ljava/lang/String;
    .end local p2    # "phoneNumber":Ljava/lang/String;
    .end local p3    # "requesterName":Ljava/lang/String;
    .end local p4    # "emailAddress":Ljava/lang/String;
    .end local p5    # "skipPin":Z
    .end local p6    # "skipSupport":Z
    .end local p7    # "bundle":Landroid/os/Bundle;
    :try_start_9a
    throw v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_96

    .line 761
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "noticeMsg":Ljava/lang/String;
    .restart local p2    # "phoneNumber":Ljava/lang/String;
    .restart local p3    # "requesterName":Ljava/lang/String;
    .restart local p4    # "emailAddress":Ljava/lang/String;
    .restart local p5    # "skipPin":Z
    .restart local p6    # "skipSupport":Z
    .restart local p7    # "bundle":Landroid/os/Bundle;
    :goto_9b
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 762
    throw v1
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 22
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "noticeMsg"    # Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "requesterName"    # Ljava/lang/String;
    .param p7, "emailAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 600
    move-object v9, p0

    move-object/from16 v10, p2

    const-string v0, "KgvManager"

    const-string v1, "completeLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v11, 0x0

    .line 603
    .local v11, "resultDev":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v12, -0x5

    if-nez v0, :cond_15

    .line 604
    const-string v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v12, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 607
    :cond_15
    if-nez p1, :cond_1e

    .line 608
    :try_start_17
    const-string/jumbo v0, "resultSvr is fail"

    const/4 v1, -0x6

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 610
    :cond_1e
    array-length v0, v10
    :try_end_1f
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_17 .. :try_end_1f} :catch_dd
    .catchall {:try_start_17 .. :try_end_1f} :catchall_d9

    const/16 v1, 0x20

    const-string v2, ")"

    const/4 v3, -0x2

    if-eq v0, v1, :cond_42

    .line 611
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "passcode hash length is wrong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 613
    :cond_42
    if-nez p4, :cond_4a

    .line 614
    const-string/jumbo v0, "noticeMsg is null"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 616
    :cond_4a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_56

    .line 617
    const-string/jumbo v0, "noticeMsg has nothing"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 619
    :cond_56
    if-eqz p5, :cond_64

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_64

    .line 620
    const-string/jumbo v0, "phoneNumber has nothing"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 622
    :cond_64
    if-eqz p7, :cond_71

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_71

    .line 623
    const-string v0, "emailAddress has nothing"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 625
    :cond_71
    if-nez p6, :cond_79

    .line 626
    const-string/jumbo v0, "requesterName is null"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 628
    :cond_79
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_85

    .line 629
    const-string/jumbo v0, "requesterName has nothing"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 631
    :cond_85
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v1, "Locked"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1
    :try_end_8f
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_26 .. :try_end_8f} :catch_dd
    .catchall {:try_start_26 .. :try_end_8f} :catchall_d9

    const/4 v3, 0x1

    move-object/from16 v13, p3

    :try_start_92
    invoke-virtual {v0, v3, v1, v10, v13}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B[B)I

    move-result v0

    .line 632
    .local v0, "vaultResult":I
    if-eqz v0, :cond_b2

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from VaultKeeper (write with passcode/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v12, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 635
    :cond_b2
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 636
    const-string/jumbo v1, "setLockscreenData"

    invoke-direct {p0, v12, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 638
    :cond_ca
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V

    .line 640
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeResultDev()[B

    move-result-object v1
    :try_end_d1
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_92 .. :try_end_d1} :catch_d7
    .catchall {:try_start_92 .. :try_end_d1} :catchall_e2

    move-object v0, v1

    .line 645
    .end local v11    # "resultDev":[B
    .local v0, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 646
    nop

    .line 648
    return-object v0

    .line 642
    .end local v0    # "resultDev":[B
    .restart local v11    # "resultDev":[B
    :catch_d7
    move-exception v0

    goto :goto_e0

    .line 645
    :catchall_d9
    move-exception v0

    move-object/from16 v13, p3

    goto :goto_e3

    .line 642
    :catch_dd
    move-exception v0

    move-object/from16 v13, p3

    .line 643
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_e0
    nop

    .end local v11    # "resultDev":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "resultSvr":Z
    .end local p2    # "passcode":[B
    .end local p3    # "token":[B
    .end local p4    # "noticeMsg":Ljava/lang/String;
    .end local p5    # "phoneNumber":Ljava/lang/String;
    .end local p6    # "requesterName":Ljava/lang/String;
    .end local p7    # "emailAddress":Ljava/lang/String;
    :try_start_e1
    throw v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e2

    .line 645
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v11    # "resultDev":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "resultSvr":Z
    .restart local p2    # "passcode":[B
    .restart local p3    # "token":[B
    .restart local p4    # "noticeMsg":Ljava/lang/String;
    .restart local p5    # "phoneNumber":Ljava/lang/String;
    .restart local p6    # "requesterName":Ljava/lang/String;
    .restart local p7    # "emailAddress":Ljava/lang/String;
    :catchall_e2
    move-exception v0

    :goto_e3
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 646
    throw v0
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 19
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "noticeMsg"    # Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "requesterName"    # Ljava/lang/String;
    .param p7, "emailAddress"    # Ljava/lang/String;
    .param p8, "skipPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 654
    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)[B
    .registers 21
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "noticeMsg"    # Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "requesterName"    # Ljava/lang/String;
    .param p7, "emailAddress"    # Ljava/lang/String;
    .param p8, "skipPin"    # Z
    .param p9, "skipSupport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 660
    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)[B

    move-result-object v0

    return-object v0
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)[B
    .registers 25
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "noticeMsg"    # Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "requesterName"    # Ljava/lang/String;
    .param p7, "emailAddress"    # Ljava/lang/String;
    .param p8, "skipPin"    # Z
    .param p9, "skipSupport"    # Z
    .param p10, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 666
    move-object v9, p0

    const-string v0, "KgvManager"

    const-string v1, "completeLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v10, 0x0

    .line 669
    .local v10, "resultDev":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v11, -0x5

    if-nez v0, :cond_13

    .line 670
    const-string v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v11, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 673
    :cond_13
    if-nez p1, :cond_2b

    .line 674
    :try_start_15
    const-string/jumbo v0, "resultSvr is fail"

    const/4 v1, -0x6

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    goto :goto_2b

    .line 706
    :catchall_1d
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    goto/16 :goto_c9

    .line 703
    :catch_24
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    goto/16 :goto_c6

    .line 676
    :cond_2b
    :goto_2b
    const/4 v0, -0x2

    if-nez p4, :cond_34

    .line 677
    const-string/jumbo v1, "noticeMsg is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 679
    :cond_34
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_40

    .line 680
    const-string/jumbo v1, "noticeMsg has nothing"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 682
    :cond_40
    if-eqz p5, :cond_4e

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4e

    .line 683
    const-string/jumbo v1, "phoneNumber has nothing"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 685
    :cond_4e
    if-eqz p7, :cond_5b

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5b

    .line 686
    const-string v1, "emailAddress has nothing"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 688
    :cond_5b
    if-nez p6, :cond_63

    .line 689
    const-string/jumbo v1, "requesterName is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 691
    :cond_63
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6f

    .line 692
    const-string/jumbo v1, "requesterName has nothing"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 694
    :cond_6f
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v1, "Locked"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1
    :try_end_79
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_15 .. :try_end_79} :catch_24
    .catchall {:try_start_15 .. :try_end_79} :catchall_1d

    const/4 v2, 0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    :try_start_7e
    invoke-virtual {v0, v2, v1, v12, v13}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B[B)I

    move-result v0

    .line 695
    .local v0, "vaultResult":I
    if-eqz v0, :cond_a0

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from VaultKeeper (write with passcode/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v11, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 698
    :cond_a0
    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 699
    const-string/jumbo v1, "setLockscreenData"

    invoke-direct {p0, v11, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 701
    :cond_bb
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeResultDev()[B

    move-result-object v1
    :try_end_bf
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_7e .. :try_end_bf} :catch_c5
    .catchall {:try_start_7e .. :try_end_bf} :catchall_c8

    move-object v0, v1

    .line 706
    .end local v10    # "resultDev":[B
    .local v0, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 707
    nop

    .line 709
    return-object v0

    .line 703
    .end local v0    # "resultDev":[B
    .restart local v10    # "resultDev":[B
    :catch_c5
    move-exception v0

    .line 704
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_c6
    nop

    .end local v10    # "resultDev":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "resultSvr":Z
    .end local p2    # "passcode":[B
    .end local p3    # "token":[B
    .end local p4    # "noticeMsg":Ljava/lang/String;
    .end local p5    # "phoneNumber":Ljava/lang/String;
    .end local p6    # "requesterName":Ljava/lang/String;
    .end local p7    # "emailAddress":Ljava/lang/String;
    .end local p8    # "skipPin":Z
    .end local p9    # "skipSupport":Z
    .end local p10    # "bundle":Landroid/os/Bundle;
    :try_start_c7
    throw v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    .line 706
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v10    # "resultDev":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "resultSvr":Z
    .restart local p2    # "passcode":[B
    .restart local p3    # "token":[B
    .restart local p4    # "noticeMsg":Ljava/lang/String;
    .restart local p5    # "phoneNumber":Ljava/lang/String;
    .restart local p6    # "requesterName":Ljava/lang/String;
    .restart local p7    # "emailAddress":Ljava/lang/String;
    .restart local p8    # "skipPin":Z
    .restart local p9    # "skipSupport":Z
    .restart local p10    # "bundle":Landroid/os/Bundle;
    :catchall_c8
    move-exception v0

    :goto_c9
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 707
    throw v0
.end method

.method public completeRegistering(Z[B[B)[B
    .registers 12
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .param p3, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 434
    const-string v0, "Normal"

    const-string v1, "KgvManager"

    const-string v2, "completeRegistering"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, "resultDev":[B
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, -0x5

    if-nez v2, :cond_14

    .line 438
    const-string v2, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 441
    :cond_14
    if-nez p1, :cond_22

    .line 442
    :try_start_16
    const-string/jumbo v2, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    goto :goto_22

    .line 460
    :catchall_1e
    move-exception v0

    goto :goto_91

    .line 457
    :catch_20
    move-exception v0

    goto :goto_8f

    .line 444
    :cond_22
    :goto_22
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v4, 0x20

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 445
    .local v2, "input":[B
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvKey:[B

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v4

    .line 449
    .local v4, "hmac":[B
    invoke-static {p2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_59

    .line 450
    const-string v5, "Invalid token"

    const/4 v6, -0x4

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 452
    :cond_59
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvKey:[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mServerCert:[B

    invoke-virtual {v5, v6, v0, v7, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->initialize([B[B[B[B)I

    move-result v0

    .line 453
    .local v0, "vaultResult":I
    if-eqz v0, :cond_85

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error from VaultKeeper (initialization/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 456
    :cond_85
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeResultDev()[B

    move-result-object v3
    :try_end_89
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_16 .. :try_end_89} :catch_20
    .catchall {:try_start_16 .. :try_end_89} :catchall_1e

    move-object v0, v3

    .line 460
    .end local v1    # "resultDev":[B
    .end local v2    # "input":[B
    .end local v4    # "hmac":[B
    .local v0, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 461
    nop

    .line 463
    return-object v0

    .line 458
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v1    # "resultDev":[B
    :goto_8f
    nop

    .end local v1    # "resultDev":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "resultSvr":Z
    .end local p2    # "token":[B
    .end local p3    # "sign":[B
    :try_start_90
    throw v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_1e

    .line 460
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v1    # "resultDev":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "resultSvr":Z
    .restart local p2    # "token":[B
    .restart local p3    # "sign":[B
    :goto_91
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 461
    throw v0
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .registers 15
    .param p1, "passcode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 894
    const-string v0, "completeUnlocking(passcode)"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v0, -0x1

    .line 897
    .local v0, "failureCount":I
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, -0x5

    if-nez v2, :cond_12

    .line 898
    const-string v2, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 901
    :cond_12
    const/4 v2, 0x0

    :try_start_13
    invoke-static {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setCompleteUnlockingDone(Z)V

    .line 902
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getFailureCount()I

    move-result v4
    :try_end_1a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_1a} :catch_e0
    .catchall {:try_start_13 .. :try_end_1a} :catchall_de

    move v0, v4

    .line 903
    const/4 v4, 0x0

    .line 906
    .local v4, "hmac":[B
    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 908
    const-string v6, "Failed setFailureCount"

    const-string v7, "Normal"

    if-eqz p1, :cond_99

    :try_start_24
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_99

    .line 909
    sget-boolean v8, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z
    :try_end_2e
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_24 .. :try_end_2e} :catch_e0
    .catchall {:try_start_24 .. :try_end_2e} :catchall_de

    if-eqz v8, :cond_58

    .line 911
    :try_start_30
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 912
    .local v2, "intPasscode":I
    if-eqz v2, :cond_3c

    .line 915
    invoke-direct {p0, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->integerToByteArray(I)[B

    move-result-object v3

    move-object v4, v3

    .line 921
    .end local v2    # "intPasscode":I
    goto :goto_99

    .line 913
    .restart local v2    # "intPasscode":I
    :cond_3c
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v5, "0 is not permitted as passcode"

    invoke-direct {v3, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "failureCount":I
    .end local v4    # "hmac":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "passcode":Ljava/lang/String;
    throw v3
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_44} :catch_44
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_30 .. :try_end_44} :catch_e0
    .catchall {:try_start_30 .. :try_end_44} :catchall_de

    .line 916
    .end local v2    # "intPasscode":I
    .restart local v0    # "failureCount":I
    .restart local v4    # "hmac":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "passcode":Ljava/lang/String;
    :catch_44
    move-exception v2

    .line 917
    .local v2, "ne":Ljava/lang/NumberFormatException;
    :try_start_45
    const-string v3, "[-11]passcode is invalid format"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setFailureCount(I)Z

    move-result v3

    if-nez v3, :cond_53

    .line 919
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_45 .. :try_end_53} :catch_e0
    .catchall {:try_start_45 .. :try_end_53} :catchall_de

    .line 920
    :cond_53
    nop

    .line 952
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 920
    return v0

    .line 923
    .end local v2    # "ne":Ljava/lang/NumberFormatException;
    :cond_58
    :try_start_58
    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v8, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v8

    .line 924
    .local v8, "nonce":[B
    if-nez v8, :cond_65

    .line 925
    const-string v9, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v3, v9}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 927
    :cond_65
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v9, 0x20

    invoke-static {v8, v2, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->sha256(Ljava/lang/String;)[B

    move-result-object v3

    .line 931
    .local v3, "secondaryKey":[B
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v10, v9

    new-array v10, v10, [B

    .line 932
    .local v10, "input":[B
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v11, v2, v10, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 933
    sget-object v11, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v11, v2, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v2, v10, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v2

    move-object v4, v2

    .line 938
    .end local v3    # "secondaryKey":[B
    .end local v8    # "nonce":[B
    .end local v10    # "input":[B
    :cond_99
    :goto_99
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v5, v3, v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B)I

    move-result v2

    .line 939
    .local v2, "vaultResult":I
    if-nez v2, :cond_a7

    .line 940
    const/4 v0, 0x0

    goto :goto_cd

    .line 942
    :cond_a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect passcode(VaultKeeper-write/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "), current failure count ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_cd
    invoke-static {v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setCompleteUnlockingDone(Z)V

    .line 946
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setFailureCount(I)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 947
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_58 .. :try_end_d9} :catch_e0
    .catchall {:try_start_58 .. :try_end_d9} :catchall_de

    .line 952
    .end local v2    # "vaultResult":I
    .end local v4    # "hmac":[B
    :cond_d9
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 953
    nop

    .line 955
    return v0

    .line 952
    :catchall_de
    move-exception v1

    goto :goto_e3

    .line 949
    :catch_e0
    move-exception v1

    .line 950
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "failureCount":I
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "passcode":Ljava/lang/String;
    :try_start_e2
    throw v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_de

    .line 952
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "failureCount":I
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "passcode":Ljava/lang/String;
    :goto_e3
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 953
    throw v1
.end method

.method public completeUnlocking(Z[B)[B
    .registers 9
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 860
    const-string v0, "completeUnlocking"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v0, 0x0

    .line 863
    .local v0, "resultDev":[B
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, -0x5

    if-nez v2, :cond_12

    .line 864
    const-string v2, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 867
    :cond_12
    if-nez p1, :cond_1b

    .line 868
    :try_start_14
    const-string/jumbo v2, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 870
    :cond_1b
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v4, "Normal"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B)I

    move-result v2

    .line 871
    .local v2, "vaultResult":I
    if-nez v2, :cond_39

    .line 872
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setFailureCount(I)Z

    move-result v3

    if-nez v3, :cond_55

    .line 873
    const-string v3, "Failed setFailureCount"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 876
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error from VaultKeeper (write/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 879
    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setRemoteLockToLockscreen()V

    .line 881
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeResultDev()[B

    move-result-object v1
    :try_end_5c
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_14 .. :try_end_5c} :catch_64
    .catchall {:try_start_14 .. :try_end_5c} :catchall_62

    move-object v0, v1

    .line 886
    .end local v2    # "vaultResult":I
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 887
    nop

    .line 889
    return-object v0

    .line 886
    :catchall_62
    move-exception v1

    goto :goto_67

    .line 883
    :catch_64
    move-exception v1

    .line 884
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "resultDev":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "resultSvr":Z
    .end local p2    # "token":[B
    :try_start_66
    throw v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_62

    .line 886
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "resultDev":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "resultSvr":Z
    .restart local p2    # "token":[B
    :goto_67
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 887
    throw v1
.end method

.method public encryptData([B[B)[B
    .registers 13
    .param p1, "data"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 312
    const-string v0, "KgvManager"

    const-string v1, "encryptClientData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "ciphertext":[B
    const/4 v1, 0x0

    .line 315
    .local v1, "cipherOfKeyAndIV":[B
    const/4 v2, 0x0

    .line 316
    .local v2, "cipherOfClientData":[B
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 317
    .local v4, "key":[B
    const/16 v5, 0x10

    new-array v6, v5, [B

    .line 318
    .local v6, "iv":[B
    const/16 v7, 0x30

    new-array v7, v7, [B

    .line 320
    .local v7, "keyAndIv":[B
    if-eqz p1, :cond_1b

    array-length v8, p1

    if-nez v8, :cond_21

    .line 321
    :cond_1b
    const/4 v8, -0x2

    const-string v9, "Invalid clientData"

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 324
    :cond_21
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_23
    invoke-direct {p0, p2, v8, v8}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 325
    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v8, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->getRandom([B)V

    .line 326
    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v8, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->getRandom([B)V

    .line 328
    invoke-static {v4, v9, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    invoke-static {v6, v9, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v3, v7, p2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->ecryptWithServerPubKey([B[B)[B

    move-result-object v3

    move-object v1, v3

    .line 331
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v3, p1, v4, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->ecryptWithAES256CBC([B[B[B)[B

    move-result-object v3

    move-object v2, v3

    .line 333
    if-eqz v1, :cond_48

    if-nez v2, :cond_4e

    .line 334
    :cond_48
    const-string v3, "encryptData"

    const/4 v5, -0x8

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 336
    :cond_4e
    array-length v3, v1

    array-length v5, v2

    add-int/2addr v3, v5

    new-array v3, v3, [B

    move-object v0, v3

    .line 337
    array-length v3, v1

    invoke-static {v1, v9, v0, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    array-length v3, v1

    array-length v5, v2

    invoke-static {v2, v9, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5d
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_23 .. :try_end_5d} :catch_6a
    .catchall {:try_start_23 .. :try_end_5d} :catchall_68

    .line 343
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 344
    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 345
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 346
    nop

    .line 348
    return-object v0

    .line 343
    :catchall_68
    move-exception v3

    goto :goto_6d

    .line 340
    :catch_6a
    move-exception v3

    .line 341
    .local v3, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "ciphertext":[B
    .end local v1    # "cipherOfKeyAndIV":[B
    .end local v2    # "cipherOfClientData":[B
    .end local v4    # "key":[B
    .end local v6    # "iv":[B
    .end local v7    # "keyAndIv":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "data":[B
    .end local p2    # "serverCert":[B
    :try_start_6c
    throw v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_68

    .line 343
    .end local v3    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "ciphertext":[B
    .restart local v1    # "cipherOfKeyAndIV":[B
    .restart local v2    # "cipherOfClientData":[B
    .restart local v4    # "key":[B
    .restart local v6    # "iv":[B
    .restart local v7    # "keyAndIv":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "data":[B
    .restart local p2    # "serverCert":[B
    :goto_6d
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 344
    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 345
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 346
    throw v3
.end method

.method public generateHOTPChallenge()Ljava/lang/String;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1785
    const-string v0, "[HOTP] generateHOTPChallenge"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const-string v2, ""

    .line 1788
    .local v2, "otpChallenge":Ljava/lang/String;
    const-string v3, ""

    .line 1792
    .local v3, "otpKey":Ljava/lang/String;
    :try_start_b
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z
    :try_end_d
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_b .. :try_end_d} :catch_be

    const/16 v4, 0x30

    const/16 v5, 0x20

    const/4 v6, 0x0

    const-string v7, "%8s"

    const/4 v8, 0x1

    if-eqz v0, :cond_3d

    .line 1793
    :try_start_17
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_24

    .line 1794
    const-string v0, "Error from VaultKeeper Manager is null object"
    :try_end_1d
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_17 .. :try_end_1d} :catch_be

    const/4 v1, -0x5

    move-object/from16 v9, p0

    :try_start_20
    invoke-direct {v9, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    goto :goto_26

    .line 1793
    :cond_24
    move-object/from16 v9, p0

    .line 1797
    :goto_26
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->generateHotpCode()I

    move-result v0

    .line 1798
    .local v0, "challenge":I
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v6

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1801
    .end local v0    # "challenge":I
    :cond_3d
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v0

    .line 1802
    .local v0, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v0, :cond_4c

    .line 1803
    const-string v4, "No data in Vault"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/4 v1, 0x0

    return-object v1

    .line 1807
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getOtpKey()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1808
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getOtpCount()I

    move-result v1

    .line 1810
    .local v1, "otpCount":I
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v10

    .line 1811
    .local v10, "sharedSecretBytes":[B
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 1814
    .local v11, "movingFactorBytes":[B
    sget-object v12, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    invoke-virtual {v12, v11, v10}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v12

    .line 1817
    .local v12, "sha256Bytes":[B
    array-length v13, v12

    add-int/lit8 v13, v13, -0x4

    .line 1818
    .local v13, "offset":I
    aget-byte v14, v12, v13

    and-int/lit8 v14, v14, 0x7f

    shl-int/lit8 v14, v14, 0x18

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v12, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v15, v13, 0x2

    aget-byte v15, v12, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v15, v13, 0x3

    aget-byte v15, v12, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    .line 1821
    .local v14, "binary":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move-object/from16 v16, v7

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    rem-int v4, v14, v4

    .line 1822
    .local v4, "challenge":I
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v6, v16

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    const/16 v7, 0x20

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5
    :try_end_b9
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_20 .. :try_end_b9} :catch_bc

    move-object v0, v5

    .line 1826
    .end local v2    # "otpChallenge":Ljava/lang/String;
    .end local v4    # "challenge":I
    .end local v10    # "sharedSecretBytes":[B
    .end local v11    # "movingFactorBytes":[B
    .end local v12    # "sha256Bytes":[B
    .end local v13    # "offset":I
    .end local v14    # "binary":I
    .local v0, "otpChallenge":Ljava/lang/String;
    nop

    .line 1828
    return-object v0

    .line 1824
    .end local v0    # "otpChallenge":Ljava/lang/String;
    .end local v1    # "otpCount":I
    .restart local v2    # "otpChallenge":Ljava/lang/String;
    :catch_bc
    move-exception v0

    goto :goto_c1

    :catch_be
    move-exception v0

    move-object/from16 v9, p0

    .line 1825
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_c1
    throw v0
.end method

.method public getClientData()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1543
    const-string/jumbo v0, "getClientData"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const-string v0, ""

    .line 1547
    .local v0, "clientData":Ljava/lang/String;
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v2

    .line 1548
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_16

    .line 1549
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-object v0

    .line 1553
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getClientData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    .line 1554
    const-string v3, "No client data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-object v0

    .line 1558
    :cond_26
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getClientData()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_a .. :try_end_2a} :catch_2d

    move-object v0, v1

    .line 1562
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    nop

    .line 1564
    return-object v0

    .line 1560
    :catch_2d
    move-exception v1

    .line 1561
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1413
    const-string/jumbo v0, "getEmailAddress"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const-string v0, ""

    .line 1417
    .local v0, "emailAddress":Ljava/lang/String;
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v2

    .line 1418
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_16

    .line 1419
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-object v0

    .line 1423
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    .line 1424
    const-string v3, "No Email Address in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return-object v0

    .line 1428
    :cond_26
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getEmailAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_a .. :try_end_2a} :catch_2d

    move-object v0, v1

    .line 1431
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    nop

    .line 1433
    return-object v0

    .line 1429
    :catch_2d
    move-exception v1

    .line 1430
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public getErrorCode(I)I
    .registers 5
    .param p1, "vkNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1905
    const-string v0, "KgvManager"

    const-string/jumbo v1, "getErrorCode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/4 v0, 0x0

    .line 1907
    .local v0, "retError":I
    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_44

    .line 1921
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "vkNum must be 1 or 2. but %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    goto :goto_43

    .line 1915
    :pswitch_21
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v2, :cond_2b

    .line 1916
    const-string/jumbo v2, "vk2 is null"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1918
    :cond_2b
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getErrorCode()I

    move-result v0

    .line 1919
    goto :goto_43

    .line 1909
    :pswitch_32
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v2, :cond_3c

    .line 1910
    const-string/jumbo v2, "vk1 is null"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1912
    :cond_3c
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getErrorCode()I

    move-result v0

    .line 1913
    nop

    .line 1925
    :goto_43
    return v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_32
        :pswitch_21
    .end packed-switch
.end method

.method public getFailureCount()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1608
    const-string/jumbo v0, "getFailureCount"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const/4 v0, -0x1

    .line 1612
    .local v0, "failureCount":I
    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v2

    .line 1613
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_16

    .line 1614
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v0, 0x0

    .line 1616
    return v0

    .line 1619
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getFailureCount()I

    move-result v1
    :try_end_1a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_9 .. :try_end_1a} :catch_1d

    move v0, v1

    .line 1623
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    nop

    .line 1625
    return v0

    .line 1621
    :catch_1d
    move-exception v1

    .line 1622
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1438
    const-string/jumbo v0, "getNoticeMessage"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string v0, ""

    .line 1442
    .local v0, "noticeMsg":Ljava/lang/String;
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v2

    .line 1443
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_16

    .line 1444
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-object v0

    .line 1448
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    .line 1449
    const-string v3, "No notice message in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return-object v0

    .line 1453
    :cond_26
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_a .. :try_end_2a} :catch_2d

    move-object v0, v1

    .line 1457
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    nop

    .line 1459
    return-object v0

    .line 1455
    :catch_2d
    move-exception v1

    .line 1456
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public getOtpKey()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1670
    const-string/jumbo v0, "getOtpKey"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_26

    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "must not be called in first_api_level : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1674
    :cond_26
    const-string v0, ""

    .line 1677
    .local v0, "otpKey":Ljava/lang/String;
    :try_start_28
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v2

    .line 1678
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_34

    .line 1679
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return-object v0

    .line 1683
    :cond_34
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getOtpKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getOtpKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_45

    goto :goto_4c

    .line 1688
    :cond_45
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getOtpKey()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1692
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    nop

    .line 1694
    return-object v0

    .line 1684
    .restart local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :cond_4c
    :goto_4c
    const-string v3, "No otpKey in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_28 .. :try_end_51} :catch_52

    .line 1685
    return-object v0

    .line 1690
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :catch_52
    move-exception v1

    .line 1691
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1387
    const-string/jumbo v0, "getPhoneNumber"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const-string v0, ""

    .line 1391
    .local v0, "phoneNumber":Ljava/lang/String;
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v2

    .line 1392
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_16

    .line 1393
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return-object v0

    .line 1397
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    .line 1398
    const-string v3, "No phone number in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return-object v0

    .line 1402
    :cond_26
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_a .. :try_end_2a} :catch_2d

    move-object v0, v1

    .line 1406
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    nop

    .line 1408
    return-object v0

    .line 1404
    :catch_2d
    move-exception v1

    .line 1405
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public getPolicy()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 376
    const-string/jumbo v0, "getPolicy"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-nez v0, :cond_26

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "must not be called in first_api_level : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 380
    :cond_26
    const/4 v0, 0x0

    .line 382
    .local v0, "policy":[B
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, -0x5

    if-nez v2, :cond_31

    .line 383
    const-string v2, "Error from VaultKeeper Manager(2) is null object"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 386
    :cond_31
    :try_start_31
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v2

    move-object v0, v2

    .line 387
    if-nez v0, :cond_40

    .line 388
    const-string v2, "Error from VaultKeeper (readData from Vault2)"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 390
    :cond_40
    array-length v2, v0

    if-nez v2, :cond_4a

    .line 391
    const-string v2, "No policy in Vault2"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_31 .. :try_end_48} :catch_4c

    .line 392
    const/4 v1, 0x0

    return-object v1

    .line 397
    :cond_4a
    nop

    .line 399
    return-object v0

    .line 395
    :catch_4c
    move-exception v1

    .line 396
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public getReadErrorCode()I
    .registers 4

    .line 1889
    const-string v0, "KgvManager"

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->query()Ljava/lang/String;
    :try_end_5
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_2 .. :try_end_5} :catch_18

    .line 1893
    nop

    .line 1896
    :try_start_6
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :try_end_9
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1899
    goto :goto_11

    .line 1897
    :catch_a
    move-exception v1

    .line 1898
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    const-string/jumbo v2, "getErrorCodeOnRead - data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_11
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getErrorCode()I

    move-result v0

    return v0

    .line 1890
    :catch_18
    move-exception v1

    .line 1891
    .restart local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    const-string/jumbo v2, "getErrorCodeOnRead - state"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1464
    const-string/jumbo v0, "getRequesterName"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v0, ""

    .line 1468
    .local v0, "requesterName":Ljava/lang/String;
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getKGVaultData()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    move-result-object v2

    .line 1469
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_16

    .line 1470
    const-string v3, "No data in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-object v0

    .line 1474
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    .line 1475
    const-string v3, "No requester name in Vault"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-object v0

    .line 1479
    :cond_26
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getRequesterName()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_a .. :try_end_2a} :catch_2d

    move-object v0, v1

    .line 1482
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    nop

    .line 1484
    return-object v0

    .line 1480
    :catch_2d
    move-exception v1

    .line 1481
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public increaseHOTPcount()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1844
    const-string v0, "[HOTP] increaseHOTPcount"

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_25

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "must not be called in first_api_level : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1848
    :cond_25
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v0, :cond_2f

    .line 1849
    const-string v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1853
    :cond_2f
    :try_start_2f
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v0

    .line 1855
    .local v0, "bytes":[B
    if-nez v0, :cond_3d

    .line 1856
    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1858
    :cond_3d
    array-length v4, v0

    if-nez v4, :cond_52

    .line 1859
    new-instance v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    goto :goto_63

    .line 1861
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :cond_52
    const-class v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    .line 1862
    .restart local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v4, :cond_63

    .line 1863
    const-string v5, "Error deserialize"

    const/16 v6, -0xa

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1866
    :cond_63
    :goto_63
    invoke-virtual {v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getOtpCount()I

    move-result v5

    .line 1867
    .local v5, "OTPcount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HOTP] getOTPCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const/16 v6, 0x270f

    if-ge v5, v6, :cond_84

    .line 1869
    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    .line 1871
    :cond_84
    const/4 v5, 0x0

    .line 1873
    :goto_85
    invoke-virtual {v4, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setOtpCount(I)V

    .line 1874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HOTP] setOTPCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-direct {p0, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    .line 1878
    .local v1, "serializedObj":[B
    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v6, v3, v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    .line 1879
    .local v3, "vaultResult":I
    if-eqz v3, :cond_c6

    .line 1880
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (write/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_c6
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_2f .. :try_end_c6} :catch_c8

    .line 1884
    .end local v0    # "bytes":[B
    .end local v1    # "serializedObj":[B
    .end local v3    # "vaultResult":I
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :cond_c6
    nop

    .line 1885
    return-void

    .line 1882
    .end local v5    # "OTPcount":I
    :catch_c8
    move-exception v0

    .line 1883
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v0
.end method

.method public isKgTurnedOn()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1118
    const-string v0, "KgvManager"

    const-string/jumbo v1, "isKgTurnedOn(void)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v1

    .line 1120
    :cond_11
    const/4 v0, 0x0

    .line 1122
    .local v0, "state":[B
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v4, -0x5

    if-nez v3, :cond_1c

    .line 1123
    const-string v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1126
    :cond_1c
    :try_start_1c
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v3

    move-object v0, v3

    .line 1127
    if-nez v0, :cond_2a

    .line 1128
    const-string v3, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_2a
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_1c .. :try_end_2a} :catch_56

    .line 1132
    :cond_2a
    nop

    .line 1134
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1136
    .local v3, "rlcState":Ljava/lang/String;
    nop

    .line 1137
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 1138
    const-string v4, "Prenormal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 1139
    const-string v4, "Checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 1140
    const-string v4, "Completed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_55

    .line 1143
    :cond_54
    return v2

    .line 1141
    :cond_55
    :goto_55
    return v1

    .line 1130
    .end local v3    # "rlcState":Ljava/lang/String;
    :catch_56
    move-exception v1

    .line 1131
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public isSupportHOTP()Z
    .registers 2

    .line 1299
    const/4 v0, 0x1

    return v0
.end method

.method public prepareBlinking([B[B[B)[B
    .registers 16
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 769
    const-string v0, "KgvManager"

    const-string/jumbo v1, "requestBlinking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_11

    .line 771
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->prepareProcessing([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 773
    :cond_11
    const/4 v0, 0x0

    .line 775
    .local v0, "deviceMsg":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_1c

    .line 776
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 779
    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 781
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    .line 782
    .local v1, "nonce":[B
    if-nez v1, :cond_2d

    .line 783
    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 785
    :cond_2d
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_41
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_1c .. :try_end_41} :catch_44

    move-object v0, v2

    .line 793
    .end local v1    # "nonce":[B
    nop

    .line 795
    return-object v0

    .line 790
    :catch_44
    move-exception v1

    .line 791
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 792
    throw v1
.end method

.method public prepareCompleting([B[B[B)[B
    .registers 16
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 508
    const-string v0, "KgvManager"

    const-string/jumbo v1, "requestCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_11

    .line 510
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->prepareProcessing([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 512
    :cond_11
    const/4 v0, 0x0

    .line 514
    .local v0, "deviceMsg":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_1c

    .line 515
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 518
    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 520
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    .line 521
    .local v1, "nonce":[B
    if-nez v1, :cond_2d

    .line 522
    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 524
    :cond_2d
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_41
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_1c .. :try_end_41} :catch_44

    move-object v0, v2

    .line 532
    .end local v1    # "nonce":[B
    nop

    .line 534
    return-object v0

    .line 529
    :catch_44
    move-exception v1

    .line 530
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 531
    throw v1
.end method

.method public prepareDestroying([B[B[B)[B
    .registers 16
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 960
    const-string v0, "KgvManager"

    const-string/jumbo v1, "requestDestroying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_11

    .line 962
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->prepareProcessing([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 964
    :cond_11
    const/4 v0, 0x0

    .line 966
    .local v0, "deviceMsg":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_1c

    .line 967
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 970
    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 972
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    .line 973
    .local v1, "nonce":[B
    if-nez v1, :cond_2d

    .line 974
    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 976
    :cond_2d
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 978
    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_41
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_1c .. :try_end_41} :catch_44

    move-object v0, v2

    .line 984
    .end local v1    # "nonce":[B
    nop

    .line 986
    return-object v0

    .line 981
    :catch_44
    move-exception v1

    .line 982
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 983
    throw v1
.end method

.method public prepareLocking([B[B[B)[B
    .registers 16
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 568
    const-string v0, "KgvManager"

    const-string/jumbo v1, "requestLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_11

    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->prepareProcessing([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 572
    :cond_11
    const/4 v0, 0x0

    .line 574
    .local v0, "deviceMsg":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_1c

    .line 575
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 578
    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 580
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    .line 581
    .local v1, "nonce":[B
    if-nez v1, :cond_2d

    .line 582
    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 584
    :cond_2d
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_41
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_1c .. :try_end_41} :catch_44

    move-object v0, v2

    .line 592
    .end local v1    # "nonce":[B
    nop

    .line 594
    return-object v0

    .line 589
    :catch_44
    move-exception v1

    .line 590
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 591
    throw v1
.end method

.method public prepareRegistering([B[B[B)[B
    .registers 16
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 404
    const-string v0, "KgvManager"

    const-string/jumbo v1, "requestRegistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "deviceMsg":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_13

    .line 408
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 411
    :cond_13
    :try_start_13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 413
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvKey:[B

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->getRandom([B)V

    .line 415
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    .line 416
    .local v1, "nonce":[B
    if-nez v1, :cond_2b

    .line 417
    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 419
    :cond_2b
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mKgvKey:[B

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_40
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_40} :catch_43

    move-object v0, v2

    .line 427
    .end local v1    # "nonce":[B
    nop

    .line 429
    return-object v0

    .line 424
    :catch_43
    move-exception v1

    .line 425
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 426
    throw v1
.end method

.method public prepareUnlocking([B[B[B)[B
    .registers 16
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 829
    const-string v0, "KgvManager"

    const-string/jumbo v1, "requestUnlocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_11

    .line 831
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->prepareProcessing([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 833
    :cond_11
    const/4 v0, 0x0

    .line 835
    .local v0, "deviceMsg":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_1c

    .line 836
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 839
    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 841
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->sensitiveBox(I)[B

    move-result-object v1

    .line 842
    .local v1, "nonce":[B
    if-nez v1, :cond_2d

    .line 843
    const-string v3, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 845
    :cond_2d
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 847
    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mNonceDev:[B

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_41
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_1c .. :try_end_41} :catch_44

    move-object v0, v2

    .line 853
    .end local v1    # "nonce":[B
    nop

    .line 855
    return-object v0

    .line 850
    :catch_44
    move-exception v1

    .line 851
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 852
    throw v1
.end method

.method public query()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1099
    const-string v0, "KgvManager"

    const-string/jumbo v1, "query(void)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v0, 0x0

    .line 1102
    .local v0, "state":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_13

    .line 1103
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1106
    :cond_13
    :try_start_13
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    move-object v0, v1

    .line 1107
    if-nez v0, :cond_22

    .line 1108
    const-string v1, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_22
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_22} :catch_2b

    .line 1112
    :cond_22
    nop

    .line 1114
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 1110
    :catch_2b
    move-exception v1

    .line 1111
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public query([B[B[B)[B
    .registers 14
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "kgvId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1072
    const-string v0, "KgvManager"

    const-string/jumbo v1, "query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, 0x0

    .line 1075
    .local v0, "deviceMsg":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_13

    .line 1076
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1079
    :cond_13
    :try_start_13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->parameterChecking([B[B[B)V

    .line 1081
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    .line 1082
    .local v1, "state":[B
    if-nez v1, :cond_24

    .line 1083
    const-string v3, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1085
    :cond_24
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->makeDeviceMsg([B[B[B[B[B[B)[B

    move-result-object v2
    :try_end_2f
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_2f} :catch_37
    .catchall {:try_start_13 .. :try_end_2f} :catchall_35

    move-object v0, v2

    .line 1091
    .end local v1    # "state":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 1092
    nop

    .line 1094
    return-object v0

    .line 1091
    :catchall_35
    move-exception v1

    goto :goto_3a

    .line 1088
    :catch_37
    move-exception v1

    .line 1089
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .end local v0    # "deviceMsg":[B
    .end local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local p1    # "serverCert":[B
    .end local p2    # "nonceSvr":[B
    .end local p3    # "kgvId":[B
    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_35

    .line 1091
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    .restart local v0    # "deviceMsg":[B
    .restart local p0    # "this":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .restart local p1    # "serverCert":[B
    .restart local p2    # "nonceSvr":[B
    .restart local p3    # "kgvId":[B
    :goto_3a
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->clearKgvData()V

    .line 1092
    throw v1
.end method

.method public setClientData(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "clientData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1569
    const-string v0, "KgvManager"

    const-string/jumbo v1, "setClientData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const-string v0, ""

    .line 1572
    .local v0, "oldClientData":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_14

    .line 1573
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1577
    :cond_14
    :try_start_14
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    .line 1579
    .local v1, "bytes":[B
    if-nez v1, :cond_22

    .line 1580
    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1582
    :cond_22
    array-length v4, v1

    if-nez v4, :cond_37

    .line 1583
    new-instance v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    goto :goto_50

    .line 1585
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :cond_37
    const-class v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    .line 1586
    .restart local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v4, :cond_48

    .line 1587
    const-string v5, "Error deserialize"

    const/16 v6, -0xa

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1589
    :cond_48
    invoke-virtual {v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->getClientData()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1590
    invoke-virtual {v4, p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setClientData(Ljava/lang/String;)V

    .line 1593
    :goto_50
    invoke-direct {p0, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    .line 1595
    .local v5, "serializedObj":[B
    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    .line 1596
    .local v3, "vaultResult":I
    if-eqz v3, :cond_78

    .line 1597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (write/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_78
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_14 .. :try_end_78} :catch_7a

    .line 1601
    .end local v1    # "bytes":[B
    .end local v3    # "vaultResult":I
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    .end local v5    # "serializedObj":[B
    :cond_78
    nop

    .line 1603
    return-object v0

    .line 1599
    :catch_7a
    move-exception v1

    .line 1600
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public setFailureCount(I)Z
    .registers 14
    .param p1, "failureCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1630
    const-string v0, "KgvManager"

    const-string/jumbo v1, "setFailureCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v0, 0x0

    .line 1633
    .local v0, "ret":Z
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_13

    .line 1634
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1638
    :cond_13
    :try_start_13
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    .line 1640
    .local v1, "bytes":[B
    if-nez v1, :cond_21

    .line 1641
    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1643
    :cond_21
    array-length v4, v1

    if-nez v4, :cond_36

    .line 1644
    new-instance v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    goto :goto_47

    .line 1646
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :cond_36
    const-class v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    .line 1647
    .restart local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v4, :cond_47

    .line 1648
    const-string v5, "Error deserialize"

    const/16 v6, -0xa

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1651
    :cond_47
    :goto_47
    invoke-virtual {v4, p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setFailureCount(I)V

    .line 1653
    invoke-direct {p0, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    .line 1655
    .local v5, "serializedObj":[B
    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    .line 1656
    .local v3, "vaultResult":I
    if-eqz v3, :cond_72

    .line 1657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (write/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_72
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_72} :catch_75

    .line 1659
    :cond_72
    const/4 v0, 0x1

    .line 1663
    .end local v1    # "bytes":[B
    .end local v3    # "vaultResult":I
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    .end local v5    # "serializedObj":[B
    nop

    .line 1665
    return v0

    .line 1661
    :catch_75
    move-exception v1

    .line 1662
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public setKGTargetDevice()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1047
    const-string v0, "KgvManager"

    const-string/jumbo v1, "setKGTargetdevice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x0

    .line 1050
    .local v0, "resultDev":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_13

    .line 1051
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1054
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->query()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "state":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_1d} :catch_7a

    const-string v4, ")"

    if-nez v3, :cond_4c

    :try_start_21
    const-string v3, "Completed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    const-string v3, "Checking"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set KGV Prenormal state in current state("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1059
    :cond_4c
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v5, "Prenormal"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    .line 1060
    .local v3, "vaultResult":I
    if-eqz v3, :cond_77

    .line 1061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error from VaultKeeper (write prenormal/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_77
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_21 .. :try_end_77} :catch_7a

    .line 1065
    .end local v1    # "state":Ljava/lang/String;
    .end local v3    # "vaultResult":I
    :cond_77
    nop

    .line 1067
    const/4 v1, 0x0

    return v1

    .line 1063
    :catch_7a
    move-exception v1

    .line 1064
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Z
    .registers 24
    .param p1, "noticeMsg"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "requesterName"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "skipPin"    # Z
    .param p6, "skipSupport"    # Z
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1489
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    const-string v0, "KgvManager"

    const-string/jumbo v2, "setLockscreenData"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const/4 v12, 0x0

    .line 1492
    .local v12, "ret":Z
    if-nez v9, :cond_1b

    if-nez v10, :cond_1b

    .line 1493
    const/4 v0, -0x2

    const-string v2, "One of paratemers should not be null"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1495
    :cond_1b
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v13, -0x5

    if-nez v0, :cond_25

    .line 1496
    const-string v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {v1, v13, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1500
    :cond_25
    :try_start_25
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v0

    .line 1502
    .local v0, "bytes":[B
    if-nez v0, :cond_33

    .line 1503
    const-string v2, "Error from VaultKeeper (readData)"

    invoke-direct {v1, v13, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1505
    :cond_33
    array-length v2, v0

    if-nez v2, :cond_54

    .line 1506
    new-instance v15, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    const/4 v3, 0x0

    const-string v8, ""

    move-object v2, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v15

    .line 1507
    .local v2, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    invoke-virtual {v2, v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setSkipPin(Z)V

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    goto :goto_86

    .line 1509
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :cond_54
    const-class v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    .line 1510
    .restart local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v2, :cond_65

    .line 1511
    const-string v3, "Error deserialize"

    const/16 v4, -0xa

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1513
    :cond_65
    if-eqz v9, :cond_6a

    .line 1514
    invoke-virtual {v2, v9}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setNoticeMessage(Ljava/lang/String;)V

    .line 1516
    :cond_6a
    if-eqz v10, :cond_6f

    .line 1517
    invoke-virtual {v2, v10}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setRequesterName(Ljava/lang/String;)V
    :try_end_6f
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_25 .. :try_end_6f} :catch_b9

    .line 1519
    :cond_6f
    move-object/from16 v3, p2

    :try_start_71
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setPhoneNumber(Ljava/lang/String;)V
    :try_end_74
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_71 .. :try_end_74} :catch_b7

    .line 1520
    move-object/from16 v4, p4

    :try_start_76
    invoke-virtual {v2, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setEmailAddress(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v2, v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setSkipPin(Z)V
    :try_end_7c
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_76 .. :try_end_7c} :catch_b5

    .line 1522
    move/from16 v5, p6

    :try_start_7e
    invoke-virtual {v2, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setSkipSupport(Z)V
    :try_end_81
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_7e .. :try_end_81} :catch_b3

    .line 1523
    move-object/from16 v6, p7

    :try_start_83
    invoke-virtual {v2, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setBundle(Landroid/os/Bundle;)V

    .line 1526
    :goto_86
    invoke-direct {v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v7

    .line 1528
    .local v7, "serializedObj":[B
    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v8, v14, v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v8

    .line 1529
    .local v8, "vaultResult":I
    if-eqz v8, :cond_ae

    .line 1530
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error from VaultKeeper (write/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v13, v14}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_ae
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_83 .. :try_end_ae} :catch_b1

    .line 1532
    :cond_ae
    const/4 v0, 0x1

    .line 1536
    .end local v2    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    .end local v7    # "serializedObj":[B
    .end local v8    # "vaultResult":I
    .end local v12    # "ret":Z
    .local v0, "ret":Z
    nop

    .line 1538
    return v0

    .line 1534
    .end local v0    # "ret":Z
    .restart local v12    # "ret":Z
    :catch_b1
    move-exception v0

    goto :goto_c2

    :catch_b3
    move-exception v0

    goto :goto_c0

    :catch_b5
    move-exception v0

    goto :goto_be

    :catch_b7
    move-exception v0

    goto :goto_bc

    :catch_b9
    move-exception v0

    move-object/from16 v3, p2

    :goto_bc
    move-object/from16 v4, p4

    :goto_be
    move/from16 v5, p6

    :goto_c0
    move-object/from16 v6, p7

    .line 1535
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_c2
    throw v0
.end method

.method public setOtpKey(Ljava/lang/String;)Z
    .registers 14
    .param p1, "otpKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1699
    const-string v0, "KgvManager"

    const-string/jumbo v1, "setOtpKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_26

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "must not be called in first_api_level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1703
    :cond_26
    const/4 v0, 0x0

    .line 1705
    .local v0, "ret":Z
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_31

    .line 1706
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1710
    :cond_31
    :try_start_31
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v1

    .line 1712
    .local v1, "bytes":[B
    if-nez v1, :cond_3f

    .line 1713
    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1715
    :cond_3f
    array-length v4, v1

    if-nez v4, :cond_54

    .line 1716
    new-instance v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    goto :goto_68

    .line 1718
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    :cond_54
    const-class v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;

    .line 1719
    .restart local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    if-nez v4, :cond_65

    .line 1720
    const-string v5, "Error deserialize"

    const/16 v6, -0xa

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1722
    :cond_65
    invoke-virtual {v4, p1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->setOtpKey(Ljava/lang/String;)V

    .line 1725
    :goto_68
    invoke-direct {p0, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    .line 1727
    .local v5, "serializedObj":[B
    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    .line 1728
    .local v3, "vaultResult":I
    if-eqz v3, :cond_90

    .line 1729
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (write/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_90
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_31 .. :try_end_90} :catch_93

    .line 1731
    :cond_90
    const/4 v0, 0x1

    .line 1735
    .end local v1    # "bytes":[B
    .end local v3    # "vaultResult":I
    .end local v4    # "kvd":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
    .end local v5    # "serializedObj":[B
    nop

    .line 1737
    return v0

    .line 1733
    :catch_93
    move-exception v1

    .line 1734
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public setPolicy([B[B)I
    .registers 7
    .param p1, "policy"    # [B
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 353
    const-string v0, "KgvManager"

    const-string/jumbo v1, "setPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-nez v0, :cond_26

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "must not be called in first_api_level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 357
    :cond_26
    const/4 v0, -0x1

    .line 359
    .local v0, "vaultResult":I
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_31

    .line 360
    const-string v1, "Error from VaultKeeper Manager(2) is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 363
    :cond_31
    :try_start_31
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm2:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B[B)I

    move-result v1

    move v0, v1

    .line 364
    if-eqz v0, :cond_57

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from VaultKeeper2 (write/ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_57
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_31 .. :try_end_57} :catch_59

    .line 369
    :cond_57
    nop

    .line 371
    return v0

    .line 367
    :catch_59
    move-exception v1

    .line 368
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public setRestrictedDevice()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1018
    const-string v0, "KgvManager"

    const-string/jumbo v1, "setRestrictedDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v0, 0x0

    .line 1021
    .local v0, "resultDev":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, -0x5

    if-nez v1, :cond_13

    .line 1022
    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1026
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->query()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "state":Ljava/lang/String;
    const-string v3, "Prenormal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_13 .. :try_end_1d} :catch_6a

    const-string v4, ")"

    if-nez v3, :cond_3c

    .line 1028
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set Checking state in current state("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1031
    :cond_3c
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v5, "Checking"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v3

    .line 1032
    .local v3, "vaultResult":I
    if-eqz v3, :cond_67

    .line 1033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error from VaultKeeper (write checking/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V
    :try_end_67
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_21 .. :try_end_67} :catch_6a

    .line 1039
    .end local v1    # "state":Ljava/lang/String;
    .end local v3    # "vaultResult":I
    :cond_67
    nop

    .line 1041
    const/4 v1, 0x0

    return v1

    .line 1036
    :catch_6a
    move-exception v1

    .line 1038
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v1
.end method

.method public unbindFromLockScreen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1282
    const-string v0, "KgvManager"

    const-string/jumbo v1, "unbindFromLockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :try_start_8
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_1a

    .line 1286
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setLockSettingsService(Lcom/android/internal/widget/ILockSettings;)V

    .line 1288
    :cond_1a
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/ILockSettings;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 1289
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setRemoteLockToLockscreen()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_25} :catch_28
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_33

    .line 1293
    :catch_26
    move-exception v0

    .line 1294
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    throw v0

    .line 1290
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :catch_28
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1292
    const/16 v1, -0x9

    const-string v2, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1295
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    nop

    .line 1296
    return-void
.end method

.method public verifyteHOTPPasscode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 1832
    const-string v0, "KgvManager"

    const-string v1, "[HOTP] verifyteHOTPPasscode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->mIsSupportKg2:Z

    if-eqz v0, :cond_25

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "must not be called in first_api_level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->first_api_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->throwException(ILjava/lang/String;)V

    .line 1836
    :cond_25
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->generateHOTPPasscode()Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, "passcode":Ljava/lang/String;
    if-nez v0, :cond_2d

    const/4 v1, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_31
    return v1
.end method
