.class Lcom/samsung/app/video/editor/external/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;,
        Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    }
.end annotation


# static fields
.field public static EXPORT_PATH:Ljava/lang/String; = null

.field public static FAILURE:I = 0x0

.field public static final NATIVE_TAG:Ljava/lang/String; = "VideoEditorNative"

.field public static SUCCESS:I = 0x0

.field private static final VM_LANDSCAPE_MODE:I = 0x1

.field private static final VM_PORTRAIT_MODE:I = 0x0

.field private static final VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:I = 0x9

.field private static final VT_PREVIEW_PLAYER_CLOSED:I = 0x4

.field private static final VT_PREVIEW_PLAYER_CREATED:I = 0x0

.field private static final VT_PREVIEW_PLAYER_DAM_CONFIGURE:I = 0xb

.field private static final VT_PREVIEW_PLAYER_DAM_DISPLAY:I = 0xc

.field private static final VT_PREVIEW_PLAYER_DAM_UNREGISTER:I = 0xd

.field private static final VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:I = 0xa

.field private static final VT_PREVIEW_PLAYER_PAUSED:I = 0x5

.field private static final VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:I = 0x2

.field private static final VT_PREVIEW_PLAYER_PLAYING:I = 0x1

.field private static final VT_PREVIEW_PLAYER_RESUMED:I = 0x6

.field private static final VT_PREVIEW_PLAYER_STOPED:I = 0x3

.field private static final VT_PREVIEW_PLAYER_STOPED_ON_ERROR:I = 0x7

.field private static final VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:I = 0x8

.field public static final instance:Lcom/samsung/app/video/editor/external/NativeInterface;

.field private static volatile mGPUCreated:Z

.field private static mStackStateListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

.field private static volatile playExportHandle:J

.field private static volatile thumbnailHandle:J


# instance fields
.field private exportInProgress:Z

.field private mSummaryHandle:J

.field private nativeLibSetup:Lcom/samsung/app/video/editor/external/NativeLibSetup;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;-><init>()V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->instance:Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/samsung/app/video/editor/external/NativeInterface;->SUCCESS:I

    .line 47
    const/4 v1, 0x1

    sput v1, Lcom/samsung/app/video/editor/external/NativeInterface;->FAILURE:I

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/app/video/editor/external/NativeInterface;->EXPORT_PATH:Ljava/lang/String;

    .line 52
    sput-boolean v0, Lcom/samsung/app/video/editor/external/NativeInterface;->mGPUCreated:Z

    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    .line 54
    sput-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->exportInProgress:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->nativeLibSetup:Lcom/samsung/app/video/editor/external/NativeLibSetup;

    .line 61
    nop

    .line 62
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeLibSetup;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/NativeLibSetup;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->nativeLibSetup:Lcom/samsung/app/video/editor/external/NativeLibSetup;

    .line 63
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeLibSetup;->init()I

    .line 67
    return-void
.end method

.method private synchronized native CreateGPUEngine()I
.end method

.method private synchronized native CreateGPUEngine(J)I
.end method

.method private synchronized native FindIfJPEG(Ljava/lang/String;)I
.end method

.method private synchronized native GetCodecFileProperties(JLjava/lang/String;)I
.end method

.method private synchronized native GetEstimatedTime()I
.end method

.method private synchronized native GetVideoDuration(JLjava/lang/String;)I
.end method

.method private synchronized native GetVideoDuration(Ljava/lang/String;)I
.end method

.method private synchronized native Height()I
.end method

.method private synchronized native ImageHeight()I
.end method

.method private synchronized native ImageWidth()I
.end method

.method private native IsUHDFileSupported(J)I
.end method

