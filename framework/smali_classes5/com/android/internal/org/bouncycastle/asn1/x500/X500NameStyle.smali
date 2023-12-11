.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
.super Ljava/lang/Object;
.source "X500NameStyle.java"


# virtual methods
.method public abstract areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
.end method

.method public abstract attrNameToOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method

.method public abstract calculateHashCode(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)I
.end method

.method public abstract fromString(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
.end method

.method public abstract oidToAttrNames(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
.end method

.method public abstract oidToDisplayName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
.end method

.method public abstract stringToValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
.end method

.method public abstract toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
.end method
