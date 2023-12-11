.class public Landroid/os/FileUtils$MemoryPipe;
.super Ljava/lang/Thread;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryPipe"
.end annotation


# instance fields
.field private final data:[B

.field private final pipe:[Ljava/io/FileDescriptor;

.field private final sink:Z


# direct methods
.method private constructor <init>([BZ)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "sink"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1628
    :try_start_3
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_9} :catch_f

    .line 1631
    nop

    .line 1632
    iput-object p1, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    .line 1633
    iput-boolean p2, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    .line 1634
    return-void

    .line 1629
    :catch_f
    move-exception v0

    .line 1630
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static createSink([B)Landroid/os/FileUtils$MemoryPipe;
    .registers 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1646
    new-instance v0, Landroid/os/FileUtils$MemoryPipe;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/FileUtils$MemoryPipe;-><init>([BZ)V

    invoke-direct {v0}, Landroid/os/FileUtils$MemoryPipe;->startInternal()Landroid/os/FileUtils$MemoryPipe;

    move-result-object v0

    return-object v0
.end method

.method public static createSource([B)Landroid/os/FileUtils$MemoryPipe;
    .registers 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1642
    new-instance v0, Landroid/os/FileUtils$MemoryPipe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/FileUtils$MemoryPipe;-><init>([BZ)V

    invoke-direct {v0}, Landroid/os/FileUtils$MemoryPipe;->startInternal()Landroid/os/FileUtils$MemoryPipe;

    move-result-object v0

    return-object v0
.end method

.method private startInternal()Landroid/os/FileUtils$MemoryPipe;
    .registers 1

    .line 1637
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 1638
    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1681
    invoke-virtual {p0}, Landroid/os/FileUtils$MemoryPipe;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1682
    return-void
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 3

    .line 1650
    iget-boolean v0, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_f
    return-object v0
.end method

.method public getInternalFD()Ljava/io/FileDescriptor;
    .registers 3

    .line 1654
    iget-boolean v0, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_f
    return-object v0
.end method

.method public run()V
    .registers 7

    .line 1659
    invoke-virtual {p0}, Landroid/os/FileUtils$MemoryPipe;->getInternalFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1661
    .local v0, "fd":Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    .line 1662
    .local v1, "i":I
    :goto_5
    const-wide/16 v2, 0x1

    :try_start_7
    iget-object v4, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    array-length v5, v4

    if-ge v1, v5, :cond_20

    .line 1663
    iget-boolean v5, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v5, :cond_18

    .line 1664
    array-length v5, v4

    sub-int/2addr v5, v1

    invoke-static {v0, v4, v1, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 1666
    :cond_18
    array-length v5, v4

    sub-int/2addr v5, v1

    invoke-static {v0, v4, v1, v5}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_37
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_1e} :catch_37
    .catchall {:try_start_7 .. :try_end_1e} :catchall_25

    add-int/2addr v1, v2

    goto :goto_5

    .line 1672
    .end local v1    # "i":I
    :cond_20
    iget-boolean v1, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v1, :cond_45

    .line 1673
    goto :goto_3c

    .line 1672
    :catchall_25
    move-exception v1

    iget-boolean v4, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v4, :cond_33

    .line 1673
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1675
    :cond_33
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1676
    throw v1

    .line 1669
    :catch_37
    move-exception v1

    .line 1672
    iget-boolean v1, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v1, :cond_45

    .line 1673
    :goto_3c
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1675
    :cond_45
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1676
    nop

    .line 1677
    return-void
.end method
