.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPublicKeyParameters.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    .line 13
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->validate(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    .line 24
    return-void
.end method

.method private validate(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 28
    if-eqz p2, :cond_36

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_2d

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2d

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    .line 31
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 33
    return-object p1

    .line 36
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y value does not appear to be in correct group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_36
    return-object p1
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method
