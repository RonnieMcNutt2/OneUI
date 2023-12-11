.class public Lcom/samsung/android/motionphoto/core/MPRecordingProxy;
.super Ljava/lang/Object;
.source "MPRecordingProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;
    }
.end annotation


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

    .line 33
    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_init()V

    .line 37
    const-class v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "token"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    const-string/jumbo v1, "preview"

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    .line 74
    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    .line 75
    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "bufferMode"    # Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->PREVIEW:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p2, v0, :cond_2b

    const-string/jumbo v0, "preview"

    goto :goto_36

    .line 86
    :cond_2b
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->VIDEOOUT:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p2, v0, :cond_33

    const-string/jumbo v0, "video-out"

    goto :goto_36

    :cond_33
    const-string/jumbo v0, "surface"

    .line 85
    :goto_36
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    .line 87
    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/motionphoto/core/MPRecorderListener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/motionphoto/core/MPRecorderListener;
    .param p2, "token"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v0, "preview"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    .line 99
    iput p2, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/motionphoto/core/MPRecorderListener;ILcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/motionphoto/core/MPRecorderListener;
    .param p2, "token"    # I
    .param p3, "bufferMode"    # Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->PREVIEW:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p3, v0, :cond_2b

    const-string/jumbo v0, "preview"

    goto :goto_36

    .line 112
    :cond_2b
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->VIDEOOUT:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p3, v0, :cond_33

    const-string/jumbo v0, "video-out"

    goto :goto_36

    :cond_33
    const-string/jumbo v0, "surface"

    .line 111
    :goto_36
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    .line 113
    iput p2, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    .line 114
    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_getMetaBuffers()[Ljava/lang/Object;
.end method

.method private static native native_init()V
.end method

.method private native native_notifyEvent(I)V
.end method

.method private native native_sendByteBuffer(Ljava/nio/ByteBuffer;IIIJ)V
.end method

.method private native native_sendHardwareBuffer(Landroid/hardware/HardwareBuffer;J)V
.end method

.method private native native_sendVdisMetadataBuffer(ILjava/lang/String;)V
.end method

.method private native native_setup(Ljava/lang/Object;ILjava/lang/String;)I
.end method


# virtual methods
.method public getMetaBuffers()[Ljava/nio/ByteBuffer;
    .registers 5

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_getMetaBuffers()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_21

    .line 167
    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 163
    return-object v0

    .line 165
    :cond_19
    nop

    .line 167
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    throw v0
.end method

.method public notifyEvent(I)V
    .registers 6
    .param p1, "event"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 152
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_notifyEvent(I)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    .line 155
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    throw v0
.end method

.method public release()V
    .registers 5

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_finalize()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    .line 125
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    throw v0
.end method

.method public sendBuffer(Landroid/hardware/HardwareBuffer;J)V
    .registers 8
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "timestampUs"    # J

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_sendHardwareBuffer(Landroid/hardware/HardwareBuffer;J)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    .line 145
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    nop

    .line 147
    return-void

    .line 145
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    throw v0
.end method

.method public sendBuffer(Ljava/nio/ByteBuffer;IIIJ)V
    .registers 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "timestampUs"    # J

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 133
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_sendByteBuffer(Ljava/nio/ByteBuffer;IIIJ)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    .line 135
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    throw v0
.end method

.method public sendMetadata(ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "params"    # Ljava/lang/String;

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_sendVdisMetadataBuffer(ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    .line 177
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    throw v0
.end method
