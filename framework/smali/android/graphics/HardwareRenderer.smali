.class public Landroid/graphics/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRenderer$FrameRenderRequest;,
        Landroid/graphics/HardwareRenderer$ProcessInitializer;,
        Landroid/graphics/HardwareRenderer$DestroyContextRunnable;,
        Landroid/graphics/HardwareRenderer$FrameCommitCallback;,
        Landroid/graphics/HardwareRenderer$FrameCompleteCallback;,
        Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;,
        Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;,
        Landroid/graphics/HardwareRenderer$FrameDrawingCallback;,
        Landroid/graphics/HardwareRenderer$PictureCapturedCallback;,
        Landroid/graphics/HardwareRenderer$CopyRequest;,
        Landroid/graphics/HardwareRenderer$CacheTrimLevel;,
        Landroid/graphics/HardwareRenderer$DumpFlags;,
        Landroid/graphics/HardwareRenderer$SyncAndDrawResult;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field private static final CACHE_PATH_SKIASHADERS:Ljava/lang/String; = "com.android.skia.shaders_cache"

.field public static final CACHE_TRIM_ALL:I = 0x0

.field public static final CACHE_TRIM_FONT:I = 0x1

.field public static final CACHE_TRIM_RESOURCES:I = 0x2

.field public static final FLAG_DUMP_ALL:I = 0x1

.field public static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field public static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field public static final SYNC_FRAME_DROPPED:I = 0x8

.field public static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field public static final SYNC_OK:I = 0x0

.field public static final SYNC_REDRAW_REQUESTED:I = 0x1

.field private static sDensityDpi:I


# instance fields
.field private mColorMode:I

.field private mDesiredSdrHdrRatio:F

.field private mForceDark:Z

.field private final mNativeProxy:J

.field private mOpaque:Z

.field private mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

