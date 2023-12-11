.class public final Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private final mFidoRequestData:[B

.field private mFidoResultData:[B


# direct methods
.method static bridge synthetic -$$Nest$mgetOpId(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;)J
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$msetFidoResultData(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;[B)V
    .registers 4
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    .line 397
    new-instance v0, Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 398
    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoRequestData:[B

    .line 399
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .registers 4
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    .line 402
    new-instance v0, Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 403
    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoRequestData:[B

    .line 404
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;[B)V
    .registers 4
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    .line 407
    new-instance v0, Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 408
    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoRequestData:[B

    .line 409
    return-void
.end method

.method private getOpId()J
    .registers 3

    .line 448
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method private setFidoResultData([B)V
    .registers 2
    .param p1, "fidoResultData"    # [B

    .line 463
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    .line 464
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getFidoResultData()[B
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
