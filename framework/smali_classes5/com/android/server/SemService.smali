.class public final Lcom/android/server/SemService;
.super Lcom/samsung/android/service/SemService/ISemService$Stub;
.source "SemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemService$SPITimeoutTask;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_ALREADY_OPENED:I = -0xb

.field public static final ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final ERROR_EXCEPTION:I = -0x5a

.field public static final ERROR_NOT_OPENED:I = -0xc

.field public static final ERROR_NOT_SUPPORTED:I = -0xa

.field public static final ERROR_NO_PERMISSION:I = -0x5b

.field public static final ERROR_NO_PERMISSION_SIZE:I = 0x0

.field public static final ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

.field public static final ERROR_NO_SERVICE:I = -0x5c

.field private static final ERROR_SPI_ALREADY_OPENED:I = -0xc8

.field public static final ERROR_UNSAT_LINK:I = -0x3

.field private static final MAX_GET_ESEA_DATA:I = 0x400

.field private static final MAX_RETRY_SPI_CHECK:I = 0xf

.field private static final MAX_TIMEOUT_IN_SECOND:J = 0x1eL

.field public static final NO_ERROR:I = 0x0

.field public static final NO_ERROR_SPI:I = 0x0

.field public static final SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEC_ESE_Service"

.field private static chipVendor:Ljava/lang/String;

.field private static cosName:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private SPITimeout:Ljava/util/Timer;

