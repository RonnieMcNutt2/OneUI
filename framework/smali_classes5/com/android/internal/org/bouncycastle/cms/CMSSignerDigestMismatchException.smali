.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;
.super Lcom/android/internal/org/bouncycastle/cms/CMSException;
.source "CMSSignerDigestMismatchException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
