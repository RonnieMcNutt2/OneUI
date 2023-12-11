.class public Landroid/net/http/SslCertificate$DName;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/SslCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DName"
.end annotation


# instance fields
.field private mCName:Ljava/lang/String;

.field private mDName:Ljava/lang/String;

.field private mOName:Ljava/lang/String;

.field private mUName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/SslCertificate;


# direct methods
.method public constructor <init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "this$0"    # Landroid/net/http/SslCertificate;
    .param p2, "dName"    # Ljava/lang/String;

    .line 389
    iput-object p1, p0, Landroid/net/http/SslCertificate$DName;->this$0:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    if-eqz p2, :cond_6c

    .line 391
    iput-object p2, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    .line 393
    :try_start_9
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "x509Name":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v1

    .line 396
    .local v1, "val":Ljava/util/Vector;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v2

    .line 398
    .local v2, "oid":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_6a

    .line 399
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 400
    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-nez v4, :cond_67

    .line 401
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    goto :goto_67

    .line 406
    :cond_36
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 407
    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-nez v4, :cond_4f

    .line 408
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    .line 409
    goto :goto_67

    .line 413
    :cond_4f
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 414
    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-nez v4, :cond_67

    .line 415
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_67} :catch_6b

    .line 398
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 422
    .end local v0    # "x509Name":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .end local v1    # "val":Ljava/util/Vector;
    .end local v2    # "oid":Ljava/util/Vector;
    .end local v3    # "i":I
    :cond_6a
    goto :goto_6c

    .line 420
    :catch_6b
    move-exception v0

    .line 424
    :cond_6c
    :goto_6c
    return-void
.end method


# virtual methods
.method public getCName()Ljava/lang/String;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public getDName()Ljava/lang/String;
    .registers 2

    .line 430
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public getOName()Ljava/lang/String;
    .registers 2

    .line 444
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public getUName()Ljava/lang/String;
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method
