.class public Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method protected constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 74
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 77
    .local v0, "e":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 81
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_44

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :pswitch_2d
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 91
    goto :goto_42

    .line 87
    :pswitch_34
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 88
    goto :goto_42

    .line 84
    :pswitch_3b
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 85
    nop

    .line 95
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_42
    goto :goto_e

    .line 96
    :cond_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_34
        :pswitch_2d
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 157
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 7
    .param p1, "spki"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 113
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 116
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 117
    .local v0, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 119
    .local v1, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    .line 120
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 121
    invoke-interface {v0, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 10
    .param p1, "spki"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .line 134
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 137
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 138
    .local v1, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    .line 140
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    .line 141
    .local v3, "bytes":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 142
    invoke-interface {v1, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 144
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 145
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 146
    if-eqz p3, :cond_34

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_34
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 147
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "keyIdentifier"    # [B

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 167
    return-void
.end method

.method public constructor <init>([BLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "keyIdentifier"    # [B
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .line 177
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 178
    if-eqz p1, :cond_12

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 179
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 180
    if-eqz p3, :cond_1e

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_1e
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 181
    return-void
.end method

.method public static fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 69
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 49
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_8

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    return-object v0

    .line 59
    :cond_8
    if-eqz p0, :cond_14

    .line 61
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 64
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAuthorityCertIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_9

    .line 202
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 205
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyIdentifier()[B
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_9

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    .line 190
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 213
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 215
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 217
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 220
    :cond_13
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_20

    .line 222
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 225
    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2d

    .line 227
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 230
    :cond_2d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_d
    const-string/jumbo v0, "null"

    .line 237
    .local v0, "keyID":Ljava/lang/String;
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
