.class public Landroid/hardware/usb/UsbRequest;
.super Ljava/lang/Object;
.source "UsbRequest.java"


# static fields
.field static final MAX_USBFS_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "UsbRequest"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mClientData:Ljava/lang/Object;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private mEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mIsUsingNewQueue:Z

.field private mLength:I

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mTempBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method private native native_cancel()Z
.end method

.method private native native_close()V
.end method

.method private native native_dequeue_array([BIZ)I
.end method

.method private native native_dequeue_direct()I
.end method

.method private native native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z
.end method

.method private native native_queue(Ljava/nio/ByteBuffer;II)Z
.end method

.method private native native_queue_array([BIZ)Z
.end method

.method private native native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z
.end method


# virtual methods
.method public cancel()Z
    .registers 3

    .line 412
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 413
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-nez v0, :cond_6

    .line 414
    const/4 v1, 0x0

    return v1

    .line 417
    :cond_6
    invoke-virtual {v0, p0}, Landroid/hardware/usb/UsbDeviceConnection;->cancelRequest(Landroid/hardware/usb/UsbRequest;)Z

    move-result v1

    return v1
.end method

.method cancelIfOpen()Z
    .registers 6

    .line 432
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 433
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_18

    .line 438
    :cond_13
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_cancel()Z

    move-result v1

    return v1

    .line 434
    :cond_18
    :goto_18
    const-string v1, "UsbRequest"

    const-string v2, "Detected attempt to cancel a request on a connection which isn\'t open"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v1, 0x0

    return v1
.end method

.method public close()V
    .registers 6

    .line 116
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 119
    iput-object v1, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 120
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_close()V

    .line 121
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 123
    :cond_18
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method dequeue(Z)V
    .registers 10
    .param p1, "useBufferOverflowInsteadOfIllegalArg"    # Z

    .line 350
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 353
    .local v0, "isSend":Z
    :goto_c
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_f
    iget-boolean v3, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    .line 355
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v3

    .line 356
    .local v3, "bytesTransferred":I
    iput-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 358
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_20

    goto/16 :goto_a9

    .line 360
    :cond_20
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_2e

    .line 361
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_a9

    .line 363
    :cond_2e
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_af

    .line 369
    if-eqz v0, :cond_3e

    .line 370
    :try_start_33
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_45

    .line 373
    :cond_3e
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_48

    .line 376
    :goto_45
    :try_start_45
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 377
    goto :goto_a9

    .line 376
    :catchall_48
    move-exception v1

    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 377
    nop

    .end local v0    # "isSend":Z
    .end local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .end local p1    # "useBufferOverflowInsteadOfIllegalArg":Z
    throw v1

    .line 380
    .end local v3    # "bytesTransferred":I
    .restart local v0    # "isSend":Z
    .restart local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .restart local p1    # "useBufferOverflowInsteadOfIllegalArg":Z
    :cond_4d
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 381
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v3

    .restart local v3    # "bytesTransferred":I
    goto :goto_66

    .line 383
    .end local v3    # "bytesTransferred":I
    :cond_5a
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v5, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-direct {p0, v3, v5, v0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_array([BIZ)I

    move-result v3

    .line 385
    .restart local v3    # "bytesTransferred":I
    :goto_66
    if-ltz v3, :cond_a9

    .line 386
    iget v5, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5
    :try_end_6e
    .catchall {:try_start_45 .. :try_end_6e} :catchall_af

    .line 388
    .local v5, "bytesToStore":I
    :try_start_6e
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_73} :catch_74
    .catchall {:try_start_6e .. :try_end_73} :catchall_af

    .line 397
    goto :goto_a9

    .line 389
    :catch_74
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    if-eqz p1, :cond_a7

    .line 391
    :try_start_77
    const-string v4, "UsbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Buffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not have enough space to read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    .end local v0    # "isSend":Z
    .end local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .end local p1    # "useBufferOverflowInsteadOfIllegalArg":Z
    throw v4

    .line 395
    .restart local v0    # "isSend":Z
    .restart local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .restart local p1    # "useBufferOverflowInsteadOfIllegalArg":Z
    :cond_a7
    nop

    .end local v0    # "isSend":Z
    .end local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .end local p1    # "useBufferOverflowInsteadOfIllegalArg":Z
    throw v1

    .line 401
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "bytesToStore":I
    .restart local v0    # "isSend":Z
    .restart local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .restart local p1    # "useBufferOverflowInsteadOfIllegalArg":Z
    :cond_a9
    :goto_a9
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 402
    iput v1, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 403
    monitor-exit v2

    .line 404
    return-void

    .line 403
    .end local v3    # "bytesTransferred":I
    :catchall_af
    move-exception v1

    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_77 .. :try_end_b1} :catchall_af

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 130
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 133
    :cond_7
    invoke-virtual {p0}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    throw v0
.end method

.method public getClientData()Ljava/lang/Object;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z
    .registers 10
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p2, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .line 99
    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 100
    const-string v0, "connection"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 102
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    .line 103
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v6

    .line 102
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/usb/UsbRequest;->native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z

    move-result v0

    .line 105
    .local v0, "wasInitialized":Z
    if-eqz v0, :cond_2b

    .line 106
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "UsbRequest.close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 109
    :cond_2b
    return v0
.end method

.method public queue(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 270
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 271
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_9

    .line 278
    invoke-virtual {v0, p0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result v1

    return v1

    .line 273
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queue(Ljava/nio/ByteBuffer;I)Z
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 197
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_9

    .line 204
    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v1

    return v1

    .line 199
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method queueIfConnectionOpen(Ljava/nio/ByteBuffer;)Z
    .registers 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 286
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 287
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 293
    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    const-string v4, "request is not initialized"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 296
    iget-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    xor-int/2addr v1, v2

    const-string v4, "this request is currently queued"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 298
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    if-nez v1, :cond_2e

    move v1, v2

    goto :goto_2f

    :cond_2e
    move v1, v3

    .line 301
    .local v1, "isSend":Z
    :goto_2f
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 302
    :try_start_32
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 304
    const/4 v5, 0x0

    if-nez p1, :cond_3e

    .line 306
    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 307
    invoke-direct {p0, v5, v3, v3}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result v2

    .local v2, "wasQueued":Z
    goto :goto_a3

    .line 309
    .end local v2    # "wasQueued":Z
    :cond_3e
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_57

    .line 312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const-string v7, "number of remaining bytes"

    const/16 v8, 0x4000

    invoke-static {v6, v3, v8, v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 317
    :cond_57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_62

    if-eqz v1, :cond_60

    goto :goto_62

    :cond_60
    move v6, v3

    goto :goto_63

    :cond_62
    :goto_62
    move v6, v2

    :goto_63
    const-string v7, "buffer can not be read-only when receiving data"

    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_95

    .line 321
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 323
    if-eqz v1, :cond_92

    .line 325
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 326
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 327
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 328
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 332
    :cond_92
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    move-object p1, v6

    .line 335
    :cond_95
    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 336
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result v2

    .line 338
    .restart local v2    # "wasQueued":Z
    :goto_a3
    monitor-exit v4
    :try_end_a4
    .catchall {:try_start_32 .. :try_end_a4} :catchall_ad

    .line 340
    if-nez v2, :cond_ac

    .line 341
    iput-boolean v3, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 342
    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 343
    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 346
    :cond_ac
    return v2

    .line 338
    .end local v2    # "wasQueued":Z
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit v4
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v2

    .line 289
    .end local v1    # "isSend":Z
    :cond_b0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method queueIfConnectionOpen(Ljava/nio/ByteBuffer;I)Z
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .line 212
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 213
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 218
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    move v1, v2

    .line 221
    .local v1, "out":Z
    :goto_16
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_2c

    const/16 v3, 0x4000

    if-le p2, v3, :cond_2c

    .line 223
    const/16 p2, 0x4000

    move v3, p2

    goto :goto_2d

    .line 226
    :cond_2c
    move v3, p2

    .end local p2    # "length":I
    .local v3, "length":I
    :goto_2d
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 228
    :try_start_30
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 229
    iput v3, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 235
    invoke-direct {p0, p1, v3, v1}, Landroid/hardware/usb/UsbRequest;->native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z

    move-result p2

    .local p2, "result":Z
    goto :goto_4d

    .line 236
    .end local p2    # "result":Z
    :cond_3f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p2

    if-eqz p2, :cond_56

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2, v3, v1}, Landroid/hardware/usb/UsbRequest;->native_queue_array([BIZ)Z

    move-result p2

    .line 241
    .restart local p2    # "result":Z
    :goto_4d
    if-nez p2, :cond_54

    .line 242
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 243
    iput v2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 245
    :cond_54
    monitor-exit v4

    .line 247
    return p2

    .line 239
    .end local p2    # "result":Z
    :cond_56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v2, "buffer is not direct and has no array"

    invoke-direct {p2, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v1    # "out":Z
    .end local v3    # "length":I
    .end local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    throw p2

    .line 245
    .restart local v0    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .restart local v1    # "out":Z
    .restart local v3    # "length":I
    .restart local p0    # "this":Landroid/hardware/usb/UsbRequest;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_5e
    move-exception p2

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_30 .. :try_end_60} :catchall_5e

    throw p2

    .line 215
    .end local v1    # "out":Z
    .end local v3    # "length":I
    .local p2, "length":I
    :cond_61
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setClientData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 171
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    .line 172
    return-void
.end method
