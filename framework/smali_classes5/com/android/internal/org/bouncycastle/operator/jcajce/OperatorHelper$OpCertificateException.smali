.class Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper$OpCertificateException;
.super Ljava/security/cert/CertificateException;
.source "OperatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpCertificateException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 574
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 576
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper$OpCertificateException;->cause:Ljava/lang/Throwable;

    .line 577
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper$OpCertificateException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
