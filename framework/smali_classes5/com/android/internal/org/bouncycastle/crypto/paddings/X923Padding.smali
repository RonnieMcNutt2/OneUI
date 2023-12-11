.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;
.super Ljava/lang/Object;
.source "X923Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 47
    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    .line 49
    .local v0, "code":B
    :goto_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_1a

    .line 51
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_10

    .line 53
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    goto :goto_17

    .line 57
    :cond_10
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 59
    :goto_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 62
    :cond_1a
    aput-byte v0, p1, p2

    .line 64
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "X9.23"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    .line 27
    return-void
.end method

.method public padCount([B)I
    .registers 5
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 75
    .local v0, "count":I
    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 80
    return v0

    .line 77
    :cond_b
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
