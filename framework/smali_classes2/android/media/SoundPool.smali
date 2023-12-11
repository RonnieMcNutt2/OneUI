.class public Landroid/media/SoundPool;
.super Landroid/media/PlayerBase;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;,
        Landroid/media/SoundPool$Builder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/media/SoundPool$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mHasAppOpsPlayAudio:Z

.field private mNativeContext:J


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 119
    const-string v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 127
    const-string v0, "SoundPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .line 153
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 154
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/media/SoundPool;-><init>(Landroid/content/Context;ILandroid/media/AudioAttributes;I)V

    .line 156
    const-string v0, "SoundPool"

    const-string v1, "SoundPool()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/media/AudioAttributes;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxStreams"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "sessionId"    # I

    .line 161
    const/4 v0, 0x3

    invoke-direct {p0, p3, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    invoke-virtual {p0}, Landroid/media/SoundPool;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Landroid/media/SoundPool;->native_setup(ILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 167
    iput-object p3, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    .line 169
    invoke-static {p1, p4}, Landroid/media/SoundPool;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->baseRegisterPlayer(I)V

    .line 170
    return-void

    .line 165
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native setup failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILandroid/media/AudioAttributes;ILandroid/media/SoundPool-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/SoundPool;-><init>(Landroid/content/Context;ILandroid/media/AudioAttributes;I)V

    return-void
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _mute(Z)V
.end method

.method private final native _play(IFFIIFI)I
.end method

.method private final native _setVolume(IFF)V
.end method

.method private convertStartingPathToSystem(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 689
    if-eqz p1, :cond_2a

    const-string v0, "/product/media/audio/ui/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 690
    const-string v0, "/product"

    const-string v1, "/system"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert starting path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundPool"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_2a
    return-object p1
.end method

.method private final native native_release()V
.end method

.method private native native_setup(ILjava/lang/Object;Ljava/lang/String;)I
.end method

.method private postEventFromNative(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 543
    .local v0, "eventHandler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 544
    return-void

    .line 546
    :cond_b
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 547
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    return-void
.end method


# virtual methods
.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .registers 1

    .line 186
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 233
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v1, 0x0

    .line 234
    .local v1, "id":I
    if-eqz v0, :cond_22

    .line 235
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, p0

    move v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v1

    .line 237
    :try_start_1d
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 240
    goto :goto_22

    .line 238
    :catch_21
    move-exception v2

    .line 242
    :cond_22
    :goto_22
    return v1
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .registers 12
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .line 254
    if-eqz p1, :cond_24

    .line 255
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 256
    .local v7, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_1c

    .line 259
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, v7

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0

    .line 257
    :cond_1c
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    .end local v7    # "len":J
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .line 280
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 198
    invoke-direct {p0, p1}, Landroid/media/SoundPool;->convertStartingPathToSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "id":I
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 206
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_26

    .line 207
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v3, p0

    move v9, p2

    invoke-direct/range {v3 .. v9}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v3

    move v0, v3

    .line 208
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_27

    .line 212
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_26
    goto :goto_40

    .line 210
    :catch_27
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundPool"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1    # "e":Ljava/io/IOException;
    :goto_40
    return v0
.end method

.method public final native pause(I)V
.end method

.method public final play(IFFIIF)I
    .registers 16
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->baseStart(I)V

    .line 324
    invoke-virtual {p0}, Landroid/media/SoundPool;->getVolMultiplier()F

    move-result v0

    .line 325
    .local v0, "volMultiplier":F
    mul-float v3, p2, v0

    mul-float v4, p3, v0

    .line 326
    invoke-virtual {p0}, Landroid/media/SoundPool;->getPlayerIId()I

    move-result v8

    .line 325
    move-object v1, p0

    move v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/media/SoundPool;->_play(IFFIIFI)I

    move-result v1

    return v1
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 411
    const/4 v0, -0x1

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "id"    # I

    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method playerPause()V
    .registers 1

    .line 443
    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .registers 4
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method playerSetVolume(ZFF)V
    .registers 6
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 423
    const/16 v0, -0x63

    .line 424
    .local v0, "ALL_TRACKS":I
    const/16 v1, -0x63

    invoke-virtual {p0, v1, p2, p3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 426
    .end local v0    # "ALL_TRACKS":I
    invoke-direct {p0, p1}, Landroid/media/SoundPool;->_mute(Z)V

    .line 427
    return-void
.end method

.method playerStart()V
    .registers 1

    .line 438
    return-void
.end method

.method playerStop()V
    .registers 1

    .line 448
    return-void
.end method

.method public final release()V
    .registers 1

    .line 180
    invoke-virtual {p0}, Landroid/media/SoundPool;->baseRelease()V

    .line 181
    invoke-direct {p0}, Landroid/media/SoundPool;->native_release()V

    .line 182
    return-void
.end method

.method public final native resume(I)V
.end method

.method public native semSetSituationType(ILjava/lang/String;)V
.end method

.method public final native semSetStreamType(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 512
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 513
    iget-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 514
    return-void

    .line 518
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1b

    .line 519
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;Landroid/media/SoundPool$OnLoadCompleteListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_32

    .line 520
    :cond_1b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_2d

    .line 521
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;Landroid/media/SoundPool$OnLoadCompleteListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_32

    .line 523
    :cond_2d
    iget-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 525
    :goto_32
    return-void
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public setVolume(IF)V
    .registers 3
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .line 455
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 456
    return-void
.end method

.method public final setVolume(IFF)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 404
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool;->_setVolume(IFF)V

    .line 405
    return-void
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method
