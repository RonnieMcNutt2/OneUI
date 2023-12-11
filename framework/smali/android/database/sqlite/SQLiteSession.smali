.class public final Landroid/database/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private mConnectionFlags:I

.field private final mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mConnectionUseCount:I

.field private mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

.field private mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .registers 4
    .param p1, "connectionPool"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    if-eqz p1, :cond_8

    .line 233
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 234
    return-void

    .line 230
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 914
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_f

    .line 915
    nop

    .line 916
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 918
    iput p2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 920
    :cond_f
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    .line 921
    return-void
.end method

.method private beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .registers 9
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 307
    if-eqz p4, :cond_5

    .line 308
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 311
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 312
    invoke-direct {p0, v1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 317
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_2c

    .line 319
    packed-switch p1, :pswitch_data_5a

    .line 329
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    goto :goto_27

    .line 325
    :pswitch_17
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN EXCLUSIVE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 327
    goto :goto_2c

    .line 321
    :pswitch_1f
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN IMMEDIATE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 323
    goto :goto_2c

    .line 329
    :goto_27
    const-string v2, "BEGIN;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_50

    .line 335
    :cond_2c
    :goto_2c
    if-eqz p2, :cond_40

    .line 337
    :try_start_2e
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_50

    .line 343
    goto :goto_40

    .line 338
    :catch_32
    move-exception v0

    .line 339
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_33
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_3e

    .line 340
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "ROLLBACK;"

    invoke-virtual {v2, v3, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 342
    :cond_3e
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteSession;
    .end local p1    # "transactionMode":I
    .end local p2    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .end local p3    # "connectionFlags":I
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0

    .line 347
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteSession;
    .restart local p1    # "transactionMode":I
    .restart local p2    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .restart local p3    # "connectionFlags":I
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_40
    :goto_40
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;

    move-result-object v0

    .line 348
    .local v0, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 349
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_50

    .line 351
    .end local v0    # "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    if-nez v0, :cond_4f

    .line 352
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 355
    :cond_4f
    return-void

    .line 351
    :catchall_50
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v1, :cond_58

    .line 352
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 354
    :cond_58
    throw v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method private endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V
    .registers 10
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "yielding"    # Z

    .line 407
    if-eqz p1, :cond_5

    .line 408
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 411
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 412
    .local v0, "top":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    const/4 v2, 0x1

    if-nez v1, :cond_e

    if-eqz p2, :cond_14

    :cond_e
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 414
    .local v1, "successful":Z
    :goto_15
    const/4 v3, 0x0

    .line 415
    .local v3, "listenerException":Ljava/lang/RuntimeException;
    iget-object v4, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 416
    .local v4, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    if-eqz v4, :cond_27

    .line 418
    if-eqz v1, :cond_20

    .line 419
    :try_start_1c
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    goto :goto_23

    .line 421
    :cond_20
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_23} :catch_24

    .line 426
    :goto_23
    goto :goto_27

    .line 423
    :catch_24
    move-exception v5

    .line 424
    .local v5, "ex":Ljava/lang/RuntimeException;
    move-object v3, v5

    .line 425
    const/4 v1, 0x0

    .line 429
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :cond_27
    :goto_27
    iget-object v5, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 430
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSession;->recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    .line 432
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v5, :cond_37

    .line 433
    if-nez v1, :cond_4d

    .line 434
    iput-boolean v2, v5, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_4d

    .line 438
    :cond_37
    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 439
    :try_start_3a
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "COMMIT;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_49

    .line 441
    :cond_42
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "ROLLBACK;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_51

    .line 444
    :goto_49
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 445
    nop

    .line 448
    :cond_4d
    :goto_4d
    if-nez v3, :cond_50

    .line 451
    return-void

    .line 449
    :cond_50
    throw v3

    .line 444
    :catchall_51
    move-exception v2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 445
    throw v2
.end method

.method private executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z
    .registers 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 889
    if-eqz p4, :cond_5

    .line 890
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 893
    :cond_5
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 894
    .local v0, "type":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_20

    .line 909
    const/4 v1, 0x0

    return v1

    .line 906
    :pswitch_f
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    .line 907
    return v1

    .line 901
    :pswitch_13
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    .line 902
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    .line 903
    return v1

    .line 896
    :pswitch_1a
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 898
    return v1

    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_1a
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method private obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;
    .registers 6
    .param p1, "mode"    # I
    .param p2, "listener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 958
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 959
    .local v0, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 960
    iget-object v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 961
    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 962
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 963
    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_17

    .line 965
    :cond_11
    new-instance v2, Landroid/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>(Landroid/database/sqlite/SQLiteSession$Transaction-IA;)V

    move-object v0, v2

    .line 967
    :goto_17
    iput p1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 968
    iput-object p2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 969
    return-object v0
.end method

.method private recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V
    .registers 3
    .param p1, "transaction"    # Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 973
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 974
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 975
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 976
    return-void
.end method

.method private releaseConnection()V
    .registers 4

    .line 924
    nop

    .line 925
    nop

    .line 926
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_19

    .line 928
    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_15

    .line 930
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 931
    goto :goto_19

    .line 930
    :catchall_15
    move-exception v1

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 931
    throw v1

    .line 933
    :cond_19
    :goto_19
    return-void
.end method

.method private throwIfNestedTransaction()V
    .registers 3

    .line 951
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result v0

    if-nez v0, :cond_7

    .line 955
    return-void

    .line 952
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNoTransaction()V
    .registers 3

    .line 936
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_5

    .line 940
    return-void

    .line 937
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfTransactionMarkedSuccessful()V
    .registers 3

    .line 943
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_11

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v0, :cond_9

    goto :goto_11

    .line 944
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_11
    :goto_11
    return-void
.end method

.method private yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z
    .registers 10
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 528
    if-eqz p3, :cond_5

    .line 529
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 532
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 533
    const/4 v0, 0x0

    return v0

    .line 536
    :cond_13
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 537
    .local v0, "transactionMode":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 538
    .local v1, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 539
    .local v2, "connectionFlags":I
    const/4 v3, 0x1

    invoke-direct {p0, p3, v3}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 541
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2c

    .line 543
    :try_start_27
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 546
    goto :goto_2c

    .line 544
    :catch_2b
    move-exception v4

    .line 549
    :cond_2c
    :goto_2c
    invoke-direct {p0, v0, v1, v2, p3}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 551
    return v3
.end method


# virtual methods
.method public beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 299
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 302
    return-void
.end method

.method public changePassword([B)V
    .registers 4
    .param p1, "newPassword"    # [B

    .line 847
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v0}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 850
    :try_start_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->changePassword(Landroid/database/sqlite/SQLiteConnection;[B)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    .line 852
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 853
    nop

    .line 854
    return-void

    .line 852
    :catchall_11
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 853
    throw v0
.end method

.method public endTransaction(Landroid/os/CancellationSignal;)V
    .registers 3
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 400
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 401
    nop

    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 404
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 611
    if-eqz p1, :cond_1b

    .line 615
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 616
    return-void

    .line 619
    :cond_9
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 621
    :try_start_c
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_16

    .line 623
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 624
    nop

    .line 625
    return-void

    .line 623
    :catchall_16
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 624
    throw v0

    .line 612
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 712
    if-eqz p1, :cond_1c

    .line 716
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 717
    const/4 v0, 0x0

    return-object v0

    .line 720
    :cond_a
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 722
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 725
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 722
    return-object v0

    .line 725
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 726
    throw v0

    .line 713
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 746
    if-eqz p1, :cond_1c

    .line 750
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 751
    const/4 v0, 0x0

    return v0

    .line 754
    :cond_a
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 756
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 759
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 756
    return v0

    .line 759
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 760
    throw v0

    .line 747
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    .registers 23
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "connectionFlags"    # I
    .param p8, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 824
    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p7

    move-object/from16 v12, p8

    if-eqz v10, :cond_41

    .line 827
    if-eqz p3, :cond_36

    .line 831
    move-object/from16 v13, p2

    invoke-direct {p0, p1, v13, v11, v12}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->clear()V

    .line 833
    const/4 v0, 0x0

    return v0

    .line 836
    :cond_17
    invoke-direct {p0, p1, v11, v12}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 838
    :try_start_1a
    iget-object v2, v1, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    move-result v0
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_31

    .line 842
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 838
    return v0

    .line 842
    :catchall_31
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 843
    throw v0

    .line 828
    :cond_36
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_41
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 780
    if-eqz p1, :cond_1d

    .line 784
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 785
    const-wide/16 v0, 0x0

    return-wide v0

    .line 788
    :cond_b
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 790
    :try_start_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 793
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 790
    return-wide v0

    .line 793
    :catchall_18
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 794
    throw v0

    .line 781
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 644
    if-eqz p1, :cond_1d

    .line 648
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 649
    const-wide/16 v0, 0x0

    return-wide v0

    .line 652
    :cond_b
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 654
    :try_start_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 656
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 654
    return-wide v0

    .line 656
    :catchall_18
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 657
    throw v0

    .line 645
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 677
    if-eqz p1, :cond_1c

    .line 681
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 682
    const/4 v0, 0x0

    return-object v0

    .line 685
    :cond_a
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 687
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 689
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 687
    return-object v0

    .line 689
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 690
    throw v0

    .line 678
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasConnection()Z
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasNestedTransaction()Z
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasTransaction()Z
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isForcedReadOnlyDatabase()Z
    .registers 3

    .line 857
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v0}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 860
    :try_start_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->isForcedReadOnlyConnection()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 862
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 860
    return v0

    .line 862
    :catchall_f
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 863
    throw v0
.end method

.method public prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .line 580
    if-eqz p1, :cond_19

    .line 584
    if-eqz p3, :cond_7

    .line 585
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 588
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 590
    :try_start_a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Landroid/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 592
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 593
    nop

    .line 594
    return-void

    .line 592
    :catchall_14
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 593
    throw v0

    .line 581
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .registers 3

    .line 373
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 374
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 376
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 377
    return-void
.end method

.method public yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    .registers 7
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "throwIfUnsafe"    # Z
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 506
    const/4 v0, 0x0

    if-eqz p3, :cond_d

    .line 507
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 508
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 509
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    goto :goto_1c

    .line 511
    :cond_d
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_29

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_1c

    goto :goto_29

    .line 516
    :cond_1c
    :goto_1c
    nop

    .line 518
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-eqz v1, :cond_24

    .line 519
    return v0

    .line 522
    :cond_24
    invoke-direct {p0, p1, p2, p4}, Landroid/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z

    move-result v0

    return v0

    .line 513
    :cond_29
    :goto_29
    return v0
.end method
