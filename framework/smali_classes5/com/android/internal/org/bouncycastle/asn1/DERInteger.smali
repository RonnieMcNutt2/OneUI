.class public Lcom/android/internal/org/bouncycastle/asn1/DERInteger;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
.source "DERInteger.java"


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    .line 21
    return-void
.end method
