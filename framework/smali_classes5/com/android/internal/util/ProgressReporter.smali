.class public Lcom/android/internal/util/ProgressReporter;
.super Ljava/lang/Object;
.source "ProgressReporter.java"


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private final mId:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mSegmentRange:[I

.field private mState:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "id"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 64
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    .line 73
    const/16 v1, 0x64

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 81
    iput p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 82
    return-void
.end method

.method private notifyFinished(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 229
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 231
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 233
    goto :goto_17

    .line 232
    :catch_16
    move-exception v1

    .line 229
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 235
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 236
    return-void
.end method

.method private notifyProgress(IILandroid/os/Bundle;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 219
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 221
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 223
    goto :goto_17

    .line 222
    :catch_16
    move-exception v1

    .line 219
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 225
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 226
    return-void
.end method

.method private notifyStarted(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 209
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 211
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 213
    goto :goto_17

    .line 212
    :catch_16
    move-exception v1

    .line 209
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 215
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 216
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IProgressListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .line 89
    if-nez p1, :cond_3

    return-void

    .line 90
    :cond_3
    monitor-enter p0

    .line 91
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 92
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2c

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_30

    goto :goto_2a

    .line 105
    :pswitch_10
    :try_start_10
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    invoke-interface {p1, v0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_2c

    .line 107
    goto :goto_2a

    .line 106
    :catch_16
    move-exception v0

    goto :goto_2a

    .line 98
    :pswitch_18
    :try_start_18
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    invoke-interface {p1, v0, v1}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V

    .line 99
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_27
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    .line 101
    goto :goto_2a

    .line 100
    :catch_27
    move-exception v0

    .line 102
    goto :goto_2a

    .line 95
    :pswitch_29
    nop

    .line 110
    :goto_2a
    :try_start_2a
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method public endSegment([I)V
    .registers 5
    .param p1, "lastRange"    # [I

    .line 172
    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 174
    iput-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 175
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public finish()V
    .registers 3

    .line 201
    monitor-enter p0

    .line 202
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 203
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyFinished(ILandroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 205
    monitor-exit p0

    .line 206
    return-void

    .line 205
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw v0
.end method

.method getProgress()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    return v0
.end method

.method getSegmentRange()[I
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    return-object v0
.end method

.method public setProgress(I)V
    .registers 4
    .param p1, "progress"    # I

    .line 119
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public setProgress(II)V
    .registers 4
    .param p1, "n"    # I
    .param p2, "m"    # I

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public setProgress(IILjava/lang/CharSequence;)V
    .registers 8
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 146
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v0, v0, v1

    mul-int v1, p1, v0

    div-int/2addr v1, p2

    .line 147
    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 148
    if-eqz p3, :cond_20

    .line 149
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 151
    :cond_20
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 144
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be started to change progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/util/ProgressReporter;
    .end local p1    # "n":I
    .end local p2    # "m":I
    .end local p3    # "title":Ljava/lang/CharSequence;
    throw v0

    .line 152
    .restart local p0    # "this":Lcom/android/internal/util/ProgressReporter;
    .restart local p1    # "n":I
    .restart local p2    # "m":I
    .restart local p3    # "title":Ljava/lang/CharSequence;
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public setProgress(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "progress"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 128
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public start()V
    .registers 4

    .line 190
    monitor-enter p0

    .line 191
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 192
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyStarted(ILandroid/os/Bundle;)V

    .line 193
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public startSegment(I)[I
    .registers 7
    .param p1, "size"    # I

    .line 161
    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    move-object v1, v0

    .line 163
    .local v1, "lastRange":[I
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aget v0, v0, v3

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    aput v0, v2, v3

    iput-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 164
    monitor-exit p0

    return-object v1

    .line 165
    .end local v1    # "lastRange":[I
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method
