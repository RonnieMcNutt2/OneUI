.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# static fields
.field public static final SQLITE_CORRUPT:I = 0xb

.field public static final SQLITE_CORRUPT_EXTRA:I = 0x40b

.field public static final SQLITE_CORRUPT_WAL:I = 0x50b

.field public static final SQLITE_NOTADB:I = 0x1a


# instance fields
.field private mCorruptCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    .line 32
    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 32
    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    .line 38
    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->parseCode(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    .line 39
    return-void
.end method

.method public static isCorruptException(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 55
    nop

    :goto_1
    if-eqz p0, :cond_e

    .line 56
    instance-of v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v0, :cond_9

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 61
    :cond_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCorruptCode()I
    .registers 2

    .line 45
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return v0
.end method
