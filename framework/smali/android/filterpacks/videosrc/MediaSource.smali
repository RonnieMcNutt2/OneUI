.class public Landroid/filterpacks/videosrc/MediaSource;
.super Landroid/filterfw/core/Filter;
.source "MediaSource.java"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final PREP_TIMEOUT:I = 0x64

.field private static final PREP_TIMEOUT_REPEAT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaSource"

.field private static final mSourceCoords_0:[F

.field private static final mSourceCoords_180:[F

.field private static final mSourceCoords_270:[F

.field private static final mSourceCoords_90:[F


# instance fields
.field private mCompleted:Z

.field private mContext:Landroid/content/Context;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "context"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGotSize:Z

.field private mHeight:I

.field private final mLogVerbose:Z

.field private mLooping:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "loop"
    .end annotation
.end field

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNewFrameAvailable:Z

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOrientationUpdated:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mPaused:Z

.field private mPlaying:Z

.field private mPrepared:Z

.field private mSelectedIsUrl:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceIsUrl"
    .end annotation
.end field

.field private mSourceAsset:Landroid/content/res/AssetFileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceAsset"
    .end annotation
.end field

.field private mSourceUrl:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceUrl"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVolume:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "volume"
    .end annotation
.end field

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGotSize(Landroid/filterpacks/videosrc/MediaSource;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/MediaSource;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Landroid/filterpacks/videosrc/MediaSource;)I
    .registers 1

    iget p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputFormat(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;
    .registers 1

    iget-object p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCompleted(Landroid/filterpacks/videosrc/MediaSource;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGotSize(Landroid/filterpacks/videosrc/MediaSource;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHeight(Landroid/filterpacks/videosrc/MediaSource;I)V
    .registers 2

    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNewFrameAvailable(Landroid/filterpacks/videosrc/MediaSource;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrepared(Landroid/filterpacks/videosrc/MediaSource;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWidth(Landroid/filterpacks/videosrc/MediaSource;I)V
    .registers 2

    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 136
    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_20

    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    .line 140
    new-array v1, v0, [F

    fill-array-data v1, :array_44

    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    .line 144
    new-array v1, v0, [F

    fill-array-data v1, :array_68

    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    .line 148
    new-array v0, v0, [F

    fill-array-data v0, :array_8c

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    return-void

    nop

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 63
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    .line 82
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    .line 94
    iput v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    .line 113
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameShader:Ljava/lang/String;

    .line 511
    new-instance v1, Landroid/filterpacks/videosrc/MediaSource$1;

    invoke-direct {v1, p0}, Landroid/filterpacks/videosrc/MediaSource$1;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 536
    new-instance v1, Landroid/filterpacks/videosrc/MediaSource$2;

    invoke-direct {v1, p0}, Landroid/filterpacks/videosrc/MediaSource$2;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 547
    new-instance v1, Landroid/filterpacks/videosrc/MediaSource$3;

    invoke-direct {v1, p0}, Landroid/filterpacks/videosrc/MediaSource$3;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 557
    new-instance v1, Landroid/filterpacks/videosrc/MediaSource$4;

    invoke-direct {v1, p0}, Landroid/filterpacks/videosrc/MediaSource$4;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 166
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 168
    const-string v0, "MediaSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 169
    return-void
.end method

.method private createFormats()V
    .registers 2

    .line 179
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 181
    return-void
.end method

.method private declared-synchronized setupMediaPlayer(Z)Z
    .registers 12
    .param p1, "useUrl"    # Z

    monitor-enter p0

    .line 434
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 435
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 436
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 437
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 438
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 439
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 441
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_19

    const-string v1, "MediaSource"

    const-string v2, "Setting up playback."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local p0    # "this":Landroid/filterpacks/videosrc/MediaSource;
    :cond_19
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2e

    .line 445
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_28

    const-string v1, "MediaSource"

    const-string v2, "Resetting existing MediaPlayer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_28
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_40

    .line 449
    :cond_2e
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_39

    const-string v1, "MediaSource"

    const-string v2, "Creating new MediaPlayer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_39
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 453
    :goto_40
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_167

    if-eqz v1, :cond_15f

    .line 459
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_82

    .line 460
    :try_start_48
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_66

    const-string v3, "MediaSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting MediaPlayer source to URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_66
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    if-nez v3, :cond_72

    .line 462
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_b7

    .line 464
    :cond_72
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_b7

    .line 467
    :cond_82
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_a0

    const-string v3, "MediaSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting MediaPlayer source to asset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_a0
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_b7} :catch_131
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_b7} :catch_103
    .catchall {:try_start_48 .. :try_end_b7} :catchall_167

    .line 486
    :goto_b7
    nop

    .line 488
    :try_start_b8
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 489
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 492
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 493
    .local v0, "surface":Landroid/view/Surface;
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 494
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 498
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 499
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 500
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 503
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 505
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_fc

    const-string v1, "MediaSource"

    const-string v3, "Preparing MediaPlayer."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_fc
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_101
    .catchall {:try_start_b8 .. :try_end_101} :catchall_167

    .line 508
    monitor-exit p0

    return v2

    .line 478
    .end local v0    # "surface":Landroid/view/Surface;
    :catch_103
    move-exception v3

    .line 479
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_104
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 480
    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 481
    if-eqz p1, :cond_11f

    .line 482
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Unable to set MediaPlayer to URL %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 484
    :cond_11f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Unable to set MediaPlayer to asset %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 470
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_131
    move-exception v3

    .line 471
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 472
    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 473
    if-eqz p1, :cond_14d

    .line 474
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Unable to set MediaPlayer to URL %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 476
    :cond_14d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Unable to set MediaPlayer to asset %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 454
    .end local v3    # "e":Ljava/io/IOException;
    :cond_15f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create a MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_167
    .catchall {:try_start_104 .. :try_end_167} :catchall_167

    .line 433
    .end local p1    # "useUrl":Z
    :catchall_167
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 347
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 348
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 350
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 351
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 352
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 353
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 354
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 355
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 357
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 359
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 360
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 361
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_34

    const-string v0, "MediaSource"

    const-string v1, "MediaSource closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_34
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 379
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    const-string v1, "MediaSource"

    if-eqz v0, :cond_b

    const-string v0, "Parameter update"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_b
    const-string/jumbo v0, "sourceUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Opening new source URL"

    if-eqz v0, :cond_2c

    .line 381
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 382
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_23

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_23
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_d2

    .line 384
    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto/16 :goto_d2

    .line 387
    :cond_2c
    const-string/jumbo v0, "sourceAsset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 388
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 389
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_44

    const-string v0, "Opening new source FD"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_44
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-nez v0, :cond_d2

    .line 391
    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto/16 :goto_d2

    .line 394
    :cond_4d
    const-string/jumbo v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 395
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 396
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto/16 :goto_d2

    .line 398
    :cond_65
    const-string/jumbo v0, "sourceIsUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 399
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 400
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_80

    .line 401
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_89

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 403
    :cond_80
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_89

    const-string v0, "Opening new source Asset"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_89
    :goto_89
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto :goto_d2

    .line 407
    :cond_8f
    const-string/jumbo v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 408
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 409
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_d2

    .line 411
    :cond_a6
    const-string/jumbo v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz v0, :cond_d2

    .line 412
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    if-eqz v0, :cond_c6

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_bc

    goto :goto_c6

    .line 415
    :cond_bc
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_cf

    .line 413
    :cond_c6
    :goto_c6
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 417
    :goto_cf
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 419
    :cond_d2
    :goto_d2
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 197
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_2d

    .line 198
    const-string v0, "Opening MediaSource"

    const-string v1, "MediaSource"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_28

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current URL is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 202
    :cond_28
    const-string v0, "Current source is Asset!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 211
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 213
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 216
    return-void

    .line 214
    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error setting up MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized pauseVideo(Z)V
    .registers 3
    .param p1, "pauseState"    # Z

    monitor-enter p0

    .line 422
    :try_start_1
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 423
    if-eqz p1, :cond_13

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-nez v0, :cond_13

    .line 424
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1e

    .line 425
    .end local p0    # "this":Landroid/filterpacks/videosrc/MediaSource;
    :cond_13
    if-nez p1, :cond_1e

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-eqz v0, :cond_1e

    .line 426
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 429
    :cond_1e
    :goto_1e
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 430
    monitor-exit p0

    return-void

    .line 421
    .end local p1    # "pauseState":Z
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 185
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaSource"

    const-string v1, "Preparing MediaSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_b
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 190
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 192
    invoke-direct {p0}, Landroid/filterpacks/videosrc/MediaSource;->createFormats()V

    .line 193
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 25
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 221
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    const-string v2, "MediaSource"

    if-eqz v0, :cond_d

    const-string v0, "Processing new frame"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_d
    iget-object v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c0

    .line 228
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    const-string/jumbo v3, "video"

    if-eqz v0, :cond_1c

    .line 230
    invoke-virtual {v1, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    .line 231
    return-void

    .line 234
    :cond_1c
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    const-wide/16 v4, 0x64

    if-nez v0, :cond_66

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "waitCount":I
    iget-boolean v6, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v6, :cond_2c

    const-string v6, "Waiting for preparation to complete"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2c
    move v6, v0

    .end local v0    # "waitCount":I
    .local v6, "waitCount":I
    :goto_2d
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz v0, :cond_45

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    if-nez v0, :cond_36

    goto :goto_45

    .line 254
    :cond_36
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_3f

    const-string v0, "Starting playback"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_3f
    iget-object v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_66

    .line 239
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49

    .line 242
    goto :goto_4a

    .line 240
    :catch_49
    move-exception v0

    .line 243
    :goto_4a
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v0, :cond_52

    .line 245
    invoke-virtual {v1, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    .line 246
    return-void

    .line 248
    :cond_52
    add-int/lit8 v6, v6, 0x1

    .line 249
    const/16 v0, 0x64

    if-eq v6, v0, :cond_59

    goto :goto_2d

    .line 250
    :cond_59
    iget-object v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "MediaPlayer timed out while preparing!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    .end local v6    # "waitCount":I
    :cond_66
    :goto_66
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_70

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    if-nez v0, :cond_bc

    .line 261
    :cond_70
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    if-eqz v0, :cond_b5

    .line 262
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_7d

    const-string v0, "Waiting for new frame"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_7d
    const/4 v0, 0x0

    move v8, v0

    .line 265
    .local v8, "waitCount":I
    :goto_7f
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    if-nez v0, :cond_aa

    .line 266
    const/16 v0, 0xa

    if-ne v8, v0, :cond_97

    .line 267
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v0, :cond_8f

    .line 269
    invoke-virtual {v1, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    .line 270
    return-void

    .line 272
    :cond_8f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Timeout waiting for new frame!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_97
    :try_start_97
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_9a
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 280
    goto :goto_a7

    .line 277
    :catch_9b
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 278
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v9, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v9, :cond_a7

    const-string v9, "interrupted"

    invoke-static {v2, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a7
    :goto_a7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7f

    .line 283
    :cond_aa
    iput-boolean v6, v1, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 284
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_b5

    const-string v0, "Got new frame"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v8    # "waitCount":I
    :cond_b5
    iget-object v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 288
    iput-boolean v7, v1, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 290
    :cond_bc
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    if-eqz v0, :cond_176

    .line 291
    const/16 v0, 0x10

    new-array v4, v0, [F

    .line 292
    .local v4, "surfaceTransform":[F
    iget-object v5, v1, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 294
    new-array v0, v0, [F

    .line 295
    .local v0, "sourceCoords":[F
    iget v5, v1, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    sparse-switch v5, :sswitch_data_1c8

    .line 298
    const/4 v9, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    const/4 v13, 0x0

    move-object v8, v0

    move-object v10, v4

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 301
    goto :goto_fc

    .line 313
    :sswitch_db
    const/4 v9, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    const/4 v13, 0x0

    move-object v8, v0

    move-object v10, v4

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_fc

    .line 308
    :sswitch_e6
    const/4 v9, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    const/4 v13, 0x0

    move-object v8, v0

    move-object v10, v4

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 311
    goto :goto_fc

    .line 303
    :sswitch_f1
    const/4 v9, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    const/4 v13, 0x0

    move-object v8, v0

    move-object v10, v4

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 306
    nop

    .line 318
    :goto_fc
    iget-boolean v5, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/4 v12, 0x5

    const/4 v13, 0x4

    if-eqz v5, :cond_15f

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OrientationHint = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v14, v1, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    aget v5, v0, v13

    .line 321
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aget v5, v0, v12

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aget v5, v0, v11

    .line 322
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aget v5, v0, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aget v5, v0, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aget v5, v0, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    filled-new-array/range {v14 .. v21}, [Ljava/lang/Object;

    move-result-object v5

    .line 320
    const-string v14, "SetSourceRegion: %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f"

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "temp":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v5    # "temp":Ljava/lang/String;
    :cond_15f
    iget-object v14, v1, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    aget v15, v0, v13

    aget v16, v0, v12

    aget v17, v0, v6

    aget v18, v0, v7

    aget v19, v0, v11

    aget v20, v0, v10

    aget v21, v0, v9

    aget v22, v0, v8

    invoke-virtual/range {v14 .. v22}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 329
    iput-boolean v6, v1, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 332
    .end local v0    # "sourceCoords":[F
    .end local v4    # "surfaceTransform":[F
    :cond_176
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v4, v1, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 333
    .local v0, "output":Landroid/filterfw/core/Frame;
    iget-object v4, v1, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v5, v1, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v4, v5, v0}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 335
    iget-object v4, v1, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    .line 336
    .local v4, "timestamp":J
    iget-boolean v6, v1, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v6, :cond_1b4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timestamp: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-double v8, v4

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " s"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1b4
    invoke-virtual {v0, v4, v5}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 339
    invoke-virtual {v1, v3, v0}, Landroid/filterpacks/videosrc/MediaSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 340
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 342
    iput-boolean v7, v1, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 343
    return-void

    .line 225
    .end local v0    # "output":Landroid/filterfw/core/Frame;
    .end local v4    # "timestamp":J
    :cond_1c0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Unexpected null media player!"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_1c8
    .sparse-switch
        0x5a -> :sswitch_f1
        0xb4 -> :sswitch_e6
        0x10e -> :sswitch_db
    .end sparse-switch
.end method

.method public setupPorts()V
    .registers 3

    .line 174
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/videosrc/MediaSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 176
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 366
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_7

    .line 367
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 369
    :cond_7
    return-void
.end method
