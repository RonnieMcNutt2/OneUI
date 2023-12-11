.class Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;
.super Ljava/io/OutputStream;
.source "SignatureUpdatingOutputStream.java"


# instance fields
.field private sig:Ljava/security/Signature;


# direct methods
.method constructor <init>(Ljava/security/Signature;)V
    .registers 2
    .param p1, "sig"    # Ljava/security/Signature;

    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    .line 17
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(B)V
    :try_end_6
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_6} :catch_8

    .line 55
    nop

    .line 56
    return-void

    .line 52
    :catch_8
    move-exception v0

    .line 54
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([B)V
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_7

    .line 42
    nop

    .line 43
    return-void

    .line 39
    :catch_7
    move-exception v0

    .line 41
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_7

    .line 29
    nop

    .line 30
    return-void

    .line 26
    :catch_7
    move-exception v0

    .line 28
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
