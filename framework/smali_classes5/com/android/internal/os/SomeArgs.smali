.class public final Lcom/android/internal/os/SomeArgs;
.super Ljava/lang/Object;
.source "SomeArgs.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field static final WAIT_FINISHED:I = 0x2

.field static final WAIT_NONE:I = 0x0

.field static final WAIT_WAITING:I = 0x1

.field private static sPool:Lcom/android/internal/os/SomeArgs;

.field private static sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public arg3:Ljava/lang/Object;

.field public arg4:Ljava/lang/Object;

.field public arg5:Ljava/lang/Object;

.field public arg6:Ljava/lang/Object;

.field public arg7:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field public argi4:I

.field public argi5:I

.field public argi6:I

.field public argl1:J

.field public argl2:J

.field private mInPool:Z

.field private mNext:Lcom/android/internal/os/SomeArgs;

.field mWaitState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 69
    return-void
.end method

.method private clear()V
    .registers 3

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 119
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 121
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 122
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 123
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 125
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 126
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 127
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 128
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 129
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 131
    iput-wide v0, p0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 132
    return-void
.end method

.method public static obtain()Lcom/android/internal/os/SomeArgs;
    .registers 4

    .line 73
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    if-lez v1, :cond_1a

    .line 75
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    move-object v3, v2

    .line 76
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    sput-object v2, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 77
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 79
    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 80
    monitor-exit v0

    return-object v3

    .line 82
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_1a
    new-instance v1, Lcom/android/internal/os/SomeArgs;

    invoke-direct {v1}, Lcom/android/internal/os/SomeArgs;-><init>()V

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public complete()V
    .registers 3

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 90
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not waiting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/SomeArgs;
    throw v0

    .line 94
    .restart local p0    # "this":Lcom/android/internal/os/SomeArgs;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public recycle()V
    .registers 4

    .line 99
    iget-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    if-nez v0, :cond_26

    .line 102
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    if-eqz v0, :cond_9

    .line 103
    return-void

    .line 105
    :cond_9
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_c
    invoke-direct {p0}, Lcom/android/internal/os/SomeArgs;->clear()V

    .line 107
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_21

    .line 108
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    iput-object v2, p0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 109
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 110
    sput-object p0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 111
    add-int/2addr v1, v2

    sput v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 113
    :cond_21
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v1

    .line 100
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
