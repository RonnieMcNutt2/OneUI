.class Lcom/android/internal/os/ZygoteCommandBuffer;
.super Ljava/lang/Object;
.source "ZygoteCommandBuffer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private mNativeBuffer:J

.field private final mNativeSocket:I

.field private final mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;)V
    .registers 4
    .param p1, "socket"    # Landroid/net/LocalSocket;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    .line 61
    if-nez p1, :cond_b

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeSocket:I

    goto :goto_15

    .line 64
    :cond_b
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeSocket:I

    .line 66
    :goto_15
    iget v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeSocket:I

    invoke-static {v0}, Lcom/android/internal/os/ZygoteCommandBuffer;->getNativeBuffer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    .line 67
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .registers 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/LocalSocket;

    invoke-direct {p0, v0}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->setCommand([Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private static native freeNativeBuffer(J)V
.end method

.method private static native getNativeBuffer(I)J
.end method

.method private static native insert(JLjava/lang/String;)V
.end method

.method private static native nativeForkRepeatedly(JIIILjava/lang/String;)Z
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeNextArg(J)Ljava/lang/String;
.end method

.method private static native nativeReadFullyAndReset(J)V
.end method

.method private setCommand([Ljava/lang/String;)V
    .registers 8
    .param p1, "command"    # [Ljava/lang/String;

    .line 118
    array-length v0, p1

    .line 119
    .local v0, "nArgs":I
    iget-wide v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->insert(JLjava/lang/String;)V

    .line 120
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_18

    aget-object v3, p1, v2

    .line 121
    .local v3, "s":Ljava/lang/String;
    iget-wide v4, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v4, v5, v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->insert(JLjava/lang/String;)V

    .line 120
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 124
    :cond_18
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->freeNativeBuffer(J)V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    .line 90
    return-void
.end method

.method forkRepeatedly(Ljava/io/FileDescriptor;IILjava/lang/String;)Z
    .registers 11
    .param p1, "zygoteSocket"    # Ljava/io/FileDescriptor;
    .param p2, "expectedUid"    # I
    .param p3, "minUid"    # I
    .param p4, "firstNiceName"    # Ljava/lang/String;

    .line 169
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeForkRepeatedly(JIIILjava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_16

    .line 172
    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 173
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 169
    return v0

    .line 172
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 173
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 174
    throw v0
.end method

.method getCount()I
    .registers 3

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeGetCount(J)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 107
    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 104
    return v0

    .line 107
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 108
    throw v0
.end method

.method nextArg()Ljava/lang/String;
    .registers 3

    .line 133
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeNextArg(J)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 135
    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 133
    return-object v0

    .line 135
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 136
    throw v0
.end method

.method readFullyAndReset()V
    .registers 3

    .line 143
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeReadFullyAndReset(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 145
    iget-object v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 146
    nop

    .line 147
    return-void

    .line 145
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 146
    throw v0
.end method
