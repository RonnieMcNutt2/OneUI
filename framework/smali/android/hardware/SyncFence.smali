.class public final Landroid/hardware/SyncFence;
.super Ljava/lang/Object;
.source "SyncFence.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/SyncFence;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNAL_TIME_INVALID:J = -0x1L

.field public static final SIGNAL_TIME_PENDING:J = 0x7fffffffffffffffL

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final mCloser:Ljava/lang/Runnable;

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 78
    nop

    .line 79
    const-class v0, Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 80
    invoke-static {}, Landroid/hardware/SyncFence;->nGetDestructor()J

    move-result-wide v1

    .line 79
    const-wide/16 v3, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 296
    new-instance v0, Landroid/hardware/SyncFence$1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$1;-><init>()V

    sput-object v0, Landroid/hardware/SyncFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 126
    return-void
.end method

.method private constructor <init>(I)V
    .registers 5
    .param p1, "fileDescriptor"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 92
    sget-object v2, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .param p1, "nativeFencePtr"    # J

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_14

    .line 118
    sget-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_1b

    .line 120
    :cond_14
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 122
    :goto_1b
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 97
    .local v0, "valid":Z
    const/4 v1, 0x0

    .line 98
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_e

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 101
    :cond_e
    if-eqz v1, :cond_23

    .line 102
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 103
    sget-object v4, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_2a

    .line 105
    :cond_23
    new-instance v2, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;-><init>()V

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 107
    :goto_2a
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/SyncFence-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/SyncFence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static adopt(I)Landroid/hardware/SyncFence;
    .registers 2
    .param p0, "fileDescriptor"    # I

    .line 158
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p0}, Landroid/hardware/SyncFence;-><init>(I)V

    return-object v0
.end method

.method private await(J)Z
    .registers 8
    .param p1, "timeoutNanos"    # J

    .line 219
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    invoke-static {v1, v2, p1, p2}, Landroid/hardware/SyncFence;->nWait(JJ)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    .line 221
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;
    .registers 3
    .param p0, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    .line 147
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SyncFence;-><init>(I)V

    return-object v0
.end method

.method public static createEmpty()Landroid/hardware/SyncFence;
    .registers 1

    .line 135
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0}, Landroid/hardware/SyncFence;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0()V
    .registers 0

    .line 105
    return-void
.end method

.method static synthetic lambda$new$1()V
    .registers 0

    .line 120
    return-void
.end method

.method static synthetic lambda$new$2()V
    .registers 0

    .line 125
    return-void
.end method

.method private static native nCreate(I)J
.end method

.method private static native nGetDestructor()J
.end method

.method private static native nGetFd(J)I
.end method

.method private static native nGetSignalTime(J)J
.end method

.method private static native nIsValid(J)Z
.end method

.method private static native nWait(JJ)Z
.end method


# virtual methods
.method public await(Ljava/time/Duration;)Z
    .registers 5
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 198
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 199
    const-wide/16 v0, -0x1

    .local v0, "timeoutNanos":J
    goto :goto_d

    .line 201
    .end local v0    # "timeoutNanos":J
    :cond_9
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    .line 203
    .restart local v0    # "timeoutNanos":J
    :goto_d
    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v2

    return v2
.end method

.method public awaitForever()Z
    .registers 3

    .line 215
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 6

    .line 250
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 252
    monitor-exit v0

    return-void

    .line 254
    :cond_d
    iput-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 255
    iget-object v1, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public describeContents()I
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public getFdDup()Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-eqz v3, :cond_11

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v4

    .line 168
    .local v1, "fd":I
    :goto_12
    if-eq v1, v4, :cond_1a

    .line 171
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 169
    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot dup the FD of an invalid SyncFence"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/SyncFence;
    throw v2

    .line 172
    .end local v1    # "fd":I
    .restart local p0    # "this":Landroid/hardware/SyncFence;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getNativeFence()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    return-wide v0
.end method

.method public getSignalTime()J
    .registers 6

    .line 239
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_10

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetSignalTime(J)J

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, -0x1

    :goto_12
    monitor-exit v0

    return-wide v1

    .line 241
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isValid()Z
    .registers 6

    .line 182
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nIsValid(J)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    .line 184
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 283
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-eqz v3, :cond_11

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v4

    .line 285
    .local v1, "fd":I
    :goto_12
    if-ne v1, v4, :cond_19

    .line 286
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_28

    .line 288
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 289
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 290
    .local v2, "temp":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 291
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 293
    .end local v1    # "fd":I
    .end local v2    # "temp":Ljava/io/FileDescriptor;
    :goto_28
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method
