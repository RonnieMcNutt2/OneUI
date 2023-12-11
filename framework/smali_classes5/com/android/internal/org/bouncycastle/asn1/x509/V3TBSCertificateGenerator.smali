.class public Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V3TBSCertificateGenerator.java"


# instance fields
.field private altNamePresentAndCritical:Z

.field endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private subjectUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    .line 49
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 7

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_99

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_99

    .line 169
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 171
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 181
    .local v1, "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 184
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 187
    .end local v1    # "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_5b

    .line 189
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_63

    .line 193
    :cond_5b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 196
    :goto_63
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_76

    .line 200
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v4, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 203
    :cond_76
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_82

    .line 205
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v4, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 208
    :cond_82
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_8f

    .line 210
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    :cond_8f
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "endDate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 94
    return-void
.end method

.method public setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "endDate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 99
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 100
    return-void
.end method

.method public setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 4
    .param p1, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 148
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 149
    if-eqz p1, :cond_15

    .line 151
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 153
    .local v0, "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    .line 158
    .end local v0    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_15
    return-void
.end method

.method public setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 3
    .param p1, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    .line 142
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 143
    return-void
.end method

.method public setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 75
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 76
    return-void
.end method

.method public setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 69
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 70
    return-void
.end method

.method public setIssuerUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 120
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 121
    return-void
.end method

.method public setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2
    .param p1, "serialNumber"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 54
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 55
    return-void
.end method

.method public setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .param p1, "signature"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 60
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    return-void
.end method

.method public setStartDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "startDate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 82
    return-void
.end method

.method public setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "startDate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 88
    return-void
.end method

.method public setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 114
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 115
    return-void
.end method

.method public setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 109
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .param p1, "pubKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 132
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 133
    return-void
.end method

.method public setSubjectUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 126
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 127
    return-void
.end method
