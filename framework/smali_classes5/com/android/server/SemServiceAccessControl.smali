.class public Lcom/android/server/SemServiceAccessControl;
.super Ljava/lang/Object;
.source "SemServiceAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemServiceAccessControl$AllowList;,
        Lcom/android/server/SemServiceAccessControl$PackageList;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SECURE_CONTAINNER_UID_PREFIX:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "SEC_ESE_ServiceAccessControl"


# instance fields
.field private RET_ERR_NOT_SUPPORTED:I

.field private isDAFileExist:Z

.field private mContext:Landroid/content/Context;

.field private mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private teeListData:Ljava/lang/String;

.field private teeSigData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    sput-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, -0x94

    iput v0, p0, Lcom/android/server/SemServiceAccessControl;->RET_ERR_NOT_SUPPORTED:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->teeSigData:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->teeListData:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "SEC_ESE_ServiceAccessControl"

    const-string v1, "SemServiceAccessControl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private allowListDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p1, "CIPHER_KEY"    # Ljava/lang/String;
    .param p2, "CIPHER_AL"    # Ljava/lang/String;
    .param p3, "MAC_AL"    # Ljava/lang/String;

    .line 561
    move-object/from16 v1, p3

    const-string v0, "AndroidKeyStore"

    const-string v2, "SEC_ESE_ServiceAccessControl"

    const/4 v3, 0x0

    :try_start_7
    const-string v4, "Start S-AL"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_188
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_c} :catch_16e

    .line 563
    const/16 v4, 0x10

    .line 564
    .local v4, "IVSize":I
    const/16 v5, 0x20

    .line 565
    .local v5, "aesKeySize":I
    const/16 v6, 0x10

    .line 567
    .local v6, "macKeySize":I
    move-object v7, v0

    .line 568
    .local v7, "ANDROID_KEY_STORE":Ljava/lang/String;
    const-string v8, "SEMALKEY"

    move-object v9, v8

    .line 570
    .local v9, "ALIAS_RSA":Ljava/lang/String;
    const/4 v10, 0x0

    .line 571
    .local v10, "alData":Ljava/lang/String;
    const/4 v11, 0x0

    .line 573
    .local v11, "privateKey":Ljava/security/PrivateKey;
    if-eqz p1, :cond_15d

    if-eqz p2, :cond_15d

    if-nez v1, :cond_26

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v4, p0

    goto/16 :goto_163

    .line 579
    :cond_26
    :try_start_26
    const-string v12, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 580
    .local v12, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    .line 582
    .local v13, "byteEncrypted":[B
    if-eqz v13, :cond_13e

    array-length v15, v13
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_38} :catch_188
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_38} :catch_16e

    const/16 v14, 0x40

    if-ge v15, v14, :cond_44

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v4, p0

    goto/16 :goto_144

    .line 588
    :cond_44
    :try_start_44
    const-string v15, "GK"

    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 590
    .local v0, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 592
    invoke-virtual {v0, v8, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v8

    .line 593
    .local v8, "entry":Ljava/security/KeyStore$Entry;
    instance-of v15, v8, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v15, :cond_60

    .line 594
    move-object v15, v8

    check-cast v15, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v15}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v15
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5f} :catch_79
    .catch Ljava/lang/Error; {:try_start_44 .. :try_end_5f} :catch_61

    move-object v11, v15

    .line 600
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v8    # "entry":Ljava/security/KeyStore$Entry;
    :cond_60
    goto :goto_91

    .line 598
    :catch_61
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Error;
    :try_start_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GS Er "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 596
    .end local v0    # "e":Ljava/lang/Error;
    :catch_79
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GS Ex "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    nop

    .line 602
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_91
    const/4 v8, 0x2

    invoke-virtual {v12, v8, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 603
    invoke-virtual {v12, v13}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 604
    .local v0, "keyByte":[B
    if-eqz v0, :cond_12f

    array-length v8, v0

    if-ge v8, v14, :cond_a8

    move-object/from16 v17, v0

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v4, p0

    goto/16 :goto_137

    .line 609
    :cond_a8
    const/16 v8, 0x10

    new-array v14, v8, [B

    .line 610
    .local v14, "IVByte":[B
    const/16 v15, 0x20

    new-array v3, v15, [B

    .line 611
    .local v3, "aesKeyByte":[B
    new-array v15, v8, [B

    .line 613
    .local v15, "macKeyByte":[B
    move/from16 v18, v4

    .end local v4    # "IVSize":I
    .local v18, "IVSize":I
    const/4 v4, 0x0

    invoke-static {v0, v4, v14, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    move/from16 v19, v5

    const/16 v5, 0x20

    .end local v5    # "aesKeySize":I
    .local v19, "aesKeySize":I
    invoke-static {v0, v8, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    const/16 v5, 0x30

    invoke-static {v0, v5, v15, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    .line 619
    .local v4, "encALBytes":[B
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 620
    .local v5, "cipherAES":Ljavax/crypto/Cipher;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v17, v0

    .end local v0    # "keyByte":[B
    .local v17, "keyByte":[B
    const-string v0, "AES"

    invoke-direct {v8, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v8

    .line 621
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 622
    .local v8, "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v20, v3

    const/4 v3, 0x2

    .end local v3    # "aesKeyByte":[B
    .local v20, "aesKeyByte":[B
    invoke-virtual {v5, v3, v0, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 624
    if-nez v4, :cond_f1

    .line 625
    const-string v3, "eAB Size Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v2, 0x0

    return-object v2

    .line 628
    :cond_f1
    invoke-virtual {v5, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 630
    .local v3, "alByte":[B
    if-eqz v3, :cond_122

    .line 631
    move-object/from16 v16, v0

    .end local v0    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .local v16, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v0, Ljava/lang/String;

    move-object/from16 v21, v4

    .end local v4    # "encALBytes":[B
    .local v21, "encALBytes":[B
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 638
    .end local v10    # "alData":Ljava/lang/String;
    .local v0, "alData":Ljava/lang/String;
    const-string v4, "Start verify"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_107} :catch_188
    .catch Ljava/lang/Error; {:try_start_62 .. :try_end_107} :catch_16e

    .line 639
    move-object/from16 v4, p0

    :try_start_109
    invoke-direct {v4, v15, v0}, Lcom/android/server/SemServiceAccessControl;->verifyHmac([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 640
    .local v10, "macData":Ljava/lang/String;
    if-eqz v10, :cond_1a1

    .line 641
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11b

    .line 642
    const-string v1, "MS"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-object v0

    .line 645
    :cond_11b
    const-string v1, "MF"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a1

    .line 633
    .end local v16    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v21    # "encALBytes":[B
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4    # "encALBytes":[B
    .local v10, "alData":Ljava/lang/String;
    :cond_122
    move-object/from16 v16, v0

    move-object/from16 v21, v4

    move-object/from16 v4, p0

    .end local v0    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "encALBytes":[B
    .restart local v16    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v21    # "encALBytes":[B
    const-string v0, "LD Data Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v1, 0x0

    return-object v1

    .line 604
    .end local v3    # "alByte":[B
    .end local v8    # "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v14    # "IVByte":[B
    .end local v15    # "macKeyByte":[B
    .end local v16    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v17    # "keyByte":[B
    .end local v18    # "IVSize":I
    .end local v19    # "aesKeySize":I
    .end local v20    # "aesKeyByte":[B
    .end local v21    # "encALBytes":[B
    .local v0, "keyByte":[B
    .local v4, "IVSize":I
    .local v5, "aesKeySize":I
    :cond_12f
    move-object/from16 v17, v0

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v4, p0

    .line 605
    .end local v0    # "keyByte":[B
    .end local v4    # "IVSize":I
    .end local v5    # "aesKeySize":I
    .restart local v17    # "keyByte":[B
    .restart local v18    # "IVSize":I
    .restart local v19    # "aesKeySize":I
    :goto_137
    const-string v0, "KB Size Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v1, 0x0

    return-object v1

    .line 582
    .end local v17    # "keyByte":[B
    .end local v18    # "IVSize":I
    .end local v19    # "aesKeySize":I
    .restart local v4    # "IVSize":I
    .restart local v5    # "aesKeySize":I
    :cond_13e
    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v4, p0

    .line 583
    .end local v4    # "IVSize":I
    .end local v5    # "aesKeySize":I
    .restart local v18    # "IVSize":I
    .restart local v19    # "aesKeySize":I
    :goto_144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TS Data Error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    return-object v1

    .line 573
    .end local v12    # "cipher":Ljavax/crypto/Cipher;
    .end local v13    # "byteEncrypted":[B
    .end local v18    # "IVSize":I
    .end local v19    # "aesKeySize":I
    .restart local v4    # "IVSize":I
    .restart local v5    # "aesKeySize":I
    :cond_15d
    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v4, p0

    .line 574
    .end local v4    # "IVSize":I
    .end local v5    # "aesKeySize":I
    .restart local v18    # "IVSize":I
    .restart local v19    # "aesKeySize":I
    :goto_163
    const-string v0, "TS KData Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_168} :catch_16c
    .catch Ljava/lang/Error; {:try_start_109 .. :try_end_168} :catch_16a

    .line 575
    const/4 v1, 0x0

    return-object v1

    .line 650
    .end local v6    # "macKeySize":I
    .end local v7    # "ANDROID_KEY_STORE":Ljava/lang/String;
    .end local v9    # "ALIAS_RSA":Ljava/lang/String;
    .end local v10    # "alData":Ljava/lang/String;
    .end local v11    # "privateKey":Ljava/security/PrivateKey;
    .end local v18    # "IVSize":I
    .end local v19    # "aesKeySize":I
    :catch_16a
    move-exception v0

    goto :goto_171

    .line 648
    :catch_16c
    move-exception v0

    goto :goto_18b

    .line 650
    :catch_16e
    move-exception v0

    move-object/from16 v4, p0

    .line 651
    .local v0, "e":Ljava/lang/Error;
    :goto_171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D-err "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    .line 648
    .end local v0    # "e":Ljava/lang/Error;
    :catch_188
    move-exception v0

    move-object/from16 v4, p0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    :goto_18b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D-e "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1a1
    :goto_1a1
    nop

    .line 653
    :goto_1a2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessNameViaCmdLine(I)Ljava/lang/String;
    .registers 11
    .param p1, "pid"    # I

    .line 519
    const-string v0, ""

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v1, "cmdline":Ljava/io/File;
    :try_start_20
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_6b

    .line 522
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_61

    .line 523
    .local v3, "cmdLineStr":Ljava/lang/String;
    if-nez v3, :cond_37

    .line 524
    nop

    .line 538
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_6b

    .line 524
    return-object v0

    .line 527
    :cond_37
    :try_start_37
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 528
    .local v4, "cmdLineBytes":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 530
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    array-length v7, v4

    if-ge v6, v7, :cond_52

    .line 531
    aget-byte v7, v4, v6

    if-eqz v7, :cond_4f

    .line 532
    aget-byte v7, v4, v6

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 536
    .end local v6    # "i":I
    :cond_52
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 537
    .local v6, "cmdLineBytesWithoutBom":[B
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_61

    .line 538
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_6b

    .line 537
    return-object v7

    .line 521
    .end local v3    # "cmdLineStr":Ljava/lang/String;
    .end local v4    # "cmdLineBytes":[B
    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "cmdLineBytesWithoutBom":[B
    :catchall_61
    move-exception v3

    :try_start_62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v4

    :try_start_67
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "cmdline":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/SemServiceAccessControl;
    .end local p1    # "pid":I
    :goto_6a
    throw v3
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_6b

    .line 538
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "cmdline":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/SemServiceAccessControl;
    .restart local p1    # "pid":I
    :catch_6b
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SEC_ESE_ServiceAccessControl"

    const-string v4, "Error occurs on read process name via cmdline."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    return-object v0
.end method

.method private hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z
    .registers 9
    .param p1, "allowList"    # Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 390
    invoke-virtual {p0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 392
    .local v1, "uid":I
    const v2, 0x186a0

    rem-int v3, v1, v2

    invoke-virtual {p1, v0, v3}, Lcom/android/server/SemServiceAccessControl$AllowList;->match(Ljava/lang/String;I)Z

    move-result v3

    .line 394
    .local v3, "ret":Z
    const-string v4, "]"

    const-string v5, "SEC_ESE_ServiceAccessControl"

    if-eqz v3, :cond_4f

    .line 395
    const-string v6, "Requested package name = ["

    if-lt v1, v2, :cond_36

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], called from secure container"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 398
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 401
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission denied. Package name = ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "], UID = ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_73
    return v3
.end method

.method private setCosPatchAllowedPacakges()V
    .registers 3

    .line 184
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 185
    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc.firmware"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 190
    sget-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v0, :cond_5d

    .line 192
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jcoppatch.spinative"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.ese.osupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.ese.cosupdateinterface"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmstresstestsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.gtoscriptrunner"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.security.ese.proxy"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 205
    :cond_5d
    return-void
.end method

.method private setDAScpkmList()V
    .registers 25

    .line 681
    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_ServiceAccessControl"

    const-string v3, ""

    .line 683
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x1

    .line 684
    .local v4, "SERVICE_NAME":I
    const/4 v5, 0x2

    .line 685
    .local v5, "OS_VERSION":I
    const/4 v6, 0x3

    .line 689
    .local v6, "DATE":I
    const-string v7, ""

    .line 691
    .local v7, "daFileName":Ljava/lang/String;
    :try_start_b
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 693
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "com.skms.android.agent"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 694
    .local v8, "agentInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 695
    .local v10, "getFilePath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/files/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2d} :catch_155
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_2d} :catch_139

    move-object v3, v11

    .line 697
    :try_start_2e
    const-string v11, "SET S-DA"

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v11, "folder":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_11e

    .line 702
    const-string v12, "Start get FL list"

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 705
    .local v12, "listOfFiles":[Ljava/io/File;
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 706
    .local v13, "platformVersionNo":Ljava/lang/String;
    const/4 v14, 0x0

    .line 708
    .local v14, "fileVersion":I
    array-length v15, v12

    :goto_4b
    if-ge v9, v15, :cond_115

    aget-object v17, v12, v9

    .line 709
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v18

    if-eqz v18, :cond_ff

    .line 710
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_59} :catch_131
    .catch Ljava/lang/Error; {:try_start_2e .. :try_end_59} :catch_129

    move-object/from16 v19, v18

    .line 711
    .local v19, "fileName":Ljava/lang/String;
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "fileName":Ljava/lang/String;
    .local v0, "fileName":Ljava/lang/String;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_f6

    move-object/from16 v19, v3

    .end local v3    # "filePath":Ljava/lang/String;
    .local v19, "filePath":Ljava/lang/String;
    :try_start_63
    const-string v3, "SEMAL_SCPKM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 713
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_ed
    .catch Ljava/lang/Error; {:try_start_63 .. :try_end_71} :catch_e5

    .line 714
    .local v3, "tempFileName":[Ljava/lang/String;
    move/from16 v20, v4

    const/16 v16, 0x0

    .end local v4    # "SERVICE_NAME":I
    .local v20, "SERVICE_NAME":I
    :try_start_75
    aget-object v4, v3, v16

    move-object/from16 v21, v3

    .end local v3    # "tempFileName":[Ljava/lang/String;
    .local v21, "tempFileName":[Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, "fileNameList":[Ljava/lang/String;
    array-length v4, v3
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_80} :catch_d7
    .catch Ljava/lang/Error; {:try_start_75 .. :try_end_80} :catch_d0

    move/from16 v22, v5

    .end local v5    # "OS_VERSION":I
    .local v22, "OS_VERSION":I
    const/4 v5, 0x3

    if-lt v4, v5, :cond_b8

    .line 717
    const/4 v4, 0x2

    :try_start_86
    aget-object v23, v3, v4

    if-eqz v23, :cond_a7

    aget-object v4, v3, v4

    .line 718
    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 719
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v14, v4, :cond_109

    .line 720
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 722
    .end local v14    # "fileVersion":I
    .local v4, "fileVersion":I
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    .line 723
    move-object v7, v0

    move v14, v4

    goto/16 :goto_109

    .line 726
    .end local v4    # "fileVersion":I
    .restart local v14    # "fileVersion":I
    :cond_a7
    const-string v4, "OSV NM"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_109

    .line 737
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v3    # "fileNameList":[Ljava/lang/String;
    .end local v8    # "agentInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "getFilePath":Ljava/lang/String;
    .end local v11    # "folder":Ljava/io/File;
    .end local v12    # "listOfFiles":[Ljava/io/File;
    .end local v13    # "platformVersionNo":Ljava/lang/String;
    .end local v14    # "fileVersion":I
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "tempFileName":[Ljava/lang/String;
    :catch_ae
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_13e

    .line 735
    :catch_b3
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_15a

    .line 729
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v3    # "fileNameList":[Ljava/lang/String;
    .restart local v8    # "agentInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "getFilePath":Ljava/lang/String;
    .restart local v11    # "folder":Ljava/io/File;
    .restart local v12    # "listOfFiles":[Ljava/io/File;
    .restart local v13    # "platformVersionNo":Ljava/lang/String;
    .restart local v14    # "fileVersion":I
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v21    # "tempFileName":[Ljava/lang/String;
    :cond_b8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FN Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_cf} :catch_b3
    .catch Ljava/lang/Error; {:try_start_86 .. :try_end_cf} :catch_ae

    goto :goto_109

    .line 737
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v3    # "fileNameList":[Ljava/lang/String;
    .end local v8    # "agentInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "getFilePath":Ljava/lang/String;
    .end local v11    # "folder":Ljava/io/File;
    .end local v12    # "listOfFiles":[Ljava/io/File;
    .end local v13    # "platformVersionNo":Ljava/lang/String;
    .end local v14    # "fileVersion":I
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "tempFileName":[Ljava/lang/String;
    .end local v22    # "OS_VERSION":I
    .restart local v5    # "OS_VERSION":I
    :catch_d0
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v3, v19

    .end local v5    # "OS_VERSION":I
    .restart local v22    # "OS_VERSION":I
    goto/16 :goto_13e

    .line 735
    .end local v22    # "OS_VERSION":I
    .restart local v5    # "OS_VERSION":I
    :catch_d7
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v3, v19

    .end local v5    # "OS_VERSION":I
    .restart local v22    # "OS_VERSION":I
    goto/16 :goto_15a

    .line 711
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v0    # "fileName":Ljava/lang/String;
    .local v4, "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    .restart local v8    # "agentInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "getFilePath":Ljava/lang/String;
    .restart local v11    # "folder":Ljava/io/File;
    .restart local v12    # "listOfFiles":[Ljava/io/File;
    .restart local v13    # "platformVersionNo":Ljava/lang/String;
    .restart local v14    # "fileVersion":I
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_de
    move/from16 v20, v4

    move/from16 v22, v5

    const/16 v16, 0x0

    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    goto :goto_109

    .line 737
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v8    # "agentInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "getFilePath":Ljava/lang/String;
    .end local v11    # "folder":Ljava/io/File;
    .end local v12    # "listOfFiles":[Ljava/io/File;
    .end local v13    # "platformVersionNo":Ljava/lang/String;
    .end local v14    # "fileVersion":I
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :catch_e5
    move-exception v0

    move/from16 v20, v4

    move/from16 v22, v5

    move-object/from16 v3, v19

    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    goto :goto_13e

    .line 735
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :catch_ed
    move-exception v0

    move/from16 v20, v4

    move/from16 v22, v5

    move-object/from16 v3, v19

    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    goto/16 :goto_15a

    .line 711
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v0    # "fileName":Ljava/lang/String;
    .local v3, "filePath":Ljava/lang/String;
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    .restart local v8    # "agentInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "getFilePath":Ljava/lang/String;
    .restart local v11    # "folder":Ljava/io/File;
    .restart local v12    # "listOfFiles":[Ljava/io/File;
    .restart local v13    # "platformVersionNo":Ljava/lang/String;
    .restart local v14    # "fileVersion":I
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_f6
    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v22, v5

    const/16 v16, 0x0

    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    goto :goto_109

    .line 709
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .local v0, "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :cond_ff
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v22, v5

    const/16 v16, 0x0

    .line 708
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .end local v17    # "file":Ljava/io/File;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    :cond_109
    :goto_109
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v22

    goto/16 :goto_4b

    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :cond_115
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    goto :goto_126

    .line 701
    .end local v12    # "listOfFiles":[Ljava/io/File;
    .end local v13    # "platformVersionNo":Ljava/lang/String;
    .end local v14    # "fileVersion":I
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :cond_11e
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v22, v5

    .line 739
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .end local v8    # "agentInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "getFilePath":Ljava/lang/String;
    .end local v11    # "folder":Ljava/io/File;
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    :goto_126
    move-object/from16 v3, v19

    goto :goto_171

    .line 737
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :catch_129
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    goto :goto_13e

    .line 735
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :catch_131
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    goto :goto_15a

    .line 737
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :catch_139
    move-exception v0

    move/from16 v20, v4

    move/from16 v22, v5

    .line 738
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .local v0, "e":Ljava/lang/Error;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    :goto_13e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Path Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_171

    .line 735
    .end local v0    # "e":Ljava/lang/Error;
    .end local v20    # "SERVICE_NAME":I
    .end local v22    # "OS_VERSION":I
    .restart local v4    # "SERVICE_NAME":I
    .restart local v5    # "OS_VERSION":I
    :catch_155
    move-exception v0

    move/from16 v20, v4

    move/from16 v22, v5

    .line 736
    .end local v4    # "SERVICE_NAME":I
    .end local v5    # "OS_VERSION":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "SERVICE_NAME":I
    .restart local v22    # "OS_VERSION":I
    :goto_15a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Path Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 741
    :goto_171
    iget-boolean v0, v1, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    if-eqz v0, :cond_2b0

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFileExist : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v4, 0x0

    .line 745
    .local v4, "daAllowList":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 746
    .local v5, "daData":Ljava/lang/String;
    const/4 v8, 0x0

    .line 749
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v0, "jsonALData":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v9

    .line 751
    :goto_1b2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "str":Ljava/lang/String;
    if-eqz v9, :cond_1bd

    .line 752
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b2

    .line 754
    :cond_1bd
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 755
    const/4 v8, 0x0

    .line 757
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 759
    .local v9, "respArryJson":Lorg/json/JSONObject;
    const-string v11, "CIPHER_KEY"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 760
    .local v11, "CIPHER_KEY":Ljava/lang/String;
    const-string v12, "CIPHER_AL"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 761
    .local v12, "CIPHER_AL":Ljava/lang/String;
    const-string v13, "MAC_AL"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 763
    .local v13, "MAC_AL":Ljava/lang/String;
    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/SemServiceAccessControl;->allowListDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1e0} :catch_1fa
    .catch Ljava/lang/Error; {:try_start_191 .. :try_end_1e0} :catch_1e2

    move-object v5, v14

    .end local v0    # "jsonALData":Ljava/lang/StringBuilder;
    .end local v9    # "respArryJson":Lorg/json/JSONObject;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "CIPHER_KEY":Ljava/lang/String;
    .end local v12    # "CIPHER_AL":Ljava/lang/String;
    .end local v13    # "MAC_AL":Ljava/lang/String;
    goto :goto_211

    .line 766
    :catch_1e2
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Error;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get DA List Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_212

    .line 764
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1fa
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get DA List Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_211
    nop

    .line 770
    :goto_212
    if-eqz v8, :cond_21f

    .line 772
    :try_start_214
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_217} :catch_218

    .line 776
    goto :goto_21e

    .line 774
    :catch_218
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 775
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 777
    .end local v0    # "e":Ljava/io/IOException;
    :goto_21e
    const/4 v8, 0x0

    .line 781
    :cond_21f
    if-eqz v5, :cond_2ae

    .line 782
    :try_start_221
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v9, "allowedList"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 785
    .local v9, "mDListData":Lorg/json/JSONObject;
    const-string/jumbo v10, "package"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONArray;

    .line 787
    .local v10, "pkgListData":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_238
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_268

    .line 788
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 790
    .local v12, "tempOjbectJson":Lorg/json/JSONObject;
    const-string/jumbo v13, "name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 791
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v14, "uid"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 793
    .local v14, "packageUid":Ljava/lang/String;
    if-eqz v14, :cond_260

    const-string v15, "None"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_260

    .line 794
    iget-object v15, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v15, v13}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    goto :goto_265

    .line 796
    :cond_260
    iget-object v15, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v15, v13, v14}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v12    # "tempOjbectJson":Lorg/json/JSONObject;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "packageUid":Ljava/lang/String;
    :goto_265
    add-int/lit8 v11, v11, 0x1

    goto :goto_238

    .line 799
    .end local v11    # "i":I
    :cond_268
    const-string/jumbo v11, "teeAllowListSignature"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v1, Lcom/android/server/SemServiceAccessControl;->teeSigData:Ljava/lang/String;

    .line 800
    const-string/jumbo v11, "teeAllowList"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v1, Lcom/android/server/SemServiceAccessControl;->teeListData:Ljava/lang/String;
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_27e} :catch_297
    .catch Ljava/lang/Error; {:try_start_221 .. :try_end_27e} :catch_27f

    goto :goto_2ae

    .line 804
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v9    # "mDListData":Lorg/json/JSONObject;
    .end local v10    # "pkgListData":Lorg/json/JSONArray;
    :catch_27f
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Error;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEMAL Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2af

    .line 802
    .end local v0    # "e":Ljava/lang/Error;
    :catch_297
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEMAL Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2ae
    :goto_2ae
    nop

    .line 807
    .end local v4    # "daAllowList":[Ljava/lang/String;
    .end local v5    # "daData":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_2af
    goto :goto_2f6

    .line 808
    :cond_2b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not FileExist : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v2, "com.samsung.android.authfw"

    const-string v4, "SPASS_UID"

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v2, "com.samsung.android.digitalkey"

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 812
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v2, "com.samsung.android.carkey"

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 813
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v2, "com.samsung.android.spay"

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 814
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v2, "com.samsung.android.spayfw"

    const-string v4, "SPAY_UID"

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v2, "com.samsung.ucs.agent.ese"

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 817
    :goto_2f6
    return-void
.end method

.method private setFactoryAllowedPackages()V
    .registers 3

    .line 167
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 168
    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private setFactoryResetAllowedPackages()V
    .registers 3

    .line 209
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 212
    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private setHWParamAllowedPackages()V
    .registers 3

    .line 176
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 177
    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private setLccmAllowedPackages()V
    .registers 3

    .line 149
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 151
    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private setSKMSCardAllowedPackages()V
    .registers 3

    .line 157
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 160
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private setScpKmAllowedPackages()V
    .registers 4

    .line 137
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 139
    sget-boolean v1, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v1, :cond_19

    .line 140
    const-string v1, "com.sec.security.scpKmTest"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.tzv"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 145
    :cond_19
    return-void
.end method

.method private verifyHmac([BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "macKey"    # [B
    .param p2, "inputData"    # Ljava/lang/String;

    .line 658
    const-string v0, "HmacSHA256"

    const/4 v1, 0x0

    const-string v2, "SEC_ESE_ServiceAccessControl"

    if-eqz p1, :cond_27

    if-nez p2, :cond_a

    goto :goto_27

    .line 662
    :cond_a
    :try_start_a
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 663
    .local v3, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 664
    .local v0, "hasher":Ljavax/crypto/Mac;
    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 665
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 666
    .local v4, "hash":[B
    if-nez v4, :cond_21

    .line 667
    return-object v1

    .line 669
    :cond_21
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "ret":Ljava/lang/String;
    return-object v1

    .line 659
    .end local v0    # "hasher":Ljavax/crypto/Mac;
    .end local v1    # "ret":Ljava/lang/String;
    .end local v3    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "hash":[B
    :cond_27
    :goto_27
    const-string v0, "VM Data Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_45
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_2c} :catch_2d

    .line 660
    return-object v1

    .line 674
    :catch_2d
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Error;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM Er "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 672
    .end local v0    # "e":Ljava/lang/Error;
    :catch_45
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM Ex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 677
    :goto_5d
    return-object v1
.end method


# virtual methods
.method public native ICCCcheckDeviceStatus()I
.end method

.method public SEAPIAccessPermission()Z
    .registers 18

    .line 408
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    const/4 v0, 0x0

    .line 410
    .local v0, "checkUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 411
    .local v4, "userId":I
    iget-object v5, v1, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const v6, 0x186a0

    rem-int v7, v3, v6

    invoke-virtual {v5, v2, v7}, Lcom/android/server/SemServiceAccessControl$AllowList;->match(Ljava/lang/String;I)Z

    move-result v5

    .line 413
    .local v5, "ret":Z
    const-string v7, "], userId = ["

    const-string v8, "]"

    const-string v9, "SEC_ESE_ServiceAccessControl"

    if-eqz v5, :cond_162

    .line 414
    const-string v10, "Requested package name = ["

    if-lt v3, v6, :cond_41

    .line 415
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], called from secure container"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 417
    :cond_41
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_59
    rem-int v6, v3, v6

    .line 421
    .end local v0    # "checkUid":I
    .local v6, "checkUid":I
    const/16 v0, 0x3e8

    if-eq v6, v0, :cond_14a

    const/16 v0, 0x7d0

    if-eq v6, v0, :cond_14a

    if-eqz v6, :cond_14a

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " does not use permitted uid, validate certificate, UID = ["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v7, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    .line 426
    .local v7, "userPlatformCert":Ljava/lang/String;
    const-string v8, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    .line 428
    .local v8, "nfcCert":Ljava/lang/String;
    const/4 v10, 0x0

    .line 429
    .local v10, "info":Landroid/content/pm/PackageInfo;
    const/4 v11, 0x0

    .line 430
    .local v11, "tmpSign":[Landroid/content/pm/Signature;
    const/4 v12, 0x0

    .line 433
    .local v12, "currentCert":Landroid/content/pm/Signature;
    const/4 v13, 0x0

    :try_start_93
    iget-object v0, v1, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v14, 0x8000000

    invoke-virtual {v0, v2, v14, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v10, v0

    .line 435
    if-eqz v10, :cond_139

    .line 436
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    move-object v11, v0

    .line 437
    const-string v0, "Get signing cert success"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ae} :catch_140

    .line 447
    nop

    .line 450
    :try_start_af
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_132

    .line 454
    .end local v11    # "tmpSign":[Landroid/content/pm/Signature;
    .local v0, "tmpSign":[Landroid/content/pm/Signature;
    nop

    .line 456
    array-length v11, v0

    :goto_b7
    if-ge v13, v11, :cond_dd

    aget-object v14, v0, v13

    .line 457
    .local v14, "signature":Landroid/content/pm/Signature;
    move-object v12, v14

    .line 458
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "tmpSign":[Landroid/content/pm/Signature;
    .local v16, "tmpSign":[Landroid/content/pm/Signature;
    const-string v0, "getApkContentsSigners = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v14    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_b7

    .line 461
    .end local v16    # "tmpSign":[Landroid/content/pm/Signature;
    .restart local v0    # "tmpSign":[Landroid/content/pm/Signature;
    :cond_dd
    move-object/from16 v16, v0

    .end local v0    # "tmpSign":[Landroid/content/pm/Signature;
    .restart local v16    # "tmpSign":[Landroid/content/pm/Signature;
    const-string/jumbo v0, "ro.product_ship"

    const-string v11, "false"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 462
    const-string/jumbo v0, "ro.system.build.tags"

    const-string/jumbo v11, "test-keys"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "release-keys"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 463
    if-nez v12, :cond_10d

    .line 464
    const-string v0, "failed to get signature"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    .end local v5    # "ret":Z
    .local v0, "ret":Z
    goto :goto_131

    .line 466
    .end local v0    # "ret":Z
    .restart local v5    # "ret":Z
    :cond_10d
    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_129

    .line 467
    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    goto :goto_129

    .line 470
    :cond_122
    const-string v0, "Permission denied. Unauthorized Signature."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v0, 0x0

    .end local v5    # "ret":Z
    .restart local v0    # "ret":Z
    goto :goto_131

    .line 468
    .end local v0    # "ret":Z
    .restart local v5    # "ret":Z
    :cond_129
    :goto_129
    const/4 v0, 0x1

    .end local v5    # "ret":Z
    .restart local v0    # "ret":Z
    goto :goto_131

    .line 474
    .end local v0    # "ret":Z
    .restart local v5    # "ret":Z
    :cond_12b
    const-string v0, "Permission check skip, only check for ship with release-keys"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x1

    .line 478
    .end local v5    # "ret":Z
    .restart local v0    # "ret":Z
    :goto_131
    return v0

    .line 451
    .end local v0    # "ret":Z
    .end local v16    # "tmpSign":[Landroid/content/pm/Signature;
    .restart local v5    # "ret":Z
    .restart local v11    # "tmpSign":[Landroid/content/pm/Signature;
    :catchall_132
    move-exception v0

    .line 452
    .local v0, "ignored":Ljava/lang/Throwable;
    const-string v14, "Failed to get signatures"

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v13

    .line 439
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :cond_139
    const/4 v11, 0x0

    .line 440
    :try_start_13a
    const-string v0, "Failed to get signing cert"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13f} :catch_140

    .line 441
    return v13

    .line 443
    :catch_140
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const-string v14, "Failed to get PKG info"

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    return v13

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "userPlatformCert":Ljava/lang/String;
    .end local v8    # "nfcCert":Ljava/lang/String;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "tmpSign":[Landroid/content/pm/Signature;
    .end local v12    # "currentCert":Landroid/content/pm/Signature;
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " uses permitted uid, skip certificate validation"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_18e

    .line 483
    .end local v6    # "checkUid":I
    .local v0, "checkUid":I
    :cond_162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission denied. Package name = ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "], UID = ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_18e
    return v5
.end method

.method public addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkglist"    # Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 310
    sget-object v0, Lcom/android/server/SemServiceAccessControl$1;->$SwitchMap$com$android$server$SemServiceAccessControl$PackageList:[I

    invoke-virtual {p3}, Lcom/android/server/SemServiceAccessControl$PackageList;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 333
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    goto :goto_3b

    .line 330
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 331
    goto :goto_3b

    .line 327
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 328
    goto :goto_3b

    .line 324
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 325
    goto :goto_3b

    .line 321
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 322
    goto :goto_3b

    .line 318
    :pswitch_29
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 319
    goto :goto_3b

    .line 315
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 316
    goto :goto_3b

    .line 312
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 313
    nop

    .line 335
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.method public checkStatus()Z
    .registers 5

    .line 546
    const-string v0, "Start checkStatus!!"

    const-string v1, "SEC_ESE_ServiceAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0}, Lcom/android/server/SemServiceAccessControl;->ICCCcheckDeviceStatus()I

    move-result v0

    .line 548
    .local v0, "ret":I
    iget v2, p0, Lcom/android/server/SemServiceAccessControl;->RET_ERR_NOT_SUPPORTED:I

    const/4 v3, 0x1

    if-ne v2, v0, :cond_16

    .line 549
    const-string v2, "Not Supported!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v3

    .line 551
    :cond_16
    if-eqz v0, :cond_1f

    .line 552
    const-string v2, "ICCCcheckDeviceStatus Fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v1, 0x0

    return v1

    .line 555
    :cond_1f
    const-string v2, "End checkStatus!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v3
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 7

    .line 491
    const-string v0, "SEC_ESE_ServiceAccessControl"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 492
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 493
    .local v2, "pid":I
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 494
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 495
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_3c

    .line 496
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_36

    .line 498
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    .line 503
    :cond_36
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v0, v3, v5

    return-object v0

    .line 506
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3c
    goto :goto_1e

    .line 509
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no getRunningAppProcesses, try to get process name via cmdline, pid = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0, v2}, Lcom/android/server/SemServiceAccessControl;->getProcessNameViaCmdLine(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_5e

    return-object v0

    .line 511
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "pid":I
    :catch_5e
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error occurs on checking package name."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getScpkmDAFileSupport()Z
    .registers 2

    .line 820
    iget-boolean v0, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    return v0
.end method

.method public getScpkmTeeListData()[B
    .registers 3

    .line 834
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->teeListData:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 835
    const-string v0, "SEC_ESE_ServiceAccessControl"

    const-string v1, "TL Data Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x0

    return-object v0

    .line 838
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 839
    .local v0, "teeList":[B
    return-object v0
.end method

.method public getScpkmTeeSigData()[B
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->teeSigData:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 825
    const-string v0, "SEC_ESE_ServiceAccessControl"

    const-string v1, "TS Data Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x0

    return-object v0

    .line 829
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 830
    .local v0, "teeSig":[B
    return-object v0
.end method

.method public hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z
    .registers 4
    .param p1, "pkglist"    # Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 366
    sget-object v0, Lcom/android/server/SemServiceAccessControl$1;->$SwitchMap$com$android$server$SemServiceAccessControl$PackageList:[I

    invoke-virtual {p1}, Lcom/android/server/SemServiceAccessControl$PackageList;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 385
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 371
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 383
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 381
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 379
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 377
    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 375
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 373
    :pswitch_3c
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    .line 368
    :pswitch_43
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setDAScpkmList()V

    .line 369
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, v0}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3c
        :pswitch_35
        :pswitch_2e
        :pswitch_27
        :pswitch_20
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method public removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkglist"    # Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 338
    sget-object v0, Lcom/android/server/SemServiceAccessControl$1;->$SwitchMap$com$android$server$SemServiceAccessControl$PackageList:[I

    invoke-virtual {p2}, Lcom/android/server/SemServiceAccessControl$PackageList;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 361
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    goto :goto_3b

    .line 358
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    .line 359
    goto :goto_3b

    .line 355
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    .line 356
    goto :goto_3b

    .line 352
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    .line 353
    goto :goto_3b

    .line 349
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    .line 350
    goto :goto_3b

    .line 346
    :pswitch_29
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    .line 347
    goto :goto_3b

    .line 343
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    .line 344
    goto :goto_3b

    .line 340
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {v0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    .line 341
    nop

    .line 363
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.method public setAllowedPackages()V
    .registers 5

    .line 218
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 221
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setScpKmAllowedPackages()V

    .line 223
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setLccmAllowedPackages()V

    .line 225
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setSKMSCardAllowedPackages()V

    .line 227
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setFactoryAllowedPackages()V

    .line 229
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setCosPatchAllowedPacakges()V

    .line 231
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setHWParamAllowedPackages()V

    .line 233
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setFactoryResetAllowedPackages()V

    .line 235
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string/jumbo v1, "system"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.factory"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 237
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 238
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.facatfunction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 239
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.facuifunction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.android.app.felicatest"

    const/16 v3, 0x403

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.nfc.felicalocktest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc.firmware"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 252
    sget-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v0, :cond_144

    .line 254
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.security.ese.proxy"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.android.applettest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.security.ese.unitteset"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.ese.test"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 259
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.ese.service.test"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 262
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc.lpaClient"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 265
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.sem.stresstest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 266
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.mobile_stresstest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.wear_stresstest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_N_SPI"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 269
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_Extended"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 270
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_Extended_TA"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 271
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_N_ECHO"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 272
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_N_VCM"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 273
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_appletcheck"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 276
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jrcpspisn110"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jrcpspi8052"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jcoppatch.spinative"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.ese.osupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.semstest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.sems.channel"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.esetest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.ese.cosupdateinterface"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmstresstestsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.gtoscriptrunner"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handset.esetool"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.tzv"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 295
    :cond_144
    return-void
.end method

.method public setGrdmAllowedPackages()V
    .registers 4

    .line 298
    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    .line 300
    const-string/jumbo v1, "system"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 301
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 303
    sget-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 305
    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.security.grdmTest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    .line 307
    :cond_21
    return-void
.end method
