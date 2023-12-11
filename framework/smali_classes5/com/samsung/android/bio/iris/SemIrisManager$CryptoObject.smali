.class public final Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCrypto:Ljava/lang/Object;

.field private mFidoRequestData:[B

.field private mFidoResultData:[B


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .registers 3
    .param p1, "signature"    # Ljava/security/Signature;

    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1233
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1235
    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;[B)V
    .registers 4
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1181
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1183
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1185
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .registers 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1247
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1249
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .registers 4
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1199
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1201
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1203
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .registers 3
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1261
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1263
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;[B)V
    .registers 4
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1217
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 1219
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1221
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .registers 3

    .line 1291
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Cipher;

    if-eqz v1, :cond_9

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getFidoRequestData()[B
    .registers 2

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public getFidoResultData()[B
    .registers 2

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .registers 3

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Mac;

    if-eqz v1, :cond_9

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getOpId()J
    .registers 3

    .line 1323
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public getSignature()Ljava/security/Signature;
    .registers 3

    .line 1275
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljava/security/Signature;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/security/Signature;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public setFidoRequestData([B)V
    .registers 2
    .param p1, "requestData"    # [B

    .line 1355
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 1357
    return-void
.end method

.method public setFidoResultData([B)V
    .registers 2
    .param p1, "fidoResultData"    # [B

    .line 1386
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 1388
    return-void
.end method
