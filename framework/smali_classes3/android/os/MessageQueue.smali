.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .registers 4
    .param p1, "quitAllowed"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 78
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 79
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 80
    return-void
.end method

.method private dispatchEvents(II)I
    .registers 10
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .line 276
    monitor-enter p0

    .line 277
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 278
    .local v0, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v0, :cond_e

    .line 279
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 282
    :cond_e
    iget v1, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 283
    .local v1, "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 284
    if-nez p2, :cond_15

    .line 285
    monitor-exit p0

    return v1

    .line 288
    :cond_15
    iget-object v2, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 289
    .local v2, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v3, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 290
    .local v3, "seq":I
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_4a

    .line 293
    iget-object v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v2, v4, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v4

    .line 295
    .local v4, "newWatchedEvents":I
    if-eqz v4, :cond_24

    .line 296
    or-int/lit8 v4, v4, 0x4

    .line 301
    :cond_24
    if-eq v4, v1, :cond_49

    .line 302
    monitor-enter p0

    .line 303
    :try_start_27
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 304
    .local v5, "index":I
    if-ltz v5, :cond_44

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_44

    iget v6, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v3, :cond_44

    .line 306
    iput v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 307
    if-nez v4, :cond_44

    .line 308
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 311
    .end local v5    # "index":I
    :cond_44
    monitor-exit p0

    goto :goto_49

    :catchall_46
    move-exception v5

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_27 .. :try_end_48} :catchall_46

    throw v5

    .line 315
    :cond_49
    :goto_49
    return v4

    .line 290
    .end local v0    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v3    # "seq":I
    .end local v4    # "newWatchedEvents":I
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private dispose()V
    .registers 6

    .line 94
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 95
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 96
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 98
    :cond_d
    return-void
.end method

.method private isPollingLocked()Z
    .registers 3

    .line 168
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_e

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .registers 9
    .param p1, "when"    # J

    .line 479
    monitor-enter p0

    .line 480
    :try_start_1
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 481
    .local v0, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 483
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 484
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "prev":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 488
    .local v3, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_28

    .line 489
    :goto_1b
    if-eqz v3, :cond_28

    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_28

    .line 490
    move-object v2, v3

    .line 491
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_1b

    .line 494
    :cond_28
    if-eqz v2, :cond_2f

    .line 495
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 496
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_33

    .line 498
    :cond_2f
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 499
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 501
    :goto_33
    monitor-exit p0

    return v0

    .line 502
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "p":Landroid/os/Message;
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private removeAllFutureMessagesLocked()V
    .registers 7

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 888
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 889
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_2c

    .line 890
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_12

    .line 891
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_2c

    .line 895
    :cond_12
    :goto_12
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 896
    .local v3, "n":Landroid/os/Message;
    if-nez v3, :cond_17

    .line 897
    return-void

    .line 899
    :cond_17
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2a

    .line 900
    nop

    .line 904
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 906
    :cond_21
    move-object v2, v3

    .line 907
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 908
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 909
    if-nez v3, :cond_21

    goto :goto_2c

    .line 902
    :cond_2a
    move-object v2, v3

    goto :goto_12

    .line 912
    .end local v3    # "n":Landroid/os/Message;
    :cond_2c
    :goto_2c
    return-void
.end method

