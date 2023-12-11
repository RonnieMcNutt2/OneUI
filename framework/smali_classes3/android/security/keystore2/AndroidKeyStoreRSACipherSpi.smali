.class abstract Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private final mKeymasterPadding:I

.field private mKeymasterPaddingOverride:I

.field private mModulusSizeBytes:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "keymasterPadding"    # I

    .line 393
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 394
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 395
    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v0, 0x10000002

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    move-result v0

    .line 510
    .local v0, "keymasterPadding":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 511
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 513
    :cond_14
    const v2, 0x20000006

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getKeymasterPurposeOverride()I

    move-result v2

    .line 517
    .local v2, "purposeOverride":I
    if-eq v2, v1, :cond_35

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2a

    const/4 v1, 0x3

    if-ne v2, v1, :cond_35

    .line 522
    :cond_2a
    const v1, 0x20000005

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_35
    return-void
.end method

.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .registers 2

    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetBlockSize()I
    .registers 2

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .registers 2

    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 547
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    move-result v0

    return v0
.end method

.method protected final getKeymasterPaddingOverride()I
    .registers 2

    .line 565
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final getModulusSizeBytes()I
    .registers 3

    .line 551
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 554
    return v0

    .line 552
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTransform()Ljava/lang/String;
    .registers 3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSA/ECB/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .registers 12
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 404
    if-eqz p2, :cond_16d

    .line 407
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 412
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_16

    .line 413
    move-object v0, p2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    .local v0, "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    goto :goto_1d

    .line 414
    .end local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    :cond_16
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_127

    .line 415
    move-object v0, p2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 420
    .restart local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    :goto_1d
    instance-of v1, v0, Ljava/security/PrivateKey;

    const-string v2, " and padding "

    if-eqz v1, :cond_7a

    .line 422
    packed-switch p1, :pswitch_data_176

    .line 438
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :pswitch_3f
    goto/16 :goto_ca

    .line 429
    :pswitch_41
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    move-result v1

    if-eqz v1, :cond_49

    goto/16 :goto_ca

    .line 430
    :cond_49
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSA private keys cannot be used with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 431
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 433
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only RSA public keys supported for this mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_7a
    const-string v1, "RSA public keys cannot be used with "

    packed-switch p1, :pswitch_data_182

    .line 457
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 458
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :pswitch_9a
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 453
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only RSA private keys supported for this opmode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :pswitch_c9
    nop

    .line 462
    :goto_ca
    const-wide/16 v1, -0x1

    .line 463
    .local v1, "keySizeBits":J
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_d2
    if-ge v5, v4, :cond_e6

    aget-object v6, v3, v5

    .line 464
    .local v6, "a":Landroid/system/keystore2/Authorization;
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v8, 0x30000003

    if-ne v7, v8, :cond_e3

    .line 465
    invoke-static {v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v1

    .line 463
    .end local v6    # "a":Landroid/system/keystore2/Authorization;
    :cond_e3
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 469
    :cond_e6
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_11f

    .line 471
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_100

    .line 474
    const-wide/16 v3, 0x7

    add-long/2addr v3, v1

    const-wide/16 v5, 0x8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 476
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 477
    return-void

    .line 472
    :cond_100
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    :cond_11f
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Size of key not known"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    .end local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    .end local v1    # "keySizeBits":J
    :cond_127
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_140
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_16d
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key: null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3f
        :pswitch_41
        :pswitch_3f
    .end packed-switch

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_9a
        :pswitch_c9
        :pswitch_9a
    .end packed-switch
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 2
    .param p1, "parameters"    # [Landroid/hardware/security/keymint/KeyParameter;

    .line 531
    return-void
.end method

.method protected final resetAll()V
    .registers 2

    .line 493
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 494
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 495
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 496
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .registers 1

    .line 500
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 501
    return-void
.end method

.method protected final setKeymasterPaddingOverride(I)V
    .registers 2
    .param p1, "keymasterPadding"    # I

    .line 561
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 562
    return-void
.end method