.field protected mRootNode:Landroid/graphics/RenderNode;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNativeProxy(Landroid/graphics/HardwareRenderer;)J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderRequest(Landroid/graphics/HardwareRenderer;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 1

    iget-object p0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnDeleteProxy(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nDeleteProxy(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnGetRenderThreadTid(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nGetRenderThreadTid(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnInitDisplayInfo(IIFIJJZZ)V
    .registers 10

    invoke-static/range {p0 .. p9}, Landroid/graphics/HardwareRenderer;->nInitDisplayInfo(IIFIJJZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnRotateProcessStatsBuffer()V
    .registers 0

    invoke-static {}, Landroid/graphics/HardwareRenderer;->nRotateProcessStatsBuffer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnSetIsHighEndGfx(Z)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsHighEndGfx(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnSetIsLowRam(Z)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsLowRam(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnSetProcessStatsBuffer(I)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetProcessStatsBuffer(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 185
    const/4 v0, 0x0

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    .line 192
    iput v1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 193
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    .line 467
    new-instance v2, Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;-><init>(Landroid/graphics/HardwareRenderer;Landroid/graphics/HardwareRenderer$FrameRenderRequest-IA;)V

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 200
    sget-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initUsingContext()V

    .line 201
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/RenderNode;->adopt(J)Landroid/graphics/RenderNode;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    .line 202
    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 203
    iget-boolean v1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v1, v1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    .line 204
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4a

    .line 207
    new-instance v2, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;-><init>(J)V

    invoke-static {p0, v2}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 208
    sget-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->init(J)V

    .line 209
    return-void

    .line 205
    :cond_4a
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Unable to create hardware renderer"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copySurfaceInto(Landroid/view/Surface;Landroid/graphics/HardwareRenderer$CopyRequest;)V
    .registers 9
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "copyRequest"    # Landroid/graphics/HardwareRenderer$CopyRequest;

    .line 1178
    iget-object v0, p1, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    .line 1179
    .local v0, "srcRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/HardwareRenderer$CopyRequest;)V

    .line 1181
    return-void
.end method

.method public static createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "node"    # Landroid/graphics/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1191
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static native disableVsync()V
.end method

.method public static dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "dumpFlags"    # I

    .line 886
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nDumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 887
    return-void
.end method

.method private forceDrawIfSTBFrame()V
    .registers 6

    .line 485
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 486
    .local v0, "choreographer":Landroid/view/Choreographer;
    :goto_c
    if-eqz v0, :cond_21

    .line 487
    invoke-virtual {v0}, Landroid/view/Choreographer;->getFramesSinceSTB()J

    move-result-wide v1

    .line 490
    .local v1, "framesSinceSTB":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_21

    const-wide/16 v3, 0x2

    cmp-long v3, v1, v3

    if-gtz v3, :cond_21

    .line 491
    invoke-virtual {p0}, Landroid/graphics/HardwareRenderer;->forceDrawNextFrame()V

    .line 494
    .end local v1    # "framesSinceSTB":J
    :cond_21
    return-void
.end method

.method static invokePictureCapturedCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4
    .param p0, "picturePtr"    # J
    .param p2, "callback"    # Landroid/graphics/HardwareRenderer$PictureCapturedCallback;

    .line 926
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Picture;-><init>(J)V

    .line 927
    .local v0, "picture":Landroid/graphics/Picture;
    invoke-interface {p2, v0}, Landroid/graphics/HardwareRenderer$PictureCapturedCallback;->onPictureCaptured(Landroid/graphics/Picture;)V

    .line 928
    return-void
.end method

.method public static isDrawingEnabled()Z
    .registers 1

    .line 1279
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nIsDrawingEnabled()Z

    move-result v0

    return v0
.end method

.method public static isHighContrastTextEnabled()Z
    .registers 1

    .line 1100
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nIsHighContrastTextEnabled()Z

    move-result v0

    return v0
.end method

.method protected static native isWebViewOverlaysEnabled()Z
.end method

.method private static native nAddObserver(JJ)V
.end method

.method private static native nAddRenderNode(JJZ)V
.end method

.method private static native nAllocateBuffers(J)V
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJJ)Z
.end method

.method private static native nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/HardwareRenderer$CopyRequest;)V
.end method

.method private static native nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(JJ)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nForceDrawNextFrame(J)V
.end method

.method private static native nGetRenderThreadTid(J)I
.end method

.method private static native nInitDisplayInfo(IIFIJJZZ)V
.end method

.method private static native nIsDrawingEnabled()Z
.end method

.method private static native nIsHighContrastTextEnabled()Z
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyCallbackPending(J)V
.end method

.method private static native nNotifyExpensiveFrame(J)V
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nPause(J)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nRegisterVectorDrawableAnimator(JJ)V
.end method

.method private static native nRemoveObserver(JJ)V
.end method

.method private static native nRemoveRenderNode(JJ)V
.end method

.method private static native nRotateProcessStatsBuffer()V
.end method

.method private static native nSetASurfaceTransactionCallback(JLandroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V
.end method

.method private static native nSetColorMode(JI)F
.end method

.method private static native nSetContentDrawBounds(JIIII)V
.end method

.method private static native nSetContextPriority(I)V
.end method

.method private static native nSetDebuggingEnabled(Z)V
.end method

.method private static native nSetDisplayDensityDpi(I)V
.end method

.method private static native nSetDrawingEnabled(Z)V
.end method

.method private static native nSetForceDark(JZ)V
.end method

.method private static native nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
.end method

.method private static native nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V
.end method

.method private static native nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
.end method

.method private static native nSetHighContrastText(Z)V
.end method

.method private static native nSetIsHighEndGfx(Z)V
.end method

.method private static native nSetIsLowRam(Z)V
.end method

.method private static native nSetIsSystemOrPersistent(Z)V
.end method

.method private static native nSetIsolatedProcess(Z)V
.end method

.method private static native nSetLightAlpha(JFF)V
.end method

.method private static native nSetLightGeometry(JFFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetNightDimText(I)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetPictureCaptureCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
.end method

.method private static native nSetPrepareSurfaceControlForWebviewCallback(JLandroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V
.end method

.method private static native nSetProcessStatsBuffer(I)V
.end method

.method private static native nSetRtAnimationsEnabled(Z)V
.end method

.method private static native nSetSdrWhitePoint(JF)V
.end method

.method private static native nSetStopped(JZ)V
.end method

.method private static native nSetSurface(JLandroid/view/Surface;Z)V
.end method

.method private static native nSetSurfaceControl(JJ)V
.end method

.method private static native nSetTargetSdrHdrRatio(JF)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(J[JI)I
.end method

.method private static native nTrimCaches(I)V
.end method

.method private static native nTrimMemory(I)V
.end method

.method public static overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1223
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    .line 1226
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    return-void

    .line 1224
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name and value must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native preload()V
.end method

.method public static sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 1131
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sget v1, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    if-eq v0, v1, :cond_13

    .line 1133
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    .line 1134
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetDisplayDensityDpi(I)V

    .line 1136
    :cond_13
    return-void
.end method

.method public static setContextForInit(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1254
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setContext(Landroid/content/Context;)V

    .line 1255
    return-void
.end method

.method public static setContextPriority(I)V
    .registers 1
    .param p0, "priority"    # I

    .line 1080
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetContextPriority(I)V

    .line 1081
    return-void
.end method

.method public static setDebuggingEnabled(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 1144
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDebuggingEnabled(Z)V

    .line 1145
    return-void
.end method

.method public static setDrawingEnabled(Z)V
    .registers 1
    .param p0, "drawingEnabled"    # Z

    .line 1301
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDrawingEnabled(Z)V

    .line 1302
    return-void
.end method

.method public static setFPSDivisor(I)V
    .registers 2
    .param p0, "divisor"    # I

    .line 1069
    const/4 v0, 0x1

    if-gt p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1070
    return-void
.end method

.method public static setHighContrastText(Z)V
    .registers 1
    .param p0, "highContrastText"    # Z

    .line 1090
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetHighContrastText(Z)V

    .line 1091
    return-void
.end method

.method public static setIsSystemOrPersistent()V
    .registers 1

    .line 1264
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetIsSystemOrPersistent(Z)V

    .line 1265
    return-void
.end method

.method public static setIsolatedProcess(Z)V
    .registers 2
    .param p0, "isIsolated"    # Z

    .line 1121
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsolatedProcess(Z)V

    .line 1122
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setIsolated(Z)V

    .line 1123
    return-void
.end method

.method public static setNightDimText(I)V
    .registers 1
    .param p0, "dimLevel"    # I

    .line 1112
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetNightDimText(I)V

    .line 1113
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1243
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setPackageName(Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method public static setRtAnimationsEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 1311
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1312
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .registers 4
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 1237
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "com.android.skia.shaders_cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1237
    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method protected static native setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static trimCaches(I)V
    .registers 1
    .param p0, "level"    # I

    .line 1218
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nTrimCaches(I)V

    .line 1219
    return-void
.end method

.method public static trimMemory(I)V
    .registers 1
    .param p0, "level"    # I

    .line 1204
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nTrimMemory(I)V

    .line 1205
    return-void
.end method

.method private static validateAlpha(FLjava/lang/String;)V
    .registers 5
    .param p0, "alpha"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1026
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    .line 1030
    return-void

    .line 1027
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a valid alpha, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range of 0.0f to 1.0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateFinite(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1040
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1043
    return-void

    .line 1041
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be finite, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validatePositive(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1033
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    .line 1037
    return-void

    .line 1034
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a finite positive, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 680
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nAddObserver(JJ)V

    .line 681
    return-void
.end method

.method public addRenderNode(Landroid/graphics/RenderNode;Z)V
    .registers 7
    .param p1, "node"    # Landroid/graphics/RenderNode;
    .param p2, "placeFront"    # Z

    .line 846
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/HardwareRenderer;->nAddRenderNode(JJZ)V

    .line 847
    return-void
.end method

.method public allocateBuffers()V
    .registers 3

    .line 624
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nAllocateBuffers(J)V

    .line 625
    return-void
.end method

.method public buildLayer(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 788
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 789
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nBuildLayer(JJ)V

    .line 791
    :cond_d
    return-void
.end method

.method public clearContent()V
    .registers 3

    .line 592
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nDestroyHardwareResources(J)V

    .line 593
    return-void
.end method

.method public copyLayerInto(Landroid/graphics/TextureLayer;Landroid/graphics/Bitmap;)Z
    .registers 9
    .param p1, "layer"    # Landroid/graphics/TextureLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 795
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    .line 796
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    .line 795
    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nCopyLayerInto(JJJ)Z

    move-result v0

    return v0
.end method

.method public createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 2

    .line 479
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->-$$Nest$mreset(Landroid/graphics/HardwareRenderer$FrameRenderRequest;)V

    .line 480
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    return-object v0
.end method

.method public createTextureLayer()Landroid/graphics/TextureLayer;
    .registers 4

    .line 771
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 772
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/graphics/TextureLayer;->adoptTextureLayer(Landroid/graphics/HardwareRenderer;J)Landroid/graphics/TextureLayer;

    move-result-object v2

    return-object v2
.end method

.method public destroy()V
    .registers 5

    .line 227
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v2, v2, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDestroy(JJ)V

    .line 228
    return-void
.end method

.method public detachSurfaceTexture(J)V
    .registers 5
    .param p1, "hardwareLayer"    # J

    .line 782
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDetachSurfaceTexture(JJ)V

    .line 783
    return-void
.end method

.method public drawRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 867
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDrawRenderNode(JJ)V

    .line 868
    return-void
.end method

.method public dumpProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "dumpFlags"    # I

    .line 893
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 894
    return-void
.end method

.method public fence()V
    .registers 3

    .line 735
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nFence(J)V

    .line 736
    return-void
.end method

.method public forceDrawNextFrame()V
    .registers 3

    .line 916
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nForceDrawNextFrame(J)V

    .line 917
    return-void
.end method

.method public isOpaque()Z
    .registers 2

    .line 661
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    return v0
.end method

.method public loadSystemProperties()Z
    .registers 3

    .line 879
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    return v0
.end method

.method public notifyCallbackPending()V
    .registers 3

    .line 1051
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyCallbackPending(J)V

    .line 1052
    return-void
.end method

.method public notifyExpensiveFrame()V
    .registers 3

    .line 1060
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyExpensiveFrame(J)V

    .line 1061
    return-void
.end method

.method public notifyFramePending()V
    .registers 3

    .line 633
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyFramePending(J)V

    .line 634
    return-void
.end method

.method public onLayerDestroyed(Landroid/graphics/TextureLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 817
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nCancelLayerUpdate(JJ)V

    .line 818
    return-void
.end method

.method public pause()Z
    .registers 3

    .line 531
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nPause(J)Z

    move-result v0

    return v0
.end method

.method public pushLayerUpdate(Landroid/graphics/TextureLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 807
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nPushLayerUpdate(JJ)V

    .line 808
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "animator"    # Landroid/graphics/RenderNode;

    .line 740
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 741
    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 6
    .param p1, "animator"    # Landroid/view/NativeVectorDrawableAnimator;

    .line 745
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 746
    invoke-interface {p1}, Landroid/view/NativeVectorDrawableAnimator;->getAnimatorNativePtr()J

    move-result-wide v2

    .line 745
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterVectorDrawableAnimator(JJ)V

    .line 747
    return-void
.end method

.method public removeObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 689
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveObserver(JJ)V

    .line 690
    return-void
.end method

.method public removeRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 856
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveRenderNode(JJ)V

    .line 857
    return-void
.end method

.method protected setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;

    .line 822
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetASurfaceTransactionCallback(JLandroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 823
    return-void
.end method

.method public setColorMode(I)F
    .registers 4
    .param p1, "colorMode"    # I

    .line 700
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    if-eq v0, p1, :cond_e

    .line 701
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 702
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)F

    move-result v0

    iput v0, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    .line 704
    :cond_e
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    return v0
.end method

.method public setColorMode(IF)V
    .registers 5
    .param p1, "colorMode"    # I
    .param p2, "whitePoint"    # F

    .line 715
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/graphics/HardwareRenderer;->nSetSdrWhitePoint(JF)V

    .line 716
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 717
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)F

    .line 718
    return-void
.end method

.method public setContentDrawBounds(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 908
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nSetContentDrawBounds(JIIII)V

    .line 909
    return-void
.end method

.method public setContentRoot(Landroid/graphics/RenderNode;)V
    .registers 4
    .param p1, "content"    # Landroid/graphics/RenderNode;

    .line 302
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 303
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    if-eqz p1, :cond_b

    .line 304
    invoke-virtual {v0, p1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 306
    :cond_b
    iget-object v1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 307
    return-void
.end method

.method public setForceDark(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 600
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    if-eq v0, p1, :cond_d

    .line 601
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    .line 602
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetForceDark(JZ)V

    .line 603
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 833
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 834
    return-void
.end method

.method public setFrameCommitCallback(Landroid/graphics/HardwareRenderer$FrameCommitCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    .line 666
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    .line 667
    return-void
.end method

.method public setFrameCompleteCallback(Landroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameCompleteCallback;

    .line 671
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V

    .line 672
    return-void
.end method

.method public setLightSourceAlpha(FF)V
    .registers 5
    .param p1, "ambientShadowAlpha"    # F
    .param p2, "spotShadowAlpha"    # F

    .line 287
    const-string v0, "ambientShadowAlpha"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 288
    const-string/jumbo v0, "spotShadowAlpha"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 289
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetLightAlpha(JFF)V

    .line 290
    return-void
.end method

.method public setLightSourceGeometry(FFFF)V
    .registers 12
    .param p1, "lightX"    # F
    .param p2, "lightY"    # F
    .param p3, "lightZ"    # F
    .param p4, "lightRadius"    # F

    .line 263
    const-string/jumbo v0, "lightX"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 264
    const-string/jumbo v0, "lightY"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 265
    const-string/jumbo v0, "lightZ"

    invoke-static {p3, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 266
    const-string/jumbo v0, "lightRadius"

    invoke-static {p4, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 267
    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareRenderer;->nSetLightGeometry(JFFFF)V

    .line 268
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 238
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetName(JLjava/lang/String;)V

    .line 239
    return-void
.end method

.method public setOpaque(Z)V
    .registers 4
    .param p1, "opaque"    # Z

    .line 649
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    if-eq v0, p1, :cond_b

    .line 650
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 651
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetOpaque(JZ)V

    .line 653
    :cond_b
    return-void
.end method

.method public setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$PictureCapturedCallback;

    .line 921
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPictureCaptureCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 922
    return-void
.end method

.method protected setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;

    .line 828
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPrepareSurfaceControlForWebviewCallback(JLandroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    .line 829
    return-void
.end method

.method public setStopped(Z)V
    .registers 4
    .param p1, "stopped"    # Z

    .line 550
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 551
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    .line 330
    return-void
.end method

.method public setSurface(Landroid/view/Surface;Z)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "discardBuffer"    # Z

    .line 343
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 344
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is invalid. surface.isValid() == false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_11
    :goto_11
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetSurface(JLandroid/view/Surface;Z)V

    .line 347
    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V
    .registers 7
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 357
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    if-eqz p1, :cond_7

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    goto :goto_9

    :cond_7
    const-wide/16 v2, 0x0

    :goto_9
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nSetSurfaceControl(JJ)V

    .line 358
    return-void
.end method

.method public setTargetHdrSdrRatio(F)V
    .registers 4
    .param p1, "ratio"    # F

    .line 722
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    .line 723
    :cond_e
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetTargetSdrHdrRatio(JF)V

    .line 724
    return-void
.end method

.method public start()V
    .registers 4

    .line 574
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 575
    return-void
.end method

.method public stop()V
    .registers 4

    .line 563
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 564
    return-void
.end method

.method public stopDrawing()V
    .registers 3

    .line 760
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nStopDrawing(J)V

    .line 761
    return-void
.end method

.method public syncAndDrawFrame(Landroid/graphics/FrameInfo;)I
    .registers 6
    .param p1, "frameInfo"    # Landroid/graphics/FrameInfo;

    .line 509
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object v3, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v0

    return v0
.end method
