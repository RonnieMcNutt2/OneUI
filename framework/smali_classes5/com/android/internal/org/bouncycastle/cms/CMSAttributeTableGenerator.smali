.class public interface abstract Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
.super Ljava/lang/Object;
.source "CMSAttributeTableGenerator.java"


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field public static final DIGEST:Ljava/lang/String; = "digest"

.field public static final DIGEST_ALGORITHM_IDENTIFIER:Ljava/lang/String; = "digestAlgID"

.field public static final MAC_ALGORITHM_IDENTIFIER:Ljava/lang/String; = "macAlgID"

.field public static final SIGNATURE:Ljava/lang/String; = "encryptedDigest"

.field public static final SIGNATURE_ALGORITHM_IDENTIFIER:Ljava/lang/String; = "signatureAlgID"


# virtual methods
.method public abstract getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerationException;
        }
    .end annotation
.end method
