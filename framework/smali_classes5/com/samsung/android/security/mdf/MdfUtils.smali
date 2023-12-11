.class public Lcom/samsung/android/security/mdf/MdfUtils;
.super Ljava/lang/Object;
.source "MdfUtils.java"


# static fields
.field public static final AUDIT_LOG_ALERT:I = 0x1

.field public static final AUDIT_LOG_CRITICAL:I = 0x2

.field public static final AUDIT_LOG_ERROR:I = 0x3

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final AUDIT_LOG_NOTICE:I = 0x5

.field public static final AUDIT_LOG_WARNING:I = 0x4

.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;

.field public static final KEYPROP_BLOCK_MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final KEYPROP_ENCRYPTION_PADDING_NONE:Ljava/lang/String; = "NoPadding"

.field public static final KEYPROP_KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field public static final KEYPROP_PURPOSE_DECRYPT:I = 0x2

.field public static final KEYPROP_PURPOSE_ENCRYPT:I = 0x1

.field public static final MDF_CIPHER_MODE:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final MDF_IV_LENGTH:I = 0xc

.field public static final MDF_KEY_SIZE:I = 0x20

.field public static final MDF_TAG_LENGTH:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 28
    :try_start_0
    const-string/jumbo v0, "mdf"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_6} :catch_7

    .line 31
    goto :goto_24

    .line 29
    :catch_7
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link the library. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_24
    const-string v3, "ac"

    const-string v4, "co"

    const-string v5, "com"

    const-string v6, "ed"

    const-string v7, "edu"

    const-string/jumbo v8, "go"

    const-string/jumbo v9, "gouv"

    const-string/jumbo v10, "gov"

    const-string/jumbo v11, "info"

    const-string/jumbo v12, "lg"

    const-string/jumbo v13, "ne"

    const-string/jumbo v14, "net"

    const-string/jumbo v15, "or"

    const-string/jumbo v16, "org"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/security/mdf/MdfUtils;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 200
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 5
    .param p0, "cn"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 205
    .local v0, "cnLen":I
    const/4 v1, 0x7

    const/4 v2, 0x1

    if-lt v0, v1, :cond_28

    const/16 v1, 0x9

    if-gt v0, v1, :cond_28

    .line 207
    add-int/lit8 v1, v0, -0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_28

    .line 209
    const/4 v1, 0x2

    add-int/lit8 v3, v0, -0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "s":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/security/mdf/MdfUtils;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 212
    .local v3, "x":I
    if-gez v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    return v2

    .line 215
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "x":I
    :cond_28
    return v2
.end method

