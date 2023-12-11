.class public abstract Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "UcmKeyStoreCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesGcmNoPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesCbcIso9797M2;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesCbcNoPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$PKCS1Padding;
    }
.end annotation


# static fields
.field private static final AES_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final GCM_MODE:Ljava/lang/String; = "GCM"

.field static final INVALID_PADDING:I = -0x1

.field static final ISO9797_M2:I = 0x4

.field private static KEY_EXTRA_AAD:Ljava/lang/String; = null

.field private static KEY_EXTRA_IV:Ljava/lang/String; = null

.field private static KEY_EXTRA_TAG_LEN:Ljava/lang/String; = null

.field static final NO_PADDING:I = 0x1

.field static final PKCS1_OAEP_PADDING:I = 0x3

.field static final PKCS1_PADDING:I = 0x2

.field private static final RSA_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final TAG:Ljava/lang/String; = "UcmKeyStoreCipherSpi"


# instance fields
.field private mAAD:[B

.field private final mAlgorithm:Ljava/lang/String;

.field mEncrypting:Z

.field private mIV:[B

.field private mIsDoFinalCalled:Z

.field private mTagLength:I

.field private mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-string v0, "extra_iv"

    sput-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_IV:Ljava/lang/String;

    .line 45
    const-string v0, "extra_aad"

    sput-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_AAD:Ljava/lang/String;

    .line 46
    const-string v0, "extra_tag_length"

    sput-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "padding"    # I
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    .line 89
    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    .line 90
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    .line 92
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    .line 94
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "parsedAlgorithm":Ljava/lang/String;
    const-string v1, "AES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 96
    new-instance v1, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;

    invoke-direct {v1, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    goto :goto_3c

    .line 97
    :cond_2d
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 98
    new-instance v1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;

    invoke-direct {v1, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    .line 100
    :cond_3c
    :goto_3c
    return-void
.end method

.method private parseDecryptedMessage([B)[B
    .registers 6
    .param p1, "message"    # [B

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "offset":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 312
    .local v0, "messageLength":I
    new-array v1, v0, [B

    .line 313
    .local v1, "cipherResult":[B
    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    return-object v1
.end method

.method private parseEncryptedMessage([B)[B
    .registers 9
    .param p1, "message"    # [B

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "offset":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p1, v0

    .line 291
    .local v0, "cipherVersion":I
    const/4 v2, 0x0

    .line 293
    .local v2, "cipherResult":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c

    .line 294
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    aget-byte v1, p1, v1

    .line 295
    .local v1, "ivLength":I
    new-array v5, v1, [B

    iput-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    .line 296
    invoke-static {p1, v4, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    add-int/2addr v4, v1

    .line 299
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 300
    .local v4, "messageLength":I
    new-array v2, v4, [B

    .line 301
    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    .end local v1    # "ivLength":I
    .end local v4    # "messageLength":I
    move v1, v6

    goto :goto_32

    .line 303
    .end local v6    # "offset":I
    .local v1, "offset":I
    :cond_2c
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    .line 304
    new-array v2, v3, [B

    .line 306
    :goto_32
    return-object v2
.end method

.method private parseEncryptionMode(I)V
    .registers 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_2b

    .line 370
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    goto :goto_27

    .line 373
    :cond_e
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_27
    :goto_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    goto :goto_2d

    .line 369
    :cond_2b
    :goto_2b
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    .line 375
    :goto_2d
    return-void
.end method

.method private parseParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "iv":[B
    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_d

    .line 164
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    goto :goto_18

    .line 165
    :cond_d
    instance-of v1, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v1, :cond_18

    .line 166
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v0

    .line 169
    :cond_18
    :goto_18
    iget-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-eqz v1, :cond_2a

    .line 170
    if-eqz v0, :cond_39

    array-length v1, v0

    if-gtz v1, :cond_22

    goto :goto_39

    .line 171
    :cond_22
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Caller-provided IV not permitted"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_2a
    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    .line 175
    instance-of v1, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v1, :cond_39

    .line 176
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v1

    iput v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mTagLength:I

    .line 179
    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public engineDoFinal([BII[BI)I
    .registers 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    .line 323
    .local v0, "b":[B
    array-length v1, v0

    add-int/2addr v1, p5

    .line 324
    .local v1, "lastOffset":I
    array-length v2, p4

    if-gt v1, v2, :cond_10

    .line 329
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    array-length v2, v0

    return v2

    .line 325
    :cond_10
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output buffer is too small "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineDoFinal([BII)[B
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 239
    if-eqz p1, :cond_5

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->doFinal()[B

    move-result-object v0

    .line 245
    .local v0, "tmpBuf":[B
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 246
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_bc

    .line 250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v2, "params":Landroid/os/Bundle;
    iget-boolean v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-nez v3, :cond_21

    .line 252
    sget-object v3, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_IV:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 255
    :cond_21
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GCM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 256
    sget-object v3, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_AAD:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 257
    sget-object v3, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mTagLength:I

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    :cond_46
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AES"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 262
    .local v3, "isAES":Z
    const/4 v4, 0x0

    .line 263
    .local v4, "output":[B
    iget-object v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v6}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object v6

    .line 265
    .local v6, "key":Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    :try_start_60
    iget-boolean v7, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-eqz v7, :cond_79

    .line 266
    invoke-virtual {v6}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {v1, v7, v0, v8, v2}, Landroid/sec/enterprise/IEDMProxy;->ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v7

    move-object v4, v7

    .line 267
    if-eqz v3, :cond_8d

    if-eqz v4, :cond_8d

    .line 268
    invoke-direct {p0, v4}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptedMessage([B)[B

    move-result-object v7

    move-object v4, v7

    goto :goto_8d

    .line 271
    :cond_79
    invoke-virtual {v6}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {v1, v7, v0, v8, v2}, Landroid/sec/enterprise/IEDMProxy;->ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v7

    move-object v4, v7

    .line 272
    if-eqz v3, :cond_8d

    if-eqz v4, :cond_8d

    .line 273
    invoke-direct {p0, v4}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseDecryptedMessage([B)[B

    move-result-object v7
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_8c} :catch_9b

    move-object v4, v7

    .line 279
    :cond_8d
    :goto_8d
    nop

    .line 280
    if-eqz v4, :cond_93

    .line 284
    iput-boolean v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    .line 285
    return-object v4

    .line 281
    :cond_93
    new-instance v5, Ljavax/crypto/IllegalBlockSizeException;

    const-string v7, "output is null"

    invoke-direct {v5, v7}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :catch_9b
    move-exception v5

    .line 277
    .local v5, "re":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UcmKeyStoreCipherSpi"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v7, Ljavax/crypto/IllegalBlockSizeException;

    const-string v8, "RemoteException"

    invoke-direct {v7, v8}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "isAES":Z
    .end local v4    # "output":[B
    .end local v5    # "re":Landroid/os/RemoteException;
    .end local v6    # "key":Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    :cond_bc
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    const-string v3, "failed to connect ucm service"

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineGetBlockSize()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .registers 3

    .line 130
    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-nez v0, :cond_9

    goto :goto_11

    .line 131
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIV can be supported after performing doFinal"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 120
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getModulusSize()I

    move-result v0

    return v0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 208
    if-nez p3, :cond_a

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 215
    return-void

    .line 209
    :cond_a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_7} :catch_9

    .line 194
    nop

    .line 195
    return-void

    .line 192
    :catch_9
    move-exception v0

    .line 193
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Algorithm parameters rejected when none supplied"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 202
    return-void
.end method

.method engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    .line 149
    if-eqz p2, :cond_10

    .line 153
    if-eqz p3, :cond_a

    .line 154
    invoke-direct {p0, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p2}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->init(Ljava/security/Key;)V

    .line 158
    return-void

    .line 150
    :cond_10
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->setMode(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .registers 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->setPadding(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 8
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 351
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    .line 352
    .local v0, "encoded":[B
    const/4 v1, 0x2

    if-ne p3, v1, :cond_17

    .line 353
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 354
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2

    .line 356
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :cond_17
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrappedKeyType == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
    .end local p1    # "wrappedKey":[B
    .end local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .end local p3    # "wrappedKeyType":I
    throw v1
    :try_end_30
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_30} :catch_3e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_30} :catch_37
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_30} :catch_30

    .line 362
    .end local v0    # "encoded":[B
    .restart local p0    # "this":Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
    .restart local p1    # "wrappedKey":[B
    .restart local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .restart local p3    # "wrappedKeyType":I
    :catch_30
    move-exception v0

    .line 363
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 360
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_37
    move-exception v0

    .line 361
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 358
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3e
    move-exception v0

    .line 359
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineUpdate([BII[BI)I
    .registers 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public engineUpdate([BII)[B
    .registers 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 219
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->update([BII)V

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public engineUpdateAAD([BII)V
    .registers 5
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 232
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    .line 233
    return-void
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 337
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 338
    .local v0, "encoded":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 339
    .end local v0    # "encoded":[B
    :catch_b
    move-exception v0

    .line 340
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 341
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 342
    throw v1
.end method

.method isInitialized()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
