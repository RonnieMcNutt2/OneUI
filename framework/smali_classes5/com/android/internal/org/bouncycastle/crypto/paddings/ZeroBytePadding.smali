.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 44
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 46
    .local v0, "added":I
    :goto_2
    array-length v1, p1

    if-ge p2, v1, :cond_b

    .line 48
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 49
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 52
    :cond_b
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "ZeroByte"

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

    .line 24
    return-void
.end method

.method public padCount([B)I
    .registers 4
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 61
    array-length v0, p1

    .line 63
    .local v0, "count":I
    :goto_1
    if-lez v0, :cond_d

    .line 65
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    if-eqz v1, :cond_a

    .line 67
    goto :goto_d

    .line 70
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 73
    :cond_d
    :goto_d
    array-length v1, p1

    sub-int/2addr v1, v0

    return v1
.end method