.method private synchronized native JpegtoRGB565(Ljava/lang/String;II)[B
.end method

.method private synchronized native NewVideoEditorLaunch()J
.end method

.method private synchronized native PauseVEEditExportFunction()V
.end method

.method private synchronized native PauseVeEngine(J)I
.end method

.method private synchronized native PinchDeInit(Ljava/lang/String;)V
.end method

.method private synchronized native PinchInit(Ljava/lang/String;)I
.end method

.method private synchronized native PinchVEGetFrameRGB565Buffer(III)[B
.end method

.method private synchronized native PlayerDeinitImage(JLjava/lang/String;)V
.end method

.method private synchronized native PlayerDeinitImage(Ljava/lang/String;)V
.end method

.method private synchronized native PlayerInitImage(JLjava/lang/String;)V
.end method

.method private synchronized native PlayerInitImage(Ljava/lang/String;)V
.end method

.method private synchronized native ReadJpegHeader(Ljava/lang/String;)I
.end method

.method private synchronized native ResumeVEEditExportFunction()V
.end method

.method private synchronized native ResumeVeEngine(JI)V
.end method

.method private synchronized native StopVEEditExportFunction()V
.end method

.method private native VEEdit(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Z)I
.end method

.method private synchronized native VEGetFrameRGB565Buffer(Ljava/lang/String;III)[B
.end method

.method private synchronized native VEGetKenburnsFrame(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIII)[B
.end method

.method private synchronized native VideoEditorLaunch()V
.end method

.method private synchronized native VideoEditorTerminate()V
.end method

.method private synchronized native VideoEditorTerminate(J)V
.end method

.method private synchronized native Width()I
.end method

.method private declared-synchronized _createGPUEngine()I
    .registers 4

    monitor-enter p0

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "ret":I
    :try_start_2
    sget-boolean v1, Lcom/samsung/app/video/editor/external/NativeInterface;->mGPUCreated:Z

    if-nez v1, :cond_1e

    .line 312
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/app/video/editor/external/NativeInterface;->mGPUCreated:Z

    .line 313
    const-string v1, "LIBRARY"

    const-string v2, " <<<<<<<<<<<< CreateGPUEngine >>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-wide v1, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->CreateGPUEngine(J)I

    move-result v1

    move v0, v1

    .line 315
    const-string v1, "LIBRARY"

    const-string v2, " <<<<<<<<<<<< AFTER CreateGPUEngine >>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    .line 317
    .end local p0    # "this":Lcom/samsung/app/video/editor/external/NativeInterface;
    :cond_1e
    monitor-exit p0

    return v0

    .line 309
    .end local v0    # "ret":I
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synchronized native appName(JI)V
.end method

.method private synchronized native applyEffectToVideoThumbnail([BIIII)[B
.end method

.method private synchronized native applyEffectToVideoThumbnailWithTransform([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)[B
.end method

.method private synchronized native applyLUTEffectToVideoThumbnail([BIIILcom/samsung/app/video/editor/external/LUTInfo;I)[B
.end method

.method private native changeSphericalSurface(ZIJJ)V
.end method

.method private native controlTone(Lcom/samsung/app/video/editor/external/ToneParams;)V
.end method

.method private native createFreeHandLayer(Lcom/samsung/app/video/editor/external/DoodleStroke;J)V
.end method

.method private native createInstanceSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;II)I
.end method

.method private synchronized native createPreviewPlayer()V
.end method

.method private synchronized native createPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V
.end method

.method private native createSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DII)I
.end method

.method private native createSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DI)J
.end method

.method private synchronized native currentBinaryType(I)V
.end method

.method private synchronized native currentBinaryType(JI)V
.end method

.method private synchronized native deleteSummaryInstance()I
.end method

.method private synchronized native deleteSummaryInstance(I)I
.end method

.method private synchronized native denit()V
.end method

.method private native fetchLutInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/LUTInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method private synchronized native freeSummaryOutput(J)J
.end method

.method private native getClipArtParamsAtParamsList(Lcom/samsung/app/video/editor/external/ClipartParams;I)I
.end method

.method private native getCurScalePosInfo([F[FJ)V
.end method

.method private native getCurrentPositionOfPreviewPlayer()I
.end method

.method private native getCurrentPositionOfVeEngine(J)I
.end method

.method private native getEditInEditListAt(Lcom/samsung/app/video/editor/external/Edit;II)I
.end method

.method private native getEngineVersion()Ljava/lang/String;
.end method

.method private synchronized native getEstimatedSize(Lcom/samsung/app/video/editor/external/TranscodeElement;II)J
.end method

.method public static getExportPath()Ljava/lang/String;
    .registers 2

    .line 145
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<< getExportPath >>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->EXPORT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;
    .registers 1

    .line 75
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->instance:Lcom/samsung/app/video/editor/external/NativeInterface;

    return-object v0
.end method

.method private native getLayerPositionInfo(JIJII)[F
.end method

.method private native getLayerRotationInfo(JIJII)[F
.end method

.method private native getLayerScaleInfo(JIJII)[F
.end method

.method private native getLayerTransformInfo(JIJIIZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;
.end method

.method private static getMessageFromEngine(I)Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    .registers 2
    .param p0, "msg"    # I

    .line 79
    packed-switch p0, :pswitch_data_2c

    .line 121
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 117
    :pswitch_5
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 114
    :pswitch_8
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 111
    :pswitch_b
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 108
    :pswitch_e
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 105
    :pswitch_11
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 102
    :pswitch_14
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 99
    :pswitch_17
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 96
    :pswitch_1a
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 93
    :pswitch_1d
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 90
    :pswitch_20
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 87
    :pswitch_23
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 84
    :pswitch_26
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    .line 81
    :pswitch_29
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private synchronized native getMetadataOfPreviewPlayer()I
.end method

.method private native getMinBestMaxSummaryDurations()[I
.end method

.method private synchronized native getOverlapCondition(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)Z
.end method

.method private native getPerspectiveViewInfo()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
.end method

.method private native getStaticDoodleBuffer(Ljava/util/List;IIIJ)[B
.end method

.method private native getSummaryElementInElementListAt(Lcom/samsung/app/video/editor/external/Element;JI)J
.end method

.method private synchronized native getSummaryInstance()I
.end method

.method private synchronized native getThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIIIILjava/util/List;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;F)V"
        }
    .end annotation
.end method

.method private synchronized native getThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;F)V"
        }
    .end annotation
.end method

.method private synchronized native getThumbnailForClipVideo(Lcom/samsung/app/video/editor/external/TranscodeElement;F)V
.end method

.method private synchronized native getThumbnailForScrollBar(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;FLjava/util/List;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)[B"
        }
    .end annotation
.end method

.method private synchronized native getThumbnailWithStickers(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;Ljava/util/List;FLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation
.end method

.method private native getVideoTimestampOfVeEngine(JJ)I
.end method

.method private synchronized native getVideoType()I
.end method

.method private final synchronized native native_initfimc()V
.end method

.method private final synchronized native native_initfimc(J)V
.end method

.method private final synchronized native native_setup()V
.end method

.method private final synchronized native native_setup(J)V
.end method

.method private final synchronized native native_terminate()V
.end method

.method private final synchronized native native_terminate(J)V
.end method

.method private synchronized native pausePreviewPlayer()V
.end method

.method private native performCrop(JJLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V
.end method

.method private native performCrop(JJLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V
.end method

.method private native performFlip(JIJZZZ)V
.end method

.method private native performPanning(JIJFF)V
.end method

.method private native performRotation(JIJI[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FI)F
.end method

.method private native performRotation(JIJI[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FIZ)F
.end method

.method private native performSkew(JIJ[FIZ[F)V
.end method

.method private native performZoom(JIJFFFFFF)V
.end method

.method private final synchronized native playbackCompleted()V
.end method

.method private static declared-synchronized postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 10
    .param p0, "vt_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    const-class v0, Lcom/samsung/app/video/editor/external/NativeInterface;

    monitor-enter v0

    .line 126
    :try_start_3
    move-object v1, p0

    check-cast v1, Lcom/samsung/app/video/editor/external/NativeInterface;

    move-object v2, v1

    check-cast v2, Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 128
    .local v1, "c":Lcom/samsung/app/video/editor/external/NativeInterface;
    if-nez v1, :cond_14

    .line 129
    const-string v2, "LIBRARY"

    const-string v3, "Object reference is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3b

    .line 130
    monitor-exit v0

    return-void

    .line 133
    :cond_14
    :try_start_14
    const-string v2, "LIBRARY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<<<< Event from Native : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->getMessageFromEngine(I)Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    move-result-object v2

    .line 135
    .local v2, "state":Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    sget-object v3, Lcom/samsung/app/video/editor/external/NativeInterface;->mStackStateListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    if-eqz v3, :cond_39

    if-eqz v2, :cond_39

    .line 136
    invoke-interface {v3, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_3b

    .line 137
    :cond_39
    monitor-exit v0

    return-void

    .line 125
    .end local v1    # "c":Lcom/samsung/app/video/editor/external/NativeInterface;
    .end local v2    # "state":Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    .end local p0    # "vt_ref":Ljava/lang/Object;
    .end local p1    # "what":I
    .end local p2    # "arg1":I
    .end local p3    # "arg2":I
    .end local p4    # "obj":Ljava/lang/Object;
    :catchall_3b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synchronized native previewFrame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;III)V
.end method

.method private synchronized native release()I
.end method

.method private native resetSphericalSurface(ZIJJ)V
.end method

.method private synchronized native resumeVeEngine(J)V
.end method

.method private synchronized native seekPreviewPlayer(I)V
.end method

.method private synchronized native setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V
.end method

.method public static setExportPath(Ljava/lang/String;)V
    .registers 3
    .param p0, "exportPath"    # Ljava/lang/String;

    .line 156
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<< setExportPath >>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sput-object p0, Lcom/samsung/app/video/editor/external/NativeInterface;->EXPORT_PATH:Ljava/lang/String;

    .line 158
    return-void
.end method

.method private native setLayerTransformInfo(JIJLcom/samsung/app/video/editor/external/LayerTransformParams;)V
.end method

.method private final synchronized native setPreviewDisplay(JLandroid/view/Surface;Z)V
.end method

.method private final synchronized native setPreviewDisplay(Landroid/view/Surface;)V
.end method

.method private synchronized native setTransform(JIIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;II)V
.end method

.method private native setZoomLimitation(FFZ)V
.end method

.method private synchronized native startPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;I)I
.end method

.method private synchronized native startVeEngine(JLcom/samsung/app/video/editor/external/TranscodeElement;ILcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)I
.end method

.method private synchronized native stopPreviewPlayer()V
.end method

.method private synchronized native stopSummary()V
.end method

.method private synchronized native stopSummary(I)V
.end method

.method private synchronized native stopVeEngine(J)V
.end method

.method private synchronized native surfaceDestroyed()V
.end method

.method private synchronized native surfaceDestroyed(J)V
.end method

.method private synchronized native terminatePreviewPlayer()V
.end method

.method private synchronized native thumbnailDeinit(J)I
.end method

.method private synchronized native thumbnailInit(Landroid/content/res/AssetManager;Lcom/samsung/app/video/editor/external/Element;ZII)J
.end method

.method private synchronized native thumbnailInit(Landroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method private synchronized native thumbnailInit(Landroid/content/res/AssetManager;Ljava/lang/String;ZII)J
.end method

.method private native updateDoodleSurfaceOnTouchWithPoints(Ljava/util/List;J)V
.end method

.method private native updateEngineDoodle(Lcom/samsung/app/video/editor/external/DoodleCommandInfo;J)V
.end method

.method private native updateFrame(J)V
.end method

.method private synchronized native updateFrame(Lcom/samsung/app/video/editor/external/Element;JIFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIFII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation
.end method

.method private native updateNextRoi(JJLcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;I)[F
.end method

.method private synchronized native updatePackagePath(Ljava/lang/String;)V
.end method

.method private native updatePlayerParam(JLcom/samsung/app/video/editor/external/PlayerUpdateParams;)V
.end method

.method private synchronized native updatePreviewDisplay(Lcom/samsung/app/video/editor/external/Element;I)V
.end method

.method private native updateRoi(JJLcom/samsung/app/video/editor/external/ROIDeltaInfo;)V
.end method

.method private native updateRoi(JJLcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)V
.end method

.method private native updateSummaryDuration(I)J
.end method

.method private native updateSurfaceOnTouch(FFJIJ)V
.end method

.method private native updateSurfaceOnZoom(FJIJ)V
.end method

.method private synchronized native updateVeEngine(JLcom/samsung/app/video/editor/external/TranscodeElement;II)V
.end method

.method private native updateViewport(JJIILcom/samsung/app/video/editor/external/ROIDeltaInfo;)V
.end method

.method private synchronized native ve_appexitfromJNI()V
.end method

.method private synchronized native ve_appexitfromJNI(J)V
.end method


# virtual methods
.method public applyEffectToVideoThumbnailNative([BIIII)[B
    .registers 9
    .param p1, "videoBuffer"    # [B
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I
    .param p4, "effectType"    # I
    .param p5, "iseffect"    # I

    .line 455
    const-string v0, " <<<<<<<<<<<< applyEffectToVideoThumbnailNative start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct/range {p0 .. p5}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnail([BIIII)[B

    move-result-object v0

    .line 457
    .local v0, "t":[B
    const-string v2, " <<<<<<<<<<<< applyEffectToVideoThumbnailNative end>>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-object v0
.end method

.method public applyEffectToVideoThumbnailNative([BIIILcom/samsung/app/video/editor/external/LUTInfo;I)[B
    .registers 10
    .param p1, "videoBuffer"    # [B
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I
    .param p4, "effectType"    # I
    .param p5, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p6, "iseffect"    # I

    .line 477
    const-string v0, " <<<<<<<<<<<< applyEffectToVideoThumbnailNative start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct/range {p0 .. p6}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyLUTEffectToVideoThumbnail([BIIILcom/samsung/app/video/editor/external/LUTInfo;I)[B

    move-result-object v0

    .line 479
    .local v0, "t":[B
    const-string v2, " <<<<<<<<<<<< applyEffectToVideoThumbnailNative end>>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v0
.end method

.method public applyEffectToVideoThumbnailNative([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)[B
    .registers 11
    .param p1, "videoBuffer"    # [B
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I
    .param p4, "effectType"    # I
    .param p5, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p6, "iseffect"    # I
    .param p7, "param"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 500
    const-string v0, " <<<<<<<<<<<< applyEffectToVideoThumbnailNative start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct/range {p0 .. p7}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnailWithTransform([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)[B

    move-result-object v0

    .line 502
    .local v0, "t":[B
    const-string v2, " <<<<<<<<<<<< applyEffectToVideoThumbnailNative end>>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-object v0
.end method

.method public declared-synchronized callOnSurfaceDestroyed()V
    .registers 3

    monitor-enter p0

    .line 302
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/samsung/app/video/editor/external/NativeInterface;->mGPUCreated:Z

    .line 303
    const-string v0, "LIBRARY"

    const-string v1, " <<<<<<<<<<<< surfaceDestroyed >>>>>>>>>>  "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->surfaceDestroyed(J)V

    .line 305
    const-string v0, "LIBRARY"

    const-string v1, " <<<<<<<<<<<< AFTER surfaceDestroyed >>>>>>>>>>  "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_19

    .line 307
    monitor-exit p0

    return-void

    .line 301
    .end local p0    # "this":Lcom/samsung/app/video/editor/external/NativeInterface;
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public changeSphericalSurfaceNative(ZIJ)V
    .registers 14
    .param p1, "isSpherical"    # Z
    .param p2, "displayType"    # I
    .param p3, "thumbHandle"    # J

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< changeSphericalSurfaceNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> isSpherical "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->changeSphericalSurface(ZIJJ)V

    .line 782
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< changeSphericalSurfaceNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method public controlToneNative(Lcom/samsung/app/video/editor/external/ToneParams;)V
    .registers 4
    .param p1, "toneParams"    # Lcom/samsung/app/video/editor/external/ToneParams;

    .line 957
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< controlTone >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->controlTone(Lcom/samsung/app/video/editor/external/ToneParams;)V

    .line 959
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void
.end method

.method public createFreeHandLayerNative(Lcom/samsung/app/video/editor/external/DoodleStroke;)V
    .registers 6
    .param p1, "doodleStroke"    # Lcom/samsung/app/video/editor/external/DoodleStroke;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< createFreeHandLayerNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> doodleStroke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->createFreeHandLayer(Lcom/samsung/app/video/editor/external/DoodleStroke;J)V

    .line 801
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< createFreeHandLayerNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void
.end method

.method public createInstanceSummaryNative(Lcom/samsung/app/video/editor/external/TranscodeElement;II)Z
    .registers 9
    .param p1, "input"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "mode"    # I
    .param p3, "versionType"    # I

    .line 715
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< createInstanceSummaryNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/NativeInterface;->createInstanceSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;II)I

    move-result v0

    int-to-long v2, v0

    .line 717
    .local v2, "t":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<<<<<<<<<<<< createInstanceSummaryNative END >>>>>>>>>>>>>>>>>>>>>>>>>>>>  returned : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-wide/16 v0, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public createSummaryNative(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DI)Z
    .registers 10
    .param p1, "input"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "output"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p3, "mSummaryDuration"    # D
    .param p5, "mode"    # I

    .line 738
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< createSummaryNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-direct/range {p0 .. p5}, Lcom/samsung/app/video/editor/external/NativeInterface;->createSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<<<<<<<<<<<<<<<<< createSummaryNative END >>>>>>>>>>>>>>>>>>>>>>>>>>>>  returned : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-wide v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 743
    const/4 v0, 0x0

    return v0

    .line 745
    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method public deInit()V
    .registers 5

    .line 252
    const-string v0, "<<<<<<<<<<<< deInit start >>>>>>>>>>"

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_terminate(J)V

    .line 254
    const-string v0, "<<<<<<<<<<<< deInit end >>>>>>>>>>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public deleteSummaryInstanceNative()Z
    .registers 5

    .line 723
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< deleteSummaryInstanceNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->deleteSummaryInstance()I

    move-result v0

    .line 725
    .local v0, "t":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<<<<<<<<<<<<<<<<<<<<<<<< deleteSummaryInstanceNative END >>>>>>>>>>>>>>>>>>>>>>>>>>>>  returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v1, 0x1

    if-ne v1, v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)V
    .registers 13
    .param p1, "inp"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "exportParams"    # Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;
    .param p3, "outputfd"    # Ljava/io/FileDescriptor;

    .line 343
    const-string v0, " <<<<<<<<<<<< Export start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "pos":I
    sget-wide v3, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->startVeEngine(JLcom/samsung/app/video/editor/external/TranscodeElement;ILcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)I

    .line 346
    const-string v2, " <<<<<<<<<<<< Export end>>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public fetchLUTInfoNative(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/LUTInfo;",
            ">;)V"
        }
    .end annotation

    .line 841
    .local p1, "lutInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/LUTInfo;>;"
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< fetchLUTInfoNative start >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->fetchLutInfo(Ljava/util/List;)V

    .line 843
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< fetchLUTInfoNative end >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void
.end method

.method public findIfJPEGNative(Ljava/lang/String;)I
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 514
    const-string v0, " <<<<<<<<<<<< findIfJPEGNative start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->FindIfJPEG(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "t":I
    const-string v2, " <<<<<<<<<<<< findIfJPEGNative end>>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v0
.end method

.method public freeSummaryOutputNative()Z
    .registers 6

    .line 761
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< freeSummaryOutputNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-wide v2, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->freeSummaryOutput(J)J

    move-result-wide v2

    .line 763
    .local v2, "t":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<<<<<<<<<<<< freeSummaryOutputNative END >>>>>>>>>>>>>>>>>>>>>>>>>>>>  returned : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public getCurScalePosInfoNative([F[F)V
    .registers 7
    .param p1, "currScale"    # [F
    .param p2, "currPosition"    # [F

    .line 942
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< getCurScalePosInfoNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurScalePosInfo([F[FJ)V

    .line 944
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-void
.end method

.method public getEngineVersionNative()Ljava/lang/String;
    .registers 3

    .line 971
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< getEngineVersionNative >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileProperties(Ljava/lang/String;)I
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 393
    const-string v0, " <<<<<<<<<<<< getFileProperties start >>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetCodecFileProperties(JLjava/lang/String;)I

    move-result v0

    .line 395
    .local v0, "t":I
    const-string v2, " <<<<<<<<<<<< getFileProperties end>>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v0
.end method

.method public getLayerTransformInfoNative(JILcom/samsung/app/video/editor/external/GraphicLayerType;IZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .registers 21
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "type"    # Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .param p5, "index"    # I
    .param p6, "clearRotation"    # Z

    .line 863
    move-object/from16 v0, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<<<<<<<<<<<<<<<<< getLayerTransformInfoNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, p5

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "LIBRARY"

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    sget-wide v6, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/app/video/editor/external/GraphicLayerType;->getValue()I

    move-result v8

    move-object v2, p0

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/samsung/app/video/editor/external/NativeInterface;->getLayerTransformInfo(JIJIIZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;

    move-result-object v1

    .line 865
    .local v1, "param":Lcom/samsung/app/video/editor/external/LayerTransformParams;
    if-eqz v1, :cond_49

    .line 866
    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/LayerTransformParams;->setLayerType(Lcom/samsung/app/video/editor/external/GraphicLayerType;)V

    .line 867
    :cond_49
    const-string v2, "<<<<<<<<<<<<<<<<<<<<<<<<<< getLayerTransformInfoNative >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-object v1
.end method

.method public getMinBestMaxSummaryDurationsNative()[I
    .registers 3

    .line 824
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< getMinBestMaxSummaryDurations >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getMinBestMaxSummaryDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public getPerspectiveViewInfoNative()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
    .registers 2

    .line 636
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getPerspectiveViewInfo()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    move-result-object v0

    return-object v0
.end method

.method public getPositionOfPlayer()I
    .registers 4

    .line 166
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPositionOfVeEngine(J)I

    move-result v0

    .line 167
    .local v0, "pos":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<<< getPositionOfPlayer  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIBRARY"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v0
.end method

.method public getStaticDoodleBufferNative(Ljava/util/List;III)[B
    .registers 14
    .param p1, "doodleParams"    # Ljava/util/List;
    .param p2, "timeStamp"    # I
    .param p3, "doodleWidth"    # I
    .param p4, "doodleHeight"    # I

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< getStaticDoodleBuffer >>>>>>>>>>>>>>>>>>>>>>>>>>>> doodleStroke : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-wide v7, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->getStaticDoodleBuffer(Ljava/util/List;IIIJ)[B

    move-result-object v0

    return-object v0
.end method

.method public getSummaryElementInElementListAtNative(Lcom/samsung/app/video/editor/external/Element;I)Z
    .registers 8
    .param p1, "elem"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "pos"    # I

    .line 750
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< getSummaryElementInElementListAtNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-wide v2, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/samsung/app/video/editor/external/NativeInterface;->getSummaryElementInElementListAt(Lcom/samsung/app/video/editor/external/Element;JI)J

    move-result-wide v2

    .line 752
    .local v2, "t":J
    if-eqz p1, :cond_12

    .line 753
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->copyEnumElementType()V

    .line 754
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<<<<<<<<<<<< getSummaryElementInElementListAtNative END >>>>>>>>>>>>>>>>>>>>>>>>>>>>  returned : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method public getThumbnailForClipVideoFromNative(Lcom/samsung/app/video/editor/external/TranscodeElement;F)V
    .registers 5
    .param p1, "transcodeElement"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "storyTime"    # F

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< getThumbnail ForClipVideo >>>>>>>>>>>>>>>>>>>>>>>>>>>>  storyBoardTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/samsung/app/video/editor/external/NativeInterface;->getThumbnailForClipVideo(Lcom/samsung/app/video/editor/external/TranscodeElement;F)V

    .line 619
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< getThumbnail ForClipVideo END >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method public getThumbnailForScrollBarFromNative(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;FLjava/util/List;)[B
    .registers 16
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "thumbHandle"    # J
    .param p5, "time"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "previewType"    # I
    .param p11, "storyTime"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)[B"
        }
    .end annotation

    .line 602
    .local p9, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p10, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p12, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< getThumbnail For Scroll Bar >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " storyBoardTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Preview Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct/range {p0 .. p12}, Lcom/samsung/app/video/editor/external/NativeInterface;->getThumbnailForScrollBar(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;FLjava/util/List;)[B

    move-result-object v0

    .line 605
    .local v0, "b":[B
    const-string v2, " <<<<<<<<<<<< getThumbnail For Scroll Bar END >>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-object v0
.end method

.method public getThumbnailFromNative(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;Ljava/util/List;FLjava/util/List;)V
    .registers 30
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "thumbHandle"    # J
    .param p5, "time"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "previewType"    # I
    .param p12, "storyTime"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p9, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p10, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p13, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " <<<<<<<<<<<< getThumbnail : time >>>>>>>>>>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StoryBoardTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p12

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Preview Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "LIBRARY"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-nez p11, :cond_54

    .line 568
    const-string v0, "Without Stickers"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v0, v12

    move/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lcom/samsung/app/video/editor/external/NativeInterface;->getThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;F)V

    goto :goto_5d

    .line 571
    :cond_54
    move-object v0, v12

    const-string v1, "With Stickers"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct/range {p0 .. p13}, Lcom/samsung/app/video/editor/external/NativeInterface;->getThumbnailWithStickers(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIILjava/util/List;Ljava/util/List;Ljava/util/List;FLjava/util/List;)V

    .line 574
    :goto_5d
    const-string v1, " <<<<<<<<<<<< getThumbnail END >>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method public getVideoDuration(Ljava/lang/String;)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 548
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetVideoDuration(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVideoTimestamp()I
    .registers 5

    .line 178
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->getVideoTimestampOfVeEngine(JJ)I

    move-result v0

    .line 179
    .local v0, "time":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<<< getVideoTimestamp  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIBRARY"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v0
.end method

.method public isUHDFileSupported()I
    .registers 5

    .line 791
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< IsUHDFileSupportedNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->IsUHDFileSupported(J)I

    move-result v0

    .line 793
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<<<<<<<<<<<<<<<<<<<<<<<< IsUHDFileSupportedNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> ,  result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return v0
.end method

.method public native_init()V
    .registers 5

    .line 231
    const-string v0, "<<<<<<<<<<<< native_init start >>>>>>>>>>"

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_initfimc(J)V

    .line 233
    const-string v0, "<<<<<<<<<<<< native_init end >>>>>>>>>>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public native_launch()I
    .registers 5

    .line 203
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->NewVideoEditorLaunch()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<< VideoEditorLaunch >>>>>>>>>> play export handle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 207
    sget v0, Lcom/samsung/app/video/editor/external/NativeInterface;->FAILURE:I

    return v0

    .line 210
    :cond_2b
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 211
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->currentBinaryType(JI)V

    goto :goto_5c

    .line 212
    :cond_3c
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 213
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->currentBinaryType(JI)V

    goto :goto_5c

    .line 214
    :cond_4c
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 215
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->currentBinaryType(JI)V

    .line 218
    :cond_5c
    :goto_5c
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_setup(J)V

    .line 221
    sget v0, Lcom/samsung/app/video/editor/external/NativeInterface;->SUCCESS:I

    return v0
.end method

.method public pause()V
    .registers 5

    .line 243
    const-string v0, "<<<<<<<<<<<< pause start >>>>>>>>>>"

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->stopVeEngine(J)V

    .line 245
    const-string v0, "<<<<<<<<<<<< pause end >>>>>>>>>>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public pauseExport()I
    .registers 5

    .line 357
    const-string v0, " <<<<<<<<<<<< Pause Export start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->PauseVeEngine(J)I

    move-result v0

    .line 361
    .local v0, "time":I
    const-string v2, " <<<<<<<<<<<< Pause Export end >>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v0
.end method

.method public performCropNative(JLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V
    .registers 22
    .param p1, "thumbHandle"    # J
    .param p3, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p4, "initROIWidth"    # I
    .param p5, "initROIHeight"    # I
    .param p6, "pan"    # [F
    .param p7, "scale"    # [F
    .param p8, "pivot"    # [F

    .line 904
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performCropNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/samsung/app/video/editor/external/NativeInterface;->performCrop(JJLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V

    .line 906
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void
.end method

.method public performCropNative(JLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V
    .registers 24
    .param p1, "thumbHandle"    # J
    .param p3, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p4, "initROIWidth"    # I
    .param p5, "initROIHeight"    # I
    .param p6, "pan"    # [F
    .param p7, "scale"    # [F
    .param p8, "pivot"    # [F
    .param p9, "isROIDeltaReset"    # Z

    .line 910
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performCropNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v2 .. v13}, Lcom/samsung/app/video/editor/external/NativeInterface;->performCrop(JJLcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V

    .line 912
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public performFlipNative(JIZZZ)V
    .registers 21
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "axisX"    # Z
    .param p5, "axisY"    # Z
    .param p6, "axisZ"    # Z

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performFlipNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> axisX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", axisY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", axisZ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p6

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "LIBRARY"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->performFlip(JIJZZZ)V

    .line 859
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< performFlipNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method public performPanningNative(JIFF)V
    .registers 16
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "dX"    # F
    .param p5, "dY"    # F

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performPanningNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> dX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-wide v6, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->performPanning(JIJFF)V

    .line 854
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< performPanningNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method public performRotationNative(JILcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FI)F
    .registers 28
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "type"    # Lcom/samsung/app/video/editor/external/RotationType;
    .param p5, "degree"    # [F
    .param p6, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p7, "iniROIWidth"    # I
    .param p8, "initROIHeight"    # I
    .param p9, "roiScale"    # [F
    .param p10, "userScale"    # [F
    .param p11, "order"    # I

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performRotationNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p11

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/app/video/editor/external/RotationType;->getValue()I

    move-result v7

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/samsung/app/video/editor/external/NativeInterface;->performRotation(JIJI[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FI)F

    move-result v0

    return v0
.end method

.method public performRotationNative(JILcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FIZ)F
    .registers 29
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "type"    # Lcom/samsung/app/video/editor/external/RotationType;
    .param p5, "degree"    # [F
    .param p6, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p7, "iniROIWidth"    # I
    .param p8, "initROIHeight"    # I
    .param p9, "roiScale"    # [F
    .param p10, "userScale"    # [F
    .param p11, "order"    # I
    .param p12, "isROIDeltaReset"    # Z

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performRotationNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p11

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/app/video/editor/external/RotationType;->getValue()I

    move-result v7

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lcom/samsung/app/video/editor/external/NativeInterface;->performRotation(JIJI[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FIZ)F

    move-result v0

    return v0
.end method

.method public performSkewNative(JI[FIZ[F)V
    .registers 22
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "degree"    # [F
    .param p5, "order"    # I
    .param p6, "isPrespectiveEnable"    # Z
    .param p7, "prespectiveMatrix"    # [F

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performSkewNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> degree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "LIBRARY"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/samsung/app/video/editor/external/NativeInterface;->performSkew(JIJ[FIZ[F)V

    .line 918
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< performSkewNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method public performZoomNative(JIFFFFFF)V
    .registers 26
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "scaleZ"    # F
    .param p7, "pivotX"    # F
    .param p8, "pivotY"    # F
    .param p9, "pivotZ"    # F

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performZoomNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> scaleX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaleY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p5

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaleZ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pivotX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pivotY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pivotZ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "LIBRARY"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object v0, v9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/samsung/app/video/editor/external/NativeInterface;->performZoom(JIJFFFFFF)V

    .line 849
    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< performZoomNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method public play(ILcom/samsung/app/video/editor/external/TranscodeElement;)I
    .registers 12
    .param p1, "pos"    # I
    .param p2, "inp"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " <<<<<<<<<<<< play with pos >>>>>>>>>>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-wide v3, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->startVeEngine(JLcom/samsung/app/video/editor/external/TranscodeElement;ILcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)I

    .line 331
    const-string v0, " <<<<<<<<<<<< play with pos end >>>>>>>>>>  "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public resetSphericalSurfaceNative(ZIJ)V
    .registers 14
    .param p1, "isSpherical"    # Z
    .param p2, "displayType"    # I
    .param p3, "thumbHandle"    # J

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< resetSphericalSurfaceNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> isSpherical "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " display type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->resetSphericalSurface(ZIJJ)V

    .line 787
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< resetSphericalSurfaceNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void
.end method

.method public resumeExport(I)V
    .registers 6
    .param p1, "time"    # I

    .line 372
    const-string v0, " <<<<<<<<<<<< Resume  Export start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->ResumeVeEngine(JI)V

    .line 374
    const-string v0, " <<<<<<<<<<<< Resume Export end >>>>>>>>>>  "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public setAppName(I)V
    .registers 4
    .param p1, "name"    # I

    .line 632
    sget-wide v0, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->appName(JI)V

    .line 633
    return-void
.end method

.method public setEngineSurface(Landroid/view/Surface;IIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;IIZ)V
    .registers 25
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "graphicbufferWidth"    # I
    .param p3, "graphicbufferHeight"    # I
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .param p6, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p7, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p8, "initRoiW"    # I
    .param p9, "initRoiH"    # I
    .param p10, "isReconfigureMode"    # Z

    .line 279
    move/from16 v0, p10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside setEngineSurface with roiDeltaInfo isReconfigureMode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIBRARY"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-wide v4, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v3, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v3 .. v13}, Lcom/samsung/app/video/editor/external/NativeInterface;->setTransform(JIIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;II)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " <<<<<<<<<<<< setPreviewDisplay >>>>>>>>>>  and is surface Valid? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-wide v3, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v1, p0

    move-object v5, p1

    invoke-direct {p0, v3, v4, p1, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setPreviewDisplay(JLandroid/view/Surface;Z)V

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <<<<<<<<<<<< AFTER setPreviewDisplay >>>>>>>>>> and is surface Valid? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_createGPUEngine()I

    .line 285
    return-void
.end method

.method public setExportInProgress(Z)V
    .registers 4
    .param p1, "exportInProgress"    # Z

    .line 189
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->exportInProgress:Z

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<< setExportInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public setLayerTransformInfoNative(JILcom/samsung/app/video/editor/external/LayerTransformParams;)V
    .registers 14
    .param p1, "thumbHandle"    # J
    .param p3, "displayType"    # I
    .param p4, "params"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< setLayerTransformInfoNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-wide v6, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->setLayerTransformInfo(JIJLcom/samsung/app/video/editor/external/LayerTransformParams;)V

    .line 874
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< setLayerTransformInfoNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method public setStackChangeListener(Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;)V
    .registers 2
    .param p1, "engineListener"    # Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    .line 628
    sput-object p1, Lcom/samsung/app/video/editor/external/NativeInterface;->mStackStateListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    .line 629
    return-void
.end method

.method public setZoomLimitationNative(FFZ)V
    .registers 6
    .param p1, "minZoom"    # F
    .param p2, "maxZoom"    # F
    .param p3, "isInAppMode"    # Z

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< setZoomLimitationNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> minZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxZoom : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInAppMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/NativeInterface;->setZoomLimitation(FFZ)V

    .line 881
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< setZoomLimitationNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method

.method public stop()V
    .registers 5

    .line 435
    const-string v0, " <<<<<<<<<<<< stopVeEngine start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->stopVeEngine(J)V

    .line 437
    const-string v0, " <<<<<<<<<<<< stopVeEngine end>>>>>>>>>>  "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public stopSummaryNative()V
    .registers 3

    .line 731
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< stopSummaryNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->stopSummary()V

    .line 733
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< stopSummaryNative END >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method public terminate()V
    .registers 5

    .line 264
    const-string v0, "<<<<<<<<<<<< terminate start >>>>>>>>>>"

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->VideoEditorTerminate(J)V

    .line 266
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    .line 267
    const-string v0, "<<<<<<<<<<<< terminate end >>>>>>>>>>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public thumbnailDeinitialise(J)I
    .registers 7
    .param p1, "thumbHandle"    # J

    .line 424
    const-string v0, " <<<<<<<<<<<< thumbnailDeinit start >>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailDeinit(J)I

    move-result v0

    .line 426
    .local v0, "t":I
    int-to-long v2, v0

    sput-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    .line 427
    const-string v2, " <<<<<<<<<<<< thumbnailDeinit end >>>>>>>>>>  "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0
.end method

.method public thumbnailInitialise(Landroid/content/res/AssetManager;Lcom/samsung/app/video/editor/external/Element;ZII)J
    .registers 10
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "element"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "isDetailedMode"    # Z
    .param p4, "previewWidth"    # I
    .param p5, "previewHeight"    # I

    .line 410
    const-string v0, " <<<<<<<<<<<< thumbnailInitialise start >>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct/range {p0 .. p5}, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailInit(Landroid/content/res/AssetManager;Lcom/samsung/app/video/editor/external/Element;ZII)J

    move-result-wide v2

    .line 412
    .local v2, "t":J
    sput-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    .line 413
    const-string v0, " <<<<<<<<<<<< thumbnailInitialise end >>>>>>>>>>  "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-wide v2
.end method

.method public update(Lcom/samsung/app/video/editor/external/TranscodeElement;II)V
    .registers 10
    .param p1, "transcodeElm"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 378
    sget-wide v1, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateVeEngine(JLcom/samsung/app/video/editor/external/TranscodeElement;II)V

    .line 379
    return-void
.end method

.method public updateDoodleSurfaceOnTouchNative(Ljava/util/List;)V
    .registers 6
    .param p1, "doodlePoints"    # Ljava/util/List;

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateDoodleSurfaceOnTouchNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> doodlePoints : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateDoodleSurfaceOnTouchWithPoints(Ljava/util/List;J)V

    .line 807
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateDoodleSurfaceOnTouchNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method public updateEngineDoodleNative(Lcom/samsung/app/video/editor/external/DoodleCommandInfo;)V
    .registers 6
    .param p1, "doodleCommandInfo"    # Lcom/samsung/app/video/editor/external/DoodleCommandInfo;

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateEngineDoodleNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> doodleStroke : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->thumbnailHandle:J

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateEngineDoodle(Lcom/samsung/app/video/editor/external/DoodleCommandInfo;J)V

    .line 820
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateEngineDoodleNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method public updateFrameFromNative(Lcom/samsung/app/video/editor/external/Element;JIFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "thumbHandle"    # J
    .param p4, "time"    # I
    .param p5, "storyTime"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIFII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation

    .line 578
    .local p8, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p9, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p10, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p11, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " <<<<<<<<<<<< updateFrame : time >>>>>>>>>>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StoryBoardTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-direct/range {p0 .. p11}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateFrame(Lcom/samsung/app/video/editor/external/Element;JIFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 580
    const-string v0, " <<<<<<<<<<<< updateFrame END >>>>>>>>>>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method public updateFrameNative(J)V
    .registers 5
    .param p1, "thumbHandle"    # J

    .line 965
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateFrame >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateFrame(J)V

    .line 967
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method public updateNextRoiNative(JLcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;I)[F
    .registers 16
    .param p1, "thumbHandle"    # J
    .param p3, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p4, "transcodeElement"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p5, "displayType"    # I

    .line 950
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateNextROINative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateNextRoi(JJLcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;I)[F

    move-result-object v0

    return-object v0
.end method

.method public updatePackagePathNative(Ljava/lang/String;)V
    .registers 4
    .param p1, "packagepath"    # Ljava/lang/String;

    .line 536
    const-string v0, " <<<<<<<<<<<< updatePackagePathNative start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updatePackagePath(Ljava/lang/String;)V

    .line 538
    const-string v0, " <<<<<<<<<<<< updatePackagePathNative end>>>>>>>>>>  "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method

.method public updatePlayerParamNative(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)V
    .registers 6
    .param p1, "params"    # Lcom/samsung/app/video/editor/external/PlayerUpdateParams;

    .line 886
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updatePlayerParamNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updatePlayerParam(JLcom/samsung/app/video/editor/external/PlayerUpdateParams;)V

    .line 888
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method public updateRoiNative(JLcom/samsung/app/video/editor/external/ROIDeltaInfo;)V
    .registers 12
    .param p1, "thumbHandle"    # J
    .param p3, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 923
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateROINative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateRoi(JJLcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    .line 925
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void
.end method

.method public updateRoiNative(JLcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)V
    .registers 16
    .param p1, "thumbHandle"    # J
    .param p3, "fromRoiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p4, "toRoiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p5, "animDuration"    # I

    .line 929
    const-string v0, "LIBRARY"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateROINative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateRoi(JJLcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)V

    .line 931
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void
.end method

.method public updateSummaryDurationNative(I)Z
    .registers 6
    .param p1, "duration"    # I

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateSummaryDurationNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSummaryDuration(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateSummaryDurationNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> summaryHandle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-wide v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSummaryHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    .line 834
    const/4 v0, 0x0

    return v0

    .line 836
    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method public updateSurfaceOnTouchNative(FFIJ)V
    .registers 16
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "displayType"    # I
    .param p4, "thumbHandle"    # J

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateSurfaceOnTouchNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> changeX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changeY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, p3

    move-wide v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSurfaceOnTouch(FFJIJ)V

    .line 771
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateSurfaceOnTouchNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method public updateSurfaceOnZoomNative(FIJ)V
    .registers 14
    .param p1, "scalefactor"    # F
    .param p2, "displayType"    # I
    .param p3, "thumbHandle"    # J

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateSurfaceOnZoomNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> scalefactor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " display type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget-wide v4, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move v3, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateSurfaceOnZoom(FJIJ)V

    .line 777
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateSurfaceOnZoomNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method public updateViewportNative(JIILcom/samsung/app/video/editor/external/ROIDeltaInfo;)V
    .registers 16
    .param p1, "thumbHandle"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateViewPortNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    sget-wide v5, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    move-object v2, p0

    move-wide v3, p1

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->updateViewport(JJIILcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    .line 938
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<< updateViewPortNative >>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return-void
.end method

.method public ve_appexitfromJNINative()V
    .registers 5

    .line 525
    const-string v0, " <<<<<<<<<<<< ve_appexitfromJNINative start>>>>>>>>>>  "

    const-string v1, "LIBRARY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-wide v2, Lcom/samsung/app/video/editor/external/NativeInterface;->playExportHandle:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->ve_appexitfromJNI(J)V

    .line 527
    const-string v0, " <<<<<<<<<<<< ve_appexitfromJNINative end>>>>>>>>>>  "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method
