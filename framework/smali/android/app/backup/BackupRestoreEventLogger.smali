.class public final Landroid/app/backup/BackupRestoreEventLogger;
.super Ljava/lang/Object;
.source "BackupRestoreEventLogger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;,
        Landroid/app/backup/BackupRestoreEventLogger$BackupRestoreError;,
        Landroid/app/backup/BackupRestoreEventLogger$BackupRestoreDataType;
    }
.end annotation


# static fields
.field public static final DATA_TYPES_ALLOWED:I = 0xf

.field private static final TAG:Ljava/lang/String; = "BackupRestoreEventLogger"


# instance fields
.field private final mHashDigest:Ljava/security/MessageDigest;

.field private final mOperationType:I

.field private final mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "operationType"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    .line 92
    iput p1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "hashDigest":Ljava/security/MessageDigest;
    :try_start_d
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_13} :catch_15

    move-object v0, v1

    .line 99
    goto :goto_1b

    .line 97
    :catch_15
    move-exception v1

    .line 98
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Couldn\'t create MessageDigest for hash computation"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1b
    iput-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    .line 101
    return-void
.end method

.method private getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    .registers 7
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;

    .line 293
    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    const/4 v1, 0x0

    const-string v2, "BackupRestoreEventLogger"

    if-eq p1, v0, :cond_2a

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation type mismatch: logger created for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", trying to log for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v1

    .line 301
    :cond_2a
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 302
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_46

    .line 304
    const-string v0, "Logger is full, ignoring new data type"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v1

    .line 308
    :cond_46
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    new-instance v1, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    invoke-direct {v1, p2}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_50
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    return-object v0
.end method

.method private getMetaDataHash(Ljava/lang/String;)[B
    .registers 4
    .param p1, "metaData"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private logFailure(ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "error"    # Ljava/lang/String;

    .line 260
    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object v0

    .line 261
    .local v0, "dataTypeResult":Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    if-nez v0, :cond_7

    .line 262
    return-void

    .line 265
    :cond_7
    invoke-static {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    .line 266
    if-eqz p4, :cond_21

    .line 267
    invoke-static {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/app/backup/BackupRestoreEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/app/backup/BackupRestoreEventLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, p4, v2, v3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 269
    :cond_21
    return-void
.end method

.method private logMetaData(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "metaData"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_5

    .line 274
    return-void

    .line 276
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object v0

    .line 277
    .local v0, "dataTypeResult":Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    if-nez v0, :cond_c

    .line 278
    return-void

    .line 281
    :cond_c
    invoke-direct {p0, p3}, Landroid/app/backup/BackupRestoreEventLogger;->getMetaDataHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;[B)V

    .line 282
    return-void
.end method

.method private logSuccess(ILjava/lang/String;I)V
    .registers 6
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object v0

    .line 249
    .local v0, "dataTypeResult":Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    if-nez v0, :cond_7

    .line 250
    return-void

    .line 253
    :cond_7
    invoke-static {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    .line 254
    iget-object v1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    return-void
.end method

.method public getLoggingResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOperationType()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    return v0
.end method

.method public logBackupMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "metaData"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logMetaData(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public logItemsBackedUp(Ljava/lang/String;I)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logSuccess(ILjava/lang/String;I)V

    .line 117
    return-void
.end method

.method public logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "error"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/backup/BackupRestoreEventLogger;->logFailure(ILjava/lang/String;ILjava/lang/String;)V

    .line 135
    return-void
.end method

.method public logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "error"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/backup/BackupRestoreEventLogger;->logFailure(ILjava/lang/String;ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method public logItemsRestored(Ljava/lang/String;I)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logSuccess(ILjava/lang/String;I)V

    .line 172
    return-void
.end method

.method public logRestoreMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "metadata"    # Ljava/lang/String;

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logMetaData(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method