.method private removeAllMessagesLocked()V
    .registers 3

    .line 877
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 878
    .local v0, "p":Landroid/os/Message;
    :goto_2
    if-eqz v0, :cond_b

    .line 879
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 880
    .local v1, "n":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 881
    move-object v0, v1

    .line 882
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_2

    .line 883
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 884
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 233
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 235
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 236
    .local v1, "index":I
    const/4 v2, 0x0

    .line 237
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_20

    .line 238
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 239
    if-ltz v1, :cond_20

    .line 240
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 241
    if-eqz v2, :cond_20

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_20

    .line 242
    return-void

    .line 247
    :cond_20
    if-eqz p2, :cond_4d

    .line 248
    or-int/lit8 p2, p2, 0x4

    .line 249
    if-nez v2, :cond_3d

    .line 250
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_31

    .line 251
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 253
    :cond_31
    new-instance v3, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v3, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    move-object v2, v3

    .line 254
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_47

    .line 256
    :cond_3d
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 257
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 258
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 260
    :goto_47
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_5c

    .line 261
    :cond_4d
    if-eqz v2, :cond_5c

    .line 262
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 263
    iget-object v4, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 264
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, v3}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 266
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 125
    if-eqz p1, :cond_d

    .line 128
    monitor-enter p0

    .line 129
    :try_start_3
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0

    .line 126
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 197
    if-eqz p1, :cond_16

    .line 200
    if-eqz p3, :cond_d

    .line 204
    monitor-enter p0

    .line 205
    :try_start_5
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 206
    monitor-exit p0

    .line 207
    return-void

    .line 206
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0

    .line 201
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 10
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "h"    # Landroid/os/Handler;

    .line 915
    monitor-enter p0

    .line 916
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 917
    .local v0, "now":J
    const/4 v2, 0x0

    .line 918
    .local v2, "n":I
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, "msg":Landroid/os/Message;
    :goto_8
    if-eqz v3, :cond_3e

    .line 919
    if-eqz p3, :cond_10

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_38

    .line 920
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 922
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 918
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_8

    .line 924
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(Total messages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", polling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", quitting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 926
    .end local v0    # "now":J
    .end local v2    # "n":I
    monitor-exit p0

    .line 927
    return-void

    .line 926
    :catchall_7a
    move-exception v0

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 930
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 931
    .local v0, "messageQueueToken":J
    monitor-enter p0

    .line 932
    :try_start_5
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, "msg":Landroid/os/Message;
    :goto_7
    if-eqz v2, :cond_15

    .line 933
    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 932
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v2, v3

    goto :goto_7

    .line 935
    .end local v2    # "msg":Landroid/os/Message;
    :cond_15
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v2

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 936
    iget-boolean v2, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 937
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_30

    .line 938
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 939
    return-void

    .line 937
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 550
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_a5

    .line 554
    monitor-enter p0

    .line 555
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_89

    .line 559
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 560
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sending message to a Handler on a dead thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 564
    monitor-exit p0

    return v1

    .line 567
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_38
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 568
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 569
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 571
    .local v0, "p":Landroid/os/Message;
    const/4 v2, 0x1

    if-eqz v0, :cond_7a

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_7a

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_4f

    goto :goto_7a

    .line 580
    :cond_4f
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_5e

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_5e

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5e

    move v1, v2

    .line 583
    .local v1, "needWake":Z
    :cond_5e
    :goto_5e
    move-object v3, v0

    .line 584
    .local v3, "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 585
    if-eqz v0, :cond_75

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_6b

    .line 586
    goto :goto_75

    .line 588
    :cond_6b
    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 589
    const/4 v1, 0x0

    goto :goto_5e

    .line 592
    :cond_75
    :goto_75
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 593
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_80

    .line 573
    .end local v1    # "needWake":Z
    .end local v3    # "prev":Landroid/os/Message;
    :cond_7a
    :goto_7a
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 574
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 575
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 597
    .restart local v1    # "needWake":Z
    :goto_80
    if-eqz v1, :cond_87

    .line 598
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 600
    .end local v0    # "p":Landroid/os/Message;
    .end local v1    # "needWake":Z
    :cond_87
    monitor-exit p0

    .line 601
    return v2

    .line 556
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "msg":Landroid/os/Message;
    .end local p2    # "when":J
    throw v0

    .line 600
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "msg":Landroid/os/Message;
    .restart local p2    # "when":J
    :catchall_a2
    move-exception v0

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_5 .. :try_end_a4} :catchall_a2

    throw v0

    .line 551
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must have a target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 87
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    throw v0
.end method

