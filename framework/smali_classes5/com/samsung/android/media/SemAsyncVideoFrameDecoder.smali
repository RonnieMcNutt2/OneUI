.class public Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
.super Ljava/lang/Object;
.source "SemAsyncVideoFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;
    }
.end annotation


# static fields
.field private static final DECODING_COMPLETED:I = 0xca

.field private static final ERROR:I = 0x64

.field public static final HW_CODEC:I = 0x1

.field private static final INFO:I = 0xc8

.field private static final INIT_COMPLETED:I = 0xc9

.field public static final MEDIA_ERROR_CODEC_DIED:I = 0x65

.field public static final MEDIA_ERROR_EXTRACTOR_DIED:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_RESOURCE_OVERSPEC:I = -0x1389

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I = 0x0

.field public static final SW_CODEC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemAsyncVideoFrameDecoder"

.field private static final VIDEO_FRAME:I = 0x1


# instance fields
.field private mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

.field private mNativeContext:J

.field private mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

.field private mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

.field private mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

.field private mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

.field private mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-string/jumbo v0, "videoframedec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->native_init()V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_17

    .line 48
    new-instance v0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;-><init>(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    goto :goto_28

    .line 49
    :cond_17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_26

    .line 50
    new-instance v0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;-><init>(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    goto :goto_28

    .line 52
    :cond_26
    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    .line 55
    :goto_28
    nop

    .line 56
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->native_setup(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private native _init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _init(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setFrameTime(Landroid/os/Parcel;)V
.end method

.method private native _setOutputColorFormat(Landroid/graphics/Bitmap$Config;)V
.end method

.method private native _setOutputImageSize(IIZ)V
.end method

.method private native _setPreferredCodec(I)V
.end method

.method private native _setSeekOption(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _start(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private getCurrentVideoCodecUsage()I
    .registers 11

    .line 296
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v0, :cond_6

    .line 297
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_6
    const/4 v0, 0x0

    .line 301
    .local v0, "currentUsage":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 302
    .local v1, "myPid":I
    if-lez v1, :cond_53

    .line 303
    iget-object v2, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 304
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    .local v2, "videoResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    .line 307
    .local v4, "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    invoke-virtual {v4}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v5

    if-ne v5, v1, :cond_52

    .line 308
    const/high16 v5, 0x3f800000    # 1.0f

    .line 309
    .local v5, "scale":F
    invoke-virtual {v4}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getVideoFrameRate()I

    move-result v6

    .line 310
    .local v6, "frameRate":I
    const/16 v7, 0x78

    if-lt v6, v7, :cond_37

    .line 311
    const/high16 v5, 0x40800000    # 4.0f

    goto :goto_44

    .line 312
    :cond_37
    const/16 v7, 0x3c

    if-lt v6, v7, :cond_3e

    .line 313
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_44

    .line 314
    :cond_3e
    const/16 v7, 0xf

    if-gt v6, v7, :cond_44

    .line 315
    const/high16 v5, 0x3f000000    # 0.5f

    .line 317
    :cond_44
    :goto_44
    int-to-float v7, v0

    invoke-virtual {v4}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getVideoWidth()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getVideoHeight()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    float-to-int v0, v7

    .line 319
    .end local v4    # "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    .end local v5    # "scale":F
    .end local v6    # "frameRate":I
    :cond_52
    goto :goto_18

    .line 322
    .end local v2    # "videoResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :cond_53
    return v0
.end method

.method private init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p4, "cacheDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v0, 0x0

    .line 116
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, "values":[Ljava/lang/String;
    if-eqz p2, :cond_39

    .line 119
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 120
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 124
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    .line 125
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 126
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 127
    goto :goto_19

    .line 129
    .end local v2    # "i":I
    :cond_39
    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p5, "cacheDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 135
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 138
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 143
    .end local p1    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 144
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 145
    const/4 v5, 0x0

    .line 147
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_21
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v0

    .line 148
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_37

    .line 149
    .local v0, "fd":Ljava/io/FileDescriptor;
    move-object v12, p0

    :try_start_2c
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_35

    .line 151
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 152
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 155
    .end local v5    # "is":Ljava/io/FileInputStream;
    nop

    .line 158
    return-void

    .line 151
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_35
    move-exception v0

    goto :goto_39

    :catchall_37
    move-exception v0

    move-object v12, p0

    :goto_39
    if-eqz v5, :cond_3e

    .line 152
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 154
    :cond_3e
    throw v0

    .line 156
    .end local v5    # "is":Ljava/io/FileInputStream;
    :cond_3f
    move-object v12, p0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v5, "init failed with file scheme"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .restart local p1    # "path":Ljava/lang/String;
    :cond_49
    move-object v12, p0

    const/4 v7, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 465
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    .line 466
    .local v0, "vfd":Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
    const-string v1, "SemAsyncVideoFrameDecoder"

    if-nez v0, :cond_14

    .line 467
    const-string/jumbo v2, "vfd is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void

    .line 471
    :cond_14
    iget-object v2, v0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    if-nez v2, :cond_1f

    .line 472
    const-string/jumbo v2, "vfd.mEventHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 476
    :cond_1f
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 477
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->native_finalize()V

    .line 381
    return-void
.end method

.method public init(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 74
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;JJ)V

    .line 75
    return-void
.end method

.method public init(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_init(Ljava/io/FileDescriptor;JJ)V

    .line 92
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public release()V
    .registers 2

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    .line 366
    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    .line 367
    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    .line 368
    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    .line 369
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_release()V

    .line 371
    return-void
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_reset()V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    if-eqz v0, :cond_b

    .line 355
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 357
    :cond_b
    return-void
.end method

.method public setOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    .line 542
    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    .line 543
    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    .line 632
    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    .line 633
    return-void
.end method

.method public setOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    .line 503
    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    .line 504
    return-void
.end method

.method public setOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    .line 515
    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    .line 516
    return-void
.end method

.method public setOutputColorFormat(Landroid/graphics/Bitmap$Config;)V
    .registers 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setOutputColorFormat(Landroid/graphics/Bitmap$Config;)V

    .line 196
    return-void
.end method

.method public setOutputImageSize(IIZ)V
    .registers 4
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "keepAspectRatio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setOutputImageSize(IIZ)V

    .line 187
    return-void
.end method

.method public setPreferredCodec(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_20

    .line 276
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal option for setPreferredCodec :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    .end local v0    # "msg":Ljava/lang/String;
    :cond_20
    :goto_20
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setPreferredCodec(I)V

    .line 279
    return-void
.end method

.method public setSeekOption(I)V
    .registers 2
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setSeekOption(I)V

    .line 177
    return-void
.end method

.method public setTargetFrameTimeList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 242
    .local p1, "timeMsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 244
    .local v0, "request":Landroid/os/Parcel;
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 245
    .local v1, "listSize":I
    if-lez v1, :cond_51

    .line 249
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_49

    .line 251
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 252
    .local v3, "timeMs":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_26

    .line 256
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    .end local v3    # "timeMs":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 253
    .restart local v3    # "timeMs":Ljava/lang/Integer;
    :cond_26
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "abnormal frame time. timeMsList["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
    .end local p1    # "timeMsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    throw v4

    .line 258
    .end local v2    # "i":I
    .end local v3    # "timeMs":Ljava/lang/Integer;
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
    .restart local p1    # "timeMsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_49
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setFrameTime(Landroid/os/Parcel;)V
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_5a

    .line 260
    .end local v1    # "listSize":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    nop

    .line 262
    return-void

    .line 246
    .restart local v1    # "listSize":I
    :cond_51
    :try_start_51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "there\'s no time request"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
    .end local p1    # "timeMsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    throw v2
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5a

    .line 260
    .end local v1    # "listSize":I
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
    .restart local p1    # "timeMsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_5a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    throw v1
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "maxVideoCapacity":I
    iget-object v1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v1, :cond_9

    .line 332
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMaxVideoCapacity()I

    move-result v0

    .line 334
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->getCurrentVideoCodecUsage()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_start(II)V

    .line 335
    return-void
.end method

.method public stop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_stop()V

    .line 343
    return-void
.end method
