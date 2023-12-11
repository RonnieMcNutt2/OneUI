.class public Lcom/samsung/android/motionphoto/core/MPRecorder;
.super Ljava/lang/Object;
.source "MPRecorder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNativeContext:J

.field private final mToken:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_init()V

    .line 35
    const-class v0, Lcom/samsung/android/motionphoto/core/MPRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/motionphoto/core/MPRecorderListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    if-eqz p1, :cond_20

    .line 56
    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mToken:I

    .line 60
    invoke-virtual {p1, v1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setToken(I)V

    .line 61
    return-void

    .line 53
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup(Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method private native native_start(Ljava/lang/String;)V
.end method

.method private native native_stop()V
.end method

.method private native native_store(J)I
.end method

.method private native native_store(Ljava/lang/String;)I
.end method


# virtual methods
.method public getToken()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mToken:I

    return v0
.end method

.method public release()V
    .registers 5

    .line 67
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    .line 74
    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_finalize()V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_22

    .line 78
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_22
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    throw v0
.end method

.method public setErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V
    .registers 3
    .param p1, "errorListener"    # Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V

    .line 178
    :cond_7
    return-void
.end method

.method public setInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V
    .registers 3
    .param p1, "infoListener"    # Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    if-eqz v0, :cond_7

    .line 187
    invoke-virtual {v0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V

    .line 189
    :cond_7
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 6
    .param p1, "param"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 100
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_start(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_30

    .line 103
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :catchall_30
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    throw v0
.end method

.method public stop()V
    .registers 5

    .line 111
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 114
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_stop()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 117
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    throw v0
.end method

.method public store(Lcom/samsung/android/motionphoto/core/Flattenable;)I
    .registers 6
    .param p1, "data"    # Lcom/samsung/android/motionphoto/core/Flattenable;

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 131
    invoke-interface {p1}, Lcom/samsung/android/motionphoto/core/Flattenable;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_store(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_23

    .line 135
    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 131
    return v0

    .line 133
    :cond_1b
    nop

    .line 135
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    const/4 v0, -0x1

    return v0

    .line 135
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    throw v0
.end method

.method public store(J)V
    .registers 7
    .param p1, "id"    # J

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 147
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_store(J)I
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    .line 150
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    throw v0
.end method

.method public store(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_store(Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    .line 165
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    throw v0
.end method
