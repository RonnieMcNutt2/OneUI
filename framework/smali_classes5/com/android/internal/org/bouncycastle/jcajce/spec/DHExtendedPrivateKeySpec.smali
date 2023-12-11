.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPrivateKeySpec;
.super Ljavax/crypto/spec/DHPrivateKeySpec;
.source "DHExtendedPrivateKeySpec.java"


# instance fields
.field private final params:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljavax/crypto/spec/DHParameterSpec;

    .line 26
    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 27
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPrivateKeySpec;->params:Ljavax/crypto/spec/DHParameterSpec;

    .line 28
    return-void
.end method


# virtual methods
.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPrivateKeySpec;->params:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method
