.class public final Landroid/util/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LocalLog$ReadOnlyLocalLog;
    }
.end annotation


# instance fields
.field private final mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLines:I

.field private final mUseLocalTimestamps:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxLines"    # I

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/util/LocalLog;-><init>(IZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .param p1, "maxLines"    # I
    .param p2, "useLocalTimestamps"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/util/LocalLog;->mMaxLines:I

    .line 54
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Landroid/util/LocalLog;->mLog:Ljava/util/Deque;

    .line 55
    iput-boolean p2, p0, Landroid/util/LocalLog;->mUseLocalTimestamps:Z

    .line 56
    return-void
.end method

.method private declared-synchronized append(Ljava/lang/String;)V
    .registers 4
    .param p1, "logLine"    # Ljava/lang/String;

    monitor-enter p0

    .line 74
    nop

    :goto_2
    :try_start_2
    iget-object v0, p0, Landroid/util/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Landroid/util/LocalLog;->mMaxLines:I

    if-lt v0, v1, :cond_12

    .line 75
    iget-object v0, p0, Landroid/util/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_2

    .line 77
    .end local p0    # "this":Landroid/util/LocalLog;
    :cond_12
    iget-object v0, p0, Landroid/util/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_19

    .line 78
    monitor-exit p0

    return-void

    .line 73
    .end local p1    # "logLine":Ljava/lang/String;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 82
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 83
    monitor-exit p0

    return-void

    .line 81
    .end local p0    # "this":Landroid/util/LocalLog;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 86
    :try_start_1
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 87
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Landroid/util/LocalLog;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Landroid/util/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 98
    const-string v1, "%s%s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    goto :goto_7

    .line 100
    .end local p0    # "this":Landroid/util/LocalLog;
    :cond_20
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "indent":Ljava/lang/String;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public log(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 60
    iget v0, p0, Landroid/util/LocalLog;->mMaxLines:I

    if-gtz v0, :cond_5

    .line 61
    return-void

    .line 64
    :cond_5
    iget-boolean v0, p0, Landroid/util/LocalLog;->mUseLocalTimestamps:Z

    const-string v1, " - "

    if-eqz v0, :cond_25

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "logLine":Ljava/lang/String;
    goto :goto_50

    .line 67
    .end local v0    # "logLine":Ljava/lang/String;
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "logLine":Ljava/lang/String;
    :goto_50
    invoke-direct {p0, v0}, Landroid/util/LocalLog;->append(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .registers 2

    .line 135
    new-instance v0, Landroid/util/LocalLog$ReadOnlyLocalLog;

    invoke-direct {v0, p0}, Landroid/util/LocalLog$ReadOnlyLocalLog;-><init>(Landroid/util/LocalLog;)V

    return-object v0
.end method

.method public declared-synchronized reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 104
    monitor-exit p0

    return-void

    .line 102
    .end local p0    # "this":Landroid/util/LocalLog;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reverseDump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Landroid/util/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 111
    .end local p0    # "this":Landroid/util/LocalLog;
    :cond_17
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
