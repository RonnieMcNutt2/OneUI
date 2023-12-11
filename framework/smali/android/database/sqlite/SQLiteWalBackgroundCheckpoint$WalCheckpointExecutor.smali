.class final Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;
.super Ljava/lang/Thread;
.source "SQLiteWalBackgroundCheckpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WalCheckpointExecutor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WalCheckpointExecutor"


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic this$0:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    iput-object p1, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;->this$0:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 70
    iput-object p2, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;-><init>(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 74
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA wal_checkpoint(ADAPTIVE)"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_27
    .catchall {:try_start_1 .. :try_end_b} :catchall_25

    .line 75
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 76
    iget-object v2, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;->this$0:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->-$$Nest$fputmLastCheckpointTime(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;J)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 77
    :try_start_17
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_27
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    goto :goto_36

    .line 74
    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v3

    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;
    :goto_24
    throw v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_27
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 83
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;
    :catchall_25
    move-exception v1

    goto :goto_41

    .line 77
    :catch_27
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    :try_start_28
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v2, :cond_36

    .line 79
    const-string v2, "WalCheckpointExecutor"

    const-string v3, "Background Checkpoint has just been failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_25

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    iget-object v1, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;->this$0:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->-$$Nest$fgetmIsCheckpointRunning(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    nop

    .line 85
    return-void

    .line 83
    :goto_41
    iget-object v2, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;->this$0:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-static {v2}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->-$$Nest$fgetmIsCheckpointRunning(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    throw v1
.end method
