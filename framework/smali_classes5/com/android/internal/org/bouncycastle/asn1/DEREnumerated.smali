.class public Lcom/android/internal/org/bouncycastle/asn1/DEREnumerated;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
.source "DEREnumerated.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 29
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 19
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 20
    return-void
.end method
