.class public Landroid/security/KeyStoreAuditLog$AuditLogParams;
.super Ljava/lang/Object;
.source "KeyStoreAuditLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreAuditLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuditLogParams"
.end annotation


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDomain:I

.field private mEncodedCerts:[B

.field private mErrorCode:I

.field private mNamespace:J

.field private mOperationType:I

.field private mUserId:I

.field private mX509Certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    .line 105
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mAlias:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mClassName:Ljava/lang/String;

    .line 107
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->-$$Nest$smgetUserId(I)I

    move-result v0

    iput v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    .line 109
    return-void
.end method

.method public static init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;)Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .registers 4
    .param p0, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "operation"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .registers 11
    .param p0, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "operation"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .line 207
    iget-object v0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iget-wide v1, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget v3, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .registers 8
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "nspace"    # J
    .param p3, "domain"    # I
    .param p4, "operation"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "errorCode"    # I

    .line 213
    new-instance v0, Landroid/security/KeyStoreAuditLog$AuditLogParams;

    invoke-direct {v0, p0, p5}, Landroid/security/KeyStoreAuditLog$AuditLogParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v0, "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setNamespace(J)V

    .line 215
    invoke-virtual {v0, p3}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setDomain(I)V

    .line 216
    invoke-virtual {v0, p4}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setOperationType(I)V

    .line 217
    invoke-virtual {v0, p6}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setErrorCode(I)V

    .line 218
    return-object v0
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getChainBytes()[B
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    if-eqz v0, :cond_5

    return-object v0

    .line 131
    :cond_5
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 132
    nop

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 132
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->-$$Nest$smconvertCertificatesToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    return-object v0

    .line 135
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDomain()I
    .registers 2

    .line 198
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    return v0
.end method

.method public getNamespace()J
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    return-wide v0
.end method

.method public getOperationType()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mOperationType:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    return v0
.end method

.method public getX509Certificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    .line 113
    :cond_5
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    if-eqz v0, :cond_e

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 114
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCertificates()Z
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method

.method public setDomain(I)V
    .registers 2
    .param p1, "domain"    # I

    .line 194
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    .line 195
    return-void
.end method

.method public setEncodedCerts([B)V
    .registers 2
    .param p1, "encodedCerts"    # [B

    .line 181
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    .line 182
    return-void
.end method

.method public setErrorCode(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 155
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    .line 156
    return-void
.end method

.method public setNamespace(J)V
    .registers 3
    .param p1, "namespace"    # J

    .line 122
    iput-wide p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    .line 123
    return-void
.end method

.method public setOperationType(I)V
    .registers 2
    .param p1, "operationType"    # I

    .line 163
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mOperationType:I

    .line 164
    return-void
.end method

.method public setUserCertAndChain([B[B)V
    .registers 4
    .param p1, "userCert"    # [B
    .param p2, "chain"    # [B

    .line 185
    if-nez p1, :cond_9

    .line 186
    if-nez p2, :cond_5

    return-void

    .line 187
    :cond_5
    invoke-virtual {p0, p2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setEncodedCerts([B)V

    .line 188
    return-void

    .line 190
    :cond_9
    invoke-static {p1, p2}, Landroid/security/KeyStoreAuditLog;->-$$Nest$smmergeUserCertAndChain([B[B)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setX509Certificates(Ljava/util/List;)V

    .line 191
    return-void
.end method

.method public setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 170
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    return-void
.end method

.method public setX509Certificates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "x509Certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditLogParams{mAlias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mClassName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mOperationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mX509Certificates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEncodedCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    .line 233
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method
