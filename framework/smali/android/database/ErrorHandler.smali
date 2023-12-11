.class public abstract Landroid/database/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ErrorHandler"


# instance fields
.field public mDbDump:Landroid/database/sqlite/SQLiteDump;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Landroid/database/sqlite/SQLiteDump;->sDummyDbDump:Landroid/database/sqlite/SQLiteDump;

    iput-object v0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    return-void
.end method


# virtual methods
.method diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->diagnoseError()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 64
    iget-object v0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v1, "!@ Diagnose Succeed."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ErrorHandler"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public handleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteDatabase"    # Z

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 35
    return-void

    .line 36
    :cond_7
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    return-void

    .line 38
    :cond_e
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->recoverError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 39
    return-void

    .line 40
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/database/ErrorHandler;->postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 45
    goto :goto_2b

    .line 42
    :catch_1d
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v2, "!@ Exception in error handling"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ErrorHandler"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteDatabase"    # Z

    .line 93
    return-void
.end method

.method abstract preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
.end method

.method recoverError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->doRecovery()Z

    move-result v0

    const-string v1, "ErrorHandler"

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v2, "!@ Recovery Succeed."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_15
    iget-object v0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v2, "!@ Recovery Failed."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method
