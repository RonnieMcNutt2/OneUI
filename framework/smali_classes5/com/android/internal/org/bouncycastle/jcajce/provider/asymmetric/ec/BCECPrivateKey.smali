.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;
.super Ljava/lang/Object;
.source "BCECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPointEncoder;


# static fields
.field static final serialVersionUID:J = 0xdcd5cdd2909ced4L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private transient d:Ljava/math/BigInteger;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 204
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 206
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 12
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .param p4, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p5, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 155
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 156
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 157
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 159
    if-nez p4, :cond_46

    .line 161
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 162
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 164
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 167
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 169
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_58

    .line 172
    :cond_46
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 174
    .local v0, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v0, p4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 179
    .end local v0    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_58
    :try_start_58
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_5f

    .line 184
    goto :goto_63

    .line 181
    :catch_5f
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 12
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p5, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 125
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 126
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 127
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 129
    if-nez p4, :cond_46

    .line 131
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 132
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 134
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 137
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 138
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 139
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_48

    .line 142
    :cond_46
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 145
    :goto_48
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 192
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 193
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 195
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 109
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 111
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 112
    iget-boolean v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    .line 113
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 114
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 115
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 73
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 76
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 78
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 81
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 83
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 84
    .end local v0    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_3e

    .line 87
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 90
    :goto_3e
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 99
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 101
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 102
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 4
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;
    .param p2, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 65
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 66
    return-void
.end method

.method private getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 4
    .param p1, "pub"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 376
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 378
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 380
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_11
    move-exception v0

    .line 382
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 7
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 214
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getCurve(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 215
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 217
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 218
    .local v2, "privKey":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_2b

    .line 220
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    .line 222
    .local v3, "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 223
    .end local v3    # "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    goto :goto_3b

    .line 226
    :cond_2b
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v3

    .line 228
    .local v3, "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 229
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 231
    .end local v3    # "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_3b
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 390
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 392
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 394
    .local v0, "enc":[B
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 396
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 398
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 399
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 408
    return-void
.end method


# virtual methods
.method engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_9

    .line 311
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 314
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 352
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 354
    return v1

    .line 357
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 359
    .local v0, "other":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 337
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 8

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 259
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 261
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    .local v1, "orderBitLength":I
    goto :goto_26

    .line 265
    .end local v1    # "orderBitLength":I
    :cond_18
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    .line 271
    .restart local v1    # "orderBitLength":I
    :goto_26
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v3, :cond_36

    .line 273
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .local v3, "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    goto :goto_3f

    .line 277
    .end local v3    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :cond_36
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 282
    .restart local v3    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_3f
    :try_start_3f
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v6, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 284
    .local v4, "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_51} :catch_52

    return-object v2

    .line 286
    .end local v4    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_52
    move-exception v4

    .line 288
    .local v4, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 245
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_6

    .line 301
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_6
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 331
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 332
    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .registers 3
    .param p1, "style"    # Ljava/lang/String;

    .line 347
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    .line 348
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
