.class public Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "SignerInfoGeneratorBuilder.java"


# instance fields
.field private digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

.field private directSignature:Z

.field private sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

.field private unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 3
    .param p1, "digestProvider"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .registers 3
    .param p1, "digestProvider"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "sigEncAlgFinder"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 43
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 44
    return-void
.end method

.method private createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .registers 11
    .param p1, "contentSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "sigId"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    if-eqz v0, :cond_12

    .line 127
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V

    return-object v0

    .line 130
    :cond_12
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_25

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v1, :cond_1b

    goto :goto_25

    .line 140
    :cond_1b
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-object v0

    .line 132
    :cond_25
    :goto_25
    if-nez v0, :cond_2e

    .line 134
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 137
    :cond_2e
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v0
.end method


# virtual methods
.method public build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .registers 6
    .param p1, "contentSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "certHolder"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 98
    .local v0, "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    .line 100
    .local v1, "sigInfoGen":Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v1, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->setAssociatedCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V

    .line 102
    return-object v1
.end method

.method public build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[B)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .registers 5
    .param p1, "contentSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "subjectKeyIdentifier"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 119
    .local v0, "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    return-object v1
.end method

.method public setDirectSignature(Z)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2
    .param p1, "hasNoSignedAttributes"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    .line 56
    return-object p0
.end method

.method public setSignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2
    .param p1, "signedGen"    # Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 67
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 69
    return-object p0
.end method

.method public setUnsignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2
    .param p1, "unsignedGen"    # Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 82
    return-object p0
.end method
