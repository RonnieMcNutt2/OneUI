.class abstract Landroid/security/keystore2/KeyStoreCryptoOperationUtils;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationUtils.java"


# static fields
.field private static volatile sRng:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static abortOperation(Landroid/security/KeyStoreOperation;)V
    .registers 4
    .param p0, "operation"    # Landroid/security/KeyStoreOperation;

    .line 183
    if-eqz p0, :cond_16

    .line 185
    :try_start_2
    invoke-virtual {p0}, Landroid/security/KeyStoreOperation;->abort()V
    :try_end_5
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_5} :catch_6

    .line 200
    goto :goto_16

    .line 186
    :catch_6
    move-exception v0

    .line 189
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x1c

    if-eq v1, v2, :cond_16

    .line 194
    const-string v1, "KeyStoreCryptoOperationUtils"

    const-string v2, "Encountered error trying to abort a keystore operation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_16
    :goto_16
    return-void
.end method

.method public static canUserAuthorizationSucceed(Landroid/security/keystore2/AndroidKeyStoreKey;)Z
    .registers 13
    .param p0, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "keySids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_2b

    aget-object v5, v1, v4

    .line 59
    .local v5, "p":Landroid/system/keystore2/Authorization;
    iget-object v6, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v6, v6, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    packed-switch v6, :pswitch_data_78

    goto :goto_28

    .line 61
    :pswitch_18
    iget-object v6, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v6, v6, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v6}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    nop

    .line 58
    .end local v5    # "p":Landroid/system/keystore2/Authorization;
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 67
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 69
    return v3

    .line 71
    :cond_32
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v1

    .line 72
    .local v1, "rootSid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_48

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 75
    return v5

    .line 79
    :cond_48
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    const-class v6, Landroid/hardware/biometrics/BiometricManager;

    .line 80
    invoke-virtual {v4, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/BiometricManager;

    .line 81
    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v4

    .line 90
    .local v4, "biometricSids":[J
    array-length v6, v4

    if-lez v6, :cond_5d

    move v6, v5

    goto :goto_5e

    :cond_5d
    move v6, v3

    .line 91
    .local v6, "canUnlockViaBiometrics":Z
    :goto_5e
    array-length v7, v4

    move v8, v3

    :goto_60
    if-ge v8, v7, :cond_73

    aget-wide v9, v4, v8

    .line 92
    .local v9, "sid":J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_70

    .line 93
    const/4 v6, 0x0

    .line 94
    goto :goto_73

    .line 91
    .end local v9    # "sid":J
    :cond_70
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 98
    :cond_73
    :goto_73
    if-eqz v6, :cond_76

    .line 100
    return v5

    .line 104
    :cond_76
    return v3

    nop

    :pswitch_data_78
    .packed-switch -0x5ffffe0a
        :pswitch_18
    .end packed-switch
.end method

.method public static getExceptionForCipherInit(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/GeneralSecurityException;
    .registers 4
    .param p0, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;
    .param p1, "e"    # Landroid/security/KeyStoreException;

    .line 139
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_9
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    .line 152
    invoke-static {p0, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0

    .line 146
    :sswitch_15
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 148
    :sswitch_1d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Caller-provided IV not permitted"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_26
    .sparse-switch
        -0x37 -> :sswitch_1d
        -0x34 -> :sswitch_15
    .end sparse-switch
.end method

.method public static getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .registers 4
    .param p0, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;
    .param p1, "e"    # Landroid/security/KeyStoreException;

    .line 113
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 128
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Keystore operation failed"

    invoke-direct {v0, v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 121
    :sswitch_f
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    .line 117
    :sswitch_15
    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object v0

    .line 115
    :sswitch_1b
    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object v0

    .line 126
    :sswitch_21
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    nop

    :sswitch_data_28
    .sparse-switch
        -0x1a -> :sswitch_21
        -0x19 -> :sswitch_1b
        -0x18 -> :sswitch_15
        0x2 -> :sswitch_21
        0x3 -> :sswitch_21
        0x7 -> :sswitch_f
        0x11 -> :sswitch_f
    .end sparse-switch
.end method

.method static getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J
    .registers 4
    .param p0, "operation"    # Landroid/security/KeyStoreOperation;
    .param p1, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Landroid/security/KeyStoreOperation;->getChallenge()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 207
    invoke-static {p1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->canUserAuthorizationSucceed(Landroid/security/keystore2/AndroidKeyStoreKey;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 210
    invoke-virtual {p0}, Landroid/security/KeyStoreOperation;->getChallenge()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 208
    :cond_15
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    throw v0

    .line 214
    :cond_1b
    invoke-static {}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRng()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .registers 3
    .param p0, "rng"    # Ljava/security/SecureRandom;
    .param p1, "sizeBytes"    # I

    .line 162
    if-gtz p1, :cond_5

    .line 163
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    .line 165
    :cond_5
    if-nez p0, :cond_b

    .line 166
    invoke-static {}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRng()Ljava/security/SecureRandom;

    move-result-object p0

    .line 168
    :cond_b
    new-array v0, p1, [B

    .line 169
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 170
    return-object v0
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .registers 1

    .line 176
    sget-object v0, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 177
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    .line 179
    :cond_b
    sget-object v0, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    return-object v0
.end method
