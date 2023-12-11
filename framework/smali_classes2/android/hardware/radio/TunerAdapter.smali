.class final Landroid/hardware/radio/TunerAdapter;
.super Landroid/hardware/radio/RadioTuner;
.source "TunerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.TunerAdapter"


# instance fields
.field private mBand:I

.field private final mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

.field private mIsClosed:Z

.field private mLegacyListFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLegacyListProxy:Landroid/hardware/radio/ProgramList;

.field private final mLock:Ljava/lang/Object;

.field private final mTuner:Landroid/hardware/radio/ITuner;


# direct methods
.method public static synthetic $r8$lambda$U6CHlAi4D5AoHK38kSBJg9KagT4(Landroid/hardware/radio/TunerAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/radio/TunerAdapter;->lambda$getDynamicProgramList$1()V

    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/ITuner;Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .registers 5
    .param p1, "tuner"    # Landroid/hardware/radio/ITuner;
    .param p2, "callback"    # Landroid/hardware/radio/TunerCallbackAdapter;
    .param p3, "band"    # I

    .line 54
    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    .line 55
    const-string v0, "Tuner cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ITuner;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    .line 56
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    .line 57
    iput p3, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    .line 58
    return-void
.end method

.method private synthetic lambda$getDynamicProgramList$1()V
    .registers 4

    .line 312
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->stopProgramListUpdates()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_15

    .line 316
    :catch_8
    move-exception v1

    .line 317
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "Couldn\'t stop program list updates"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 313
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v1

    .line 315
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "Tuner may already be closed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :goto_15
    nop

    .line 319
    :goto_16
    return-void
.end method

.method static synthetic lambda$getDynamicProgramList$2()V
    .registers 2

    .line 328
    const-string v0, "BroadcastRadio.TunerAdapter"

    const-string v1, "Empty closeListener in programListObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method static synthetic lambda$getProgramList$0()V
    .registers 2

    .line 282
    const-string v0, "BroadcastRadio.TunerAdapter"

    const-string v1, "Empty closeListener in programListObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method


# virtual methods
.method public cancel()I
    .registers 4

    .line 217
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->cancel()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    .line 224
    nop

    .line 225
    const/4 v0, 0x0

    return v0

    .line 221
    :catch_a
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const/16 v0, -0x20

    return v0

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t cancel"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/16 v0, -0x26

    return v0
.end method

.method public cancelAnnouncement()V
    .registers 4

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->cancelAnnouncement()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 234
    nop

    .line 235
    return-void

    .line 232
    :catch_7
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .registers 4

    .line 62
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    if-eqz v1, :cond_10

    .line 64
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Tuner is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    monitor-exit v0

    return-void

    .line 67
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    .line 68
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_1d

    .line 69
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 72
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_32

    .line 73
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->close()V

    .line 75
    :try_start_23
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->close()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    .line 78
    goto :goto_31

    .line 76
    :catch_29
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Exception trying to close tuner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void

    .line 72
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 5
    .param p1, "config"    # [Landroid/hardware/radio/RadioManager$BandConfig;

    .line 103
    if-eqz p1, :cond_1b

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 107
    :try_start_6
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 108
    return v1

    .line 109
    :catch_10
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/16 v1, -0x20

    return v1

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument must be an array of length 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;
    .registers 7
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 302
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 304
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 305
    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 307
    :cond_d
    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    .line 308
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_42

    .line 309
    new-instance v0, Landroid/hardware/radio/ProgramList;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList;-><init>()V

    .line 310
    .local v0, "list":Landroid/hardware/radio/ProgramList;
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    new-instance v3, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/TunerAdapter;)V

    invoke-virtual {v1, v0, v3}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 322
    :try_start_1f
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_24
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1f .. :try_end_24} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_26

    .line 331
    nop

    .line 333
    return-object v0

    .line 326
    :catch_26
    move-exception v1

    .line 327
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    new-instance v4, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 330
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Service died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 323
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_39
    move-exception v1

    .line 324
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v3, "BroadcastRadio.TunerAdapter"

    const-string v4, "Program list is not supported with this hardware"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-object v2

    .line 308
    .end local v0    # "list":Landroid/hardware/radio/ProgramList;
    .end local v1    # "ex":Ljava/lang/UnsupportedOperationException;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getMetadataImage(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "id"    # I

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 258
    :catch_7
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMute()Z
    .registers 4

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isMuted()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 133
    :catch_7
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v1, 0x1

    return v1
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 394
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const-string v1, "Keys cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->getParameters(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 395
    :catch_f
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
    .registers 5
    .param p1, "info"    # [Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 239
    const-string v0, "BroadcastRadio.TunerAdapter"

    if-eqz p1, :cond_1d

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    goto :goto_1d

    .line 244
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v1

    .line 245
    .local v1, "current":Landroid/hardware/radio/RadioManager$ProgramInfo;
    if-nez v1, :cond_19

    .line 246
    const-string v2, "Didn\'t get program info yet"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v0, -0x26

    return v0

    .line 249
    :cond_19
    const/4 v0, 0x0

    aput-object v1, p1, v0

    .line 250
    return v0

    .line 240
    .end local v1    # "current":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :cond_1d
    :goto_1d
    const-string v1, "The argument must be an array of length 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v0, -0x16

    return v0
