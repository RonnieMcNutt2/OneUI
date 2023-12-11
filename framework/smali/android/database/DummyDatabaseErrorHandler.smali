.class public Landroid/database/DummyDatabaseErrorHandler;
.super Landroid/database/ErrorHandler;
.source "DummyDatabaseErrorHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDump;)V
    .registers 2
    .param p1, "dump"    # Landroid/database/sqlite/SQLiteDump;

    .line 31
    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/database/DummyDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    .line 33
    return-void
.end method


# virtual methods
.method preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    const/4 v0, 0x0

    return v0
.end method