.method hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 622
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 623
    return v0

    .line 626
    :cond_4
    monitor-enter p0

    .line 627
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 628
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_22

    .line 629
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1e

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_1e

    if-eqz p3, :cond_1b

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 630
    :cond_1b
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 632
    :cond_1e
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 634
    :cond_22
    monitor-exit p0

    return v0

    .line 635
    .end local v1    # "p":Landroid/os/Message;
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;)Z
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;

    .line 657
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 658
    return v0

    .line 661
    :cond_4
    monitor-enter p0

    .line 662
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 663
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_14

    .line 664
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_10

    .line 665
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 667
    :cond_10
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 669
    :cond_14
    monitor-exit p0

    return v0

    .line 670
    .end local v1    # "p":Landroid/os/Message;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 605
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 606
    return v0

    .line 609
    :cond_4
    monitor-enter p0

    .line 610
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 611
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_1e

    .line 612
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1a

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1a

    .line 613
    :cond_17
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 615
    :cond_1a
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 617
    :cond_1e
    monitor-exit p0

    return v0

    .line 618
    .end local v1    # "p":Landroid/os/Message;
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 640
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 641
    return v0

    .line 644
    :cond_4
    monitor-enter p0

    .line 645
    :try_start_5
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 646
    .local v1, "p":Landroid/os/Message;
    :goto_7
    if-eqz v1, :cond_1e

    .line 647
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1a

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1a

    .line 648
    :cond_17
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 650
    :cond_1a
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_7

    .line 652
    :cond_1e
    monitor-exit p0

    return v0

    .line 653
    .end local v1    # "p":Landroid/os/Message;
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public isIdle()Z
    .registers 5

    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_12

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v2, 0x1

    :goto_13
    monitor-exit p0

    return v2

    .line 111
    .end local v0    # "now":J
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public isPolling()Z
    .registers 2

    .line 160
    monitor-enter p0

    .line 161
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 162
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method next()Landroid/os/Message;
    .registers 14

    .line 323
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 324
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 325
    return-object v3

    .line 328
    :cond_a
    const/4 v2, -0x1

    .line 329
    .local v2, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    .line 331
    .local v4, "nextPollTimeoutMillis":I
    :goto_c
    if-eqz v4, :cond_11

    .line 332
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 335
    :cond_11
    invoke-direct {p0, v0, v1, v4}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 337
    monitor-enter p0

    .line 339
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 340
    .local v5, "now":J
    const/4 v7, 0x0

    .line 341
    .local v7, "prevMsg":Landroid/os/Message;
    iget-object v8, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 342
    .local v8, "msg":Landroid/os/Message;
    if-eqz v8, :cond_2e

    iget-object v9, v8, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_2e

    .line 345
    :cond_22
    move-object v7, v8

    .line 346
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v8, v9

    .line 347
    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Landroid/os/Message;->isAsynchronous()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 349
    :cond_2e
    if-eqz v8, :cond_57

    .line 350
    iget-wide v9, v8, Landroid/os/Message;->when:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_42

    .line 352
    iget-wide v9, v8, Landroid/os/Message;->when:J

    sub-long/2addr v9, v5

    const-wide/32 v11, 0x7fffffff

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v4, v9

    goto :goto_58

    .line 355
    :cond_42
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 356
    if-eqz v7, :cond_4c

    .line 357
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v9, v7, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_50

    .line 359
    :cond_4c
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 361
    :goto_50
    iput-object v3, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 363
    invoke-virtual {v8}, Landroid/os/Message;->markInUse()V

    .line 364
    monitor-exit p0

    return-object v8

    .line 368
    :cond_57
    const/4 v4, -0x1

    .line 372
    :goto_58
    iget-boolean v9, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v9, :cond_61

    .line 373
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 374
    monitor-exit p0

    return-object v3

    .line 380
    :cond_61
    if-gez v2, :cond_74

    iget-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v9, :cond_6d

    iget-wide v9, v9, Landroid/os/Message;->when:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_74

    .line 382
    :cond_6d
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 384
    :cond_74
    if-gtz v2, :cond_7b

    .line 386
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 387
    monitor-exit p0

    goto :goto_c

    .line 390
    :cond_7b
    iget-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v9, :cond_88

    .line 391
    const/4 v9, 0x4

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 393
    :cond_88
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 394
    .end local v5    # "now":J
    .end local v7    # "prevMsg":Landroid/os/Message;
    .end local v8    # "msg":Landroid/os/Message;
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_15 .. :try_end_95} :catchall_c1

    .line 398
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_96
    if-ge v5, v2, :cond_bd

    .line 399
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v6, v5

    .line 400
    .local v7, "idler":Landroid/os/MessageQueue$IdleHandler;
    aput-object v3, v6, v5

    .line 402
    const/4 v6, 0x0

    .line 404
    .local v6, "keep":Z
    :try_start_9f
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v8
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_a5

    move v6, v8

    .line 407
    goto :goto_ad

    .line 405
    :catchall_a5
    move-exception v8

    .line 406
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "MessageQueue"

    const-string v10, "IdleHandler threw exception"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_ad
    if-nez v6, :cond_ba

    .line 410
    monitor-enter p0

    .line 411
    :try_start_b0
    iget-object v8, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    monitor-exit p0

    goto :goto_ba

    :catchall_b7
    move-exception v3

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_b7

    throw v3

    .line 398
    .end local v6    # "keep":Z
    .end local v7    # "idler":Landroid/os/MessageQueue$IdleHandler;
    :cond_ba
    :goto_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    .line 417
    .end local v5    # "i":I
    :cond_bd
    const/4 v2, 0x0

    .line 421
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 394
    :catchall_c1
    move-exception v3

    :try_start_c2
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v3
.end method