.field private bytePublicKeyDataSKMS:[B

.field private bytePublicKeyDataSecurity:[B

.field private bytePublicKeySKMSLen:I

.field private bytePublicKeySecurityLen:I

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsOpened:Z

.field private mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

.field private secureBuffer:Ljava/lang/StringBuffer;

.field private skuChipName:Ljava/lang/String;

.field private spiOpenPackageName:Ljava/lang/String;

.field private supportEsek:Z

.field private supportReeSpi:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/SemService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreleaseSpiUsage(Lcom/android/server/SemService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    .line 91
    const-string v0, "JCOP5.3T"

    sput-object v0, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    .line 92
    const-string v0, "NXP"

    sput-object v0, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "sec_sem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;-><init>()V

    .line 84
    const/16 v0, 0x12c

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    .line 85
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    .line 87
    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/SemService;->supportEsek:Z

    .line 97
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    .line 170
    iput-boolean v0, p0, Lcom/android/server/SemService;->mIsOpened:Z

    .line 178
    iput-object v1, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 179
    iput-object v1, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 186
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start SemService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v1, Lcom/android/server/SemServiceAccessControl;

    invoke-direct {v1, p1}, Lcom/android/server/SemServiceAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    .line 188
    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->setAllowedPackages()V

    .line 189
    iput-object p1, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    .line 190
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 191
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->setGrdmAllowedPackages()V

    .line 194
    :cond_44
    invoke-direct {p0}, Lcom/android/server/SemService;->readSkuProperty()V

    .line 196
    sget-object v1, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    const-string v2, "SKU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 197
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 198
    iget-boolean v1, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-eqz v1, :cond_67

    .line 199
    iput-boolean v0, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    goto :goto_67

    .line 202
    :cond_60
    invoke-direct {p0}, Lcom/android/server/SemService;->setCosNameProperty()V

    goto :goto_67

    .line 205
    :cond_64
    invoke-direct {p0}, Lcom/android/server/SemService;->setCosNameProperty()V

    .line 209
    :cond_67
    :goto_67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    .line 212
    iget-object v0, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 213
    return-void
.end method

.method private encData(Ljava/lang/String;)Ljava/lang/String;
    .registers 31
    .param p1, "msg"    # Ljava/lang/String;

    .line 1201
    move-object/from16 v1, p0

    const-string v0, "RSA/ECB/OAEPWITHSHA-256ANDMGF1PADDING"

    const-string v2, "S-ED"

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/16 v2, 0x12c

    new-array v4, v2, [B

    .line 1204
    .local v4, "getPKDataSecurity":[B
    new-array v2, v2, [B

    .line 1207
    .local v2, "getPKDataSKMS":[B
    const/4 v5, 0x0

    .line 1208
    .local v5, "cipherAES":Ljavax/crypto/Cipher;
    const/4 v6, 0x0

    .line 1209
    .local v6, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v7, 0x0

    .line 1210
    .local v7, "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x0

    .line 1211
    .local v8, "encKeyDataSKMS":[B
    const/4 v9, 0x0

    .line 1213
    .local v9, "encKeyDataSecurity":[B
    const/16 v10, 0x10

    .line 1214
    .local v10, "ivKeySize":I
    const/16 v11, 0x30

    .line 1215
    .local v11, "IVAESKeySize":I
    const/16 v12, 0x20

    .line 1217
    .local v12, "AESKeySize":I
    const/4 v13, 0x0

    .line 1218
    .local v13, "byteLogbuffer":[B
    const/4 v14, 0x0

    .line 1221
    .local v14, "byteEncBuffer":[B
    :try_start_1e
    iget v15, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_20} :catch_384
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_20} :catch_35f
    .catch Ljava/lang/Error; {:try_start_1e .. :try_end_20} :catch_33a

    move-object/from16 v16, v5

    .end local v5    # "cipherAES":Ljavax/crypto/Cipher;
    .local v16, "cipherAES":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    if-lt v15, v5, :cond_48

    :try_start_25
    iget v15, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_27} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_27} :catch_36
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_27} :catch_2d

    if-ge v15, v5, :cond_2a

    goto :goto_48

    :cond_2a
    move-object/from16 v19, v2

    goto :goto_8d

    .line 1292
    :catch_2d
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_347

    .line 1289
    :catch_36
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_36c

    .line 1286
    :catch_3f
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v5, v16

    goto/16 :goto_391

    .line 1222
    :cond_48
    :goto_48
    :try_start_48
    const-string v15, "PK Error"

    invoke-static {v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual {v1, v4}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v15

    .line 1225
    .local v15, "pkResultSecurity":I
    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v17

    move/from16 v18, v17

    .line 1227
    .local v18, "pkResultSKMS":I
    iput v15, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    .line 1228
    move/from16 v5, v18

    .end local v18    # "pkResultSKMS":I
    .local v5, "pkResultSKMS":I
    iput v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    .line 1229
    move/from16 v18, v5

    .end local v5    # "pkResultSKMS":I
    .restart local v18    # "pkResultSKMS":I
    invoke-static {v4, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    .line 1230
    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    .line 1232
    if-eqz v5, :cond_2df

    iget-object v5, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    if-eqz v5, :cond_2df

    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I
    :try_end_75
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_75} :catch_32c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_75} :catch_31e
    .catch Ljava/lang/Error; {:try_start_48 .. :try_end_75} :catch_310

    move-object/from16 v19, v2

    const/4 v2, 0x1

    .end local v2    # "getPKDataSKMS":[B
    .local v19, "getPKDataSKMS":[B
    if-lt v5, v2, :cond_2d6

    :try_start_7a
    iget v5, v1, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    if-ge v5, v2, :cond_88

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto/16 :goto_2e9

    .line 1236
    :cond_88
    const-string v2, "GET DATA"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    .end local v15    # "pkResultSecurity":I
    .end local v18    # "pkResultSKMS":I
    :goto_8d
    const/16 v2, 0x10

    new-array v5, v2, [B

    .line 1241
    .local v5, "bIv":[B
    const/16 v15, 0x20

    new-array v2, v15, [B

    .line 1242
    .local v2, "bEnc":[B
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v20
    :try_end_99
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_99} :catch_2c9
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_99} :catch_2bc
    .catch Ljava/lang/Error; {:try_start_7a .. :try_end_99} :catch_2af

    move-object/from16 v21, v20

    .line 1243
    .local v21, "random":Ljava/security/SecureRandom;
    move-object/from16 v22, v6

    move-object/from16 v15, v21

    move-object/from16 v21, v4

    const/16 v4, 0x10

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v15, "random":Ljava/security/SecureRandom;
    .local v21, "getPKDataSecurity":[B
    .local v22, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_a3
    invoke-virtual {v15, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 1244
    invoke-virtual {v15, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1245
    const/16 v4, 0x20

    invoke-virtual {v15, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 1246
    invoke-virtual {v15, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1249
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v4, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/NullPointerException; {:try_start_a3 .. :try_end_c0} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_c0} :catch_299
    .catch Ljava/lang/Error; {:try_start_a3 .. :try_end_c0} :catch_28e

    move-object v6, v4

    .line 1250
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_c1
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_c6
    .catch Ljava/lang/NullPointerException; {:try_start_c1 .. :try_end_c6} :catch_283
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c6} :catch_278
    .catch Ljava/lang/Error; {:try_start_c1 .. :try_end_c6} :catch_26d

    move-object v7, v4

    .line 1251
    :try_start_c7
    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4
    :try_end_cd
    .catch Ljava/lang/NullPointerException; {:try_start_c7 .. :try_end_cd} :catch_260
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cd} :catch_253
    .catch Ljava/lang/Error; {:try_start_c7 .. :try_end_cd} :catch_246

    .line 1252
    .end local v16    # "cipherAES":Ljavax/crypto/Cipher;
    .local v4, "cipherAES":Ljavax/crypto/Cipher;
    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "bEnc":[B
    .local v23, "bEnc":[B
    :try_start_d0
    invoke-virtual {v4, v2, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1255
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 1257
    .local v2, "fac":Ljava/security/KeyFactory;
    move-object/from16 v24, v5

    .end local v5    # "bIv":[B
    .local v24, "bIv":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;
    :try_end_dd
    .catch Ljava/lang/NullPointerException; {:try_start_d0 .. :try_end_dd} :catch_23a
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_dd} :catch_22e
    .catch Ljava/lang/Error; {:try_start_d0 .. :try_end_dd} :catch_222

    move-object/from16 v25, v8

    .end local v8    # "encKeyDataSKMS":[B
    .local v25, "encKeyDataSKMS":[B
    :try_start_df
    iget-object v8, v1, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    invoke-direct {v5, v8}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1258
    .local v5, "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 1260
    .local v8, "publicKeySecurity":Ljava/security/PublicKey;
    move-object/from16 v16, v5

    .end local v5    # "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    .local v16, "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;
    :try_end_ec
    .catch Ljava/lang/NullPointerException; {:try_start_df .. :try_end_ec} :catch_216
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ec} :catch_20a
    .catch Ljava/lang/Error; {:try_start_df .. :try_end_ec} :catch_1fe

    move-object/from16 v26, v9

    .end local v9    # "encKeyDataSecurity":[B
    .local v26, "encKeyDataSecurity":[B
    :try_start_ee
    iget-object v9, v1, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    invoke-direct {v5, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1261
    .local v5, "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    .line 1263
    .local v9, "publicKeySKMS":Ljava/security/PublicKey;
    const/16 v1, 0x30

    new-array v1, v1, [B

    .line 1264
    .local v1, "AESIVKeyValue":[B
    move-object/from16 v22, v2

    .end local v2    # "fac":Ljava/security/KeyFactory;
    .local v22, "fac":Ljava/security/KeyFactory;
    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2
    :try_end_101
    .catch Ljava/lang/NullPointerException; {:try_start_ee .. :try_end_101} :catch_1f2
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_101} :catch_1e6
    .catch Ljava/lang/Error; {:try_start_ee .. :try_end_101} :catch_1da

    move-object/from16 v27, v5

    .end local v5    # "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    .local v27, "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    const/4 v5, 0x0

    move-object/from16 v28, v7

    const/16 v7, 0x10

    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .local v28, "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_108
    invoke-static {v2, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1265
    invoke-virtual {v6}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v2
    :try_end_10f
    .catch Ljava/lang/NullPointerException; {:try_start_108 .. :try_end_10f} :catch_1ce
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10f} :catch_1c2
    .catch Ljava/lang/Error; {:try_start_108 .. :try_end_10f} :catch_1b6

    move-object/from16 v18, v6

    const/16 v6, 0x20

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v18, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_113
    invoke-static {v2, v5, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1267
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1268
    .local v2, "cipherRSA":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1269
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5
    :try_end_122
    .catch Ljava/lang/NullPointerException; {:try_start_113 .. :try_end_122} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_122} :catch_19e
    .catch Ljava/lang/Error; {:try_start_113 .. :try_end_122} :catch_192

    .line 1271
    .end local v26    # "encKeyDataSecurity":[B
    .local v5, "encKeyDataSecurity":[B
    :try_start_122
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1272
    .end local v2    # "cipherRSA":Ljavax/crypto/Cipher;
    .local v0, "cipherRSA":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1273
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_12e
    .catch Ljava/lang/NullPointerException; {:try_start_122 .. :try_end_12e} :catch_187
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12e} :catch_17c
    .catch Ljava/lang/Error; {:try_start_122 .. :try_end_12e} :catch_171

    .line 1275
    .end local v25    # "encKeyDataSKMS":[B
    .local v2, "encKeyDataSKMS":[B
    :try_start_12e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    move-object v14, v6

    .line 1277
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1278
    .local v6, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1279
    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1280
    invoke-virtual {v6, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1282
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object v13, v7

    .line 1283
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1285
    const/4 v7, 0x2

    invoke-static {v13, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_152
    .catch Ljava/lang/NullPointerException; {:try_start_12e .. :try_end_152} :catch_167
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_152} :catch_15d
    .catch Ljava/lang/Error; {:try_start_12e .. :try_end_152} :catch_153

    return-object v3

    .line 1292
    .end local v0    # "cipherRSA":Ljavax/crypto/Cipher;
    .end local v1    # "AESIVKeyValue":[B
    .end local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "publicKeySecurity":Ljava/security/PublicKey;
    .end local v9    # "publicKeySKMS":Ljava/security/PublicKey;
    .end local v15    # "random":Ljava/security/SecureRandom;
    .end local v16    # "publicKeySpecSecurity":Ljava/security/spec/X509EncodedKeySpec;
    .end local v22    # "fac":Ljava/security/KeyFactory;
    .end local v23    # "bEnc":[B
    .end local v24    # "bIv":[B
    .end local v27    # "publicKeySpecSKMS":Ljava/security/spec/X509EncodedKeySpec;
    :catch_153
    move-exception v0

    move-object v8, v2

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_347

    .line 1289
    :catch_15d
    move-exception v0

    move-object v8, v2

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_36c

    .line 1286
    :catch_167
    move-exception v0

    move-object v8, v2

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_391

    .line 1292
    .end local v2    # "encKeyDataSKMS":[B
    .restart local v25    # "encKeyDataSKMS":[B
    :catch_171
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_347

    .line 1289
    :catch_17c
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_36c

    .line 1286
    :catch_187
    move-exception v0

    move-object v9, v5

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v7, v28

    move-object v5, v4

    goto/16 :goto_391

    .line 1292
    .end local v5    # "encKeyDataSecurity":[B
    .restart local v26    # "encKeyDataSecurity":[B
    :catch_192
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_347

    .line 1289
    :catch_19e
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_36c

    .line 1286
    :catch_1aa
    move-exception v0

    move-object v5, v4

    move-object/from16 v6, v18

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    goto/16 :goto_391

    .line 1292
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v6, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1b6
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_347

    .line 1289
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1c2
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_36c

    .line 1286
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1ce
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v28

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_391

    .line 1292
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :catch_1da
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_347

    .line 1289
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :catch_1e6
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_36c

    .line 1286
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    :catch_1f2
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object v5, v4

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_391

    .line 1292
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .local v9, "encKeyDataSecurity":[B
    :catch_1fe
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_347

    .line 1289
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_20a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_36c

    .line 1286
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_216
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move-object v5, v4

    move-object/from16 v8, v25

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_391

    .line 1292
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .local v8, "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_222
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_347

    .line 1289
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_22e
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_36c

    .line 1286
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_23a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v4

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_391

    .line 1292
    .end local v4    # "cipherAES":Ljavax/crypto/Cipher;
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    .local v16, "cipherAES":Ljavax/crypto/Cipher;
    :catch_246
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_347

    .line 1289
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_253
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_36c

    .line 1286
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_260
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    .restart local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_391

    .line 1292
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .end local v28    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "ivAES":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_26d
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_347

    .line 1289
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_278
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_36c

    .line 1286
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_283
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_391

    .line 1292
    .end local v18    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    .local v22, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_28e
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_347

    .line 1289
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_299
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_36c

    .line 1286
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_2a4
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_391

    .line 1292
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .local v4, "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_2af
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_347

    .line 1289
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_2bc
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_36c

    .line 1286
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_2c9
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto/16 :goto_391

    .line 1232
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    .local v15, "pkResultSecurity":I
    .local v18, "pkResultSKMS":I
    :cond_2d6
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_2e9

    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .local v2, "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :cond_2df
    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1233
    .end local v2    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    :goto_2e9
    :try_start_2e9
    const-string v0, "GET DATA FAIL"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ee
    .catch Ljava/lang/NullPointerException; {:try_start_2e9 .. :try_end_2ee} :catch_305
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_2ee} :catch_2fa
    .catch Ljava/lang/Error; {:try_start_2e9 .. :try_end_2ee} :catch_2f0

    .line 1234
    const/4 v1, 0x0

    return-object v1

    .line 1292
    .end local v15    # "pkResultSecurity":I
    .end local v18    # "pkResultSKMS":I
    :catch_2f0
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto :goto_347

    .line 1289
    :catch_2fa
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_36c

    .line 1286
    :catch_305
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_391

    .line 1292
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v2    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_310
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v2    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_347

    .line 1289
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v2    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_31e
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v2    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_36c

    .line 1286
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v2    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_32c
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v5, v16

    .end local v2    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .end local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "encKeyDataSKMS":[B
    .end local v9    # "encKeyDataSecurity":[B
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    .restart local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v25    # "encKeyDataSKMS":[B
    .restart local v26    # "encKeyDataSecurity":[B
    goto :goto_391

    .line 1292
    .end local v16    # "cipherAES":Ljavax/crypto/Cipher;
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .end local v22    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v25    # "encKeyDataSKMS":[B
    .end local v26    # "encKeyDataSecurity":[B
    .restart local v2    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    .local v5, "cipherAES":Ljavax/crypto/Cipher;
    .restart local v6    # "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "encKeyDataSKMS":[B
    .restart local v9    # "encKeyDataSecurity":[B
    :catch_33a
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1293
    .end local v2    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .local v0, "e":Ljava/lang/Error;
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    :goto_347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENC Data Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v1, 0x0

    return-object v1

    .line 1289
    .end local v0    # "e":Ljava/lang/Error;
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .restart local v2    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    :catch_35f
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1290
    .end local v2    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    :goto_36c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENC Data Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v1, 0x0

    return-object v1

    .line 1286
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v19    # "getPKDataSKMS":[B
    .end local v21    # "getPKDataSecurity":[B
    .restart local v2    # "getPKDataSKMS":[B
    .restart local v4    # "getPKDataSecurity":[B
    :catch_384
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 1287
    .end local v2    # "getPKDataSKMS":[B
    .end local v4    # "getPKDataSecurity":[B
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v19    # "getPKDataSKMS":[B
    .restart local v21    # "getPKDataSecurity":[B
    :goto_391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENC Data NullpointException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v1, 0x0

    return-object v1
.end method

.method private esesm_getEncodedLog()Ljava/lang/String;
    .registers 14

    .line 2340
    const-string v0, "GET DATA Error "

    const-string v1, "GET DATA EXCEPTION "

    const-string/jumbo v2, "start esesm_getEncodedLog"

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const-string v2, "FAIL.\n"

    .line 2343
    .local v2, "ret":Ljava/lang/String;
    const/16 v4, 0x12

    new-array v4, v4, [B

    fill-array-data v4, :array_174

    .line 2350
    .local v4, "APDU_Esesm_SELECT":[B
    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_182

    .line 2356
    .local v5, "APDU_Esesm_GET_LOG":[B
    const/4 v6, 0x0

    :try_start_1c
    invoke-virtual {p0, v6}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v7

    if-eqz v7, :cond_2a

    .line 2357
    const-string v6, "SPI Open Fail"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const-string v0, "FAIL.\nSPI Open Fail!"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_29} :catch_15c
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_29} :catch_144

    return-object v0

    .line 2366
    :cond_2a
    nop

    .line 2370
    const/16 v7, 0x400

    :try_start_2d
    new-array v8, v7, [B

    .line 2371
    .local v8, "resp":[B
    array-length v9, v4

    invoke-virtual {p0, v4, v9, v8, v6}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v9

    .line 2373
    .local v9, "respLen":I
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    move-object v8, v10

    .line 2374
    const/4 v10, 0x2

    if-lt v9, v10, :cond_d4

    add-int/lit8 v11, v9, -0x2

    aget-byte v11, v8, v11

    const/16 v12, -0x70

    if-eq v11, v12, :cond_4a

    add-int/lit8 v11, v9, -0x1

    aget-byte v11, v8, v11

    if-nez v11, :cond_d4

    :cond_4a
    aget-byte v11, v8, v6

    const/16 v12, 0x10

    if-ne v11, v12, :cond_d4

    const/4 v11, 0x1

    aget-byte v11, v8, v11
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_53} :catch_118
    .catch Ljava/lang/Error; {:try_start_2d .. :try_end_53} :catch_ec

    const/4 v12, 0x3

    if-eq v11, v12, :cond_58

    goto/16 :goto_d4

    .line 2392
    .end local v8    # "resp":[B
    .end local v9    # "respLen":I
    :cond_58
    nop

    .line 2396
    :try_start_59
    new-array v7, v7, [B

    .line 2397
    .local v7, "resp":[B
    array-length v8, v5

    invoke-virtual {p0, v5, v8, v7, v6}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v8

    .line 2399
    .local v8, "respLen":I
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    move-object v7, v9

    .line 2400
    const-string v9, "OK\n"

    move-object v2, v9

    .line 2401
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_7d} :catch_a7
    .catch Ljava/lang/Error; {:try_start_59 .. :try_end_7d} :catch_7e

    .end local v2    # "ret":Ljava/lang/String;
    .end local v7    # "resp":[B
    .end local v8    # "respLen":I
    .local v0, "ret":Ljava/lang/String;
    goto :goto_cf

    .line 2405
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_7e
    move-exception v1

    .line 2406
    .local v1, "e":Ljava/lang/Error;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Get Data error!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_d0

    .line 2402
    .end local v0    # "ret":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Error;
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_a7
    move-exception v0

    .line 2403
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Get Data exception!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2408
    .end local v2    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_cf
    nop

    .line 2409
    :goto_d0
    invoke-virtual {p0, v6}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 2410
    return-object v0

    .line 2378
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    .local v8, "resp":[B
    .restart local v9    # "respLen":I
    :cond_d4
    :goto_d4
    :try_start_d4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "Applet not found or invalid response."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 2379
    invoke-virtual {p0, v6}, Lcom/android/server/SemService;->close_Spi(I)I
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_eb} :catch_118
    .catch Ljava/lang/Error; {:try_start_d4 .. :try_end_eb} :catch_ec

    .line 2380
    return-object v2

    .line 2387
    .end local v8    # "resp":[B
    .end local v9    # "respLen":I
    :catch_ec
    move-exception v1

    .line 2388
    .restart local v1    # "e":Ljava/lang/Error;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Get Data error!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2390
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 2391
    return-object v0

    .line 2382
    .end local v0    # "ret":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Error;
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_118
    move-exception v0

    .line 2383
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Get Data exception!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2385
    .end local v2    # "ret":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 2386
    return-object v1

    .line 2363
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_144
    move-exception v1

    .line 2364
    .local v1, "e":Ljava/lang/Error;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const-string v0, "FAIL.\nSPI Open Fail!.."

    return-object v0

    .line 2360
    .end local v1    # "e":Ljava/lang/Error;
    :catch_15c
    move-exception v0

    .line 2361
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    const-string v1, "FAIL.\nSPI Open Fail!."

    return-object v1

    :array_174
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xct
        -0x60t
        0x0t
        0x0t
        0x8t
        0x70t
        -0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
    .end array-data

    nop

    :array_182
    .array-data 1
        -0x80t
        0x70t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x58t
    .end array-data
.end method

.method private getAccessRule()Ljava/lang/String;
    .registers 17

    .line 1402
    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_160

    move-object v3, v0

    .line 1406
    .local v3, "APDU_ARAM_SELECT":[B
    const/4 v0, 0x5

    new-array v4, v0, [B

    fill-array-data v4, :array_16c

    .line 1409
    .local v4, "APDU_GETRULE_FIRST":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_174

    move-object v5, v0

    .line 1411
    .local v5, "APDU_GETRULE_REMAINED":[B
    const/16 v0, 0x2400

    new-array v6, v0, [B

    .line 1412
    .local v6, "ListByteData":[B
    const/4 v7, 0x0

    .line 1414
    .local v7, "ListByteDataLen":I
    const/4 v8, 0x0

    .line 1416
    .local v8, "resultList":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1419
    .local v9, "isOpenCheck":Z
    const/4 v10, -0x1

    .line 1420
    .local v10, "ret":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_22
    new-array v13, v0, [B

    .line 1421
    .local v13, "res":[B
    const/4 v14, -0x1

    .line 1423
    .local v14, "resLen":I
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v15

    move v10, v15

    .line 1425
    if-eqz v10, :cond_32

    .line 1426
    const-string v0, "S-LOG Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-object v11

    .line 1429
    :cond_32
    const/4 v9, 0x1

    .line 1432
    array-length v15, v3

    invoke-virtual {v1, v3, v15, v13, v12}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    move v14, v15

    .line 1434
    array-length v15, v13
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3a} :catch_13d
    .catch Ljava/lang/Error; {:try_start_22 .. :try_end_3a} :catch_11e

    const-string v0, "Select Error"

    const/4 v11, 0x2

    if-ge v15, v11, :cond_47

    .line 1435
    :try_start_3f
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1437
    const/4 v2, 0x0

    return-object v2

    .line 1439
    :cond_47
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    move-object v13, v15

    .line 1441
    if-lt v14, v11, :cond_f9

    add-int/lit8 v15, v14, -0x2

    aget-byte v15, v13, v15

    const/16 v11, -0x70

    if-ne v15, v11, :cond_f9

    add-int/lit8 v15, v14, -0x1

    aget-byte v15, v13, v15

    if-nez v15, :cond_f9

    .line 1443
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5d
    const/16 v11, 0x32

    if-ge v15, v11, :cond_f9

    .line 1444
    const/16 v11, 0x2400

    new-array v12, v11, [B

    .line 1445
    .end local v13    # "res":[B
    .local v12, "res":[B
    if-nez v15, :cond_70

    .line 1446
    array-length v13, v4

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v13, v12, v11}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    move v11, v13

    move v14, v11

    .end local v14    # "resLen":I
    .local v11, "resLen":I
    goto :goto_77

    .line 1448
    .end local v11    # "resLen":I
    .restart local v14    # "resLen":I
    :cond_70
    array-length v11, v5

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v11, v12, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v11

    move v14, v11

    .line 1450
    :goto_77
    array-length v11, v12

    const/4 v13, 0x2

    if-ge v11, v13, :cond_84

    .line 1451
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1453
    const/4 v2, 0x0

    return-object v2

    .line 1455
    :cond_84
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    move-object v13, v11

    .line 1457
    .end local v12    # "res":[B
    .restart local v13    # "res":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SEND SW["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v14, -0x2

    aget-byte v12, v13, v12

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v14, -0x1

    aget-byte v12, v13, v12

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v11, 0x2

    if-lt v14, v11, :cond_d1

    add-int/lit8 v11, v14, -0x2

    aget-byte v11, v13, v11

    const/16 v12, 0x69

    if-ne v11, v12, :cond_d1

    add-int/lit8 v11, v14, -0x1

    aget-byte v11, v13, v11

    const/16 v12, -0x7b

    if-ne v11, v12, :cond_d1

    .line 1459
    goto :goto_f9

    .line 1460
    :cond_d1
    const/4 v11, 0x2

    if-lt v14, v11, :cond_ee

    add-int/lit8 v12, v14, -0x2

    aget-byte v12, v13, v12

    const/16 v11, -0x70

    if-ne v12, v11, :cond_ee

    add-int/lit8 v12, v14, -0x1

    aget-byte v12, v13, v12

    if-nez v12, :cond_ee

    .line 1461
    add-int/lit8 v14, v14, -0x2

    .line 1462
    const/4 v12, 0x0

    invoke-static {v13, v12, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1463
    add-int/2addr v7, v14

    .line 1443
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto/16 :goto_5d

    .line 1465
    :cond_ee
    const-string v0, "Send Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1467
    const/4 v2, 0x0

    return-object v2

    .line 1471
    .end local v15    # "i":I
    :cond_f9
    :goto_f9
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1473
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v6, v0

    .line 1474
    invoke-static {v6}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ARA LIST : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_11d} :catch_13d
    .catch Ljava/lang/Error; {:try_start_3f .. :try_end_11d} :catch_11e

    .line 1477
    return-object v8

    .line 1485
    .end local v10    # "ret":I
    .end local v13    # "res":[B
    .end local v14    # "resLen":I
    :catch_11e
    move-exception v0

    .line 1486
    .local v0, "e":Ljava/lang/Error;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GET DATA Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    if-eqz v9, :cond_15d

    .line 1489
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1490
    const/4 v9, 0x0

    goto :goto_15d

    .line 1478
    .end local v0    # "e":Ljava/lang/Error;
    :catch_13d
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GET DATA EXCEPTION "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    if-eqz v9, :cond_15c

    .line 1482
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1483
    const/4 v2, 0x0

    move v9, v2

    .line 1492
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15c
    nop

    .line 1494
    :cond_15d
    :goto_15d
    const/4 v2, 0x0

    return-object v2

    nop

    :array_160
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x41t
        0x43t
        0x4ct
        0x0t
    .end array-data

    nop

    :array_16c
    .array-data 1
        -0x80t
        -0x36t
        -0x1t
        0x40t
        0x0t
    .end array-data

    nop

    :array_174
    .array-data 1
        -0x80t
        -0x36t
        -0x1t
        0x60t
        0x0t
    .end array-data
.end method

.method private getDate()Ljava/lang/String;
    .registers 4

    .line 1846
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd hh:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 1847
    :catch_19
    move-exception v0

    .line 1848
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method private getSCRSActivationList()Ljava/lang/String;
    .registers 18

    .line 1301
    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_16e

    move-object v3, v0

    .line 1305
    .local v3, "APDU_SCRS_SELECT":[B
    const/16 v0, 0x8

    new-array v4, v0, [B

    fill-array-data v4, :array_17a

    .line 1309
    .local v4, "APDU_GETSTATUS_FIRST":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_182

    move-object v5, v0

    .line 1312
    .local v5, "APDU_GETSTATUS_REMAINED":[B
    const/16 v0, 0x2400

    new-array v6, v0, [B

    .line 1313
    .local v6, "ListByteData":[B
    const/4 v7, 0x0

    .line 1315
    .local v7, "ListByteDataLen":I
    const/4 v8, 0x0

    .line 1317
    .local v8, "resultList":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1320
    .local v9, "isOpenCheck":Z
    const/4 v10, -0x1

    .line 1321
    .local v10, "ret":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_23
    new-array v13, v0, [B

    .line 1322
    .local v13, "res":[B
    const/4 v14, -0x1

    .line 1324
    .local v14, "resLen":I
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v15

    move v10, v15

    .line 1326
    if-eqz v10, :cond_33

    .line 1327
    const-string v0, "S-LOG SCRS Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-object v11

    .line 1330
    :cond_33
    const/4 v9, 0x1

    .line 1333
    array-length v15, v3

    invoke-virtual {v1, v3, v15, v13, v12}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    move v14, v15

    .line 1335
    array-length v15, v13
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3b} :catch_15e

    const-string v0, "Select Error"

    const/4 v11, 0x2

    if-ge v15, v11, :cond_48

    .line 1336
    :try_start_40
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {v1, v12}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1338
    const/4 v2, 0x0

    return-object v2

    .line 1340
    :cond_48
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    move-object v13, v15

    .line 1342
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Select SW : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v15, v14, -0x2

    aget-byte v15, v13, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v15, v14, -0x1

    aget-byte v15, v13, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    if-lt v14, v11, :cond_139

    add-int/lit8 v12, v14, -0x2

    aget-byte v12, v13, v12

    const/16 v15, -0x70

    if-ne v12, v15, :cond_139

    add-int/lit8 v12, v14, -0x1

    aget-byte v12, v13, v12

    if-nez v12, :cond_139

    .line 1345
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_88
    const/16 v15, 0xa

    if-ge v12, v15, :cond_139

    .line 1346
    const/16 v15, 0x2400

    new-array v11, v15, [B

    .line 1347
    .end local v13    # "res":[B
    .local v11, "res":[B
    if-nez v12, :cond_99

    .line 1348
    array-length v13, v4

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v13, v11, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    .end local v14    # "resLen":I
    .local v13, "resLen":I
    goto :goto_9f

    .line 1350
    .end local v13    # "resLen":I
    .restart local v14    # "resLen":I
    :cond_99
    array-length v13, v5

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v13, v11, v15}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v13

    .line 1352
    .end local v14    # "resLen":I
    .restart local v13    # "resLen":I
    :goto_9f
    array-length v14, v11

    const/4 v15, 0x2

    if-ge v14, v15, :cond_ac

    .line 1353
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1355
    const/4 v2, 0x0

    return-object v2

    .line 1357
    :cond_ac
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    move-object v11, v14

    .line 1359
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SEND SW["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v13, -0x2

    aget-byte v15, v11, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v13, -0x1

    aget-byte v15, v11, v15

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v14, 0x2

    if-lt v13, v14, :cond_105

    add-int/lit8 v14, v13, -0x2

    aget-byte v14, v11, v14

    const/16 v15, -0x70

    if-ne v14, v15, :cond_107

    add-int/lit8 v14, v13, -0x1

    aget-byte v14, v11, v14

    if-nez v14, :cond_107

    .line 1361
    const-string v0, "GET DATA FINISH"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v0, 0x2

    add-int/lit8 v14, v13, -0x2

    .line 1364
    .end local v13    # "resLen":I
    .restart local v14    # "resLen":I
    const/4 v13, 0x0

    invoke-static {v11, v13, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1365
    add-int/2addr v7, v14

    .line 1367
    move-object v13, v11

    goto :goto_139

    .line 1360
    .end local v14    # "resLen":I
    .restart local v13    # "resLen":I
    :cond_105
    const/16 v15, -0x70

    .line 1368
    :cond_107
    const/4 v14, 0x2

    if-lt v13, v14, :cond_12e

    add-int/lit8 v16, v13, -0x2

    aget-byte v14, v11, v16

    const/16 v15, 0x63

    if-ne v14, v15, :cond_12e

    add-int/lit8 v14, v13, -0x1

    aget-byte v14, v11, v14

    const/16 v15, 0x10

    if-ne v14, v15, :cond_12e

    .line 1369
    const-string v14, "GET DATA MORE"

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    add-int/lit8 v14, v13, -0x2

    .line 1372
    .end local v13    # "resLen":I
    .restart local v14    # "resLen":I
    const/4 v13, 0x0

    invoke-static {v11, v13, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1373
    add-int/2addr v7, v14

    .line 1345
    add-int/lit8 v12, v12, 0x1

    move-object v13, v11

    const/4 v11, 0x2

    const/16 v15, -0x70

    goto/16 :goto_88

    .line 1375
    .end local v14    # "resLen":I
    .restart local v13    # "resLen":I
    :cond_12e
    const-string v0, "Send Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1377
    const/4 v2, 0x0

    return-object v2

    .line 1381
    .end local v11    # "res":[B
    .end local v12    # "i":I
    .local v13, "res":[B
    .restart local v14    # "resLen":I
    :cond_139
    :goto_139
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1383
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v6, v0

    .line 1384
    invoke-static {v6}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SCRS LIST : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_15d} :catch_15e

    .line 1387
    return-object v8

    .line 1388
    .end local v10    # "ret":I
    .end local v13    # "res":[B
    .end local v14    # "resLen":I
    :catch_15e
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "GET DATA EXCEPTION"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    if-eqz v9, :cond_16b

    .line 1392
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1393
    const/4 v9, 0x0

    .line 1397
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16b
    const/4 v2, 0x0

    return-object v2

    nop

    :array_16e
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_17a
    .array-data 1
        -0x80t
        -0xet
        0x40t
        0x0t
        0x2t
        0x4ft
        0x0t
        0x0t
    .end array-data

    :array_182
    .array-data 1
        -0x80t
        -0xet
        0x40t
        0x1t
        0x2t
        0x4ft
        0x0t
        0x0t
    .end array-data
.end method

.method private isGRDMSupported()Z
    .registers 2

    .line 2146
    const-string v0, ""

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isShutdownRequested()Z
    .registers 6

    .line 225
    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v1, "sys.shutdown.requested"

    .line 227
    .local v1, "sysShutDownRequestedProp":Ljava/lang/String;
    :try_start_5
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "sysShutDownRequested":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 229
    const-string v3, "Not supported to get ESEA during shutdown process"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_17

    .line 230
    const/4 v0, 0x1

    return v0

    .line 234
    .end local v2    # "sysShutDownRequested":Ljava/lang/String;
    :cond_16
    goto :goto_2e

    .line 232
    :catch_17
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get prop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method private isValidPackageForSpi()Z
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_d

    .line 283
    const-string v0, "SPI is currently not in use"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v1

    .line 286
    :cond_d
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 288
    const/4 v1, 0x1

    return v1

    .line 290
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package name currently using SPI does not match, opened : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requested : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v1
.end method

.method private readSkuProperty()V
    .registers 5

    .line 216
    const-string/jumbo v0, "ro.boot.hardware.sku"

    .line 218
    .local v0, "skuProp":Ljava/lang/String;
    :try_start_3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    .line 221
    goto :goto_23

    .line 219
    :catch_a
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get sysProp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method private releaseSpiUsage()V
    .registers 4

    .line 320
    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_c

    .line 321
    const-string v0, "SPI is currently not in use"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 323
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPI is released by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    .line 326
    :goto_27
    return-void
.end method

.method private requestSpiUsage()Z
    .registers 6

    .line 298
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xf

    if-gt v0, v1, :cond_7b

    .line 299
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_8
    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 301
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    .line 302
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPI is opened by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 305
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_78

    .line 306
    const-string v1, "SEC_ESE_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPI is currently in use by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wait for 0.5 sec. Retry count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-wide/16 v1, 0x1f4

    :try_start_58
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 313
    goto :goto_75

    .line 311
    :catch_5c
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :catchall_78
    move-exception v2

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v2

    .line 315
    .end local v0    # "i":I
    :cond_7b
    const-string v0, "SEC_ESE_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPI is currently in use by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method private setCosNameProperty()V
    .registers 5

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "propCosName":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    const-string v2, "MULTI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SEC_ESE_Service"

    if-eqz v1, :cond_6e

    .line 244
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "s3fwrn5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 245
    const-string v1, "UT5.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "_01000012"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b7

    .line 247
    :cond_28
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "sn110t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 248
    const-string v1, "JCOP5.3T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "_00353145"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b7

    .line 250
    :cond_3f
    iget-object v1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string/jumbo v3, "sn220t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 251
    const-string v1, "JCOP6.2T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "_00354A4A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 254
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported skuChipName, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_6e
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP5.1F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 260
    const-string v1, "_00354C52"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 261
    :cond_83
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP6.2F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 262
    const-string v1, "_0035544B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 263
    :cond_93
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP6.2P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 264
    const-string v1, "_00505644"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "_0051414C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 266
    :cond_a8
    sget-object v1, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    const-string v3, "JCOP7.0P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 267
    const-string v1, "_004D4838"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :goto_b7
    :try_start_b7
    const-string/jumbo v1, "ro.security.ese.cosname"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c1} :catch_c2

    .line 277
    goto :goto_c8

    .line 275
    :catch_c2
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "failed to set sysProp: cosname"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c8
    return-void

    .line 269
    :cond_c9
    return-void
.end method

.method private startSPITimer()V
    .registers 6

    .line 342
    const-string v0, "SEC_ESE_Service"

    :try_start_2
    const-string/jumbo v1, "startSPITimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-nez v1, :cond_1e

    .line 344
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    .line 345
    new-instance v2, Lcom/android/server/SemService$SPITimeoutTask;

    invoke-direct {v2, p0}, Lcom/android/server/SemService$SPITimeoutTask;-><init>(Lcom/android/server/SemService;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_23

    .line 347
    :cond_1e
    const-string v1, "Timer\'s already been started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    .line 352
    :goto_23
    goto :goto_3e

    .line 349
    :catch_24
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in startSPITimer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    .line 353
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method private stopSPITimer()V
    .registers 6

    .line 357
    const-string v0, "SEC_ESE_Service"

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "stopSPITimer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-eqz v2, :cond_13

    .line 359
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 360
    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    goto :goto_18

    .line 362
    :cond_13
    const-string v2, "Timer\'s already been stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    .line 367
    :goto_18
    goto :goto_32

    .line 364
    :catch_19
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopSPITimer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    .line 368
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method


# virtual methods
.method public ICD()I
    .registers 6

    .line 1101
    const/16 v0, -0x5a

    .line 1103
    .local v0, "icdResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const-string v2, "SEC_ESE_Service"

    if-nez v1, :cond_16

    .line 1104
    const-string v1, "ICD Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/16 v1, -0x5b

    return v1

    .line 1109
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniICD()I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_16 .. :try_end_1a} :catch_4f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_1a} :catch_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1c

    move v0, v1

    .line 1119
    :goto_1b
    goto :goto_68

    .line 1116
    :catch_1c
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/16 v0, -0x5a

    goto :goto_68

    .line 1113
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_36
    move-exception v1

    .line 1114
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1b

    .line 1110
    :catch_4f
    move-exception v1

    .line 1111
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_1b

    .line 1122
    :goto_68
    return v0
.end method

.method public native checkSeStatus([B[B)I
.end method

.method public check_Network(I)V
    .registers 8
    .param p1, "type"    # I

    .line 1056
    const/4 v0, 0x0

    .line 1057
    .local v0, "registerType":I
    const/4 v1, 0x1

    .line 1059
    .local v1, "unRegisterType":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1060
    return-void

    .line 1063
    :cond_d
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    const-string v3, "SEC_ESE_Service"

    if-nez v2, :cond_1d

    .line 1064
    const-string v2, "ICCC Device Status Error"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    return-void

    .line 1069
    :cond_1d
    if-ne p1, v0, :cond_35

    .line 1070
    :try_start_1f
    const-string v2, "F-R-NC"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v2, Lcom/android/server/SemService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SemService$1;-><init>(Lcom/android/server/SemService;)V

    iput-object v2, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1084
    iget-object v4, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_74

    .line 1092
    :catch_31
    move-exception v2

    goto :goto_47

    .line 1090
    :catch_33
    move-exception v2

    goto :goto_5e

    .line 1085
    :cond_35
    if-ne p1, v1, :cond_74

    .line 1086
    const-string v2, "F-UR-NC"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v2, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1088
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_46} :catch_33
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_46} :catch_31

    goto :goto_74

    .line 1093
    .local v2, "e":Ljava/lang/Error;
    :goto_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1091
    .local v2, "e":Ljava/lang/Exception;
    :goto_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_74
    :goto_74
    nop

    .line 1095
    :goto_75
    return-void
.end method

.method public check_SeState([B[B)I
    .registers 8
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B

    .line 2028
    const/4 v0, -0x1

    .line 2030
    .local v0, "ret":I
    const-string v1, "Start checkSeState"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_15

    .line 2033
    return v3

    .line 2036
    :cond_15
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2037
    const/16 v1, -0xc8

    return v1

    .line 2040
    :cond_1e
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2041
    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2043
    return v3

    .line 2047
    :cond_2f
    :try_start_2f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->checkSeStatus([B[B)I

    move-result v1
    :try_end_33
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2f .. :try_end_33} :catch_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2f .. :try_end_33} :catch_53
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_35

    move v0, v1

    .line 2057
    :goto_34
    goto :goto_8d

    .line 2054
    :catch_35
    move-exception v1

    .line 2055
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const/16 v0, -0x5a

    goto :goto_8d

    .line 2051
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_53
    move-exception v1

    .line 2052
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_34

    .line 2048
    :catch_70
    move-exception v1

    .line 2049
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef check_SeState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_34

    .line 2059
    :goto_8d
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2061
    return v0
.end method

.method public native closeDriverSpi()I
.end method

.method public native closeSpi(I)I
.end method

.method public closeSpiDriver()I
    .registers 6

    .line 2454
    const-string v0, "closeSpiDriver"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    const/16 v0, -0x5a

    .line 2457
    .local v0, "closeResult":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_1b

    .line 2458
    const-string v2, "closeSpiDriver Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    return v3

    .line 2462
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2463
    const/16 v1, -0xc8

    return v1

    .line 2466
    :cond_24
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_35

    .line 2467
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2469
    return v3

    .line 2473
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Lcom/android/server/SemService;->closeDriverSpi()I

    move-result v1
    :try_end_39
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_35 .. :try_end_39} :catch_6e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_35 .. :try_end_39} :catch_55
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_3b

    move v0, v1

    .line 2483
    :goto_3a
    goto :goto_87

    .line 2480
    :catch_3b
    move-exception v2

    .line 2481
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const/16 v0, -0x5a

    goto :goto_87

    .line 2477
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_55
    move-exception v2

    .line 2478
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_3a

    .line 2474
    :catch_6e
    move-exception v2

    .line 2475
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_3a

    .line 2485
    :goto_87
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2488
    return v0
.end method

.method public close_Spi(I)I
    .registers 7
    .param p1, "flag"    # I

    .line 1946
    const-string v0, "Start close_Spi"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/4 v0, 0x0

    .line 1950
    .local v0, "ret":I
    if-nez p1, :cond_11

    .line 1951
    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_11

    .line 1952
    const/16 v1, -0xa

    return v1

    .line 1956
    :cond_11
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1957
    const-string v2, "close_Spi Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/16 v1, -0x5b

    return v1

    .line 1961
    :cond_21
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1962
    const/16 v1, -0xc8

    return v1

    .line 1966
    :cond_2a
    if-nez p1, :cond_2f

    :try_start_2c
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    .line 1967
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->synchronizedCloseSpi(I)I

    move-result v2

    move v0, v2

    .line 1968
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V
    :try_end_37
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2c .. :try_end_37} :catch_73
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2c .. :try_end_37} :catch_56
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_38

    goto :goto_8f

    .line 1975
    :catch_38
    move-exception v2

    .line 1976
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/16 v0, -0x5a

    goto :goto_90

    .line 1972
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_56
    move-exception v2

    .line 1973
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_8f

    .line 1969
    :catch_73
    move-exception v2

    .line 1970
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield close_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/4 v0, -0x3

    .line 1978
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_8f
    nop

    .line 1980
    :goto_90
    return v0
.end method

.method public native coldReset()I
.end method

.method public continue_attestation(Ljava/lang/String;I[B)I
    .registers 9
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "rspData"    # [B

    .line 1163
    const-string v0, "continue_atteestation"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v0, -0x1

    .line 1166
    .local v0, "result":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_15

    .line 1167
    return v3

    .line 1170
    :cond_15
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1171
    const/16 v1, -0xc8

    return v1

    .line 1174
    :cond_1e
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1175
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1177
    return v3

    .line 1181
    :cond_2f
    :try_start_2f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SemService;->continueattestation(Ljava/lang/String;I[B)I

    move-result v2
    :try_end_33
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2f .. :try_end_33} :catch_69
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2f .. :try_end_33} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_35

    move v0, v2

    .line 1191
    :goto_34
    goto :goto_83

    .line 1188
    :catch_35
    move-exception v2

    .line 1189
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/16 v0, -0x5a

    goto :goto_83

    .line 1185
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v2

    .line 1186
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/16 v0, -0x5c

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_34

    .line 1182
    :catch_69
    move-exception v2

    .line 1183
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/16 v0, -0x5c

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_34

    .line 1193
    :goto_83
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return v0
.end method

.method public native continueattestation(Ljava/lang/String;I[B)I
.end method

.method public native deactivateCards(I[[B[II)I
.end method

.method public native deactivateCardsAID(II[[B[II[[B[II[[B[II)I
.end method

.method public deactivate_Cards(I[Ljava/lang/String;[II)I
    .registers 14
    .param p1, "RequestType"    # I
    .param p2, "package_name_list"    # [Ljava/lang/String;
    .param p3, "package_len"    # [I
    .param p4, "arrayLen"    # I

    .line 786
    const-string v0, "Start deactivate_Cards"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, "ret":I
    new-array v2, p4, [[B

    .line 790
    .local v2, "package_name":[[B
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    const/16 v4, -0x5b

    if-nez v3, :cond_1c

    .line 791
    const-string v3, "deactivate_Cards Permission Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return v4

    .line 795
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v3

    if-nez v3, :cond_25

    .line 796
    const/16 v1, -0xc8

    return v1

    .line 799
    :cond_25
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v3}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v3

    if-nez v3, :cond_36

    .line 800
    const-string v3, "ICCC Device Status Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 802
    return v4

    .line 805
    :cond_36
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 806
    const/16 v1, -0xa

    return v1

    .line 809
    :cond_3f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    if-ge v3, p4, :cond_87

    .line 811
    :try_start_42
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 812
    .local v4, "OutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 813
    .local v5, "DataOut":Ljava/io/DataOutputStream;
    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    aput-object v6, v2, v3

    .line 815
    aget-object v6, v2, v3

    aget-object v7, v2, v3

    array-length v7, v7

    const/4 v8, 0x2

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_63} :catch_64

    .line 818
    .end local v4    # "OutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "DataOut":Ljava/io/DataOutputStream;
    goto :goto_6c

    .line 816
    :catch_64
    move-exception v4

    .line 817
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 824
    .end local v3    # "i":I
    :cond_87
    :try_start_87
    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/SemService;->deactivateCards(I[[B[II)I

    move-result v1
    :try_end_8b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_87 .. :try_end_8b} :catch_c5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_87 .. :try_end_8b} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8b} :catch_8d

    move v0, v1

    .line 831
    :goto_8c
    goto :goto_e1

    .line 829
    :catch_8d
    move-exception v3

    .line 830
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 827
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_a9
    move-exception v3

    .line 828
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsatisfield deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_8c

    .line 825
    :catch_c5
    move-exception v3

    .line 826
    .local v3, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoClassDef deactivate_Cards, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_8c

    .line 833
    :goto_e1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 835
    return v0
.end method

.method public deactivate_CardsAID(II[Ljava/lang/String;[II)I
    .registers 32
    .param p1, "RequestType"    # I
    .param p2, "bean"    # I
    .param p3, "package_aid"    # [Ljava/lang/String;
    .param p4, "package_len"    # [I
    .param p5, "arrayLen"    # I

    .line 839
    move-object/from16 v13, p0

    move/from16 v14, p5

    const-string v1, "#"

    const-string v0, "Start deactivate_Cards"

    const-string v15, "SEC_ESE_Service"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/16 v16, 0x0

    .line 841
    .local v16, "ret":I
    new-array v12, v14, [[B

    .line 842
    .local v12, "package_name":[[B
    new-array v11, v14, [[B

    .line 843
    .local v11, "package_name_Star":[[B
    new-array v10, v14, [[B

    .line 844
    .local v10, "package_name_Sharp":[[B
    new-array v9, v14, [I

    .line 845
    .local v9, "package_len_Star":[I
    new-array v8, v14, [I

    .line 846
    .local v8, "package_len_Sharp":[I
    const/4 v0, 0x0

    .local v0, "name_cnt":I
    const/4 v2, 0x0

    .local v2, "star_cnt":I
    const/4 v3, 0x0

    .line 847
    .local v3, "sharp_cnt":I
    const/4 v4, 0x0

    .line 849
    .local v4, "element":Ljava/lang/String;
    iget-object v5, v13, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v5, v6}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v5

    const/16 v6, -0x5b

    if-nez v5, :cond_2f

    .line 850
    const-string v1, "deactivate_CardsAID Permission Error"

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return v6

    .line 854
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v5

    if-nez v5, :cond_38

    .line 855
    const/16 v1, -0xc8

    return v1

    .line 858
    :cond_38
    iget-object v5, v13, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v5}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v5

    if-nez v5, :cond_49

    .line 859
    const-string v1, "ICCC Device Status Error"

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 861
    return v6

    .line 864
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 865
    const/16 v1, -0xa

    return v1

    .line 868
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v5, 0x0

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v0    # "name_cnt":I
    .end local v2    # "star_cnt":I
    .end local v3    # "sharp_cnt":I
    .end local v4    # "element":Ljava/lang/String;
    .local v5, "i":I
    .local v17, "name_cnt":I
    .local v18, "star_cnt":I
    .local v19, "sharp_cnt":I
    .local v20, "element":Ljava/lang/String;
    :goto_71
    if-ge v5, v14, :cond_10f

    .line 871
    const/4 v2, 0x0

    .line 872
    .end local v20    # "element":Ljava/lang/String;
    .local v2, "element":Ljava/lang/String;
    :try_start_74
    aget-object v0, p3, v5

    move-object v2, v0

    .line 874
    if-nez v2, :cond_80

    .line 875
    const-string v0, "element is null"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_109

    .line 876
    :cond_80
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_86
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_86} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_86} :catch_d8

    const-string v3, ""

    if-eqz v0, :cond_a5

    .line 877
    :try_start_8a
    const-string v0, "[*]"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 878
    if-eqz v2, :cond_109

    .line 879
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v11, v18

    .line 880
    aget-object v0, v11, v18

    if-eqz v0, :cond_109

    .line 881
    aget-object v0, v11, v18

    array-length v0, v0

    aput v0, v9, v18

    .line 882
    add-int/lit8 v18, v18, 0x1

    goto :goto_109

    .line 885
    :cond_a5
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 886
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 887
    if-eqz v2, :cond_109

    .line 888
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v10, v19

    .line 889
    aget-object v0, v10, v19

    if-eqz v0, :cond_109

    .line 890
    aget-object v0, v10, v19

    array-length v0, v0

    aput v0, v8, v19

    .line 891
    add-int/lit8 v19, v19, 0x1

    goto :goto_109

    .line 895
    :cond_c4
    if-eqz v2, :cond_109

    .line 896
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v12, v17

    .line 897
    aget-object v0, v12, v17

    if-eqz v0, :cond_109

    .line 898
    aget-object v0, v12, v17

    array-length v0, v0

    aput v0, p4, v17
    :try_end_d5
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_d5} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_d5} :catch_d8

    .line 899
    add-int/lit8 v17, v17, 0x1

    goto :goto_109

    .line 905
    :catch_d8
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDA Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v2

    goto :goto_10b

    .line 903
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_f2
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDA Null Point Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_109
    :goto_109
    move-object/from16 v20, v2

    .line 869
    .end local v2    # "element":Ljava/lang/String;
    .restart local v20    # "element":Ljava/lang/String;
    :goto_10b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_71

    .line 911
    .end local v5    # "i":I
    :cond_10f
    :try_start_10f
    const-string v0, "DDA Start "

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10f .. :try_end_114} :catch_18b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_10f .. :try_end_114} :catch_165
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_114} :catch_13f

    .line 912
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move/from16 v6, v17

    move-object v7, v11

    move-object/from16 v21, v8

    .end local v8    # "package_len_Sharp":[I
    .local v21, "package_len_Sharp":[I
    move-object v8, v9

    move-object/from16 v22, v9

    .end local v9    # "package_len_Star":[I
    .local v22, "package_len_Star":[I
    move/from16 v9, v18

    move-object/from16 v23, v10

    .end local v10    # "package_name_Sharp":[[B
    .local v23, "package_name_Sharp":[[B
    move-object/from16 v24, v11

    .end local v11    # "package_name_Star":[[B
    .local v24, "package_name_Star":[[B
    move-object/from16 v11, v21

    move-object/from16 v25, v12

    .end local v12    # "package_name":[[B
    .local v25, "package_name":[[B
    move/from16 v12, v19

    :try_start_131
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/SemService;->deactivateCardsAID(II[[B[II[[B[II[[B[II)I

    move-result v0
    :try_end_135
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_131 .. :try_end_135} :catch_13d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_131 .. :try_end_135} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_135} :catch_139

    move/from16 v16, v0

    .line 921
    :goto_137
    goto/16 :goto_1b1

    .line 919
    :catch_139
    move-exception v0

    goto :goto_14a

    .line 917
    :catch_13b
    move-exception v0

    goto :goto_170

    .line 915
    :catch_13d
    move-exception v0

    goto :goto_196

    .line 919
    .end local v21    # "package_len_Sharp":[I
    .end local v22    # "package_len_Star":[I
    .end local v23    # "package_name_Sharp":[[B
    .end local v24    # "package_name_Star":[[B
    .end local v25    # "package_name":[[B
    .restart local v8    # "package_len_Sharp":[I
    .restart local v9    # "package_len_Star":[I
    .restart local v10    # "package_name_Sharp":[[B
    .restart local v11    # "package_name_Star":[[B
    .restart local v12    # "package_name":[[B
    :catch_13f
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 920
    .end local v8    # "package_len_Sharp":[I
    .end local v9    # "package_len_Star":[I
    .end local v10    # "package_name_Sharp":[[B
    .end local v11    # "package_name_Star":[[B
    .end local v12    # "package_name":[[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "package_len_Sharp":[I
    .restart local v22    # "package_len_Star":[I
    .restart local v23    # "package_name_Sharp":[[B
    .restart local v24    # "package_name_Star":[[B
    .restart local v25    # "package_name":[[B
    :goto_14a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deactivate_Cards, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b1

    .line 917
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v21    # "package_len_Sharp":[I
    .end local v22    # "package_len_Star":[I
    .end local v23    # "package_name_Sharp":[[B
    .end local v24    # "package_name_Star":[[B
    .end local v25    # "package_name":[[B
    .restart local v8    # "package_len_Sharp":[I
    .restart local v9    # "package_len_Star":[I
    .restart local v10    # "package_name_Sharp":[[B
    .restart local v11    # "package_name_Star":[[B
    .restart local v12    # "package_name":[[B
    :catch_165
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 918
    .end local v8    # "package_len_Sharp":[I
    .end local v9    # "package_len_Star":[I
    .end local v10    # "package_name_Sharp":[[B
    .end local v11    # "package_name_Star":[[B
    .end local v12    # "package_name":[[B
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    .restart local v21    # "package_len_Sharp":[I
    .restart local v22    # "package_len_Star":[I
    .restart local v23    # "package_name_Sharp":[[B
    .restart local v24    # "package_name_Star":[[B
    .restart local v25    # "package_name":[[B
    :goto_170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoClassDef deactivate_Cards, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_137

    .line 915
    .end local v21    # "package_len_Sharp":[I
    .end local v22    # "package_len_Star":[I
    .end local v23    # "package_name_Sharp":[[B
    .end local v24    # "package_name_Star":[[B
    .end local v25    # "package_name":[[B
    .restart local v8    # "package_len_Sharp":[I
    .restart local v9    # "package_len_Star":[I
    .restart local v10    # "package_name_Sharp":[[B
    .restart local v11    # "package_name_Star":[[B
    .restart local v12    # "package_name":[[B
    :catch_18b
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 916
    .end local v8    # "package_len_Sharp":[I
    .end local v9    # "package_len_Star":[I
    .end local v10    # "package_name_Sharp":[[B
    .end local v11    # "package_name_Star":[[B
    .end local v12    # "package_name":[[B
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v21    # "package_len_Sharp":[I
    .restart local v22    # "package_len_Star":[I
    .restart local v23    # "package_name_Sharp":[[B
    .restart local v24    # "package_name_Star":[[B
    .restart local v25    # "package_name":[[B
    :goto_196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsatisfield deactivate_Cards, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_137

    .line 923
    :goto_1b1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 925
    return v16
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1777
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, ""

    const-string v3, "SEC_ESE_Service"

    const-string v4, "\n"

    :try_start_a
    const-string/jumbo v5, "ro.security.ese.cosname"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1778
    const-string/jumbo v0, "not support eSE device: can\'t dump"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    return-void

    .line 1781
    :cond_1e
    const-string v0, "DUMP MANAGER LOG START"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v0, v1, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 1783
    const-string v0, "Permission Denial: can\'t dump"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    return-void

    .line 1786
    :cond_33
    if-nez v2, :cond_3d

    .line 1787
    const-string/jumbo v0, "invalid parameters dump"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_184

    .line 1789
    :cond_3d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1790
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v5, "\n***SemService EDS***"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1791
    const-string v5, "\n[SCRS LIST]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1795
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v6}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1797
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1798
    iget-object v7, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1799
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->getSCRSActivationList()Ljava/lang/String;

    move-result-object v7

    .line 1800
    .local v7, "SCRSInfo":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->getAccessRule()Ljava/lang/String;

    move-result-object v8

    .line 1801
    .local v8, "ARAInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v9

    .line 1802
    .local v9, "CPLCInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->mDLlog()Ljava/lang/String;

    move-result-object v10

    .line 1803
    .local v10, "mDLInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->get_ESEA()Ljava/lang/String;

    move-result-object v11

    .line 1805
    .local v11, "ACdumpInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->start_SLOG()V

    .line 1807
    invoke-direct {v1, v7}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1808
    .local v12, "encSCRSInfo":Ljava/lang/String;
    invoke-direct {v1, v8}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1809
    .local v13, "encARAInfo":Ljava/lang/String;
    invoke-direct {v1, v10}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1810
    .local v14, "encmDLInfo":Ljava/lang/String;
    invoke-direct {v1, v9}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1811
    .local v15, "encCPLCInfo":Ljava/lang/String;
    invoke-direct {v1, v11}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1813
    .local v17, "encACdumpInfo":Ljava/lang/String;
    move/from16 v16, v5

    .end local v5    # "uid":I
    .local v16, "uid":I
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v18, v8

    .end local v8    # "ARAInfo":Ljava/lang/String;
    .local v18, "ARAInfo":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1814
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1815
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1816
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1817
    iget-object v5, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->stop_SLOG()V

    .line 1821
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SemService;->write_SMLOG()V

    .line 1823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v17

    .end local v17    # "encACdumpInfo":Ljava/lang/String;
    .local v5, "encACdumpInfo":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1829
    iget-object v4, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1830
    iget-object v4, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    .line 1832
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "encACdumpInfo":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "SCRSInfo":Ljava/lang/String;
    .end local v9    # "CPLCInfo":Ljava/lang/String;
    .end local v10    # "mDLInfo":Ljava/lang/String;
    .end local v11    # "ACdumpInfo":Ljava/lang/String;
    .end local v12    # "encSCRSInfo":Ljava/lang/String;
    .end local v13    # "encARAInfo":Ljava/lang/String;
    .end local v14    # "encmDLInfo":Ljava/lang/String;
    .end local v15    # "encCPLCInfo":Ljava/lang/String;
    .end local v16    # "uid":I
    .end local v18    # "ARAInfo":Ljava/lang/String;
    :goto_184
    const-string v0, "DUMP MANAGER LOG END"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_189} :catch_1a2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_189} :catch_18a

    goto :goto_1b9

    .line 1839
    :catch_18a
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/Error;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUMP MANAGER ERROR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ba

    .line 1837
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1a2
    move-exception v0

    .line 1838
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUMP MANAGER EXCEPTION "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b9
    nop

    .line 1842
    :goto_1ba
    return-void
.end method

.method public native eSEFactoryReset()I
.end method

.method public native eSEFullFactoryReset()I
.end method

.method public native eSELowFactoryReset()I
.end method

.method public eSE_FactoryReset()I
    .registers 6

    .line 930
    const/16 v0, -0x5a

    .line 932
    .local v0, "factoryResetResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_f

    .line 933
    return v2

    .line 936
    :cond_f
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_18

    .line 937
    const/16 v1, -0xc8

    return v1

    .line 940
    :cond_18
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2b

    .line 941
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 943
    return v2

    .line 946
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 947
    const/16 v1, -0xa

    return v1

    .line 951
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSEFactoryReset()I

    move-result v1
    :try_end_38
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_34 .. :try_end_38} :catch_87
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_34 .. :try_end_38} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_54
    .catch Ljava/lang/Error; {:try_start_34 .. :try_end_38} :catch_3a

    move v0, v1

    .line 964
    :goto_39
    goto :goto_a0

    .line 961
    :catch_3a
    move-exception v1

    .line 962
    .local v1, "e":Ljava/lang/Error;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/16 v0, -0x5a

    goto :goto_a0

    .line 958
    .end local v1    # "e":Ljava/lang/Error;
    :catch_54
    move-exception v1

    .line 959
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/16 v0, -0x5a

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_39

    .line 955
    :catch_6e
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_39

    .line 952
    :catch_87
    move-exception v1

    .line 953
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_39

    .line 966
    :goto_a0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 968
    return v0
.end method

.method public eSE_FullFactoryReset()I
    .registers 6

    .line 1014
    const/16 v0, -0x5a

    .line 1016
    .local v0, "factoryResetResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_f

    .line 1017
    return v2

    .line 1020
    :cond_f
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1021
    const/16 v1, -0xc8

    return v1

    .line 1024
    :cond_18
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2b

    .line 1025
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1027
    return v2

    .line 1030
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1031
    const/16 v1, -0xa

    return v1

    .line 1035
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSEFullFactoryReset()I

    move-result v1
    :try_end_38
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_34 .. :try_end_38} :catch_87
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_34 .. :try_end_38} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_54
    .catch Ljava/lang/Error; {:try_start_34 .. :try_end_38} :catch_3a

    move v0, v1

    .line 1048
    :goto_39
    goto :goto_a0

    .line 1045
    :catch_3a
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/Error;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v0, -0x5a

    goto :goto_a0

    .line 1042
    .end local v1    # "e":Ljava/lang/Error;
    :catch_54
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/16 v0, -0x5a

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_39

    .line 1039
    :catch_6e
    move-exception v1

    .line 1040
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_39

    .line 1036
    :catch_87
    move-exception v1

    .line 1037
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_39

    .line 1050
    :goto_a0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1052
    return v0
.end method

.method public eSE_LowFactoryReset()I
    .registers 6

    .line 972
    const/16 v0, -0x5a

    .line 974
    .local v0, "factoryResetResult":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    if-nez v1, :cond_f

    .line 975
    return v2

    .line 978
    :cond_f
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_18

    .line 979
    const/16 v1, -0xc8

    return v1

    .line 982
    :cond_18
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_2b

    .line 983
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 985
    return v2

    .line 988
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 989
    const/16 v1, -0xa

    return v1

    .line 993
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSELowFactoryReset()I

    move-result v1
    :try_end_38
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_34 .. :try_end_38} :catch_87
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_34 .. :try_end_38} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_54
    .catch Ljava/lang/Error; {:try_start_34 .. :try_end_38} :catch_3a

    move v0, v1

    .line 1006
    :goto_39
    goto :goto_a0

    .line 1003
    :catch_3a
    move-exception v1

    .line 1004
    .local v1, "e":Ljava/lang/Error;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/16 v0, -0x5a

    goto :goto_a0

    .line 1000
    .end local v1    # "e":Ljava/lang/Error;
    :catch_54
    move-exception v1

    .line 1001
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/16 v0, -0x5a

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_39

    .line 997
    :catch_6e
    move-exception v1

    .line 998
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_39

    .line 994
    :catch_87
    move-exception v1

    .line 995
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_39

    .line 1008
    :goto_a0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1010
    return v0
.end method

.method public native esekCertificateCheck()I
.end method

.method public esek_certificate_check()I
    .registers 6

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "ret":I
    const-string v1, "Start esek_certificate_check"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_1a

    .line 474
    const-string v1, "esek_certificate_check Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return v3

    .line 478
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_23

    .line 479
    const/16 v1, -0xc8

    return v1

    .line 482
    :cond_23
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_34

    .line 483
    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 485
    return v3

    .line 488
    :cond_34
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 489
    const/16 v1, -0xa

    return v1

    .line 493
    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Lcom/android/server/SemService;->esekCertificateCheck()I

    move-result v1
    :try_end_41
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3d .. :try_end_41} :catch_76
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3d .. :try_end_41} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_43

    move v0, v1

    .line 503
    :goto_42
    goto :goto_8f

    .line 500
    :catch_43
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/16 v0, -0x5a

    goto :goto_8f

    .line 497
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5d
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_42

    .line 494
    :catch_76
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_42

    .line 505
    :goto_8f
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 507
    return v0
.end method

.method public native getAtr()I
.end method

.method public getAtr_Spi()I
    .registers 6

    .line 1855
    const-string v0, "Start getAtr"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const/4 v0, 0x0

    .line 1858
    .local v0, "ret":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1859
    const-string v2, "getAtr Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/16 v1, -0x5b

    return v1

    .line 1863
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1864
    const/16 v1, -0xc8

    return v1

    .line 1868
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/SemService;->getAtr()I

    move-result v1
    :try_end_27
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_23 .. :try_end_27} :catch_61
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_23 .. :try_end_27} :catch_45
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_29

    move v0, v1

    .line 1875
    :goto_28
    goto :goto_7d

    .line 1873
    :catch_29
    move-exception v2

    .line 1874
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAtr_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 1871
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_45
    move-exception v2

    .line 1872
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef getAtr_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_28

    .line 1869
    :catch_61
    move-exception v2

    .line 1870
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield getAtr_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_28

    .line 1877
    :goto_7d
    return v0
.end method

.method public native getCPLC14mode([B)I
.end method

.method public getCPLC14mode()Ljava/lang/String;
    .registers 7

    .line 372
    const-string v0, "Start GetCPLC14mode"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v0, 0x64

    new-array v0, v0, [B

    .line 375
    .local v0, "get_cplc_data":[B
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 376
    const-string/jumbo v2, "getCPLC14mode Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v1, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object v1

    .line 380
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    .line 381
    return-object v3

    .line 385
    :cond_26
    :try_start_26
    invoke-virtual {p0, v0}, Lcom/android/server/SemService;->getCPLC14mode([B)I

    move-result v2

    .line 386
    .local v2, "dataLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetCPLC14mode Len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 388
    if-gtz v2, :cond_4c

    .line 389
    const-string/jumbo v4, "no data to be returned"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v3

    .line 391
    :cond_4c
    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_5a

    .line 392
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v0, v4

    .line 393
    invoke-static {v0}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 395
    :cond_5a
    const-string v4, "data overflow"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_5f} :catch_60

    .line 396
    return-object v3

    .line 398
    .end local v2    # "dataLen":I
    :catch_60
    move-exception v2

    .line 399
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getCPLC14mode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 402
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public native getESEA([B)I
.end method

.method public native getHQMMemory([B)I
.end method

.method public get_ESEA()Ljava/lang/String;
    .registers 8

    .line 406
    const-string v0, "Start get_ESEA"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 409
    .local v2, "getESEAData":[B
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 410
    const-string/jumbo v0, "get_ESEA Permission Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object v0

    .line 414
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_26

    .line 415
    return-object v4

    .line 418
    :cond_26
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 419
    return-object v4

    .line 423
    :cond_2d
    :try_start_2d
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->getESEA([B)I

    move-result v3

    .line 424
    .local v3, "dataLen":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getESEA Len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 426
    if-gtz v3, :cond_54

    .line 427
    const-string/jumbo v0, "no data to be returned"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-object v4

    .line 429
    :cond_54
    if-ge v3, v0, :cond_81

    .line 430
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v2, v0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getESEA Return0 : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v0, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 434
    :cond_81
    const-string v0, "data overflow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_86} :catch_87

    .line 435
    return-object v4

    .line 437
    .end local v3    # "dataLen":I
    :catch_87
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getESEA, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public get_HQMMemory([B)I
    .registers 7
    .param p1, "hw_memory_data"    # [B

    .line 746
    const-string v0, "Start get_HQMMemory"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, "dataLen":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 750
    const-string/jumbo v2, "get_HQMMemory Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v1, 0x0

    return v1

    .line 754
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_23

    .line 755
    const/16 v1, -0xc8

    return v1

    .line 758
    :cond_23
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_36

    .line 759
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 761
    const/16 v1, -0x5b

    return v1

    .line 764
    :cond_36
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 765
    const/16 v1, -0xa

    return v1

    .line 769
    :cond_3f
    :try_start_3f
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->getHQMMemory([B)I

    move-result v1
    :try_end_43
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3f .. :try_end_43} :catch_7d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3f .. :try_end_43} :catch_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_45

    move v0, v1

    .line 776
    :goto_44
    goto :goto_99

    .line 774
    :catch_45
    move-exception v2

    .line 775
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 772
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_61
    move-exception v2

    .line 773
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_44

    .line 770
    :catch_7d
    move-exception v2

    .line 771
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_44

    .line 778
    :goto_99
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 780
    return v0
.end method

.method public native getpkSKMS([B)I
.end method

.method public native getpkSecurity([B)I
.end method

.method public native grdmCheckRestrictedMode([B)I
.end method

.method public native grdmCheckStatusInfo()I
.end method

.method public native grdmGetAttesCert(I[B)I
.end method

.method public native grdmGetSession()I
.end method

.method public native grdmReleaseSession()I
.end method

.method public native grdmRequestKey(I[B)I
.end method

.method public declared-synchronized grdm_Check_Status()I
    .registers 6

    monitor-enter p0

    .line 2311
    const/4 v0, 0x0

    .line 2312
    .local v0, "ret":I
    :try_start_2
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_Check_Status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_87

    if-nez v1, :cond_13

    .line 2315
    monitor-exit p0

    const/16 v1, -0xa

    return v1

    .line 2318
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_87

    if-nez v1, :cond_21

    .line 2319
    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    .line 2323
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmCheckStatusInfo()I

    move-result v1
    :try_end_25
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_25} :catch_66
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_21 .. :try_end_25} :catch_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_27
    .catchall {:try_start_21 .. :try_end_25} :catchall_87

    move v0, v1

    .line 2333
    goto :goto_85

    .line 2330
    .end local p0    # "this":Lcom/android/server/SemService;
    :catch_27
    move-exception v1

    .line 2331
    .local v1, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    const/16 v0, -0x5a

    goto :goto_85

    .line 2327
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_47
    move-exception v1

    .line 2328
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const/4 v0, -0x3

    .line 2333
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_85

    .line 2324
    :catch_66
    move-exception v1

    .line 2325
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_28 .. :try_end_83} :catchall_87

    .line 2326
    const/4 v0, -0x2

    .line 2333
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 2335
    :goto_85
    monitor-exit p0

    return v0

    .line 2310
    .end local v0    # "ret":I
    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized grdm_check_restricted_mode()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 2278
    :try_start_1
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Start grdm_check_restricted_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_c1

    if-nez v0, :cond_1a

    goto/16 :goto_bd

    .line 2285
    :cond_1a
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    :try_start_1d
    new-array v2, v0, [B

    .line 2286
    .local v2, "dataBuf":[B
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->grdmCheckRestrictedMode([B)I

    move-result v3

    .line 2287
    .local v3, "dataLen":I
    if-gtz v3, :cond_2f

    .line 2288
    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v4, "no data to be returned"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1d .. :try_end_2d} :catch_9d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1d .. :try_end_2d} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_60
    .catchall {:try_start_1d .. :try_end_2d} :catchall_c1

    .line 2289
    monitor-exit p0

    return-object v1

    .line 2290
    .end local p0    # "this":Lcom/android/server/SemService;
    :cond_2f
    if-ge v3, v0, :cond_57

    .line 2291
    :try_start_31
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 2292
    .end local v2    # "dataBuf":[B
    .local v0, "dataBuf":[B
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2293
    .local v2, "data":Ljava/lang/String;
    const-string v4, "SEC_ESE_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "grdm_check_restricted_mode Return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_31 .. :try_end_55} :catch_9d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_31 .. :try_end_55} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_60
    .catchall {:try_start_31 .. :try_end_55} :catchall_c1

    .line 2294
    monitor-exit p0

    return-object v2

    .line 2296
    .end local v0    # "dataBuf":[B
    .local v2, "dataBuf":[B
    :cond_57
    :try_start_57
    const-string v0, "SEC_ESE_Service"

    const-string v4, "data overflow"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_57 .. :try_end_5e} :catch_9d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_57 .. :try_end_5e} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_60
    .catchall {:try_start_57 .. :try_end_5e} :catchall_c1

    .line 2297
    monitor-exit p0

    return-object v1

    .line 2303
    .end local v2    # "dataBuf":[B
    .end local v3    # "dataLen":I
    :catch_60
    move-exception v0

    .line 2304
    .local v0, "e":Ljava/lang/Exception;
    :try_start_61
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_check_restricted_mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 2301
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7e
    move-exception v0

    .line 2302
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_check_restricted_mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    nop

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_bb

    .line 2299
    :catch_9d
    move-exception v0

    .line 2300
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_check_restricted_mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_61 .. :try_end_ba} :catchall_c1

    .line 2305
    nop

    .line 2307
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_bb
    monitor-exit p0

    return-object v1

    .line 2281
    :cond_bd
    :goto_bd
    :try_start_bd
    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_c1

    monitor-exit p0

    return-object v0

    .line 2277
    :catchall_c1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized grdm_get_attes_cert(I[B)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "rspData"    # [B

    monitor-enter p0

    .line 2249
    const/4 v0, 0x0

    .line 2251
    .local v0, "ret":I
    :try_start_2
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_get_attes_cert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_87

    if-nez v1, :cond_13

    .line 2254
    monitor-exit p0

    const/16 v1, -0xa

    return v1

    .line 2257
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_87

    if-nez v1, :cond_21

    .line 2258
    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    .line 2262
    :cond_21
    :try_start_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->grdmGetAttesCert(I[B)I

    move-result v1
    :try_end_25
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_25} :catch_66
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_21 .. :try_end_25} :catch_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_27
    .catchall {:try_start_21 .. :try_end_25} :catchall_87

    move v0, v1

    .line 2272
    goto :goto_85

    .line 2269
    .end local p0    # "this":Lcom/android/server/SemService;
    :catch_27
    move-exception v1

    .line 2270
    .local v1, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    const/16 v0, -0x5a

    goto :goto_85

    .line 2266
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_47
    move-exception v1

    .line 2267
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const/4 v0, -0x3

    .line 2272
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_85

    .line 2263
    :catch_66
    move-exception v1

    .line 2264
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_get_attes_cert, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_28 .. :try_end_83} :catchall_87

    .line 2265
    const/4 v0, -0x2

    .line 2272
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 2274
    :goto_85
    monitor-exit p0

    return v0

    .line 2248
    .end local v0    # "ret":I
    .end local p1    # "index":I
    .end local p2    # "rspData":[B
    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized grdm_get_session()I
    .registers 6

    monitor-enter p0

    .line 2150
    const/4 v0, 0x0

    .line 2152
    .local v0, "ret":I
    :try_start_2
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_get_session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_93

    if-nez v1, :cond_13

    .line 2155
    monitor-exit p0

    const/16 v1, -0xa

    return v1

    .line 2158
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_93

    if-nez v1, :cond_21

    .line 2159
    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    .line 2163
    :cond_21
    :try_start_21
    iget-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-nez v1, :cond_30

    .line 2164
    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmGetSession()I

    move-result v1

    move v0, v1

    .line 2165
    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 2166
    iput-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_2f} :catch_72
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_21 .. :try_end_2f} :catch_53
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_33
    .catchall {:try_start_21 .. :try_end_2f} :catchall_93

    goto :goto_32

    .line 2169
    .end local p0    # "this":Lcom/android/server/SemService;
    :cond_30
    const/16 v0, -0xb

    .line 2180
    :cond_32
    :goto_32
    goto :goto_91

    .line 2177
    :catch_33
    move-exception v1

    .line 2178
    .local v1, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start_request_grdm, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const/16 v0, -0x5a

    goto :goto_91

    .line 2174
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_53
    move-exception v1

    .line 2175
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield start_request_grdm, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_32

    .line 2171
    :catch_72
    move-exception v1

    .line 2172
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef start_request_grdm, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_34 .. :try_end_8f} :catchall_93

    .line 2173
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_32

    .line 2182
    :goto_91
    monitor-exit p0

    return v0

    .line 2149
    .end local v0    # "ret":I
    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized grdm_release_session()I
    .registers 6

    monitor-enter p0

    .line 2215
    const/4 v0, 0x0

    .line 2217
    .local v0, "ret":I
    :try_start_2
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_release_session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_91

    if-nez v1, :cond_13

    .line 2220
    monitor-exit p0

    const/16 v1, -0xa

    return v1

    .line 2223
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_91

    if-nez v1, :cond_21

    .line 2224
    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    .line 2228
    :cond_21
    :try_start_21
    iget-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-eqz v1, :cond_2e

    .line 2229
    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmReleaseSession()I

    move-result v1

    move v0, v1

    .line 2230
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_2d} :catch_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_21 .. :try_end_2d} :catch_51
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_31
    .catchall {:try_start_21 .. :try_end_2d} :catchall_91

    goto :goto_30

    .line 2232
    .end local p0    # "this":Lcom/android/server/SemService;
    :cond_2e
    const/16 v0, -0xc

    .line 2243
    :goto_30
    goto :goto_8f

    .line 2240
    :catch_31
    move-exception v1

    .line 2241
    .local v1, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_release_session, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const/16 v0, -0x5a

    goto :goto_8f

    .line 2237
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_51
    move-exception v1

    .line 2238
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_release_session, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_30

    .line 2234
    :catch_70
    move-exception v1

    .line 2235
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_release_session, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_32 .. :try_end_8d} :catchall_91

    .line 2236
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_30

    .line 2245
    :goto_8f
    monitor-exit p0

    return v0

    .line 2214
    .end local v0    # "ret":I
    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized grdm_request_key(I[B)I
    .registers 8
    .param p1, "domainIndex"    # I
    .param p2, "key_blob"    # [B

    monitor-enter p0

    .line 2186
    const/4 v0, 0x0

    .line 2188
    .local v0, "ret":I
    :try_start_2
    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start grdm_request_key"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_87

    if-nez v1, :cond_13

    .line 2191
    monitor-exit p0

    const/16 v1, -0xa

    return v1

    .line 2194
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_87

    if-nez v1, :cond_21

    .line 2195
    monitor-exit p0

    const/16 v1, -0x5b

    return v1

    .line 2199
    :cond_21
    :try_start_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->grdmRequestKey(I[B)I

    move-result v1
    :try_end_25
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_25} :catch_66
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_21 .. :try_end_25} :catch_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_27
    .catchall {:try_start_21 .. :try_end_25} :catchall_87

    move v0, v1

    .line 2209
    goto :goto_85

    .line 2206
    .end local p0    # "this":Lcom/android/server/SemService;
    :catch_27
    move-exception v1

    .line 2207
    .local v1, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grdm_request_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const/16 v0, -0x5a

    goto :goto_85

    .line 2203
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_47
    move-exception v1

    .line 2204
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield grdm_request_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 v0, -0x3

    .line 2209
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_85

    .line 2200
    :catch_66
    move-exception v1

    .line 2201
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef grdm_request_key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_28 .. :try_end_83} :catchall_87

    .line 2202
    const/4 v0, -0x2

    .line 2209
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 2211
    :goto_85
    monitor-exit p0

    return v0

    .line 2185
    .end local v0    # "ret":I
    .end local p1    # "domainIndex":I
    .end local p2    # "key_blob":[B
    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native handleCCM([BI)[Ljava/lang/String;
.end method

.method public native handleCCMCB([BI[BI)[Ljava/lang/String;
.end method

.method public handle_CCM([BI)[Ljava/lang/String;
    .registers 8
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I

    .line 639
    const-string v0, "Start handle_CCM"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x0

    .line 642
    .local v0, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 643
    const-string/jumbo v2, "handle_CCM Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-object v3

    .line 647
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_21

    .line 648
    return-object v3

    .line 651
    :cond_21
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_32

    .line 652
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 654
    return-object v3

    .line 658
    :cond_32
    :try_start_32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->handleCCM([BI)[Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_32 .. :try_end_36} :catch_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_32 .. :try_end_36} :catch_54
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_38

    move-object v0, v1

    .line 665
    :goto_37
    goto :goto_8c

    .line 663
    :catch_38
    move-exception v2

    .line 664
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 661
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_54
    move-exception v2

    .line 662
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_37

    .line 659
    :catch_70
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_37

    .line 667
    :goto_8c
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 669
    return-object v0
.end method

.method public handle_CCMCB([BI[BI)[Ljava/lang/String;
    .registers 10
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .param p3, "respData"    # [B
    .param p4, "respLen"    # I

    .line 673
    const-string v0, "Start handle_CCM"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 677
    const-string/jumbo v2, "handle_CCM Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-object v3

    .line 681
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_21

    .line 682
    return-object v3

    .line 685
    :cond_21
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_32

    .line 686
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 688
    return-object v3

    .line 692
    :cond_32
    :try_start_32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->handleCCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_32 .. :try_end_36} :catch_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_32 .. :try_end_36} :catch_54
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_38

    move-object v0, v1

    .line 699
    :goto_37
    goto :goto_8c

    .line 697
    :catch_38
    move-exception v2

    .line 698
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 695
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_54
    move-exception v2

    .line 696
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_37

    .line 693
    :catch_70
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_37

    .line 701
    :goto_8c
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 703
    return-object v0
.end method

.method public native injectEsesmKeyset()I
.end method

.method public inject_esesm_keyset()I
    .registers 6

    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "ret":I
    const-string v1, "Start inject_esesm_keyset"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_1b

    .line 558
    const-string/jumbo v1, "inject_esesm_keyset Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return v3

    .line 562
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_24

    .line 563
    const/16 v1, -0xc8

    return v1

    .line 566
    :cond_24
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_35

    .line 567
    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 569
    return v3

    .line 572
    :cond_35
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 573
    const/16 v1, -0xa

    return v1

    .line 577
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/SemService;->injectEsesmKeyset()I

    move-result v1
    :try_end_42
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3e .. :try_end_42} :catch_77
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3e .. :try_end_42} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_44

    move v0, v1

    .line 587
    :goto_43
    goto :goto_90

    .line 584
    :catch_44
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/16 v0, -0x5a

    goto :goto_90

    .line 581
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5e
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_43

    .line 578
    :catch_77
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_43

    .line 589
    :goto_90
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 591
    return v0
.end method

.method public isLccmSwp()I
    .registers 6

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v2, -0x5b

    const-string v3, "SEC_ESE_Service"

    if-nez v1, :cond_16

    .line 711
    const-string/jumbo v1, "isLccmSwp Permission Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return v2

    .line 715
    :cond_16
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 716
    const/16 v1, -0xc8

    return v1

    .line 719
    :cond_1f
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_30

    .line 720
    const-string v1, "ICCC Device Status Error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 722
    return v2

    .line 726
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniIsLccmSwp()I

    move-result v1
    :try_end_34
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_30 .. :try_end_34} :catch_69
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_30 .. :try_end_34} :catch_50
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_36

    move v0, v1

    .line 736
    :goto_35
    goto :goto_82

    .line 733
    :catch_36
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v0, -0x5a

    goto :goto_82

    .line 730
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_50
    move-exception v1

    .line 731
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_35

    .line 727
    :catch_69
    move-exception v1

    .line 728
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_35

    .line 738
    :goto_82
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 740
    return v0
.end method

.method public native jniICD()I
.end method

.method public native jniIsLccmSwp()I
.end method

.method public mDLlog()Ljava/lang/String;
    .registers 15

    .line 1499
    const-string v0, "SEC_ESE_Service"

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_e0

    .line 1503
    .local v1, "APDU_mDLDB_SELECT":[B
    const/16 v2, 0x2400

    new-array v3, v2, [B

    .line 1504
    .local v3, "ListByteData":[B
    const/4 v4, 0x0

    .line 1506
    .local v4, "ListByteDataLen":I
    const/4 v5, 0x0

    .line 1508
    .local v5, "resultList":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1511
    .local v6, "isOpenCheck":Z
    const/4 v7, -0x1

    .line 1512
    .local v7, "ret":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_13
    new-array v2, v2, [B

    .line 1513
    .local v2, "res":[B
    const/4 v10, -0x1

    .line 1515
    .local v10, "resLen":I
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v11

    move v7, v11

    .line 1517
    if-eqz v7, :cond_23

    .line 1518
    const-string v11, "S-LOG Open Fail"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return-object v8

    .line 1521
    :cond_23
    const/4 v6, 0x1

    .line 1524
    array-length v11, v1

    invoke-virtual {p0, v1, v11, v2, v9}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v11

    move v10, v11

    .line 1526
    array-length v11, v2

    const/4 v12, 0x2

    if-ge v11, v12, :cond_37

    .line 1527
    const-string v11, "Select Error"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1529
    return-object v8

    .line 1531
    :cond_37
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    move-object v2, v11

    .line 1533
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SW : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v13, v10, -0x2

    aget-byte v13, v2, v13

    invoke-static {v13}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v13, v10, -0x1

    aget-byte v13, v2, v13

    invoke-static {v13}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    if-lt v10, v12, :cond_7c

    add-int/lit8 v11, v10, -0x2

    aget-byte v11, v2, v11

    const/16 v12, -0x70

    if-ne v11, v12, :cond_7c

    add-int/lit8 v11, v10, -0x1

    aget-byte v11, v2, v11

    if-nez v11, :cond_7c

    .line 1535
    const-string v11, "get mDL"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 1537
    :cond_7c
    const-string v11, "Select Response Error"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :goto_81
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1541
    invoke-static {v2}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 1542
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mDL Result : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_a0} :catch_bf
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_a0} :catch_a1

    .line 1544
    return-object v5

    .line 1552
    .end local v2    # "res":[B
    .end local v7    # "ret":I
    .end local v10    # "resLen":I
    :catch_a1
    move-exception v2

    .line 1553
    .local v2, "e":Ljava/lang/Error;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GET DATA Error "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    if-eqz v6, :cond_de

    .line 1556
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1557
    const/4 v6, 0x0

    goto :goto_de

    .line 1545
    .end local v2    # "e":Ljava/lang/Error;
    :catch_bf
    move-exception v2

    .line 1546
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GET DATA EXCEPTION "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    if-eqz v6, :cond_dd

    .line 1549
    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    .line 1550
    const/4 v0, 0x0

    move v6, v0

    .line 1559
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_dd
    nop

    .line 1561
    :cond_de
    :goto_de
    return-object v8

    nop

    :array_e0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x10t
        -0x60t
        0x0t
        0x0t
        0x2t
        0x20t
        0x20t
        0x3t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
    .end array-data
.end method

.method public native openDriverSpi()I
.end method

.method public native openSpi(I)I
.end method

.method public openSpiDriver()I
    .registers 6

    .line 2416
    const-string/jumbo v0, "openSpiDriver"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    const/16 v0, -0x5a

    .line 2419
    .local v0, "openResult":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_1d

    .line 2420
    const-string/jumbo v2, "openSpiDriver Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    return v3

    .line 2424
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2425
    const/16 v1, -0xc8

    return v1

    .line 2428
    :cond_26
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_37

    .line 2429
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2431
    return v3

    .line 2435
    :cond_37
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/SemService;->openDriverSpi()I

    move-result v1
    :try_end_3b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_37 .. :try_end_3b} :catch_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_37 .. :try_end_3b} :catch_57
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3b} :catch_3d

    move v0, v1

    .line 2445
    :goto_3c
    goto :goto_89

    .line 2442
    :catch_3d
    move-exception v2

    .line 2443
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const/16 v0, -0x5a

    goto :goto_89

    .line 2439
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_57
    move-exception v2

    .line 2440
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    const/4 v0, -0x3

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_3c

    .line 2436
    :catch_70
    move-exception v2

    .line 2437
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_3c

    .line 2447
    :goto_89
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2450
    return v0
.end method

.method public open_Spi(I)I
    .registers 7
    .param p1, "flag"    # I

    .line 1905
    const-string v0, "Start open_Spi"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/4 v0, 0x0

    .line 1909
    .local v0, "ret":I
    if-nez p1, :cond_11

    .line 1910
    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_11

    .line 1911
    const/16 v1, -0xa

    return v1

    .line 1915
    :cond_11
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1916
    const-string/jumbo v2, "open_Spi Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/16 v1, -0x5b

    return v1

    .line 1920
    :cond_22
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1921
    const/16 v1, -0xc8

    return v1

    .line 1925
    :cond_2b
    :try_start_2b
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->openSpi(I)I

    move-result v2

    move v0, v2

    .line 1926
    if-eqz v0, :cond_36

    .line 1927
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    goto :goto_93

    .line 1929
    :cond_36
    if-nez p1, :cond_93

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_3b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2b .. :try_end_3b} :catch_77
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2b .. :try_end_3b} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_3c

    goto :goto_93

    .line 1937
    :catch_3c
    move-exception v2

    .line 1938
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/16 v0, -0x5a

    goto :goto_94

    .line 1934
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5a
    move-exception v2

    .line 1935
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_93

    .line 1931
    :catch_77
    move-exception v2

    .line 1932
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield open_Spi, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/4 v0, -0x3

    .line 1940
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_93
    :goto_93
    nop

    .line 1942
    :goto_94
    return v0
.end method

.method public resetForCOSU()I
    .registers 4

    .line 1881
    const/4 v0, -0x1

    .line 1883
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1884
    const-string v1, "SEC_ESE_Service"

    const-string/jumbo v2, "resetForCOSU Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const/16 v1, -0x5b

    return v1

    .line 1888
    :cond_16
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1889
    const/16 v1, -0xc8

    return v1

    .line 1897
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/SemService;->coldReset()I

    move-result v0

    .line 1899
    return v0
.end method

.method public native scp11CertificateCheck()I
.end method

.method public scp11_certificate_check()I
    .registers 6

    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, "ret":I
    const-string v1, "Start scp11_certificate_check"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_1b

    .line 516
    const-string/jumbo v1, "scp11_certificate_check Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v3

    .line 520
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_24

    .line 521
    const/16 v1, -0xc8

    return v1

    .line 524
    :cond_24
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_35

    .line 525
    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 527
    return v3

    .line 530
    :cond_35
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 531
    const/16 v1, -0xa

    return v1

    .line 535
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/SemService;->scp11CertificateCheck()I

    move-result v1
    :try_end_42
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3e .. :try_end_42} :catch_77
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3e .. :try_end_42} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_44

    move v0, v1

    .line 545
    :goto_43
    goto :goto_90

    .line 542
    :catch_44
    move-exception v1

    .line 543
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v0, -0x5a

    goto :goto_90

    .line 539
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5e
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_43

    .line 536
    :catch_77
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_43

    .line 547
    :goto_90
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 549
    return v0
.end method

.method public secureLog(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 1567
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_12

    .line 1568
    const-string v0, "SecureLog Permission Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-void

    .line 1573
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/SemService;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_52
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_38} :catch_3a

    .line 1580
    nop

    .line 1581
    return-void

    .line 1577
    :catch_3a
    move-exception v0

    .line 1578
    .local v0, "e":Ljava/lang/Error;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S-LOG Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return-void

    .line 1574
    .end local v0    # "e":Ljava/lang/Error;
    :catch_52
    move-exception v0

    .line 1575
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S-LOG Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return-void
.end method

.method public native semFactory()V
.end method

.method public sem_factory()V
    .registers 5

    .line 445
    const-string/jumbo v0, "sem_factory"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 448
    return-void

    .line 451
    :cond_13
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 452
    return-void

    .line 456
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/SemService;->semFactory()V
    :try_end_1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1a .. :try_end_1d} :catch_56
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1a .. :try_end_1d} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 463
    :goto_1d
    goto :goto_72

    .line 461
    :catch_1e
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfield sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1d

    .line 457
    :catch_56
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDef sem_factory, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_1d

    .line 465
    :goto_72
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 466
    return-void
.end method

.method public native sendData([BI[BI)I
.end method

.method public send_Data([BI[BI)I
    .registers 10
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B
    .param p4, "flag"    # I

    .line 1988
    const-string v0, "Start send_Data"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    const/4 v0, 0x0

    .line 1992
    .local v0, "ret":I
    if-nez p4, :cond_11

    .line 1993
    iget-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v2, :cond_11

    .line 1994
    const/16 v1, -0xa

    return v1

    .line 1998
    :cond_11
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1999
    const-string/jumbo v2, "send_Data Permission Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/16 v1, -0x5b

    return v1

    .line 2003
    :cond_22
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2004
    const/16 v1, -0xc8

    return v1

    .line 2008
    :cond_2b
    if-nez p4, :cond_30

    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    .line 2009
    :cond_30
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->sendData([BI[BI)I

    move-result v2

    move v0, v2

    .line 2010
    if-nez p4, :cond_92

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_3a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2d .. :try_end_3a} :catch_76
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2d .. :try_end_3a} :catch_59
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_92

    .line 2017
    :catch_3b
    move-exception v2

    .line 2018
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    const/16 v0, -0x5a

    goto :goto_93

    .line 2014
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_59
    move-exception v2

    .line 2015
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoClassDef send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/4 v0, -0x2

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_92

    .line 2011
    :catch_76
    move-exception v2

    .line 2012
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsatisfield send_Data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const/4 v0, -0x3

    .line 2020
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_92
    :goto_92
    nop

    .line 2022
    :goto_93
    return v0
.end method

.method public native startRequestCredentials([B[BLjava/lang/String;[B)I
.end method

.method public native startRequestCredentialsList([B[BLjava/lang/String;[B[B[B)I
.end method

.method public start_SLOG()V
    .registers 9

    .line 1584
    const-string v0, "Start_SLOG"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/4 v0, -0x1

    .line 1586
    .local v0, "resultSecurity":I
    const/4 v2, -0x1

    .line 1587
    .local v2, "resultSKMS":I
    const/16 v3, 0x12c

    new-array v4, v3, [B

    .line 1588
    .local v4, "getPKDataSecurity":[B
    new-array v3, v3, [B

    .line 1590
    .local v3, "getPKDataSKMS":[B
    iget-object v5, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v5, v6}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1591
    const-string v5, "Start_SLOG Permission Error"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return-void

    .line 1596
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, v4}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v5

    move v0, v5

    .line 1597
    invoke-virtual {p0, v3}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v5

    move v2, v5

    .line 1599
    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    .line 1600
    iput v2, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    .line 1602
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    .line 1603
    iget v5, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B
    :try_end_3b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1f .. :try_end_3b} :catch_85
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1f .. :try_end_3b} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3b} :catch_55
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_3b} :catch_3d

    .line 1616
    nop

    .line 1617
    return-void

    .line 1613
    :catch_3d
    move-exception v5

    .line 1614
    .local v5, "e":Ljava/lang/Error;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void

    .line 1610
    .end local v5    # "e":Ljava/lang/Error;
    :catch_55
    move-exception v5

    .line 1611
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    return-void

    .line 1607
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6d
    move-exception v5

    .line 1608
    .local v5, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-void

    .line 1604
    .end local v5    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_85
    move-exception v5

    .line 1605
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    return-void
.end method

.method public start_attestation([BI[BI)I
    .registers 10
    .param p1, "drRsp"    # [B
    .param p2, "drLen"    # I
    .param p3, "svRsp"    # [B
    .param p4, "svLen"    # I

    .line 1126
    const-string/jumbo v0, "start_attestation"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v0, -0x1

    .line 1129
    .local v0, "result":I
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_16

    .line 1130
    return v3

    .line 1133
    :cond_16
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1134
    const/16 v1, -0xc8

    return v1

    .line 1137
    :cond_1f
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_30

    .line 1138
    const-string v2, "ICCC Device Status Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1140
    return v3

    .line 1144
    :cond_30
    :try_start_30
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->startattestation([BI[BI)I

    move-result v1
    :try_end_34
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_30 .. :try_end_34} :catch_6a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_30 .. :try_end_34} :catch_50
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_36

    move v0, v1

    .line 1154
    :goto_35
    goto :goto_84

    .line 1151
    :catch_36
    move-exception v2

    .line 1152
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/16 v0, -0x5a

    goto :goto_84

    .line 1148
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_50
    move-exception v2

    .line 1149
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/16 v0, -0x5c

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_35

    .line 1145
    :catch_6a
    move-exception v2

    .line 1146
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/16 v0, -0x5c

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_35

    .line 1156
    :goto_84
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 1159
    return v0
.end method

.method public start_request_credentials([B[BLjava/lang/String;[B)I
    .registers 18
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "key_blob"    # [B

    .line 2065
    move-object v8, p0

    const/4 v9, -0x1

    .line 2067
    .local v9, "ret":I
    const-string v0, "Start start_request_credentials"

    const-string v10, "SEC_ESE_Service"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v1, -0x5b

    if-nez v0, :cond_16

    .line 2070
    return v1

    .line 2073
    :cond_16
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2074
    const/16 v0, -0xc8

    return v0

    .line 2077
    :cond_1f
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2078
    const-string v0, "ICCC Device Status Error"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2080
    return v1

    .line 2084
    :cond_30
    :try_start_30
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmDAFileSupport()Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_30 .. :try_end_36} :catch_105
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_30 .. :try_end_36} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_c9

    if-eqz v0, :cond_c4

    .line 2085
    const/4 v1, 0x0

    .line 2086
    .local v1, "teeAllowListSignature":[B
    const/4 v2, 0x0

    .line 2089
    .local v2, "teeAllowList":[B
    :try_start_3a
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmTeeSigData()[B

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3a .. :try_end_40} :catch_ac
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3a .. :try_end_40} :catch_93
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_7b

    move-object v11, v0

    .line 2090
    .end local v1    # "teeAllowListSignature":[B
    .local v11, "teeAllowListSignature":[B
    :try_start_41
    iget-object v0, v8, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmTeeListData()[B

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_41 .. :try_end_47} :catch_78
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_41 .. :try_end_47} :catch_75
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_47} :catch_72

    move-object v12, v0

    .line 2092
    .end local v2    # "teeAllowList":[B
    .local v12, "teeAllowList":[B
    if-eqz v11, :cond_5f

    if-nez v12, :cond_4d

    goto :goto_5f

    .line 2095
    :cond_4d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p4

    :try_start_56
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SemService;->startRequestCredentialsList([B[BLjava/lang/String;[B[B[B)I

    move-result v0

    move v9, v0

    .line 2097
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2098
    return v9

    .line 2093
    :cond_5f
    :goto_5f
    const-string v0, "Data Error"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_56 .. :try_end_64} :catch_6e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_56 .. :try_end_64} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_64} :catch_66

    .line 2106
    goto/16 :goto_c4

    .line 2104
    :catch_66
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    goto :goto_7c

    .line 2102
    :catch_6a
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    goto :goto_94

    .line 2100
    :catch_6e
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    goto :goto_ad

    .line 2104
    .end local v12    # "teeAllowList":[B
    .restart local v2    # "teeAllowList":[B
    :catch_72
    move-exception v0

    move-object v1, v11

    goto :goto_7c

    .line 2102
    :catch_75
    move-exception v0

    move-object v1, v11

    goto :goto_94

    .line 2100
    :catch_78
    move-exception v0

    move-object v1, v11

    goto :goto_ad

    .line 2104
    .end local v11    # "teeAllowListSignature":[B
    .restart local v1    # "teeAllowListSignature":[B
    :catch_7b
    move-exception v0

    .line 2105
    .local v0, "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get tList Ex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 2102
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_93
    move-exception v0

    .line 2103
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get tList Unsatisfield "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    nop

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_c4

    .line 2100
    :catch_ac
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :goto_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get tList NoClassDef "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    nop

    .line 2108
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v1    # "teeAllowListSignature":[B
    .end local v2    # "teeAllowList":[B
    :cond_c4
    :goto_c4
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/SemService;->startRequestCredentials([B[BLjava/lang/String;[B)I

    move-result v0
    :try_end_c8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7c .. :try_end_c8} :catch_105
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7c .. :try_end_c8} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_c8} :catch_c9

    .end local v9    # "ret":I
    .local v0, "ret":I
    goto :goto_121

    .line 2115
    .end local v0    # "ret":I
    .restart local v9    # "ret":I
    :catch_c9
    move-exception v0

    .line 2116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start_request_credentials, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/16 v1, -0x5a

    move v0, v1

    .end local v9    # "ret":I
    .local v1, "ret":I
    goto :goto_122

    .line 2112
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":I
    .restart local v9    # "ret":I
    :catch_e8
    move-exception v0

    .line 2113
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsatisfield start_request_credentials, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const/4 v0, -0x3

    .end local v9    # "ret":I
    .local v0, "ret":I
    goto :goto_121

    .line 2109
    .end local v0    # "ret":I
    .restart local v9    # "ret":I
    :catch_105
    move-exception v0

    .line 2110
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoClassDef start_request_credentials, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const/4 v0, -0x2

    .line 2118
    .end local v9    # "ret":I
    .local v0, "ret":I
    :goto_121
    nop

    .line 2120
    :goto_122
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 2122
    return v0
.end method

.method public native startattestation([BI[BI)I
.end method

.method public native stopRequestCredentials()V
.end method

.method public stop_SLOG()V
    .registers 22

    .line 1653
    move-object/from16 v1, p0

    const-string v2, "Close Exception "

    const/16 v3, 0x64

    .line 1655
    .local v3, "fileMaxSize":I
    iget-object v0, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const-string v4, "SEC_ESE_Service"

    if-nez v0, :cond_18

    .line 1656
    const-string v0, "Stop_SLOG Permission Error"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    return-void

    .line 1660
    :cond_18
    const-string v5, "/data/log/sse1"

    .line 1661
    .local v5, "dirPath1":Ljava/lang/String;
    const-string v6, "/data/log/sse2"

    .line 1662
    .local v6, "dirPath2":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1663
    .local v7, "dirPath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1664
    .local v8, "bw":Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 1666
    .local v9, "fos":Ljava/io/FileOutputStream;
    iget-object v0, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1669
    .local v10, "logStr":Ljava/lang/String;
    if-eqz v10, :cond_116

    .line 1670
    :try_start_27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1671
    .local v0, "file1":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1673
    .local v11, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    const-wide/16 v13, 0x64

    const-wide/16 v15, 0x400

    if-eqz v12, :cond_51

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_51

    .line 1674
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_4e

    .line 1675
    move-object v7, v6

    goto/16 :goto_ba

    .line 1677
    :cond_4e
    move-object v7, v5

    goto/16 :goto_ba

    .line 1679
    :cond_51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6b

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6b

    .line 1680
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_69

    .line 1681
    move-object v7, v5

    goto :goto_ba

    .line 1683
    :cond_69
    move-object v7, v6

    goto :goto_ba

    .line 1685
    :cond_6b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_79

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_79

    .line 1686
    move-object v7, v5

    goto :goto_ba

    .line 1688
    :cond_79
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    cmp-long v12, v17, v19

    if-lez v12, :cond_a0

    .line 1689
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_9e

    .line 1690
    move-object v7, v6

    .line 1691
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_ba

    .line 1692
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_ba

    .line 1695
    :cond_9e
    move-object v7, v5

    goto :goto_ba

    .line 1698
    :cond_a0
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_b9

    .line 1699
    move-object v7, v5

    .line 1700
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    div-long v17, v17, v15

    cmp-long v12, v17, v13

    if-lez v12, :cond_ba

    .line 1701
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_ba

    .line 1704
    :cond_b9
    move-object v7, v6

    .line 1709
    :cond_ba
    :goto_ba
    invoke-direct {v1, v10}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 1711
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DP : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v12, v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v9, v12

    .line 1713
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v9, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v8, v12

    .line 1714
    if-eqz v10, :cond_ee

    .line 1715
    invoke-virtual {v8, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1717
    :cond_ee
    const-string v12, "\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1719
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 1720
    const/4 v8, 0x0

    .line 1722
    const-string v12, "chmod a+r -R /data/log/sse1"

    .line 1723
    .local v12, "cmd1":Ljava/lang/String;
    const-string v13, "chmod a+r -R /data/log/sse2"

    .line 1724
    .local v13, "cmd2":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    .line 1725
    .local v14, "rt":Ljava/lang/Runtime;
    invoke-virtual {v14, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v15

    .line 1726
    .local v15, "prc":Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 1727
    invoke-virtual {v14, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    move-object/from16 v15, v16

    .line 1728
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 1729
    nop

    .end local v0    # "file1":Ljava/io/File;
    .end local v11    # "file2":Ljava/io/File;
    .end local v12    # "cmd1":Ljava/lang/String;
    .end local v13    # "cmd2":Ljava/lang/String;
    .end local v14    # "rt":Ljava/lang/Runtime;
    .end local v15    # "prc":Ljava/lang/Process;
    goto :goto_11b

    .line 1732
    :catch_114
    move-exception v0

    goto :goto_11c

    .line 1730
    :cond_116
    const-string v0, "LD Null Error"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_11b} :catch_114

    .line 1742
    :goto_11b
    goto :goto_152

    .line 1732
    :goto_11c
    move-object v11, v0

    .line 1733
    .local v11, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Save Exception "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    if-eqz v8, :cond_152

    .line 1736
    :try_start_135
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_139

    .line 1740
    goto :goto_152

    .line 1737
    :catch_139
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1739
    .local v0, "e1":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Close Fail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_152
    :goto_152
    :try_start_152
    const-string v0, "Buffer Init"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget-object v0, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1747
    iget-object v0, v1, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_166} :catch_1a7
    .catch Ljava/lang/Error; {:try_start_152 .. :try_end_166} :catch_186
    .catchall {:try_start_152 .. :try_end_166} :catchall_183

    .line 1756
    if-eqz v9, :cond_172

    .line 1757
    :try_start_168
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1758
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1759
    const/4 v9, 0x0

    goto :goto_172

    .line 1766
    :catch_170
    move-exception v0

    goto :goto_17d

    .line 1761
    :cond_172
    :goto_172
    if-eqz v8, :cond_1d8

    .line 1762
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1763
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_17a} :catch_170

    .line 1764
    const/4 v0, 0x0

    move-object v8, v0

    .end local v8    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    goto :goto_1d8

    .line 1768
    .local v0, "e1":Ljava/io/IOException;
    .restart local v8    # "bw":Ljava/io/BufferedWriter;
    :goto_17d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1c8

    .line 1755
    .end local v0    # "e1":Ljava/io/IOException;
    :catchall_183
    move-exception v0

    move-object v11, v0

    goto :goto_1da

    .line 1750
    :catch_186
    move-exception v0

    .line 1751
    .local v0, "e":Ljava/lang/Error;
    :try_start_187
    const-string v11, "Buffer Error"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catchall {:try_start_187 .. :try_end_18c} :catchall_183

    .line 1756
    .end local v0    # "e":Ljava/lang/Error;
    if-eqz v9, :cond_198

    .line 1757
    :try_start_18e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1758
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1759
    const/4 v9, 0x0

    goto :goto_198

    .line 1766
    :catch_196
    move-exception v0

    goto :goto_1a1

    .line 1761
    :cond_198
    :goto_198
    if-eqz v8, :cond_1d8

    .line 1762
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1763
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_1a0} :catch_196

    goto :goto_1c1

    .line 1768
    .local v0, "e1":Ljava/io/IOException;
    :goto_1a1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1c8

    .line 1748
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_1a7
    move-exception v0

    .line 1749
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1a8
    const-string v11, "Buffer Exception"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ad
    .catchall {:try_start_1a8 .. :try_end_1ad} :catchall_183

    .line 1756
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_1b9

    .line 1757
    :try_start_1af
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1758
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1759
    const/4 v9, 0x0

    goto :goto_1b9

    .line 1766
    :catch_1b7
    move-exception v0

    goto :goto_1c3

    .line 1761
    :cond_1b9
    :goto_1b9
    if-eqz v8, :cond_1d8

    .line 1762
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1763
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1c1} :catch_1b7

    .line 1764
    :goto_1c1
    const/4 v8, 0x0

    goto :goto_1d8

    .line 1768
    .local v0, "e1":Ljava/io/IOException;
    :goto_1c3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1c8
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_1d9

    .line 1769
    :cond_1d8
    :goto_1d8
    nop

    .line 1771
    :goto_1d9
    return-void

    .line 1756
    :goto_1da
    if-eqz v9, :cond_1e6

    .line 1757
    :try_start_1dc
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1758
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1759
    const/4 v9, 0x0

    goto :goto_1e6

    .line 1766
    :catch_1e4
    move-exception v0

    goto :goto_1f1

    .line 1761
    :cond_1e6
    :goto_1e6
    if-eqz v8, :cond_206

    .line 1762
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 1763
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1ee} :catch_1e4

    .line 1764
    const/4 v0, 0x0

    move-object v8, v0

    .end local v8    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    goto :goto_206

    .line 1768
    .local v0, "e1":Ljava/io/IOException;
    .restart local v8    # "bw":Ljava/io/BufferedWriter;
    :goto_1f1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_207

    .line 1769
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_206
    :goto_206
    nop

    .line 1770
    :goto_207
    throw v11
.end method

.method public stop_request_credentials()V
    .registers 5

    .line 2126
    const-string v0, "Start stop_request_credentials"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2129
    return-void

    .line 2133
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/SemService;->stopRequestCredentials()V
    :try_end_15
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_15} :catch_4e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_12 .. :try_end_15} :catch_32
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 2140
    :goto_15
    goto :goto_6a

    .line 2138
    :catch_16
    move-exception v0

    .line 2139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 2136
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsatisfield stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_15

    .line 2134
    :catch_4e
    move-exception v0

    .line 2135
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDef stop_request_credentials, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_15

    .line 2141
    :goto_6a
    return-void
.end method

.method public declared-synchronized synchronizedCloseSpi(I)I
    .registers 3
    .param p1, "flag"    # I

    monitor-enter p0

    .line 1984
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->closeSpi(I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 1984
    .end local p0    # "this":Lcom/android/server/SemService;
    .end local p1    # "flag":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native verifyEsesmKeyset()I
.end method

.method public verify_esesm_keyset()I
    .registers 6

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, "ret":I
    const-string v1, "Start verify_esesm_keyset"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    const/16 v3, -0x5b

    if-nez v1, :cond_1b

    .line 600
    const-string/jumbo v1, "verify_esesm_keyset Permission Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v3

    .line 604
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_24

    .line 605
    const/16 v1, -0xc8

    return v1

    .line 608
    :cond_24
    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v1

    if-nez v1, :cond_35

    .line 609
    const-string v1, "ICCC Device Status Error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 611
    return v3

    .line 614
    :cond_35
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 615
    const/16 v1, -0xa

    return v1

    .line 619
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/SemService;->verifyEsesmKeyset()I

    move-result v1
    :try_end_42
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3e .. :try_end_42} :catch_77
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3e .. :try_end_42} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_44

    move v0, v1

    .line 629
    :goto_43
    goto :goto_90

    .line 626
    :catch_44
    move-exception v1

    .line 627
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/16 v0, -0x5a

    goto :goto_90

    .line 623
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5e
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, -0x3

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_43

    .line 620
    :catch_77
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, -0x2

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_43

    .line 631
    :goto_90
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    .line 633
    return v0
.end method

.method public write_SMLOG()V
    .registers 9

    .line 1619
    iget-boolean v0, p0, Lcom/android/server/SemService;->supportEsek:Z

    if-nez v0, :cond_5

    .line 1620
    return-void

    .line 1622
    :cond_5
    const-string v0, "DP :SM"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-direct {p0}, Lcom/android/server/SemService;->esesm_getEncodedLog()Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, "EsesmInfo":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 1625
    const-string v0, "Null"

    .line 1627
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, "logStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1630
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_19
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/data/log/sse3"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1631
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 1632
    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1633
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1635
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1636
    const/4 v3, 0x0

    .line 1638
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 1639
    .local v5, "rt":Ljava/lang/Runtime;
    const-string v6, "chmod a+r -R /data/log/sse3"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 1640
    .local v6, "prc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4a} :catch_4c

    .line 1650
    nop

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "rt":Ljava/lang/Runtime;
    .end local v6    # "prc":Ljava/lang/Process;
    goto :goto_80

    .line 1641
    :catch_4c
    move-exception v4

    .line 1642
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    if-eqz v3, :cond_80

    .line 1645
    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 1648
    goto :goto_80

    .line 1646
    :catch_69
    move-exception v5

    .line 1647
    .local v5, "e1":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Close Fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_80
    :goto_80
    return-void
.end method
