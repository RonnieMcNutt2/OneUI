.class public final Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private final mFidoRequestData:[B

.field private mFidoResultData:[B


# direct methods
.method private constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V
    .registers 3
    .param p1, "cry"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 334
    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 335
    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 336
    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;[B)V
    .registers 4
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 356
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 357
    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 358
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .registers 4
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 362
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 363
    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 364
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;[B)V
    .registers 4
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 368
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 369
    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    .line 370
    return-void
.end method


# virtual methods
.method public getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getFidoRequestData()[B
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public getFidoResultData()[B
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public getOpId()J
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignature()Ljava/security/Signature;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method setFidoResultData([B)V
    .registers 2
    .param p1, "fidoResultData"    # [B

    .line 421
    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->mFidoResultData:[B

    .line 422
    return-void
.end method
