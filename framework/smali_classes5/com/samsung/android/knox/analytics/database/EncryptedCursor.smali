.class Lcom/samsung/android/knox/analytics/database/EncryptedCursor;
.super Landroid/database/AbstractCursor;
.source "EncryptedCursor.java"


# static fields
.field private static INITIAL_VALUE:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

.field final mDatabaseCursor:Landroid/database/Cursor;

.field final mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

.field private mSyntheticRowId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/16 v0, -0x63

    sput v0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "dbHelper"    # Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
    .param p2, "cryptoHandler"    # Lcom/samsung/android/knox/analytics/database/CryptoHandler;
    .param p3, "size"    # Ljava/lang/Integer;

    .line 22
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    .line 19
    sget v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    iput v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    .line 23
    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    .line 25
    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    .line 27
    return-void
.end method

.method private useLegacyKey()Z
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "useLegacyKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    sget v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    if-ne v0, v1, :cond_16

    .line 72
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getSyntheticRowId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    .line 75
    :cond_16
    iget v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    .line 76
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "useLegacyKey(): There is no marked event ID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v2

    .line 80
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    if-le v0, v1, :cond_3c

    .line 81
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->deleteAnalyticsLegacyKey()V

    .line 82
    return v2

    .line 84
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 110
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    return-void
.end method

.method public getBlob(I)[B
    .registers 5
    .param p1, "column"    # I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBlob("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "column"    # I

    .line 136
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .param p1, "column"    # I

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "column"    # I

    .line 121
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "column"    # I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .param p1, "column"    # I

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 8
    .param p1, "column"    # I

    .line 41
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "decrypted":Ljava/lang/String;
    :try_start_2e
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v2, "bulk"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 46
    .local v1, "bulkColumn":I
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 47
    .local v2, "eventCounter":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_4d

    .line 48
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBulk([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_5e

    .line 50
    :cond_4d
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->useLegacyKey()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decrypt([BZ)Ljava/lang/String;

    move-result-object v3
    :try_end_5d
    .catch Ljava/security/InvalidKeyException; {:try_start_2e .. :try_end_5d} :catch_73
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_5d} :catch_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_5d} :catch_5f

    move-object v0, v3

    .line 59
    .end local v1    # "bulkColumn":I
    .end local v2    # "eventCounter":I
    :goto_5e
    goto :goto_82

    .line 57
    :catch_5f
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getString(): UnsupportedEncodingException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    .line 55
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_69
    move-exception v1

    .line 56
    .local v1, "e":Ljava/security/GeneralSecurityException;
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getString(): GeneralSecurityException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_5e

    .line 52
    :catch_73
    move-exception v1

    .line 53
    .local v1, "e":Ljava/security/InvalidKeyException;
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getString(): InvalidKeyException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->deleteAnalyticsLegacyKey()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_5e

    .line 60
    :goto_82
    if-nez v0, :cond_91

    .line 61
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getString(): null data."

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventsUpToSyntheticId()V

    .line 64
    :cond_91
    return-object v0

    .line 66
    .end local v0    # "decrypted":Ljava/lang/String;
    :cond_92
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .registers 5
    .param p1, "column"    # I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 91
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): returning string for encrypted data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x3

    return v0

    .line 94
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3
    .param p1, "column"    # I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 99
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    .line 100
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