.end method

.method public getProgramList(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 275
    .local p1, "vendorFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 277
    :cond_f
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Program list filter has changed, requesting new list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Landroid/hardware/radio/ProgramList;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 279
    iput-object p1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    .line 280
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->clearLastCompleteList()V

    .line 281
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    new-instance v3, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 285
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_56

    .line 287
    :try_start_31
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    new-instance v1, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v1, p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_4d

    .line 290
    nop

    .line 292
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->getLastCompleteList()Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    if-eqz v0, :cond_45

    .line 296
    return-object v0

    .line 294
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Program list is not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :catch_4d
    move-exception v0

    .line 289
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 285
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public hasControl()Z
    .registers 3

    .line 409
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isClosed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_9

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 410
    :catch_9
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isAnalogForced()Z
    .registers 3

    .line 339
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/hardware/radio/TunerAdapter;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 340
    :catch_6
    move-exception v0

    .line 341
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAntennaConnected()Z
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->isAntennaConnected()Z

    move-result v0

    return v0
.end method

.method public isConfigFlagSet(I)Z
    .registers 5
    .param p1, "flag"    # I

    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 367
    :catch_7
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isConfigFlagSupported(I)Z
    .registers 5
    .param p1, "flag"    # I

    .line 357
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->isConfigFlagSupported(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 358
    :catch_7
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public scan(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 157
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->seek(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 165
    nop

    .line 166
    return v2

    .line 162
    :catch_f
    move-exception v1

    .line 163
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/16 v0, -0x20

    return v0

    .line 159
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t scan"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/16 v0, -0x26

    return v0
.end method

.method public seek(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 172
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->seek(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 180
    nop

    .line 181
    return v2

    .line 177
    :catch_f
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/16 v0, -0x20

    return v0

    .line 174
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t seek"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/16 v0, -0x26

    return v0
.end method

.method public setAnalogForced(Z)V
    .registers 4
    .param p1, "isForced"    # Z

    .line 348
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/hardware/radio/TunerAdapter;->setConfigFlag(IZ)V
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_4} :catch_6

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catch_6
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConfigFlag(IZ)V
    .registers 6
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 375
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/ITuner;->setConfigFlag(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 378
    nop

    .line 379
    return-void

    .line 376
    :catch_7
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 6
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 83
    const/16 v0, -0x16

    if-nez p1, :cond_5

    .line 84
    return v0

    .line 87
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 88
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_d} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_19

    .line 89
    :try_start_d
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    .line 90
    monitor-exit v1

    .line 91
    const/4 v0, 0x0

    return v0

    .line 90
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "config":Landroid/hardware/radio/RadioManager$BandConfig;
    :try_start_18
    throw v2
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_19} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_19} :catch_19

    .line 95
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "config":Landroid/hardware/radio/RadioManager$BandConfig;
    :catch_19
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/16 v1, -0x20

    return v1

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_24
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BroadcastRadio.TunerAdapter"

    const-string v3, "Can\'t set configuration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    return v0
.end method

.method public setMute(Z)I
    .registers 5
    .param p1, "mute"    # Z

    .line 118
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->setMuted(Z)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    .line 125
    nop

    .line 126
    const/4 v0, 0x0

    return v0

    .line 122
    :catch_a
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/16 v0, -0x20

    return v0

    .line 119
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t set muted"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/high16 v0, -0x80000000

    return v0
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 384
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const-string v1, "Parameters cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 386
    :catch_f
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startBackgroundScan()Z
    .registers 4

    .line 266
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->startBackgroundScan()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 267
    :catch_7
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public step(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 142
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->step(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 150
    nop

    .line 151
    return v2

    .line 147
    :catch_f
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/16 v0, -0x20

    return v0

    .line 144
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t step"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/16 v0, -0x26

    return v0
.end method

.method public tune(II)I
    .registers 6
    .param p1, "channel"    # I
    .param p2, "subChannel"    # I

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_15

    .line 189
    :try_start_3
    iget v1, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    .line 190
    .local v1, "band":I
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 191
    :try_start_6
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-static {v1, p1, p2}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_f} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_15

    .line 201
    .end local v1    # "band":I
    nop

    .line 202
    const/4 v0, 0x0

    return v0

    .line 190
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "channel":I
    .end local p2    # "subChannel":I
    :try_start_14
    throw v1
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_15} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_15} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_15

    .line 198
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "channel":I
    .restart local p2    # "subChannel":I
    :catch_15
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/16 v1, -0x20

    return v1

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t tune"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/16 v1, -0x16

    return v1

    .line 192
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2b
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t tune"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    const/16 v1, -0x26

    return v1
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 211
    nop

    .line 212
    return-void

    .line 209
    :catch_7
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
