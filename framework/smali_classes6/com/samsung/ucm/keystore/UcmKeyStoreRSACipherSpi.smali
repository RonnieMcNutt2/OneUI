.class public Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;
.source "UcmKeyStoreRSACipherSpi.java"


# instance fields
.field private mBuffer:[B

.field private mBufferOffset:I

.field private mIsInputTooLarge:Z

.field private mModulusSizeBytes:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "padding"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;-><init>(I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    .line 26
    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    .line 32
    return-void
.end method


# virtual methods
.method public doFinalInternal(I)[B
    .registers 7
    .param p1, "padding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    if-nez v0, :cond_22

    .line 76
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1d

    .line 77
    const/4 v2, 0x1

    if-ne p1, v2, :cond_18

    .line 78
    array-length v2, v1

    new-array v2, v2, [B

    .line 79
    .local v2, "retBuffer":[B
    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 81
    .end local v2    # "retBuffer":[B
    :cond_18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .restart local v2    # "retBuffer":[B
    goto :goto_1f

    .line 84
    .end local v2    # "retBuffer":[B
    :cond_1d
    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    .line 87
    .restart local v2    # "retBuffer":[B
    :goto_1f
    iput v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    .line 88
    return-object v2

    .line 72
    .end local v2    # "retBuffer":[B
    :cond_22
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input must be under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModulusSize()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return v0
.end method

.method public initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    .registers 5
    .param p1, "key"    # Ljava/security/Key;

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    .line 51
    .local v0, "ucmKey":Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 52
    .local v1, "modulus":Ljava/math/BigInteger;
    if-eqz v1, :cond_13

    .line 53
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 55
    :cond_13
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    .line 56
    iput-boolean v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    .line 57
    iget v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    .line 58
    return-object v0
.end method

.method public isModeSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .line 35
    const-string v0, "NONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ECB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isPaddingSupported(Ljava/lang/String;)I
    .registers 5
    .param p1, "padding"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_26

    :cond_9
    goto :goto_1e

    :sswitch_a
    const-string v0, "NOPADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1f

    :sswitch_14
    const-string v0, "PKCS1PADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_1f

    :goto_1e
    move v0, v2

    :goto_1f
    packed-switch v0, :pswitch_data_30

    .line 45
    return v2

    .line 43
    :pswitch_23
    return v1

    .line 41
    :pswitch_24
    const/4 v0, 0x2

    return v0

    :sswitch_data_26
    .sparse-switch
        -0x1b3dfcb5 -> :sswitch_14
        0x36127310 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method

.method public update([BII)V
    .registers 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 62
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_c

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    .line 66
    :cond_c
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    .line 68
    return-void
.end method
