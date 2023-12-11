.class public Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private final content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

.field private final contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected final digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

.field private final isCounterSignature:Z

.field private resultDigest:[B

.field private final sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

.field private final signature:[B

.field protected final signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

.field protected final unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V
    .registers 10
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .param p2, "contentType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "content"    # Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;
    .param p4, "resultDigest"    # [B

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 68
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 69
    if-nez p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v0

    .line 73
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 75
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    .line 77
    .local v1, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>([B)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 78
    .end local v1    # "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    goto :goto_47

    .line 81
    :cond_2c
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    .line 83
    .local v1, "iAnds":Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 86
    .end local v1    # "iAnds":Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    :goto_47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    .line 92
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    .line 93
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 94
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V
    .registers 3
    .param p1, "baseInfo"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 105
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V

    .line 106
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V
    .registers 4
    .param p1, "baseInfo"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p2, "info"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 119
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 122
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 123
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 125
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 126
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    .line 127
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    .line 128
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 129
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 130
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 131
    return-void
.end method

.method public static addCounterSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 15
    .param p0, "signerInformation"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p1, "counterSigners"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 733
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 734
    .local v0, "sInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 737
    .local v1, "unsignedAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v1, :cond_d

    .line 739
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .local v2, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_12

    .line 743
    .end local v2    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_d
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 746
    .restart local v2    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_12
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 748
    .local v3, "sigs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 750
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1f

    .line 753
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_33
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 755
    new-instance v4, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 756
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    .line 757
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v10

    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    const/4 v7, 0x0

    invoke-direct {v4, v12, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    .line 755
    return-object v4
.end method

.method private doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .registers 13
    .param p1, "verifier"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 356
    const-string v0, "can\'t process mime object to create signature."

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "encName":Ljava/lang/String;
    :try_start_c
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getContentVerifier(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v2
    :try_end_18
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_c .. :try_end_18} :catch_265

    .line 366
    .local v2, "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    nop

    .line 370
    :try_start_19
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 372
    .local v3, "sigOut":Ljava/io/OutputStream;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v4, :cond_77

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v4

    .line 375
    .local v4, "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz v5, :cond_5d

    .line 377
    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 379
    .local v5, "digOut":Ljava/io/OutputStream;
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v6, :cond_4d

    .line 381
    instance-of v6, v2, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz v6, :cond_3f

    .line 383
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v6, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_59

    .line 387
    :cond_3f
    new-instance v6, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v6, v5, v3}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 389
    .local v6, "cOut":Ljava/io/OutputStream;
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 391
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 392
    .end local v6    # "cOut":Ljava/io/OutputStream;
    goto :goto_59

    .line 396
    :cond_4d
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v6, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 400
    :goto_59
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 401
    .end local v5    # "digOut":Ljava/io/OutputStream;
    goto :goto_68

    .line 402
    :cond_5d
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v5, :cond_6f

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 412
    :goto_68
    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 413
    .end local v4    # "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    goto :goto_8a

    .line 409
    .restart local v4    # "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    :cond_6f
    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v6, "data not encapsulated in signature - use detached constructor."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local v1    # "encName":Ljava/lang/String;
    .end local v2    # "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .end local p1    # "verifier":Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    throw v5

    .line 416
    .end local v4    # "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .restart local v1    # "encName":Ljava/lang/String;
    .restart local v2    # "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .restart local p1    # "verifier":Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    :cond_77
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v4, :cond_83

    .line 418
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz v4, :cond_8a

    .line 420
    invoke-interface {v4, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_8a

    .line 425
    :cond_83
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 429
    :cond_8a
    :goto_8a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_8d} :catch_25e
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_19 .. :try_end_8d} :catch_240

    .line 438
    .end local v3    # "sigOut":Ljava/io/OutputStream;
    nop

    .line 442
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "content-type"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 444
    .local v3, "validContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v3, :cond_a9

    .line 446
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v4, :cond_a1

    goto :goto_bc

    .line 448
    :cond_a1
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v4, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_a9
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v4, :cond_238

    .line 458
    instance-of v4, v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_230

    .line 463
    move-object v4, v3

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 465
    .local v4, "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_228

    .line 472
    .end local v3    # "validContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_bc
    :goto_bc
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v3

    .line 476
    .local v3, "signedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    .line 477
    .local v4, "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v4, :cond_db

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v5

    if-gtz v5, :cond_d3

    goto :goto_db

    .line 479
    :cond_d3
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_db
    :goto_db
    const/4 v5, 0x1

    if-eqz v3, :cond_14e

    .line 483
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v6

    .line 484
    .local v6, "protectionAttributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v7

    if-gt v7, v5, :cond_146

    .line 489
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v7

    if-lez v7, :cond_14e

    .line 491
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v8

    .line 492
    .local v8, "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v9

    if-ne v9, v5, :cond_13e

    .line 497
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    aget-object v7, v9, v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object v7

    .line 499
    .local v7, "algorithmProtection":Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_136

    .line 504
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_12e

    goto :goto_14e

    .line 506
    :cond_12e
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_136
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    .end local v7    # "algorithmProtection":Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    :cond_13e
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    .end local v8    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_146
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    .end local v4    # "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .end local v6    # "protectionAttributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_14e
    :goto_14e
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "message-digest"

    invoke-direct {p0, v4, v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 516
    .local v4, "validMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v4, :cond_167

    .line 518
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v6, :cond_15e

    goto :goto_17a

    .line 520
    :cond_15e
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string/jumbo v5, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_167
    instance-of v6, v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v6, :cond_21f

    .line 530
    move-object v6, v4

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 532
    .local v6, "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_216

    .line 541
    .end local v4    # "validMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v6    # "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :goto_17a
    if-eqz v3, :cond_191

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 542
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    if-gtz v4, :cond_189

    goto :goto_191

    .line 544
    :cond_189
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v4, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_191
    :goto_191
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    .line 548
    .local v4, "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v4, :cond_1c1

    .line 550
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v6

    .line 551
    .local v6, "csAttrs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_19e
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v8

    if-ge v7, v8, :cond_1c1

    .line 553
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v8

    .line 554
    .local v8, "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v9

    if-lt v9, v5, :cond_1b9

    .line 551
    .end local v8    # "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    add-int/lit8 v7, v7, 0x1

    goto :goto_19e

    .line 556
    .restart local v8    # "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_1b9
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    .end local v4    # "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .end local v6    # "csAttrs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v7    # "i":I
    .end local v8    # "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_1c1
    :try_start_1c1
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v4, :cond_206

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v4, :cond_206

    .line 568
    instance-of v4, v2, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz v4, :cond_206

    .line 570
    move-object v4, v2

    check-cast v4, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    .line 572
    .local v4, "rawVerifier":Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;
    const-string v5, "RSA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fb

    .line 574
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sget-object v8, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 576
    .local v5, "digInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v0

    return v0

    .line 579
    .end local v5    # "digInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    :cond_1fb
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v0

    return v0

    .line 583
    .end local v4    # "rawVerifier":Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;
    :cond_206
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v0
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_20e} :catch_20f

    return v0

    .line 585
    :catch_20f
    move-exception v4

    .line 587
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v5, v0, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 534
    .local v4, "validMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .local v6, "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_216
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string/jumbo v5, "message-digest attribute value does not match calculated value"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    .end local v6    # "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_21f
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string/jumbo v5, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    .local v3, "validContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .local v4, "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_228
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "content-type attribute value does not match eContentType"

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    .end local v4    # "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_230
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v4, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_238
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v4, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    .end local v3    # "validContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_240
    move-exception v0

    .line 437
    .local v0, "e":Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t create digest calculator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 431
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
    :catch_25e
    move-exception v3

    .line 433
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v4, v0, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 363
    .end local v2    # "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_265
    move-exception v0

    .line 365
    .restart local v0    # "e":Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t create content verifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 3
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    if-eqz p1, :cond_b

    .line 149
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 152
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 674
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 677
    .local v0, "validSigningTime":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_d

    .line 679
    const/4 v1, 0x0

    return-object v1

    .line 684
    :cond_d
    :try_start_d
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_11} :catch_12

    return-object v1

    .line 686
    :catch_12
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string/jumbo v3, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 11
    .param p1, "attrOID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "printableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 636
    .local v0, "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v0, :cond_30

    .line 637
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-gtz v1, :cond_11

    goto :goto_30

    .line 639
    :cond_11
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 644
    .local v1, "signedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    const/4 v2, 0x0

    if-nez v1, :cond_38

    .line 646
    return-object v2

    .line 649
    :cond_38
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    .line 650
    .local v3, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_9e

    .line 667
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :pswitch_62
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 657
    .local v4, "t":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 658
    .local v5, "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7d

    .line 664
    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 660
    :cond_7d
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attribute MUST have a single attribute value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    .end local v4    # "t":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .end local v5    # "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :pswitch_9c
    return-object v2

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_62
    .end packed-switch
.end method

.method public static replaceUnsignedAttributes(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 13
    .param p0, "signerInformation"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p1, "unsignedAttributes"    # Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 705
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 706
    .local v0, "sInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    const/4 v1, 0x0

    .line 708
    .local v1, "unsignedAttr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    if-eqz p1, :cond_f

    .line 710
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v1, v2

    .line 713
    :cond_f
    new-instance v9, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 714
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 715
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    move-object v2, v10

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    const/4 v4, 0x0

    invoke-direct {v9, v10, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    .line 713
    return-object v9
.end method


# virtual methods
.method public getContentDigest()[B
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v0, :cond_9

    .line 206
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 203
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getCounterSignatures()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .registers 12

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 283
    .local v0, "unsignedAttributeTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-nez v0, :cond_12

    .line 285
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 288
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "counterSignatures":Ljava/util/List;
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 297
    .local v2, "allCSAttrs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 299
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 306
    .local v4, "counterSignatureAttribute":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 307
    .local v5, "values":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    .line 312
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "en":Ljava/util/Enumeration;
    :goto_35
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 328
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v7

    .line 330
    .local v7, "si":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    new-instance v8, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v9, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v10, 0x0

    invoke-direct {v8, v7, v10, v9, v10}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v7    # "si":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    goto :goto_35

    .line 297
    .end local v4    # "counterSignatureAttribute":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .end local v5    # "values":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v6    # "en":Ljava/util/Enumeration;
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 334
    .end local v3    # "i":I
    :cond_59
    new-instance v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public getDigestAlgOID()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgParams()[B
    .registers 5

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 190
    :catch_b
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting digest parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncodedSignedAttributes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_b

    .line 346
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 349
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .registers 5

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 227
    :catch_b
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v1, :cond_f

    .line 241
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v1, :cond_f

    .line 255
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 258
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public isCounterSignature()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    return v0
.end method

.method public toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public verify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .registers 6
    .param p1, "verifier"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 603
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v0

    .line 605
    .local v0, "signingTime":Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 607
    if-eqz v0, :cond_24

    .line 609
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    .line 611
    .local v1, "dcv":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_24

    .line 613
    :cond_1b
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string/jumbo v3, "verifier not valid at signingTime"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    .end local v1    # "dcv":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    :cond_24
    :goto_24
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v1

    return v1
.end method
