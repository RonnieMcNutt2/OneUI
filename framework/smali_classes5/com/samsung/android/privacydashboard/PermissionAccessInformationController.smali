.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;
.super Ljava/lang/Object;
.source "PermissionAccessInformationController.java"


# static fields
.field private static final OP_CAPTURE_SCREEN:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PermissionAccessInformationController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFlushExecutor:Ljava/util/concurrent/Executor;

.field private final mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

.field private mPermissionAccessInformations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/privacydashboard/PermissionAccessInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mUselessPackages:[Ljava/lang/String;

.field private final mWriterLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 33
    .local v0, "readWriteLock":Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    .line 37
    new-instance v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    invoke-direct {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    .line 39
    return-void
.end method

.method private isOpCodeEnable(I)Z
    .registers 4
    .param p1, "op"    # I

    .line 189
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPackageEnable(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 181
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 182
    const/4 v1, 0x0

    return v1

    .line 180
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V
    .registers 4
    .param p1, "information"    # Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1e

    .line 49
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    nop

    .line 51
    return-void

    .line 49
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    throw v0
.end method


# virtual methods
.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "cache":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/privacydashboard/PermissionAccessInformation;>;"
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    move-object v0, v1

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_33

    .line 94
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    nop

    .line 98
    if-eqz v0, :cond_2c

    .line 99
    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;->write(Landroid/content/Context;Ljava/util/Iterator;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_24

    goto :goto_2c

    .line 102
    :catchall_24
    move-exception v1

    if-eqz v0, :cond_2b

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    const/4 v0, 0x0

    .line 106
    :cond_2b
    throw v1

    .line 102
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_32

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    const/4 v0, 0x0

    .line 107
    :cond_32
    return-void

    .line 94
    :catchall_33
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    throw v1
.end method

.method public flushAsync()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 20
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "proxyAttributionTag"    # Ljava/lang/String;
    .param p6, "state"    # I

    .line 63
    move-object v0, p0

    move-object/from16 v10, p3

    invoke-direct {p0, v10}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isPackageEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct {p0, p1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isOpCodeEnable(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 64
    new-instance v11, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    const/16 v1, 0x12c

    move/from16 v12, p6

    if-lt v12, v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    move v7, v1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, v11

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 66
    .local v1, "information":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    invoke-direct {p0, v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V

    .line 67
    iget-object v2, v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_3e

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V

    goto :goto_3e

    .line 63
    .end local v1    # "information":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    :cond_3c
    move/from16 v12, p6

    .line 71
    :cond_3e
    :goto_3e
    return-void
.end method