.method public postSyncBarrier()I
    .registers 3

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method quit(Z)V
    .registers 4
    .param p1, "safe"    # Z

    .line 426
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_21

    .line 430
    monitor-enter p0

    .line 431
    :try_start_5
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_b

    .line 432
    monitor-exit p0

    return-void

    .line 434
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 436
    if-eqz p1, :cond_14

    .line 437
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_17

    .line 439
    :cond_14
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 443
    :goto_17
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 444
    monitor-exit p0

    .line 445
    return-void

    .line 444
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    .line 427
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 844
    if-nez p1, :cond_3

    .line 845
    return-void

    .line 848
    :cond_3
    monitor-enter p0

    .line 849
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 852
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1f

    if-eqz p2, :cond_16

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 853
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 854
    :cond_16
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 855
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 856
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 857
    move-object v0, v1

    .line 858
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 861
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_3d

    .line 862
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 863
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_3b

    .line 864
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_3b

    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 865
    :cond_33
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 866
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 867
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 868
    goto :goto_1f

    .line 871
    .end local v2    # "nn":Landroid/os/Message;
    :cond_3b
    move-object v0, v1

    .line 872
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1f

    .line 873
    .end local v0    # "p":Landroid/os/Message;
    :cond_3d
    monitor-exit p0

    .line 874
    return-void

    .line 873
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 811
    if-nez p1, :cond_3

    .line 812
    return-void

    .line 815
    :cond_3
    monitor-enter p0

    .line 816
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 819
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_1b

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1b

    if-eqz p2, :cond_12

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_1b

    .line 821
    :cond_12
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 822
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 823
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 824
    move-object v0, v1

    .line 825
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 828
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_35

    .line 829
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 830
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_33

    .line 831
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_33

    if-eqz p2, :cond_2b

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_33

    .line 832
    :cond_2b
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 833
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 834
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 835
    goto :goto_1b

    .line 838
    .end local v2    # "nn":Landroid/os/Message;
    :cond_33
    move-object v0, v1

    .line 839
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1b

    .line 840
    .end local v0    # "p":Landroid/os/Message;
    :cond_35
    monitor-exit p0

    .line 841
    return-void

    .line 840
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_37

    throw v0
.end method

.method removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 708
    if-nez p1, :cond_3

    .line 709
    return-void

    .line 712
    :cond_3
    monitor-enter p0

    .line 713
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 716
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_23

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_23

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_23

    if-eqz p3, :cond_1a

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 717
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 718
    :cond_1a
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 719
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 720
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 721
    move-object v0, v1

    .line 722
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 725
    :cond_23
    :goto_23
    if-eqz v0, :cond_45

    .line 726
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 727
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_43

    .line 728
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_43

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_43

    if-eqz p3, :cond_3b

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 729
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 730
    :cond_3b
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 731
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 732
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 733
    goto :goto_23

    .line 736
    .end local v2    # "nn":Landroid/os/Message;
    :cond_43
    move-object v0, v1

    .line 737
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_23

    .line 738
    .end local v0    # "p":Landroid/os/Message;
    :cond_45
    monitor-exit p0

    .line 739
    return-void

    .line 738
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_47

    throw v0
.end method

