.class public interface abstract Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
.super Ljava/lang/Object;
.source "ContentVerifierProvider.java"


# virtual methods
.method public abstract get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

.method public abstract getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
.end method

.method public abstract hasAssociatedCertificate()Z
.end method
