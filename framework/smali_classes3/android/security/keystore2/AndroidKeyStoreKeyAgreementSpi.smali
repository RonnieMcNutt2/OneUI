.class public Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "AndroidKeyStoreKeyAgreementSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$ECDH;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreKeyAgreementSpi"


# instance fields
.field private mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

.field private final mKeymintAlgorithm:I

.field private mOperation:Landroid/security/KeyStoreOperation;

.field private mOperationHandle:J

.field private mOtherPartyKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .param p1, "keymintAlgorithm"    # I

    .line 86
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 87
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 89
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKeymintAlgorithm:I

    .line 90
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_41

    .line 237
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    if-eqz v0, :cond_9

    .line 238
    return-void

    .line 243
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, 0x20000001

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :try_start_19
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 250
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_2b
    .catch Landroid/security/KeyStoreException; {:try_start_19 .. :try_end_2b} :catch_2c

    .line 258
    goto :goto_35

    .line 251
    :catch_2c
    move-exception v1

    .line 253
    .local v1, "keyStoreException":Landroid/security/KeyStoreException;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 254
    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v2

    .line 255
    .local v2, "e":Ljava/security/InvalidKeyException;
    if-nez v2, :cond_40

    .line 263
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :goto_35
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 264
    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    .line 265
    return-void

    .line 256
    .restart local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .restart local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_40
    throw v2

    .line 235
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetAll()V
    .registers 2

    .line 228
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 230
    return-void
.end method

.method private resetWhilePreservingInitState()V
    .registers 3

    .line 221
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    .line 224
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    .line 225
    return-void
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V

    .line 132
    if-eqz p1, :cond_7c

    .line 134
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_63

    .line 136
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    instance-of v1, v0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_1c

    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_14

    goto :goto_1c

    .line 143
    :cond_14
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public and Private key should be of the same type."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1c
    :goto_1c
    instance-of v0, v0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_46

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    .line 146
    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    check-cast v1, Ljava/security/interfaces/ECKey;

    .line 147
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_46

    .line 148
    :cond_3e
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public and Private key parameters should be same."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_46
    :goto_46
    if-eqz p2, :cond_5b

    .line 153
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-nez v0, :cond_53

    .line 159
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. doPhase() must only be called exactly once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. lastPhase must be set to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_63
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only public keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_7c
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGenerateSecret([BI)I
    .registers 7
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 199
    .local v0, "generatedSecret":[B
    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_10

    .line 202
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v1, v0

    return v1

    .line 200
    :cond_10
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 191
    .local v0, "generatedSecret":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected engineGenerateSecret()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_2e

    .line 170
    nop

    .line 172
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_26

    .line 175
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 178
    .local v0, "otherPartyKeyEncoded":[B
    :try_start_c
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStoreOperation;->finish([B[B)[B

    move-result-object v1
    :try_end_13
    .catch Landroid/security/KeyStoreException; {:try_start_c .. :try_end_13} :catch_19
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 182
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 178
    return-object v1

    .line 182
    :catchall_17
    move-exception v1

    goto :goto_22

    .line 179
    :catch_19
    move-exception v1

    .line 180
    .local v1, "e":Landroid/security/KeyStoreException;
    :try_start_1a
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Keystore operation failed"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "otherPartyKeyEncoded":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
    throw v2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 182
    .end local v1    # "e":Landroid/security/KeyStoreException;
    .restart local v0    # "otherPartyKeyEncoded":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
    :goto_22
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 183
    throw v1

    .line 173
    .end local v0    # "otherPartyKeyEncoded":[B
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Other party key not provided. Call doPhase() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :catch_2e
    move-exception v0

    .line 169
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 96
    if-eqz p1, :cond_39

    .line 98
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_20

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "success":Z
    :try_start_f
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    .line 109
    const/4 v0, 0x1

    .line 111
    if-nez v0, :cond_18

    .line 112
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 115
    :cond_18
    return-void

    .line 111
    :catchall_19
    move-exception v1

    if-nez v0, :cond_1f

    .line 112
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 114
    :cond_1f
    throw v1

    .line 99
    .end local v0    # "success":Z
    :cond_20
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore private keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_39
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 120
    if-nez p2, :cond_6

    .line 124
    invoke-virtual {p0, p1, p3}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 125
    return-void

    .line 121
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 216
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 217
    nop

    .line 218
    return-void

    .line 216
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 217
    throw v0
.end method

.method public getOperationHandle()J
    .registers 3

    .line 208
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    return-wide v0
.end method