.method removeEqualMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 776
    if-eqz p1, :cond_4c

    if-nez p2, :cond_5

    goto :goto_4c

    .line 780
    :cond_5
    monitor-enter p0

    .line 781
    :try_start_6
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 784
    .local v0, "p":Landroid/os/Message;
    :goto_8
    if-eqz v0, :cond_25

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_25

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_25

    if-eqz p3, :cond_1c

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 786
    :cond_1c
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 787
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 788
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 789
    move-object v0, v1

    .line 790
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_8

    .line 793
    :cond_25
    :goto_25
    if-eqz v0, :cond_47

    .line 794
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 795
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_45

    .line 796
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_45

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_45

    if-eqz p3, :cond_3d

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 797
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 798
    :cond_3d
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 799
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 800
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 801
    goto :goto_25

    .line 804
    .end local v2    # "nn":Landroid/os/Message;
    :cond_45
    move-object v0, v1

    .line 805
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_25

    .line 806
    .end local v0    # "p":Landroid/os/Message;
    :cond_47
    monitor-exit p0

    .line 807
    return-void

    .line 806
    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_49

    throw v0

    .line 777
    :cond_4c
    :goto_4c
    return-void
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 674
    if-nez p1, :cond_3

    .line 675
    return-void

    .line 678
    :cond_3
    monitor-enter p0

    .line 679
    :try_start_4
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 682
    .local v0, "p":Landroid/os/Message;
    :goto_6
    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1f

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1f

    if-eqz p3, :cond_16

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_1f

    .line 684
    :cond_16
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 685
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 686
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 687
    move-object v0, v1

    .line 688
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_6

    .line 691
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_3d

    .line 692
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 693
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_3b

    .line 694
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_3b

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_3b

    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_3b

    .line 696
    :cond_33
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 697
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 698
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 699
    goto :goto_1f

    .line 702
    .end local v2    # "nn":Landroid/os/Message;
    :cond_3b
    move-object v0, v1

    .line 703
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1f

    .line 704
    .end local v0    # "p":Landroid/os/Message;
    :cond_3d
    monitor-exit p0

    .line 705
    return-void

    .line 704
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 742
    if-eqz p1, :cond_44

    if-nez p2, :cond_5

    goto :goto_44

    .line 746
    :cond_5
    monitor-enter p0

    .line 747
    :try_start_6
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 750
    .local v0, "p":Landroid/os/Message;
    :goto_8
    if-eqz v0, :cond_21

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_21

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_21

    if-eqz p3, :cond_18

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_21

    .line 752
    :cond_18
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 753
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 754
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 755
    move-object v0, v1

    .line 756
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_8

    .line 759
    :cond_21
    :goto_21
    if-eqz v0, :cond_3f

    .line 760
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 761
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_3d

    .line 762
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_3d

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_3d

    if-eqz p3, :cond_35

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_3d

    .line 764
    :cond_35
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 765
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 766
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 767
    goto :goto_21

    .line 770
    .end local v2    # "nn":Landroid/os/Message;
    :cond_3d
    move-object v0, v1

    .line 771
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_21

    .line 772
    .end local v0    # "p":Landroid/os/Message;
    :cond_3f
    monitor-exit p0

    .line 773
    return-void

    .line 772
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_41

    throw v0

    .line 743
    :cond_44
    :goto_44
    return-void
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 222
    if-eqz p1, :cond_d

    .line 226
    monitor-enter p0

    .line 227
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0

    .line 223
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .registers 7
    .param p1, "token"    # I

    .line 520
    monitor-enter p0

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "prev":Landroid/os/Message;
    :try_start_2
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 523
    .local v1, "p":Landroid/os/Message;
    :goto_4
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_e

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_13

    .line 524
    :cond_e
    move-object v0, v1

    .line 525
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_4

    .line 527
    :cond_13
    if-eqz v1, :cond_3b

    .line 532
    if-eqz v0, :cond_1d

    .line 533
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 534
    const/4 v2, 0x0

    .local v2, "needWake":Z
    goto :goto_2b

    .line 536
    .end local v2    # "needWake":Z
    :cond_1d
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 537
    if-eqz v2, :cond_2a

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    .line 539
    .restart local v2    # "needWake":Z
    :goto_2b
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 543
    if-eqz v2, :cond_39

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_39

    .line 544
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 546
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "needWake":Z
    :cond_39
    monitor-exit p0

    .line 547
    return-void

    .line 528
    .restart local v0    # "prev":Landroid/os/Message;
    .restart local v1    # "p":Landroid/os/Message;
    :cond_3b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "token":I
    throw v2

    .line 546
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "token":I
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_43

    throw v0
.end method