.method public static buildHostnameLog(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 167
    if-nez p1, :cond_5

    .line 168
    const-string v0, "Certificate not presented"

    return-object v0

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "logBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Identifier verification failed. Presented identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, " List of reference identifiers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 175
    .local v1, "principal":Ljavax/security/auth/x500/X500Principal;
    if-nez v1, :cond_20

    const-string v2, ""

    goto :goto_24

    :cond_20
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :try_start_2c
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "index":I
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 183
    .local v4, "san":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    nop

    .end local v4    # "san":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 187
    goto :goto_3b

    .line 190
    .end local v2    # "index":I
    :cond_6f
    goto :goto_7f

    .line 179
    :cond_70
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "No SANs available"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local p0    # "host":Ljava/lang/String;
    .end local p1    # "certificate":Ljava/security/cert/X509Certificate;
    throw v2
    :try_end_78
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2c .. :try_end_78} :catch_78

    .line 188
    .restart local v0    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "principal":Ljavax/security/auth/x500/X500Principal;
    .restart local p0    # "host":Ljava/lang/String;
    .restart local p1    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_78
    move-exception v2

    .line 189
    .local v2, "e":Ljava/security/cert/CertificateParsingException;
    const-string/jumbo v3, "list of subject alternative names is not available"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v2    # "e":Ljava/security/cert/CertificateParsingException;
    :goto_7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # [B

    .line 358
    if-nez p0, :cond_b

    .line 359
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "MDFUtils::Unable to convert the byte array, input is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v0, "outputStringBuilder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2a

    aget-byte v3, p0, v2

    .line 364
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 366
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decryptMdf([BLjava/lang/String;)[B
    .registers 11
    .param p0, "value"    # [B
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 324
    array-length v0, p0

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-gt v0, v1, :cond_e

    .line 325
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "MDFUtils::MDF decryption failed, invalid encryption length"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    return-object v2

    .line 329
    :cond_e
    :try_start_e
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 330
    .local v0, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 331
    invoke-virtual {v0, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 332
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_27

    .line 333
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "MDFUtils::MDF decryption failed, unable to get encryption key from AndroidKeystore"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    return-object v2

    .line 336
    :cond_27
    array-length v3, p0

    const/16 v4, 0xc

    sub-int/2addr v3, v4

    .line 337
    .local v3, "encLength":I
    new-array v5, v4, [B

    .line 338
    .local v5, "iv":[B
    new-array v6, v3, [B

    .line 339
    .local v6, "encryption":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_30
    if-ge v7, v4, :cond_39

    .line 340
    aget-byte v8, p0, v7

    aput-byte v8, v5, v7

    .line 339
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 342
    .end local v7    # "i":I
    :cond_39
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    array-length v7, v6

    if-ge v4, v7, :cond_46

    .line 343
    add-int/lit8 v7, v4, 0xc

    aget-byte v7, p0, v7

    aput-byte v7, v6, v4

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 345
    .end local v4    # "i":I
    :cond_46
    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 346
    .local v4, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 347
    .local v7, "gcmParameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v4, v8, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 348
    invoke-virtual {v4, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5b} :catch_5c

    .line 349
    .local v2, "output":[B
    return-object v2

    .line 351
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v2    # "output":[B
    .end local v3    # "encLength":I
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "iv":[B
    .end local v6    # "encryption":[B
    .end local v7    # "gcmParameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    :catch_5c
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDFUtils::Got exception during MDF decryption"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    return-object v2
.end method

.method public static encryptMdf([BLjava/lang/String;)[B
    .registers 20
    .param p0, "value"    # [B
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 268
    move-object/from16 v1, p1

    const-string v0, "AndroidKeyStore"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 269
    .local v3, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 270
    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    .line 271
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    const/4 v5, 0x1

    if-nez v4, :cond_aa

    .line 272
    const-string v6, "android.security.keystore.KeyGenParameterSpec$Builder"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 273
    .local v6, "clsSpecBuilder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 274
    .local v8, "specBuilderConstructor":Ljava/lang/reflect/Constructor;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v10

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 275
    .local v7, "specBuilder":Ljava/lang/Object;
    const-string/jumbo v9, "setKeySize"

    new-array v11, v5, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v10

    invoke-virtual {v6, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 276
    .local v9, "setKeySizeMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v11, "setEncryptionPaddings"

    new-array v12, v5, [Ljava/lang/Class;

    const-class v13, [Ljava/lang/String;

    aput-object v13, v12, v10

    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 277
    .local v11, "setEncryptionPaddingsMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v12, "setBlockModes"

    new-array v13, v5, [Ljava/lang/Class;

    const-class v14, [Ljava/lang/String;

    aput-object v14, v13, v10

    invoke-virtual {v6, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 278
    .local v12, "setBlockModesMethod":Ljava/lang/reflect/Method;
    const-string v13, "build"

    move-object v14, v2

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v6, v13, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 280
    .local v13, "buildMethod":Ljava/lang/reflect/Method;
    new-array v14, v5, [Ljava/lang/Object;

    new-array v15, v5, [Ljava/lang/String;

    const-string v16, "GCM"

    aput-object v16, v15, v10

    aput-object v15, v14, v10

    .line 284
    invoke-virtual {v12, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    .line 287
    const/16 v16, 0x100

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v10

    .line 283
    invoke-virtual {v9, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/String;

    const-string v17, "NoPadding"

    aput-object v17, v2, v10

    aput-object v2, v15, v10

    .line 282
    invoke-virtual {v11, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v10, v10, [Ljava/lang/Object;

    .line 281
    invoke-virtual {v13, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    .line 291
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v10, "AES"

    invoke-static {v10, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 292
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 293
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v10

    move-object v4, v10

    .line 296
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "clsSpecBuilder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "specBuilder":Ljava/lang/Object;
    .end local v8    # "specBuilderConstructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "setKeySizeMethod":Ljava/lang/reflect/Method;
    .end local v11    # "setEncryptionPaddingsMethod":Ljava/lang/reflect/Method;
    .end local v12    # "setBlockModesMethod":Ljava/lang/reflect/Method;
    .end local v13    # "buildMethod":Ljava/lang/reflect/Method;
    :cond_aa
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 297
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b3} :catch_dd

    .line 298
    move-object/from16 v2, p0

    :try_start_b5
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 299
    .local v5, "encryption":[B
    array-length v6, v5

    const/16 v7, 0xc

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 300
    .local v6, "output":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c0
    if-ge v8, v7, :cond_cd

    .line 301
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    aget-byte v9, v9, v8

    aput-byte v9, v6, v8

    .line 300
    add-int/lit8 v8, v8, 0x1

    goto :goto_c0

    .line 303
    .end local v8    # "i":I
    :cond_cd
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_ce
    array-length v8, v5

    if-ge v7, v8, :cond_da

    .line 304
    add-int/lit8 v8, v7, 0xc

    aget-byte v9, v5, v7

    aput-byte v9, v6, v8
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d7} :catch_db

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto :goto_ce

    .line 306
    .end local v7    # "i":I
    :cond_da
    return-object v6

    .line 307
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "encryption":[B
    .end local v6    # "output":[B
    :catch_db
    move-exception v0

    goto :goto_e0

    :catch_dd
    move-exception v0

    move-object/from16 v2, p0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    :goto_e0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDFUtils::Got exception during MDF encryption: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getName()Ljava/lang/String;
    .registers 9

    .line 109
    const-string v0, "MdfUtils::getName encountered an exception: "

    const/4 v1, 0x0

    .line 110
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 112
    .local v2, "fileReader":Ljava/io/FileReader;
    :try_start_4
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 113
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 114
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v3, "fileContent":Ljava/lang/StringBuffer;
    :goto_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v4

    move v5, v4

    .local v5, "c":I
    if-lez v4, :cond_3e

    .line 117
    int-to-char v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 119
    :cond_3e
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_94
    .catchall {:try_start_4 .. :try_end_43} :catchall_68

    .line 124
    nop

    .line 125
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 126
    nop

    .line 127
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4b} :catch_4c

    .line 130
    goto :goto_67

    .line 128
    :catch_4c
    move-exception v6

    .line 129
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    .end local v6    # "e":Ljava/io/IOException;
    :goto_67
    return-object v4

    .line 123
    .end local v3    # "fileContent":Ljava/lang/StringBuffer;
    .end local v5    # "c":I
    :catchall_68
    move-exception v3

    .line 124
    if-eqz v1, :cond_71

    .line 125
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_71

    .line 128
    :catch_6f
    move-exception v4

    goto :goto_77

    .line 126
    :cond_71
    :goto_71
    if-eqz v2, :cond_92

    .line 127
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_76} :catch_6f

    goto :goto_92

    .line 129
    .local v4, "e":Ljava/io/IOException;
    :goto_77
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_93

    .line 130
    .end local v4    # "e":Ljava/io/IOException;
    :cond_92
    :goto_92
    nop

    .line 131
    :goto_93
    throw v3

    .line 120
    :catch_94
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 124
    if-eqz v1, :cond_9e

    .line 125
    :try_start_98
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_9e

    .line 128
    :catch_9c
    move-exception v4

    goto :goto_a4

    .line 126
    :cond_9e
    :goto_9e
    if-eqz v2, :cond_bf

    .line 127
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a3} :catch_9c

    goto :goto_bf

    .line 129
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_a4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c0

    .line 130
    .end local v4    # "e":Ljava/io/IOException;
    :cond_bf
    :goto_bf
    nop

    .line 121
    :goto_c0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPid()I
    .registers 4

    .line 90
    :try_start_0
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 91
    .local v0, "processClass":Ljava/lang/Class;
    const-string/jumbo v1, "myPid"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    .local v1, "myPidMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1e} :catch_1f

    return v2

    .line 93
    .end local v0    # "processClass":Ljava/lang/Class;
    .end local v1    # "myPidMethod":Ljava/lang/reflect/Method;
    :catch_1f
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, -0x1

    return v1
.end method

.method public static getUid()I
    .registers 4

    .line 100
    :try_start_0
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "processClass":Ljava/lang/Class;
    const-string/jumbo v1, "myUid"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 102
    .local v1, "myPidMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1e} :catch_1f

    return v2

    .line 103
    .end local v0    # "processClass":Ljava/lang/Class;
    .end local v1    # "myPidMethod":Ljava/lang/reflect/Method;
    :catch_1f
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, -0x1

    return v1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 7
    .param p0, "input"    # Ljava/lang/String;

    .line 370
    if-eqz p0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    goto :goto_40

    .line 374
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 375
    .local v0, "output":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 376
    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 377
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 375
    add-int/lit8 v1, v1, 0x2

    goto :goto_1a

    .line 379
    .end local v1    # "i":I
    :cond_3f
    return-object v0

    .line 371
    .end local v0    # "output":[B
    :cond_40
    :goto_40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "MDFUtils::Unable to convert the string, the length is invalid"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isCertificateAllowed([Ljavax/security/auth/x500/X500Principal;[Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p0, "allowedIssuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p1, "certificateChain"    # [Ljava/security/cert/X509Certificate;

    .line 234
    const/4 v0, 0x0

    if-eqz p1, :cond_35

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_35

    .line 238
    :cond_7
    const/4 v1, 0x1

    if-eqz p0, :cond_34

    array-length v2, p0

    if-nez v2, :cond_e

    goto :goto_34

    .line 241
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, p1

    if-ge v2, v3, :cond_33

    .line 242
    aget-object v3, p1, v2

    if-eqz v3, :cond_30

    .line 243
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_17
    array-length v4, p0

    if-ge v3, v4, :cond_30

    .line 245
    aget-object v4, p0, v3

    if-eqz v4, :cond_2d

    aget-object v4, p0, v3

    aget-object v5, p1, v2

    .line 246
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 247
    return v1

    .line 243
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 241
    .end local v3    # "j":I
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 252
    .end local v2    # "i":I
    :cond_33
    return v0

    .line 239
    :cond_34
    :goto_34
    return v1

    .line 235
    :cond_35
    :goto_35
    return v0
.end method

.method public static isHostnameAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 220
    const/16 v0, 0x2e

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_11

    .line 221
    return v3

    .line 224
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 225
    return v3

    .line 227
    :cond_21
    return v2
.end method

.method public static native isMdfApplied()Z
.end method

.method public static native isMdfDisabled()Z
.end method

.method public static native isMdfEnabled()Z
.end method

.method public static native isMdfEnforced()Z
.end method

.method public static native isMdfReady()Z
.end method

.method public static native isMdfSupported()Z
.end method

.method public static logMdf(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 11
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "redactedLogMessage"    # Ljava/lang/String;
    .param p2, "outcome"    # Z
    .param p3, "severity"    # I
    .param p4, "swComponent"    # Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 164
    return-void
.end method

.method public static logMdf(Ljava/lang/String;ZILjava/lang/String;)V
    .registers 5
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "outcome"    # Z
    .param p2, "severity"    # I
    .param p3, "swComponent"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public static logMdf(ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 18
    .param p0, "condition"    # Z
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "redactedLogMessage"    # Ljava/lang/String;
    .param p3, "outcome"    # Z
    .param p4, "severity"    # I
    .param p5, "swComponent"    # Ljava/lang/String;

    .line 139
    if-eqz p0, :cond_82

    .line 141
    :try_start_2
    const-string v0, "android.sec.enterprise.EnterpriseDeviceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    .local v0, "clsEdm":Ljava/lang/Class;
    const-string v1, "android.sec.enterprise.auditlog.AuditLog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 143
    .local v1, "auditLog":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const-class v4, Ljava/lang/String;

    const/4 v11, 0x6

    aput-object v4, v3, v11

    .line 146
    .local v3, "auditParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v2, v2, [Ljava/lang/Object;

    .line 147
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    aput-object p5, v2, v9

    aput-object p1, v2, v10

    aput-object p2, v2, v11

    .line 149
    .local v2, "auditValues":[Ljava/lang/Object;
    const-string/jumbo v4, "logPrivileged"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 150
    .local v4, "logMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_63} :catch_65
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_63} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_63} :catch_65
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_63} :catch_65

    .line 153
    nop

    .end local v0    # "clsEdm":Ljava/lang/Class;
    .end local v1    # "auditLog":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "auditValues":[Ljava/lang/Object;
    .end local v3    # "auditParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "logMethod":Ljava/lang/reflect/Method;
    goto :goto_82

    .line 151
    :catch_65
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MdfUtils::AuditLog encountered an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_82
    :goto_82
    return-void
.end method

.method public static logMdf(ZLjava/lang/String;ZILjava/lang/String;)V
    .registers 11
    .param p0, "condition"    # Z
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "outcome"    # Z
    .param p3, "severity"    # I
    .param p4, "swComponent"    # Ljava/lang/String;

    .line 135
    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public static native updateMdfStatus()I
.end method

.method public static native updateMdfVersion()Ljava/lang/String;
.end method


# virtual methods
.method public native FIPS_Openssl_SelfTest()I
.end method

.method public native getCCModeFlag()I
.end method

.method public native getSBFlag()I
.end method

.method public native setCCModeFlag(I)I
.end method

.method public native setSBFlagOff()I
.end method

.method public native setSBFlagOn()I
.end method
