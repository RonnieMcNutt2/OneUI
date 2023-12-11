.class public abstract Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;
.super Ljava/lang/Object;
.source "UcmKeyStoreGenericCipher.java"


# instance fields
.field private mPadding:I

.field private mUcmKey:Lcom/samsung/ucm/keystore/UcmKeyStoreKey;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "padding"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mPadding:I

    .line 23
    return-void
.end method

.method private toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 65
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doFinal()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mPadding:I

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->doFinalInternal(I)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract doFinalInternal(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method public getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mUcmKey:Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    return-object v0
.end method

.method public abstract getModulusSize()I
.end method

.method public init(Ljava/security/Key;)V
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-nez v0, :cond_11

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 46
    :cond_9
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Invalid Key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_11
    :goto_11
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mUcmKey:Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    .line 44
    return-void
.end method

.method public abstract initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.end method

.method public abstract isModeSupported(Ljava/lang/String;)Z
.end method

.method public abstract isPaddingSupported(Ljava/lang/String;)I
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->isModeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    return-void

    .line 29
    :cond_b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPadding(Ljava/lang/String;)V
    .registers 5
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->isPaddingSupported(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mPadding:I

    .line 34
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 35
    return-void

    .line 37
    :cond_e
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract update([BII)V
.end method
