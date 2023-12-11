.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private final mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

.field private final mFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V
    .registers 3
    .param p1, "crypto"    # Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;
    .param p2, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    .line 488
    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 489
    return-void
.end method


# virtual methods
.method public getCryptoObject()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    return-object v0
.end method

.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method
