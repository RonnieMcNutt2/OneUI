.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_CACHED_WALLPAPER:I = 0x2

.field private static final MSG_SWITCH_DISPLAY:I = 0x1


# instance fields
.field mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final mClockFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field private mDefaultDimAmount:F

.field mDestroyed:Z

.field final mDispatchedContentInsets:Landroid/graphics/Rect;

.field mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final mDispatchedStableInsets:Landroid/graphics/Rect;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayContext:Landroid/content/Context;

.field private mDisplayHandler:Landroid/os/Handler;

.field private mDisplayHeight:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayRotation:I

.field private mDisplayState:I

.field private mDisplayWidth:I

.field mDrawingAllowed:Z

.field mFixedSizeAllowed:Z

.field mFormat:I

.field private mFrozenRequested:Z

.field private final mHandler:Landroid/os/Handler;

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field final mInsetsState:Landroid/view/InsetsState;

.field mIsCreating:Z

.field mIsInAmbientMode:Z

.field private mIsScreenTurningOn:Z

.field protected mIsSupportInconsistencyWallpaper:Z

.field private mLastColorInvalidation:J

.field private mLastProcessLocalColorsTimestamp:J

.field private mLastScreenshot:Landroid/graphics/Bitmap;

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field private mLidState:I

.field private final mLocalColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalColorsToAdd:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mMergedConfiguration:Landroid/util/MergedConfiguration;

.field mNeedToRedrawAfterVisible:Z

.field private final mNotifyColorsChanged:Ljava/lang/Runnable;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field private mPendingXOffset:F

.field private mPendingXOffsetStep:F

.field private mPendingYOffset:F

.field private mPendingYOffsetStep:F

.field private mPixelCopyCount:I

.field mPreviewSurfacePosition:Landroid/graphics/Rect;

.field private mPreviousWallpaperDimAmount:F

.field private mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mReportedVisible:Z

.field private mResetWindowPages:Z

.field private mScreenshotSize:Landroid/graphics/Point;

.field private mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

.field mSession:Landroid/view/IWindowSession;

.field mShouldDim:Z

.field mShouldDimByDefault:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field private final mSurfaceSize:Landroid/graphics/Point;

.field final mSyncSeqIdBundle:Landroid/os/Bundle;

.field final mTempControls:Landroid/view/InsetsSourceControl$Array;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpValues:[F

.field mType:I

.field mVisible:Z

.field private mWallpaperDimAmount:F

.field mWidth:I

.field final mWinFrames:Landroid/window/ClientWindowFrames;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field private mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field mX:I

.field mY:I

.field mZoom:F

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public static synthetic $r8$lambda$3Lg_wcGFyonauv1QjqdmLYMle-Q(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$addLocalColorsAreas$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NkQYwSDym8K-IffAXvyBVEWh8Kg(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pb3IHUx-eRORe84t2lqqrE36JWU(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$removeLocalColorsAreas$5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghcDMs2w21SWbyRlRBDfalABeIo(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$processLocalColors$1(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zM_ZFf_HgMKxSF1s85IRnaS1Vt4(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayHandler(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .registers 1

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPendingXOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingXOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingYOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingYOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresizePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->resizePreview(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;

    .line 626
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 627
    return-void
.end method

.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 8
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 637
    .local p2, "clockFunction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 293
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 294
    const/16 v2, 0x10

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 295
    const v3, 0x2000004

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 297
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 298
    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 300
    new-instance v2, Landroid/window/ClientWindowFrames;

    invoke-direct {v2}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 301
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 302
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 303
    sget-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 304
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 305
    new-instance v2, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v2}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    .line 306
    new-instance v2, Landroid/util/MergedConfiguration;

    invoke-direct {v2}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 307
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    .line 308
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    .line 309
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 310
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 311
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    .line 313
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 317
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 333
    new-instance v2, Landroid/util/ArraySet;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    .line 336
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    .line 339
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 340
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    .line 342
    new-array v2, v1, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 353
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    .line 360
    const v2, 0x3d4ccccd    # 0.05f

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 361
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 362
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 366
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    .line 368
    const/4 v2, -0x1

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    .line 369
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    .line 370
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    .line 371
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    .line 376
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    .line 380
    new-instance v1, Landroid/view/SurfaceControl;

    invoke-direct {v1}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 384
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    .line 391
    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHandler:Landroid/os/Handler;

    .line 411
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 506
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 2760
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$5;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 638
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    .line 639
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    .line 640
    return-void
.end method

.method private cleanUpScreenshotSurfaceControl()V
    .registers 3

    .line 2531
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    .line 2532
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2533
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2534
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2535
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2536
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2538
    :cond_1b
    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1338
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 1340
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_16

    .line 1342
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1344
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_5c

    .line 1347
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    if-eqz v0, :cond_4e

    .line 1349
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    if-le v0, v1, :cond_27

    .line 1350
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    .line 1351
    .local v1, "tmp":I
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    .line 1352
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    .line 1357
    .end local v1    # "tmp":I
    :cond_27
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    .line 1358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_4e

    .line 1359
    :cond_3c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 1360
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1365
    :cond_4e
    :goto_4e
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1366
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1367
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_62

    .line 1344
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1

    .line 1368
    :cond_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1370
    :goto_62
    return-void
.end method

.method private fixRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 2453
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_13

    goto :goto_16

    .line 2455
    :cond_13
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_17

    .line 2454
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 2455
    :goto_17
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 2456
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2b

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_28

    goto :goto_2b

    .line 2458
    :cond_28
    iget v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2f

    .line 2457
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2458
    :goto_2f
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 2459
    return-object p2
.end method

.method private freeze()V
    .registers 2

    .line 2507
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_9

    goto :goto_18

    .line 2511
    :cond_9
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->showScreenshotOfWallpaper()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2512
    return-void

    .line 2515
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2519
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2520
    return-void

    .line 2509
    :cond_18
    :goto_18
    return-void
.end method

.method private generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .registers 11
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "pageInx"    # I
    .param p3, "numPages"    # I

    .line 2369
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 2370
    .local v0, "minLeft":F
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 2371
    .local v1, "maxRight":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 2372
    .local v2, "left":F
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 2375
    .local v3, "right":F
    cmpg-float v4, v2, v0

    if-gez v4, :cond_11

    move v2, v0

    .line 2376
    :cond_11
    cmpl-float v4, v3, v1

    if-lez v4, :cond_16

    move v3, v1

    .line 2379
    :cond_16
    int-to-float v4, p3

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 2380
    .end local v2    # "left":F
    .local v4, "left":F
    int-to-float v2, p3

    mul-float/2addr v2, v3

    rem-float/2addr v2, v5

    .line 2381
    .end local v3    # "right":F
    .local v2, "right":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_25

    .line 2382
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2385
    :cond_25
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private getDisplayState(Landroid/view/Display;)I
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 2799
    if-nez p1, :cond_4

    .line 2800
    const/4 v0, 0x0

    return v0

    .line 2802
    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    .line 2803
    .local v0, "displayType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    goto :goto_14

    .line 2806
    :cond_f
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v1

    return v1

    .line 2804
    :cond_14
    :goto_14
    invoke-virtual {p1}, Landroid/view/Display;->getCommittedState()I

    move-result v1

    return v1
.end method

.method private getOrCreateBLASTSurface(III)Landroid/view/Surface;
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 2779
    const/4 v0, 0x0

    .line 2780
    .local v0, "ret":Landroid/view/Surface;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v1, :cond_19

    .line 2781
    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    const-string v3, "Wallpaper"

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    move-object v2, v1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2785
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_1e

    .line 2787
    :cond_19
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2790
    :goto_1e
    return-object v0
.end method

.method private getRectFPage(Landroid/graphics/RectF;F)I
    .registers 7
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "step"    # F

    .line 2400
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2401
    :cond_a
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 2402
    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2403
    .local v0, "pages":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2404
    .local v1, "page":I
    if-ne v1, v0, :cond_27

    add-int/lit8 v2, v0, -0x1

    return v2

    .line 2405
    :cond_27
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v2

    if-ne v1, v3, :cond_2f

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 2406
    :cond_2f
    return v1
.end method

.method private getSettingKey()Ljava/lang/String;
    .registers 4

    .line 2749
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    .line 2750
    .local v0, "key":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_17

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_17

    .line 2751
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    if-nez v1, :cond_17

    .line 2752
    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    .line 2755
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSettingKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    return-object v0
.end method

.method private initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V
    .registers 7
    .param p1, "windowPages"    # [Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "step"    # F

    .line 2234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 2235
    new-instance v1, Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {v1}, Landroid/service/wallpaper/EngineWindowPage;-><init>()V

    aput-object v1, p1, v0

    .line 2234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2237
    .end local v0    # "i":I
    :cond_e
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2238
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2239
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 2240
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2241
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2242
    goto :goto_20

    .line 2244
    :cond_3a
    invoke-direct {p0, v1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v2

    .line 2245
    .local v2, "pageNum":I
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/service/wallpaper/EngineWindowPage;->addArea(Landroid/graphics/RectF;)V

    .line 2246
    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "pageNum":I
    goto :goto_20

    .line 2247
    :cond_44
    return-void
.end method

.method private isDisplaySizeChanged(II)Z
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1845
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1846
    .local v0, "prevWidth":I
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1847
    .local v1, "prevHeight":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1848
    .local v2, "newWidth":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1849
    .local v3, "newHeight":I
    if-ne v0, v2, :cond_1f

    if-eq v1, v3, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v4, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v4, 0x1

    :goto_20
    return v4
.end method

.method private synthetic lambda$addLocalColorsAreas$4(Ljava/util/List;)V
    .registers 4
    .param p1, "regions"    # Ljava/util/List;

    .line 2420
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2421
    :try_start_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2422
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 2423
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 2424
    return-void

    .line 2422
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method private synthetic lambda$processLocalColors$1(JJ)V
    .registers 7
    .param p1, "now"    # J
    .param p3, "timeToWait"    # J

    .line 2139
    add-long v0, p1, p3

    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    .line 2140
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2141
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColorsInternal()V

    .line 2142
    return-void
.end method

.method private synthetic lambda$removeLocalColorsAreas$5(Ljava/util/List;)V
    .registers 8
    .param p1, "regions"    # Ljava/util/List;

    .line 2435
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2436
    :try_start_3
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 2437
    .local v1, "step":F
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2438
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2439
    invoke-direct {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2440
    monitor-exit v0

    return-void

    .line 2442
    :cond_17
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v3

    if-ge v2, v3, :cond_37

    .line 2443
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 2444
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/service/wallpaper/EngineWindowPage;->removeArea(Landroid/graphics/RectF;)V

    .line 2443
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2442
    .end local v3    # "j":I
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2447
    .end local v1    # "step":F
    .end local v2    # "i":I
    :cond_37
    monitor-exit v0

    .line 2448
    return-void

    .line 2447
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private synthetic lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .registers 23
    .param p1, "pixelCopyCount"    # I
    .param p2, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p3, "areas"    # Ljava/util/Set;
    .param p4, "pageIndx"    # I
    .param p5, "numPages"    # I
    .param p6, "wallpaperDimAmount"    # F
    .param p7, "finalScreenShot"    # Landroid/graphics/Bitmap;
    .param p8, "current"    # J
    .param p10, "res"    # I

    .line 2280
    move-object v6, p0

    move-object v7, p2

    move-object/from16 v8, p7

    const-string v0, "WallpaperService#pixelCopy"

    move v9, p1

    invoke-static {v0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 2285
    if-eqz p10, :cond_2e

    .line 2286
    invoke-virtual {p2}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2288
    .local v10, "lastBitmap":Landroid/graphics/Bitmap;
    iget-object v0, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2289
    iget-object v11, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 2290
    .local v11, "lastScreenshot":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_2b

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2291
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 2294
    .end local v10    # "lastBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "lastScreenshot":Landroid/graphics/Bitmap;
    :cond_2b
    move-wide/from16 v10, p8

    goto :goto_44

    .line 2295
    :cond_2e
    iput-object v8, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 2296
    invoke-virtual {p2, v8}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2297
    move-wide/from16 v10, p8

    invoke-virtual {p2, v10, v11}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2298
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 2301
    :goto_44
    return-void
.end method

.method private synthetic lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 6
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "color"    # Landroid/app/WallpaperColors;

    .line 2357
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 2358
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 2357
    invoke-interface {v0, p1, p2, v1}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2361
    goto :goto_14

    .line 2359
    :catch_c
    move-exception v0

    .line 2360
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperService"

    const-string v2, "Error calling Connection.onLocalWallpaperColorsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2362
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method private synthetic lambda$updateSurfaceDimming$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "surfaceControlTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "va"    # Landroid/animation/ValueAnimator;

    .line 1213
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1214
    .local v0, "dimValue":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_18

    .line 1215
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 1216
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1218
    :cond_18
    return-void
.end method

.method private processLocalColors()V
    .registers 15

    .line 2132
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2133
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2134
    .local v7, "now":J
    iget-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    sub-long v9, v7, v0

    .line 2135
    .local v9, "timeSinceLastColorProcess":J
    const-wide/16 v0, 0x7d0

    sub-long/2addr v0, v9

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 2138
    .local v11, "timeToWait":J
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v13, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;

    move-object v1, v13

    move-object v2, p0

    move-wide v3, v7

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V

    invoke-virtual {v0, v13, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2144
    .end local v7    # "now":J
    .end local v9    # "timeSinceLastColorProcess":J
    .end local v11    # "timeToWait":J
    :cond_31
    return-void
.end method

.method private processLocalColorsInternal()V
    .registers 16

    .line 2155
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2164
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_a
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 2166
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 2167
    .local v2, "xOffsetStep":F
    iget v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 2173
    .local v8, "wallpaperDimAmount":F
    rem-float v3, v1, v2

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c1

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 2174
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_c1

    .line 2176
    :cond_27
    invoke-direct {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v3

    if-nez v3, :cond_34

    .line 2180
    const/4 v1, 0x0

    .line 2181
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2182
    const/4 v3, 0x0

    .line 2183
    .local v3, "xCurrentPage":I
    const/4 v4, 0x1

    move v9, v4

    .local v4, "xPages":I
    goto :goto_4f

    .line 2185
    .end local v3    # "xCurrentPage":I
    .end local v4    # "xPages":I
    :cond_34
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2186
    .restart local v4    # "xPages":I
    int-to-float v5, v4

    div-float v2, v3, v5

    .line 2187
    add-int/lit8 v3, v4, -0x1

    int-to-float v3, v3

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 2188
    .local v3, "shrink":F
    mul-float/2addr v1, v3

    .line 2189
    div-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v9, v4

    move v3, v5

    .line 2196
    .end local v4    # "xPages":I
    .local v3, "xCurrentPage":I
    .local v9, "xPages":I
    :goto_4f
    move v5, v2

    .line 2197
    .local v5, "finalXOffsetStep":F
    move v6, v1

    .line 2199
    .local v6, "finalXOffset":F
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 2200
    move v4, v3

    .line 2201
    .local v4, "xPage":I
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v10, v7

    if-eqz v10, :cond_5d

    array-length v7, v7

    if-eq v7, v9, :cond_64

    .line 2202
    :cond_5d
    new-array v7, v9, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 2203
    invoke-direct {p0, v7, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V

    .line 2205
    :cond_64
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-eqz v7, :cond_a2

    .line 2206
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_72
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    .line 2207
    .local v10, "colorArea":Landroid/graphics/RectF;
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v11, v10}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v11

    if-nez v11, :cond_87

    goto :goto_72

    .line 2208
    :cond_87
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2209
    invoke-direct {p0, v10, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v11

    .line 2210
    .local v11, "colorPage":I
    iget-object v12, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v12, v12, v11

    .line 2211
    .local v12, "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2212
    invoke-virtual {v12, v10}, Landroid/service/wallpaper/EngineWindowPage;->removeColor(Landroid/graphics/RectF;)V

    .line 2213
    .end local v10    # "colorArea":Landroid/graphics/RectF;
    .end local v11    # "colorPage":I
    .end local v12    # "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    goto :goto_72

    .line 2214
    :cond_9d
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 2216
    :cond_a2
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v10, v7

    if-lt v4, v10, :cond_ac

    .line 2224
    array-length v10, v7

    add-int/lit8 v4, v10, -0x1

    move v10, v4

    goto :goto_ad

    .line 2216
    :cond_ac
    move v10, v4

    .line 2226
    .end local v4    # "xPage":I
    .local v10, "xPage":I
    :goto_ad
    aget-object v4, v7, v10

    .line 2227
    .local v4, "current":Landroid/service/wallpaper/EngineWindowPage;
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v4}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v7

    .line 2228
    .end local v3    # "xCurrentPage":I
    .end local v6    # "finalXOffset":F
    .local v5, "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_a .. :try_end_ba} :catchall_c3

    .line 2229
    move-object v3, p0

    move v6, v10

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 2230
    return-void

    .line 2174
    .end local v4    # "current":Landroid/service/wallpaper/EngineWindowPage;
    .end local v5    # "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    .end local v9    # "xPages":I
    .end local v10    # "xPage":I
    :cond_c1
    :goto_c1
    :try_start_c1
    monitor-exit v0

    return-void

    .line 2228
    .end local v1    # "xOffset":F
    .end local v2    # "xOffsetStep":F
    .end local v8    # "wallpaperDimAmount":F
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method private reposition()V
    .registers 8

    .line 1860
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 1861
    return-void

    .line 1867
    :cond_5
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1868
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1869
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1868
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1870
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1871
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1872
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1874
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1876
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1877
    return-void
.end method

.method private resetWindowPages()V
    .registers 5

    .line 2390
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2391
    :cond_7
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    if-nez v0, :cond_c

    return-void

    .line 2392
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 2393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 2394
    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2393
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2396
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private resizePreview(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 1854
    if-eqz p1, :cond_f

    .line 1855
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    .line 1857
    :cond_f
    return-void
.end method

.method private setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V
    .registers 6
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 1135
    if-nez p1, :cond_3

    .line 1136
    return-void

    .line 1138
    :cond_3
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    .line 1139
    .local v0, "colorHints":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_11

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    .line 1143
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    if-eq v1, v2, :cond_24

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_24

    .line 1144
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 1145
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 1147
    :cond_24
    return-void
.end method

.method private showScreenshotOfWallpaper()Z
    .registers 8

    .line 2577
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_e1

    .line 2582
    :cond_11
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2583
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const-string v3, "WallpaperService"

    if-eqz v2, :cond_2c

    .line 2584
    const-string v2, "Failed to screenshot wallpaper: surface bounds are empty"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    return v1

    .line 2588
    :cond_2c
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_38

    .line 2589
    const-string v2, "Screenshot is unexpectedly not null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2594
    :cond_38
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2600
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 2601
    invoke-virtual {v2, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object v2

    .line 2602
    invoke-virtual {v2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 2603
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v2

    .line 2595
    invoke-static {v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 2605
    .local v2, "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-nez v2, :cond_64

    .line 2606
    const-string v4, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    return v1

    .line 2610
    :cond_64
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2612
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2615
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper snapshot for engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2616
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2617
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2618
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2619
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2620
    const-string v5, "WallpaperService.Engine.showScreenshotOfWallpaper"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2621
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2622
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2624
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 2626
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 2627
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 2629
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2630
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2631
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2632
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2634
    const/4 v4, 0x1

    return v4

    .line 2579
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v2    # "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .end local v3    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_e1
    :goto_e1
    return v1
.end method

.method private unfreeze()V
    .registers 2

    .line 2523
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2524
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_b

    .line 2525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2527
    :cond_b
    return-void
.end method

.method private updateFrozenState(Z)V
    .registers 3
    .param p1, "frozenRequested"    # Z

    .line 2487
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 2492
    return-void

    .line 2494
    :cond_d
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 2495
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 2496
    .local v0, "isFrozen":Z
    :goto_16
    if-ne p1, v0, :cond_19

    .line 2497
    return-void

    .line 2499
    :cond_19
    if-eqz p1, :cond_1f

    .line 2500
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    goto :goto_22

    .line 2502
    :cond_1f
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->unfreeze()V

    .line 2504
    :goto_22
    return-void
.end method

.method private updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .registers 23
    .param p1, "page"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p3, "pageIndx"    # I
    .param p4, "numPages"    # I
    .param p5, "wallpaperDimAmount"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    .line 2312
    .local p2, "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 2313
    :cond_b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2317
    const-string v0, "WallpaperService#updatePageColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2323
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    .line 2324
    .local v4, "area":Landroid/graphics/RectF;
    if-nez v4, :cond_34

    goto :goto_24

    .line 2325
    :cond_34
    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct {v1, v4, v5, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v7

    .line 2326
    .local v7, "subArea":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2327
    .local v8, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v9, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 2328
    .local v9, "x":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v10, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 2329
    .local v10, "y":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 2330
    .local v11, "width":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 2333
    .local v12, "height":I
    :try_start_74
    invoke-static {v8, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_78} :catch_a0

    .line 2337
    .local v0, "target":Landroid/graphics/Bitmap;
    nop

    .line 2338
    move/from16 v13, p5

    invoke-static {v0, v13}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v14

    .line 2339
    .local v14, "color":Landroid/app/WallpaperColors;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2340
    invoke-virtual {v2, v4}, Landroid/service/wallpaper/EngineWindowPage;->getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;

    move-result-object v15

    .line 2348
    .local v15, "currentColor":Landroid/app/WallpaperColors;
    if-eqz v15, :cond_8e

    invoke-virtual {v14, v15}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9d

    .line 2349
    :cond_8e
    invoke-virtual {v2, v4, v14}, Landroid/service/wallpaper/EngineWindowPage;->addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 2355
    move-object/from16 v16, v0

    .end local v0    # "target":Landroid/graphics/Bitmap;
    .local v16, "target":Landroid/graphics/Bitmap;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v4, v14}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2364
    .end local v4    # "area":Landroid/graphics/RectF;
    .end local v7    # "subArea":Landroid/graphics/RectF;
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v14    # "color":Landroid/app/WallpaperColors;
    .end local v15    # "currentColor":Landroid/app/WallpaperColors;
    .end local v16    # "target":Landroid/graphics/Bitmap;
    :cond_9d
    move-object/from16 v2, p1

    goto :goto_24

    .line 2334
    .restart local v4    # "area":Landroid/graphics/RectF;
    .restart local v7    # "subArea":Landroid/graphics/RectF;
    .restart local v8    # "b":Landroid/graphics/Bitmap;
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    .restart local v11    # "width":I
    .restart local v12    # "height":I
    :catch_a0
    move-exception v0

    move/from16 v13, p5

    move-object v2, v0

    move-object v0, v2

    .line 2335
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WallpaperService"

    const-string v14, "Error creating page local color bitmap"

    invoke-static {v2, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2336
    move-object/from16 v2, p1

    goto/16 :goto_24

    .line 2365
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "area":Landroid/graphics/RectF;
    .end local v7    # "subArea":Landroid/graphics/RectF;
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "width":I
    .end local v12    # "height":I
    :cond_b0
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v13, p5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2366
    return-void

    .line 2314
    :cond_ba
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v13, p5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessLocalColors should be called from the background thread"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSurfaceDimming()V
    .registers 1

    .line 1197
    return-void
.end method

.method private updateWallpaperDimming(F)V
    .registers 3
    .param p1, "dimAmount"    # F

    .line 1183
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 1184
    return-void

    .line 1188
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1191
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 1192
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 1193
    return-void
.end method

.method private validStep(F)Z
    .registers 3
    .param p1, "step"    # F

    .line 2463
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public addLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2415
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2419
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2425
    return-void
.end method

.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .registers 7
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1881
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 1882
    return-void

    .line 1885
    :cond_5
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1886
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1887
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 1888
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 1889
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1891
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 1893
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 1895
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1896
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1897
    invoke-virtual {v3}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1896
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1898
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1900
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2, v1}, Landroid/service/wallpaper/WallpaperService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 1901
    const/16 v2, 0x7dd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1902
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 1904
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1905
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 1908
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-direct {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayState(Landroid/view/Display;)I

    move-result v1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1910
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1911
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1910
    invoke-virtual {v1, v2}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1914
    const-string v1, "WPMS.Engine.onCreate"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1915
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1916
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1918
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1920
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1921
    const-string v2, "WPMS.Engine.updateSurface"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1923
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1927
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/WallpaperManager;->notifyPid(IILjava/lang/String;Z)V

    .line 1930
    return-void
.end method

.method public detach()V
    .registers 5

    .line 2658
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 2659
    return-void

    .line 2662
    :cond_5
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    .line 2664
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 2666
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1c

    .line 2668
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2671
    :cond_1c
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 2672
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2674
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach onVisibilityChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_40
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 2684
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 2686
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_83

    .line 2691
    :try_start_4b
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v0, :cond_54

    .line 2692
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 2693
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 2696
    :cond_54
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5b} :catch_5c

    .line 2698
    goto :goto_5d

    .line 2697
    :catch_5c
    move-exception v0

    .line 2699
    :goto_5d
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2700
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_6d

    .line 2701
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2702
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2704
    :cond_6d
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_81

    .line 2705
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2706
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2708
    :cond_81
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 2711
    :cond_83
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8c

    .line 2712
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 2713
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2715
    :cond_8c
    return-void
.end method

.method public doAmbientModeChanged(ZJ)V
    .registers 5
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 1958
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_d

    .line 1963
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    .line 1964
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_d

    .line 1965
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZJ)V

    .line 1968
    :cond_d
    return-void
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .registers 10
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 2468
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_35

    .line 2469
    const-string v0, "android.wallpaper.freeze"

    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.wallpaper.unfreeze"

    if-nez v0, :cond_18

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2470
    :cond_18
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateFrozenState(Z)V

    .line 2472
    :cond_23
    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_36

    .line 2475
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_35
    const/4 v0, 0x0

    .line 2477
    .restart local v0    # "result":Landroid/os/Bundle;
    :goto_36
    iget-boolean v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v1, :cond_47

    .line 2480
    :try_start_3a
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_46

    .line 2482
    goto :goto_47

    .line 2481
    :catch_46
    move-exception v1

    .line 2484
    :cond_47
    :goto_47
    return-void
.end method

.method doDesiredSizeChanged(II)V
    .registers 4
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 1971
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_13

    .line 1974
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 1975
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 1976
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 1977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1979
    :cond_13
    return-void
.end method

.method doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1982
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1a

    .line 1984
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1985
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1986
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1989
    :cond_1a
    return-void
.end method

.method doOffsetsChanged(Z)V
    .registers 14
    .param p1, "always"    # Z

    .line 2078
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 2079
    return-void

    .line 2082
    :cond_5
    if-nez p1, :cond_c

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez v0, :cond_c

    .line 2083
    return-void

    .line 2091
    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_f
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 2093
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    move v9, v2

    .line 2094
    .local v9, "yOffset":F
    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 2095
    .local v5, "xOffsetStep":F
    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 2096
    .local v6, "yOffsetStep":F
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    move v10, v2

    .line 2097
    .local v10, "sync":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 2098
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 2099
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_69

    .line 2101
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_56

    .line 2102
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_53

    .line 2105
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr v0, v3

    .line 2106
    .local v0, "availw":I
    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v0, :cond_3b

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v4, v4

    neg-int v4, v4

    move v7, v4

    goto :goto_3c

    :cond_3b
    move v7, v2

    .line 2107
    .local v7, "xPixels":I
    :goto_3c
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v11, v4, v8

    .line 2108
    .local v11, "availh":I
    if-lez v11, :cond_4b

    int-to-float v2, v11

    mul-float/2addr v2, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    :cond_4b
    move v8, v2

    .line 2109
    .local v8, "yPixels":I
    move-object v2, p0

    move v3, v1

    move v4, v9

    invoke-virtual/range {v2 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 2110
    .end local v0    # "availw":I
    .end local v7    # "xPixels":I
    .end local v8    # "yPixels":I
    .end local v11    # "availh":I
    goto :goto_56

    .line 2111
    :cond_53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    .line 2115
    :cond_56
    :goto_56
    if-eqz v10, :cond_65

    .line 2118
    :try_start_58
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_63} :catch_64

    .line 2120
    goto :goto_65

    .line 2119
    :catch_64
    move-exception v0

    .line 2124
    :cond_65
    :goto_65
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 2125
    return-void

    .line 2099
    .end local v1    # "xOffset":F
    .end local v5    # "xOffsetStep":F
    .end local v6    # "yOffsetStep":F
    .end local v9    # "yOffset":F
    .end local v10    # "sync":Z
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method doVisibilityChanged(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 1999
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_12

    .line 2000
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2001
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    .line 2002
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    goto :goto_15

    .line 2004
    :cond_12
    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 2006
    :cond_15
    :goto_15
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1256
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1257
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1258
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1259
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1260
    const-string v0, " mIsScreenTurningOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1261
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1262
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1263
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1264
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1265
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1266
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1267
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1268
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1269
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1271
    const-string/jumbo v0, "mX="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1272
    const-string/jumbo v0, "mY="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1274
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1275
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1276
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1277
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1278
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1279
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinFrames="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1280
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1282
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1283
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZoom="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1284
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPreviewSurfacePosition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1286
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1287
    .local v0, "pendingCount":I
    if-eqz v0, :cond_150

    .line 1288
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingResizeCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1290
    :cond_150
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1291
    :try_start_153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingXOffset="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1292
    const-string v2, " mPendingXOffset="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1293
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingXOffsetStep="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1295
    const-string v2, " mPendingXOffsetStep="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1296
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1298
    const-string v2, " mPendingSync="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1299
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1ad

    .line 1300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingMove="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1302
    :cond_1ad
    monitor-exit v1

    .line 1303
    return-void

    .line 1302
    :catchall_1af
    move-exception v2

    monitor-exit v1
    :try_end_1b1
    .catchall {:try_start_153 .. :try_end_1b1} :catchall_1af

    throw v2
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 706
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-nez v0, :cond_6

    .line 707
    const/4 v0, -0x1

    return v0

    .line 709
    :cond_6
    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCurrentUserId(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)I

    move-result v0

    return v0
.end method

.method public getDesiredMinimumHeight()I
    .registers 2

    .line 681
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .registers 2

    .line 672
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getDisplayContext()Landroid/content/Context;
    .registers 2

    .line 1945
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 688
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-nez v0, :cond_6

    .line 689
    const/4 v0, -0x1

    return v0

    .line 691
    :cond_6
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 646
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public getWallpaperFlags()I
    .registers 2

    .line 655
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWindowTokenAsBinder()Landroid/os/IBinder;
    .registers 2

    .line 698
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    if-nez v0, :cond_6

    .line 699
    const/4 v0, 0x0

    return-object v0

    .line 701
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .registers 2

    .line 861
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    return v0
.end method

.method public isInAmbientMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 751
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method public isPreview()Z
    .registers 2

    .line 741
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method protected isSupportInconsistency()Z
    .registers 10

    .line 2732
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2733
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    const-string v3, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v2

    goto :goto_19

    :cond_18
    move v3, v1

    .line 2734
    .local v3, "isTablet":Z
    :goto_19
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_2d

    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v4, :cond_2d

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v4, v4, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2735
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v4

    if-nez v4, :cond_2d

    move v4, v2

    goto :goto_2e

    :cond_2d
    move v4, v1

    .line 2737
    .local v4, "isCoverDisplay":Z
    :goto_2e
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v5}, Landroid/service/wallpaper/WallpaperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSettingKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2738
    .local v5, "type":I
    if-nez v5, :cond_40

    move v6, v2

    goto :goto_41

    :cond_40
    move v6, v1

    .line 2740
    .local v6, "isCustomWallpaper":Z
    :goto_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSupportInconsistency mIsSupportInconsistencyWallpaper ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTablet ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCoverDisplay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCustomWallpaper "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WallpaperService"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    if-nez v7, :cond_80

    if-eqz v4, :cond_8d

    :cond_80
    if-nez v3, :cond_8d

    if-nez v6, :cond_8d

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v7, v7, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    const/16 v8, 0x7dd

    if-ne v7, v8, :cond_8d

    move v1, v2

    :cond_8d
    return v1
.end method

.method public isVisible()Z
    .registers 2

    .line 719
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public notifyColorsChanged()V
    .registers 9

    .line 1049
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_c

    .line 1050
    const-string v0, "Ignoring notifyColorsChanged(), Engine has already been destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void

    .line 1054
    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1055
    .local v2, "now":J
    iget-wide v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_39

    .line 1056
    const-string v0, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1060
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1062
    :cond_38
    return-void

    .line 1064
    :cond_39
    iput-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 1065
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1068
    :try_start_42
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v0

    .line 1069
    .local v0, "newColors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v4, :cond_54

    .line 1070
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    goto :goto_59

    .line 1072
    :cond_54
    const-string v4, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :goto_59
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 1076
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_5f} :catch_60

    .line 1079
    .end local v0    # "newColors":Landroid/app/WallpaperColors;
    goto :goto_66

    .line 1077
    :catch_60
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_66
    return-void
.end method

.method public notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1109
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p2, "colors":Ljava/util/List;, "Ljava/util/List<Landroid/app/WallpaperColors;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1110
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 1111
    .local v1, "color":Landroid/app/WallpaperColors;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 1112
    .local v2, "area":Landroid/graphics/RectF;
    if-eqz v1, :cond_31

    if-nez v2, :cond_1e

    .line 1117
    goto :goto_31

    .line 1120
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1123
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 1120
    invoke-interface {v3, v2, v1, v4}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 1127
    goto :goto_31

    .line 1125
    :catch_2a
    move-exception v3

    .line 1126
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1109
    .end local v1    # "color":Landroid/app/WallpaperColors;
    .end local v2    # "area":Landroid/graphics/RectF;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1129
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 1131
    .local v0, "primaryColors":Landroid/app/WallpaperColors;
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    .line 1132
    return-void
.end method

.method public onAmbientModeChanged(ZJ)V
    .registers 4
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 981
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .registers 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 902
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .line 963
    const/4 v0, 0x0

    return-object v0
.end method

.method public onComputeColors()Landroid/app/WallpaperColors;
    .registers 2

    .line 1097
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1238
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x272e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 1240
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1241
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 871
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isSupportInconsistency()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    .line 873
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .registers 3
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 989
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 882
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 7
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .line 925
    return-void
.end method

.method onScreenTurningOnChanged(Z)V
    .registers 3
    .param p1, "isScreenTurningOn"    # Z

    .line 1992
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_a

    .line 1993
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    .line 1994
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    .line 1996
    :cond_a
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 997
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1013
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1021
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1005
    return-void
.end method

.method public onSwitchDisplayChanged(Z)V
    .registers 2
    .param p1, "isFolded"    # Z

    .line 932
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 913
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 891
    return-void
.end method

.method public onWallpaperFlagsChanged(I)V
    .registers 2
    .param p1, "which"    # I

    .line 1031
    return-void
.end method

.method public onZoomChanged(F)V
    .registers 2
    .param p1, "zoom"    # F

    .line 1042
    return-void
.end method

.method public refreshCachedWallpaper(I)V
    .registers 2
    .param p1, "which"    # I

    .line 939
    return-void
.end method

.method public removeLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2433
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2434
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2449
    return-void
.end method

.method public reportEngineShown(Z)V
    .registers 7
    .param p1, "waitForEngineShown"    # Z

    .line 785
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v0, :cond_7

    return-void

    .line 786
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPMS.reportEngineShown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportEngineShown: shouldWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/16 v0, 0x27a6

    if-nez p1, :cond_4b

    .line 789
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 790
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 791
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 792
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_66

    .line 794
    :cond_4b
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_66

    .line 795
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 796
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 799
    .end local v0    # "message":Landroid/os/Message;
    :cond_66
    :goto_66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 800
    return-void
.end method

.method reportSurfaceDestroyed()V
    .registers 6

    .line 2638
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_26

    .line 2639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 2640
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2641
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 2642
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_21

    .line 2643
    array-length v2, v1

    :goto_15
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 2644
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2643
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2649
    :cond_21
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2651
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_26
    return-void
.end method

.method reportVisibility(Z)V
    .registers 6
    .param p1, "forceReport"    # Z

    .line 2009
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_9

    .line 2011
    return-void

    .line 2013
    :cond_9
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_74

    .line 2019
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayState(Landroid/view/Display;)I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 2021
    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    if-nez v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    .line 2022
    .local v0, "displayVisible":Z
    :goto_24
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v3, :cond_2b

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 2038
    .local v1, "visible":Z
    :goto_2c
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-ne v3, v1, :cond_32

    if-eqz p1, :cond_74

    .line 2039
    :cond_32
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 2051
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_42

    .line 2052
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLidState:I

    .line 2055
    :cond_42
    if-eqz v1, :cond_4a

    .line 2059
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 2061
    invoke-virtual {p0, v2, v2, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 2064
    :cond_4a
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportVisibility onVisibilityChanged visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v2, :cond_71

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v2, :cond_71

    .line 2070
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    .line 2072
    :cond_71
    invoke-static {v1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 2075
    .end local v0    # "displayVisible":Z
    .end local v1    # "visible":Z
    :cond_74
    return-void
.end method

.method scaleAndCropScreenshot()V
    .registers 12

    .line 2541
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 2542
    return-void

    .line 2544
    :cond_5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_89

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_12

    goto :goto_89

    .line 2550
    :cond_12
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2553
    .local v0, "scaleFactor":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    .line 2554
    .local v1, "diffX":I
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v8, v2, v3

    .line 2560
    .local v8, "diffY":I
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2561
    move v4, v0

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v8, 0x2

    div-int/lit8 v7, v1, 0x2

    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v9

    div-int/lit8 v9, v8, 0x2

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2565
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v8

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 2572
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 2573
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2574
    return-void

    .line 2545
    .end local v0    # "scaleFactor":F
    .end local v1    # "diffX":I
    .end local v8    # "diffY":I
    :cond_89
    :goto_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected screenshot size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    return-void
.end method

.method public semGetWallpaperFlags()I
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    return v0
.end method

.method public setCreated(Z)V
    .registers 2
    .param p1, "created"    # Z

    .line 1252
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1253
    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 2796
    return-void
.end method

.method public setFixedSizeAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .line 852
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 853
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 827
    if-eqz p1, :cond_7

    .line 828
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_b

    .line 830
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 832
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 835
    :cond_15
    return-void
.end method

.method public setShowForAllUsers(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 839
    if-eqz p1, :cond_7

    .line 840
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_b

    .line 842
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 844
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 847
    :cond_15
    return-void
.end method

.method public setSurfaceAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .line 1152
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_5c

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_b

    goto :goto_5c

    .line 1157
    :cond_b
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1158
    const-string v0, "Skip set alpha if live wallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void

    .line 1162
    :cond_1b
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_25

    .line 1163
    const-string v0, "Skip set alpha. Already destroyed!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-void

    .line 1167
    :cond_25
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSurfaceAlpha : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1170
    .local v0, "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1171
    .end local v0    # "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    goto :goto_5b

    .line 1172
    :cond_55
    const-string/jumbo v0, "setSurfaceAlpha mBbqSurfaceControl is null or invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :goto_5b
    return-void

    .line 1153
    :cond_5c
    :goto_5c
    const-string/jumbo v0, "mIWallpaperEngine or mWallpaperManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 810
    if-eqz p1, :cond_7

    .line 811
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_b

    .line 812
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 813
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 814
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 816
    :cond_15
    return-void
.end method

.method public setZoom(F)V
    .registers 5
    .param p1, "zoom"    # F

    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, "updated":Z
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1322
    :try_start_4
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    if-eqz v2, :cond_b

    .line 1323
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1325
    :cond_b
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_16

    .line 1326
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1327
    const/4 v0, 0x1

    .line 1329
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_23

    .line 1331
    if-eqz v0, :cond_22

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_22

    .line 1332
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    .line 1334
    :cond_22
    return-void

    .line 1329
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public shouldWaitForEngineShown()Z
    .registers 2

    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public shouldZoomOutWallpaper()Z
    .registers 2

    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public supportsLocalColorExtraction()Z
    .registers 2

    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method switchDisplay(Z)V
    .registers 5
    .param p1, "isFolded"    # Z

    .line 2719
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_40

    .line 2720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " switchDisplay start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isSupportInconsistency()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z

    .line 2722
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSwitchDisplayChanged(Z)V

    .line 2723
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 2724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " switchDisplay finish "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_40
    return-void
.end method

.method updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .registers 33
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p3, "pageIndx"    # I
    .param p4, "numPages"    # I
    .param p5, "wallpaperDimAmount"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    .line 2253
    .local p2, "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    move-object/from16 v12, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long v13, v0, v2

    .line 2254
    .local v13, "current":J
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getLastUpdateTime()J

    move-result-wide v0

    sub-long v15, v13, v0

    .line 2257
    .local v15, "lapsed":J
    cmp-long v0, v15, v2

    if-gez v0, :cond_16

    return-void

    .line 2259
    :cond_16
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v10

    .line 2260
    .local v10, "surface":Landroid/view/Surface;
    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    .line 2261
    :cond_23
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move/from16 v17, v0

    .line 2262
    .local v17, "widthIsLarger":Z
    if-eqz v17, :cond_39

    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_3d

    .line 2263
    :cond_39
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_3d
    move v11, v0

    .line 2264
    .local v11, "smaller":I
    const/high16 v0, 0x42800000    # 64.0f

    int-to-float v1, v11

    div-float v18, v0, v1

    .line 2265
    .local v18, "ratio":F
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v8, v0

    .line 2266
    .local v8, "width":I
    iget-object v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v7, v0

    .line 2267
    .local v7, "height":I
    const-string v6, "WallpaperService"

    if-lez v8, :cond_c6

    if-gtz v7, :cond_65

    move-object v3, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move-object v2, v10

    move/from16 v26, v11

    move-wide/from16 v20, v15

    goto/16 :goto_d0

    .line 2271
    :cond_65
    const-string v19, "WallpaperService#pixelCopy"

    .line 2272
    .local v19, "pixelCopySectionName":Ljava/lang/String;
    iget v0, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v12, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    move v5, v0

    .line 2273
    .local v5, "pixelCopyCount":I
    const-string v0, "WallpaperService#pixelCopy"

    invoke-static {v0, v5}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 2274
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2276
    .local v4, "screenShot":Landroid/graphics/Bitmap;
    move-object v9, v4

    .line 2279
    .local v9, "finalScreenShot":Landroid/graphics/Bitmap;
    :try_start_7a
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_7c} :catch_af

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v5

    move-wide/from16 v20, v15

    move-object v15, v4

    .end local v4    # "screenShot":Landroid/graphics/Bitmap;
    .local v15, "screenShot":Landroid/graphics/Bitmap;
    .local v20, "lapsed":J
    move-object/from16 v4, p1

    move/from16 v16, v5

    .end local v5    # "pixelCopyCount":I
    .local v16, "pixelCopyCount":I
    move-object/from16 v5, p2

    move-object/from16 v22, v6

    move/from16 v6, p3

    move/from16 v23, v7

    .end local v7    # "height":I
    .local v23, "height":I
    move/from16 v7, p4

    move/from16 v24, v8

    .end local v8    # "width":I
    .local v24, "width":I
    move/from16 v8, p5

    move-object/from16 v25, v10

    move/from16 v26, v11

    .end local v10    # "surface":Landroid/view/Surface;
    .end local v11    # "smaller":I
    .local v25, "surface":Landroid/view/Surface;
    .local v26, "smaller":I
    move-wide v10, v13

    :try_start_9a
    invoke-direct/range {v1 .. v11}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;J)V

    iget-object v1, v12, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v1
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_a3} :catch_ab

    move-object/from16 v2, v25

    .end local v25    # "surface":Landroid/view/Surface;
    .local v2, "surface":Landroid/view/Surface;
    :try_start_a5
    invoke-static {v2, v15, v0, v1}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 2307
    goto :goto_c5

    .line 2302
    :catch_a9
    move-exception v0

    goto :goto_be

    .end local v2    # "surface":Landroid/view/Surface;
    .restart local v25    # "surface":Landroid/view/Surface;
    :catch_ab
    move-exception v0

    move-object/from16 v2, v25

    .end local v25    # "surface":Landroid/view/Surface;
    .restart local v2    # "surface":Landroid/view/Surface;
    goto :goto_be

    .end local v2    # "surface":Landroid/view/Surface;
    .end local v16    # "pixelCopyCount":I
    .end local v20    # "lapsed":J
    .end local v23    # "height":I
    .end local v24    # "width":I
    .end local v26    # "smaller":I
    .restart local v4    # "screenShot":Landroid/graphics/Bitmap;
    .restart local v5    # "pixelCopyCount":I
    .restart local v7    # "height":I
    .restart local v8    # "width":I
    .restart local v10    # "surface":Landroid/view/Surface;
    .restart local v11    # "smaller":I
    .local v15, "lapsed":J
    :catch_af
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move-object v2, v10

    move/from16 v26, v11

    move-wide/from16 v20, v15

    move-object v15, v4

    move/from16 v16, v5

    .line 2306
    .end local v4    # "screenShot":Landroid/graphics/Bitmap;
    .end local v5    # "pixelCopyCount":I
    .end local v7    # "height":I
    .end local v8    # "width":I
    .end local v10    # "surface":Landroid/view/Surface;
    .end local v11    # "smaller":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "surface":Landroid/view/Surface;
    .local v15, "screenShot":Landroid/graphics/Bitmap;
    .restart local v16    # "pixelCopyCount":I
    .restart local v20    # "lapsed":J
    .restart local v23    # "height":I
    .restart local v24    # "width":I
    .restart local v26    # "smaller":I
    :goto_be
    const-string v1, "Cancelling processLocalColors: exception caught during PixelCopy"

    move-object/from16 v3, v22

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c5
    return-void

    .line 2267
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v9    # "finalScreenShot":Landroid/graphics/Bitmap;
    .end local v16    # "pixelCopyCount":I
    .end local v19    # "pixelCopySectionName":Ljava/lang/String;
    .end local v20    # "lapsed":J
    .end local v23    # "height":I
    .end local v24    # "width":I
    .end local v26    # "smaller":I
    .restart local v7    # "height":I
    .restart local v8    # "width":I
    .restart local v10    # "surface":Landroid/view/Surface;
    .restart local v11    # "smaller":I
    .local v15, "lapsed":J
    :cond_c6
    move-object v3, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move-object v2, v10

    move/from16 v26, v11

    move-wide/from16 v20, v15

    .line 2268
    .end local v7    # "height":I
    .end local v8    # "width":I
    .end local v10    # "surface":Landroid/view/Surface;
    .end local v11    # "smaller":I
    .end local v15    # "lapsed":J
    .restart local v2    # "surface":Landroid/view/Surface;
    .restart local v20    # "lapsed":J
    .restart local v23    # "height":I
    .restart local v24    # "width":I
    .restart local v26    # "smaller":I
    :goto_d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong width and height values of bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v24

    .end local v24    # "width":I
    .local v1, "width":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, v23

    .end local v23    # "height":I
    .local v4, "height":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    return-void
.end method

.method updateSurface(ZZZ)V
    .registers 67
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .line 1373
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string/jumbo v5, "updateSurface : finish redrawing reserve to redraw after visible cause currently not visible."

    const-string/jumbo v6, "updateSurface : finish redrawing"

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v7, "WallpaperService"

    if-eqz v0, :cond_1a

    .line 1374
    const-string v0, "Ignoring updateSurface due to destroyed"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void

    .line 1378
    :cond_1a
    const/4 v0, 0x0

    .line 1382
    .local v0, "fixedSize":Z
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v8, v8, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v8, :cond_26

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v8, v8, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    goto :goto_2c

    :cond_26
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v8

    .line 1384
    .local v8, "myWidth":I
    :goto_2c
    if-gtz v8, :cond_30

    const/4 v8, -0x1

    goto :goto_31

    .line 1385
    :cond_30
    const/4 v0, 0x1

    .line 1389
    :goto_31
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v9, v9, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v9, :cond_3c

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v9, v9, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    goto :goto_42

    :cond_3c
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v9}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v9

    .line 1391
    .local v9, "myHeight":I
    :goto_42
    if-gtz v9, :cond_48

    const/4 v9, -0x1

    move v10, v9

    move v9, v0

    goto :goto_4b

    .line 1392
    :cond_48
    const/4 v0, 0x1

    move v10, v9

    move v9, v0

    .line 1395
    .end local v0    # "fixedSize":Z
    .local v9, "fixedSize":Z
    .local v10, "myHeight":I
    :goto_4b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v0, :cond_58

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    move v12, v0

    .line 1396
    .local v12, "x":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v0, :cond_67

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    :goto_68
    move v13, v0

    .line 1398
    .local v13, "y":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSurface forceRelayout="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " forceReport="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " redrawNeeded="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " myWidth="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " myHeight="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " fixedSize="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " x = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " y = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " mWidth="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " mHeight="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    move v15, v0

    .line 1411
    .local v15, "creating":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    xor-int/2addr v0, v14

    move/from16 v16, v0

    .line 1412
    .local v16, "surfaceCreating":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v11}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v11

    if-eq v0, v11, :cond_f4

    move v0, v14

    goto :goto_f5

    :cond_f4
    const/4 v0, 0x0

    :goto_f5
    move v11, v0

    .line 1416
    .local v11, "formatChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    if-ne v0, v8, :cond_109

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    if-ne v0, v10, :cond_109

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    if-ne v0, v12, :cond_109

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    if-eq v0, v13, :cond_107

    goto :goto_109

    :cond_107
    const/4 v0, 0x0

    goto :goto_10a

    :cond_109
    :goto_109
    move v0, v14

    :goto_10a
    move/from16 v17, v0

    .line 1418
    .local v17, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    xor-int/2addr v0, v14

    move/from16 v18, v0

    .line 1419
    .local v18, "insetsChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v14}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v14

    if-eq v0, v14, :cond_11d

    const/4 v0, 0x1

    goto :goto_11e

    :cond_11d
    const/4 v0, 0x0

    :goto_11e
    move v14, v0

    .line 1420
    .local v14, "typeChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move-object/from16 v19, v5

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v0, v5, :cond_130

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v0, v5, :cond_12e

    goto :goto_130

    :cond_12e
    const/4 v0, 0x0

    goto :goto_131

    :cond_130
    :goto_130
    const/4 v0, 0x1

    :goto_131
    move v5, v0

    .line 1422
    .local v5, "flagsChanged":Z
    if-nez v2, :cond_15d

    if-nez v15, :cond_15d

    if-nez v16, :cond_15d

    if-nez v11, :cond_15d

    if-nez v17, :cond_15d

    if-nez v14, :cond_15d

    if-nez v5, :cond_15d

    if-nez v4, :cond_15d

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_149

    goto :goto_15d

    :cond_149
    move/from16 v20, v5

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v46, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    goto/16 :goto_949

    .line 1431
    :cond_15d
    :goto_15d
    :try_start_15d
    iput v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    .line 1432
    iput v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    .line 1434
    iput v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 1435
    iput v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 1436
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 1437
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 1443
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1444
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1449
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    move-object/from16 v20, v0

    .line 1450
    .local v20, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    move-object/from16 v2, v20

    .end local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1451
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I
    :try_end_197
    .catch Landroid/os/RemoteException; {:try_start_15d .. :try_end_197} :catch_936

    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "flagsChanged":Z
    .local v20, "flagsChanged":Z
    if-ne v0, v5, :cond_19e

    const/4 v0, 0x1

    goto :goto_19f

    :cond_19e
    const/4 v0, 0x0

    :goto_19f
    move v5, v0

    .line 1454
    .local v5, "isDesktopMode":Z
    :try_start_1a0
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_1a2
    .catch Landroid/os/RemoteException; {:try_start_1a0 .. :try_end_1a2} :catch_924

    move/from16 v21, v12

    .end local v12    # "x":I
    .local v21, "x":I
    :try_start_1a4
    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1456
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 1457
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_1ae
    .catch Landroid/os/RemoteException; {:try_start_1a4 .. :try_end_1ae} :catch_914

    or-int/lit16 v0, v0, 0x200

    const/high16 v22, 0x10000

    or-int v0, v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v13

    .end local v13    # "y":I
    .local v22, "y":I
    const/16 v13, 0x8

    or-int/2addr v0, v13

    :try_start_1bb
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1463
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v12, v0

    .line 1464
    .local v12, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v13, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v0, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_1cf
    .catch Landroid/os/RemoteException; {:try_start_1bb .. :try_end_1cf} :catch_906

    move-object v13, v0

    .line 1469
    .local v13, "maxBounds":Landroid/graphics/Rect;
    const/4 v0, -0x1

    move/from16 v31, v14

    .end local v14    # "typeChanged":Z
    .local v31, "typeChanged":Z
    if-ne v8, v0, :cond_1d7

    if-eq v10, v0, :cond_1dd

    :cond_1d7
    :try_start_1d7
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z
    :try_end_1db
    .catch Landroid/os/RemoteException; {:try_start_1d7 .. :try_end_1db} :catch_8fa

    if-eqz v0, :cond_1fe

    .line 1473
    :cond_1dd
    :try_start_1dd
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1474
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1475
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, -0x4001

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1ed
    .catch Landroid/os/RemoteException; {:try_start_1dd .. :try_end_1ed} :catch_1f1

    move-object/from16 v32, v6

    goto/16 :goto_28d

    .line 1835
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v5    # "isDesktopMode":Z
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "maxBounds":Landroid/graphics/Rect;
    :catch_1f1
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v46, v11

    move/from16 v47, v15

    goto/16 :goto_949

    .line 1480
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v5    # "isDesktopMode":Z
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "maxBounds":Landroid/graphics/Rect;
    :cond_1fe
    nop

    .line 1482
    :try_start_1ff
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v14, v8

    div-float/2addr v0, v14

    .line 1483
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v32, v6

    int-to-float v6, v10

    div-float/2addr v14, v6

    .line 1480
    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1486
    .local v0, "layoutScale":F
    sget-boolean v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z
    :try_end_215
    .catch Landroid/os/RemoteException; {:try_start_1ff .. :try_end_215} :catch_8fa

    if-eqz v6, :cond_239

    :try_start_217
    sget-boolean v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v6, :cond_239

    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1487
    invoke-direct {v1, v6, v14}, Landroid/service/wallpaper/WallpaperService$Engine;->isDisplaySizeChanged(II)Z

    move-result v6

    if-eqz v6, :cond_236

    .line 1488
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v6, v6

    int-to-float v14, v8

    div-float/2addr v6, v14

    iget v14, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v14, v14

    move/from16 v25, v0

    .end local v0    # "layoutScale":F
    .local v25, "layoutScale":F
    int-to-float v0, v10

    div-float/2addr v14, v0

    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v0
    :try_end_235
    .catch Landroid/os/RemoteException; {:try_start_217 .. :try_end_235} :catch_1f1

    .end local v25    # "layoutScale":F
    .restart local v0    # "layoutScale":F
    goto :goto_23d

    .line 1487
    :cond_236
    move/from16 v25, v0

    .end local v0    # "layoutScale":F
    .restart local v25    # "layoutScale":F
    goto :goto_23b

    .line 1486
    .end local v25    # "layoutScale":F
    .restart local v0    # "layoutScale":F
    :cond_239
    move/from16 v25, v0

    .line 1494
    .end local v0    # "layoutScale":F
    .restart local v25    # "layoutScale":F
    :goto_23b
    move/from16 v0, v25

    .end local v25    # "layoutScale":F
    .restart local v0    # "layoutScale":F
    :goto_23d
    :try_start_23d
    iget-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z
    :try_end_23f
    .catch Landroid/os/RemoteException; {:try_start_23d .. :try_end_23f} :catch_8fa

    if-eqz v6, :cond_26d

    if-nez v5, :cond_26d

    :try_start_243
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    const/4 v14, 0x2

    if-eq v6, v14, :cond_26d

    .line 1495
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1497
    .local v6, "displayHeight":I
    iget v14, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v25, v0

    .end local v0    # "layoutScale":F
    .restart local v25    # "layoutScale":F
    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1499
    .local v0, "displayWidth":I
    int-to-float v14, v6

    move/from16 v26, v6

    .end local v6    # "displayHeight":I
    .local v26, "displayHeight":I
    int-to-float v6, v10

    div-float/2addr v14, v6

    int-to-float v6, v0

    move/from16 v27, v0

    .end local v0    # "displayWidth":I
    .local v27, "displayWidth":I
    int-to-float v0, v8

    div-float/2addr v6, v0

    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0
    :try_end_26c
    .catch Landroid/os/RemoteException; {:try_start_243 .. :try_end_26c} :catch_1f1

    .end local v25    # "layoutScale":F
    .local v0, "layoutScale":F
    goto :goto_271

    .line 1494
    .end local v26    # "displayHeight":I
    .end local v27    # "displayWidth":I
    :cond_26d
    move/from16 v25, v0

    .line 1504
    .end local v0    # "layoutScale":F
    .restart local v25    # "layoutScale":F
    move/from16 v0, v25

    .end local v25    # "layoutScale":F
    .restart local v0    # "layoutScale":F
    :goto_271
    :try_start_271
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v14, v8

    mul-float/2addr v14, v0

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v14, v14, v25

    float-to-int v14, v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1505
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v14, v10

    mul-float/2addr v14, v0

    add-float v14, v14, v25

    float-to-int v14, v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1506
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v14, v14, 0x4000

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1509
    .end local v0    # "layoutScale":F
    :goto_28d
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 1510
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1512
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 1513
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1516
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSupportInconsistencyWallpaper:Z
    :try_end_2a3
    .catch Landroid/os/RemoteException; {:try_start_271 .. :try_end_2a3} :catch_8fa

    if-eqz v0, :cond_2b8

    if-nez v5, :cond_2b8

    :try_start_2a7
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2b8

    .line 1517
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V
    :try_end_2b7
    .catch Landroid/os/RemoteException; {:try_start_2a7 .. :try_end_2b7} :catch_1f1

    goto :goto_2bf

    .line 1519
    :cond_2b8
    :try_start_2b8
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 1522
    :goto_2bf
    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    .line 1523
    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    .line 1524
    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maxBounds : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " , mDeviceHeight : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayHeight:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", mDeviceWidth : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayWidth:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",mDeviceRotation  : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayRotation:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, "needChangeVisibility":Z
    iget-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1530
    .local v6, "isParentVisible":Z
    iget-boolean v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_30b
    .catch Landroid/os/RemoteException; {:try_start_2b8 .. :try_end_30b} :catch_8fa

    if-nez v14, :cond_3ff

    .line 1532
    :try_start_30d
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v23, v0

    .end local v0    # "needChangeVisibility":Z
    .local v23, "needChangeVisibility":Z
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1533
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v14, 0x800033

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1534
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1535
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1536
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v14, 0x1030314

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1538
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 1548
    .local v0, "inputChannel":Landroid/view/InputChannel;
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v44, v2

    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .local v44, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move/from16 v45, v5

    .end local v5    # "isDesktopMode":Z
    .local v45, "isDesktopMode":Z
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v36, 0x0

    move/from16 v24, v6

    .end local v6    # "isParentVisible":Z
    .local v24, "isParentVisible":Z
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1549
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v37

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v38

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_359
    .catch Landroid/os/RemoteException; {:try_start_30d .. :try_end_359} :catch_3f2

    move/from16 v46, v11

    .end local v11    # "formatChanged":Z
    .local v46, "formatChanged":Z
    :try_start_35b
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V
    :try_end_362
    .catch Landroid/os/RemoteException; {:try_start_35b .. :try_end_362} :catch_3e7

    move/from16 v47, v15

    const/4 v3, 0x1

    .end local v15    # "creating":Z
    .local v47, "creating":Z
    :try_start_365
    new-array v15, v3, [F

    .line 1548
    move-object/from16 v33, v14

    move-object/from16 v34, v2

    move-object/from16 v35, v5

    move-object/from16 v39, v0

    move-object/from16 v40, v6

    move-object/from16 v41, v11

    move-object/from16 v43, v15

    invoke-interface/range {v33 .. v43}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v2

    .line 1552
    .local v2, "addToDisplayResult":I
    if-gez v2, :cond_381

    .line 1553
    const-string v3, "Failed to add window while updating wallpaper surface."

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return-void

    .line 1557
    :cond_381
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_387

    const/4 v3, 0x1

    goto :goto_388

    :cond_387
    const/4 v3, 0x0

    :goto_388
    move v6, v3

    .line 1558
    .end local v24    # "isParentVisible":Z
    .restart local v6    # "isParentVisible":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parent visible = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", child visible = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", preview  = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v5, v5, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_3cb

    .line 1560
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v3, :cond_3cb

    .line 1561
    iget-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eq v3, v6, :cond_3c9

    const/4 v3, 0x1

    goto :goto_3ca

    :cond_3c9
    const/4 v3, 0x0

    .end local v23    # "needChangeVisibility":Z
    .local v3, "needChangeVisibility":Z
    :goto_3ca
    goto :goto_3cd

    .line 1565
    .end local v3    # "needChangeVisibility":Z
    .restart local v23    # "needChangeVisibility":Z
    :cond_3cb
    move/from16 v3, v23

    .end local v23    # "needChangeVisibility":Z
    .restart local v3    # "needChangeVisibility":Z
    :goto_3cd
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldZoomOutWallpaper()Z

    move-result v14

    invoke-interface {v5, v11, v14}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 1566
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1568
    new-instance v5, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1569
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v5, v1, v0, v11}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    :try_end_3e6
    .catch Landroid/os/RemoteException; {:try_start_365 .. :try_end_3e6} :catch_425

    goto :goto_40d

    .line 1835
    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    .end local v2    # "addToDisplayResult":I
    .end local v3    # "needChangeVisibility":Z
    .end local v6    # "isParentVisible":Z
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "maxBounds":Landroid/graphics/Rect;
    .end local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v45    # "isDesktopMode":Z
    .end local v47    # "creating":Z
    .restart local v15    # "creating":Z
    :catch_3e7
    move-exception v0

    move/from16 v47, v15

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    .end local v15    # "creating":Z
    .restart local v47    # "creating":Z
    goto/16 :goto_949

    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .restart local v11    # "formatChanged":Z
    .restart local v15    # "creating":Z
    :catch_3f2
    move-exception v0

    move/from16 v46, v11

    move/from16 v47, v15

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    .end local v11    # "formatChanged":Z
    .end local v15    # "creating":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    goto/16 :goto_949

    .line 1530
    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .local v0, "needChangeVisibility":Z
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    .restart local v5    # "isDesktopMode":Z
    .restart local v6    # "isParentVisible":Z
    .restart local v11    # "formatChanged":Z
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "maxBounds":Landroid/graphics/Rect;
    .restart local v15    # "creating":Z
    :cond_3ff
    move/from16 v23, v0

    move-object/from16 v44, v2

    move/from16 v45, v5

    move/from16 v24, v6

    move/from16 v46, v11

    move/from16 v47, v15

    .end local v0    # "needChangeVisibility":Z
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v5    # "isDesktopMode":Z
    .end local v6    # "isParentVisible":Z
    .end local v11    # "formatChanged":Z
    .end local v15    # "creating":Z
    .restart local v23    # "needChangeVisibility":Z
    .restart local v24    # "isParentVisible":Z
    .restart local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v45    # "isDesktopMode":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    move/from16 v3, v23

    .line 1572
    .end local v23    # "needChangeVisibility":Z
    .end local v24    # "isParentVisible":Z
    .restart local v3    # "needChangeVisibility":Z
    .restart local v6    # "isParentVisible":Z
    :goto_40d
    :try_start_40d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1573
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z
    :try_end_417
    .catch Landroid/os/RemoteException; {:try_start_40d .. :try_end_417} :catch_8f2

    .line 1575
    if-nez v9, :cond_42e

    .line 1576
    :try_start_419
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_424
    .catch Landroid/os/RemoteException; {:try_start_419 .. :try_end_424} :catch_425

    goto :goto_436

    .line 1835
    .end local v3    # "needChangeVisibility":Z
    .end local v6    # "isParentVisible":Z
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "maxBounds":Landroid/graphics/Rect;
    .end local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v45    # "isDesktopMode":Z
    :catch_425
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    goto/16 :goto_949

    .line 1578
    .restart local v3    # "needChangeVisibility":Z
    .restart local v6    # "isParentVisible":Z
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "maxBounds":Landroid/graphics/Rect;
    .restart local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v45    # "isDesktopMode":Z
    :cond_42e
    :try_start_42e
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1580
    :goto_436
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    move/from16 v23, v6

    .end local v6    # "isParentVisible":Z
    .local v23, "isParentVisible":Z
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    move/from16 v33, v3

    .end local v3    # "needChangeVisibility":Z
    .local v33, "needChangeVisibility":Z
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_452
    .catch Landroid/os/RemoteException; {:try_start_42e .. :try_end_452} :catch_8f2

    move/from16 v34, v10

    .end local v10    # "myHeight":I
    .local v34, "myHeight":I
    :try_start_454
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_456
    .catch Landroid/os/RemoteException; {:try_start_454 .. :try_end_456} :catch_8eb

    move/from16 v35, v8

    .end local v8    # "myWidth":I
    .local v35, "myWidth":I
    :try_start_458
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;
    :try_end_45a
    .catch Landroid/os/RemoteException; {:try_start_458 .. :try_end_45a} :catch_8e6

    move/from16 v36, v9

    .end local v9    # "fixedSize":Z
    .local v36, "fixedSize":Z
    :try_start_45c
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    move-object/from16 v48, v0

    move-object/from16 v49, v2

    move-object/from16 v50, v5

    move/from16 v51, v11

    move/from16 v52, v14

    move-object/from16 v57, v15

    move-object/from16 v58, v6

    move-object/from16 v59, v3

    move-object/from16 v60, v10

    move-object/from16 v61, v8

    move-object/from16 v62, v9

    invoke-interface/range {v48 .. v62}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    move-result v0

    move v2, v0

    .line 1583
    .local v2, "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1584
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v3, v0

    .line 1585
    .local v3, "outMaxBounds":Landroid/graphics/Rect;
    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c7

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry updateSurface because bounds changed from relayout: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1589
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 1590
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1591
    if-eqz v4, :cond_4bc

    const/4 v11, 0x1

    goto :goto_4bd

    :cond_4bc
    const/4 v11, 0x0

    .line 1590
    :goto_4bd
    const/16 v5, 0x272e

    invoke-virtual {v0, v5, v11}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1592
    return-void

    .line 1595
    :cond_4c7
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1596
    invoke-virtual {v0}, Landroid/view/Display;->getInstallOrientation()I

    move-result v0

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    add-int/2addr v0, v5

    rem-int/lit8 v0, v0, 0x4

    .line 1595
    invoke-static {v0}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v0

    move v5, v0

    .line 1597
    .local v5, "transformHint":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1598
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v9, v9, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    const/16 v29, 0x0

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v25, v13

    move/from16 v26, v6

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v30, v10

    invoke-static/range {v24 .. v30}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 1601
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 1602
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_53f

    .line 1603
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v6, "Wallpaper BBQ wrapper"

    .line 1604
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1605
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1607
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v6, "Wallpaper#relayout"

    .line 1608
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1609
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1610
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1612
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v8, 0x66

    invoke-virtual {v0, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setDefaultFrameRateCompatibility(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    .line 1613
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1617
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_53f
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1618
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-direct {v1, v0, v6, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->getOrCreateBLASTSurface(III)Landroid/view/Surface;

    move-result-object v0

    .line 1623
    .local v0, "blastSurface":Landroid/view/Surface;
    if-eqz v0, :cond_55b

    .line 1624
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 1627
    .end local v0    # "blastSurface":Landroid/view/Surface;
    :cond_55b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_572

    .line 1628
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Point;->set(II)V

    .line 1634
    :cond_572
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1635
    .local v0, "w":I
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1637
    .local v6, "h":I
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v8}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 1638
    .local v8, "rawCutout":Landroid/view/DisplayCutout;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v10, v10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1639
    .local v9, "visibleFrame":Landroid/graphics/Rect;
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v10}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1640
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    const/16 v50, 0x0

    .line 1641
    invoke-virtual {v12}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v51

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v54, 0x0

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v24, v3

    .end local v3    # "outMaxBounds":Landroid/graphics/Rect;
    .local v24, "outMaxBounds":Landroid/graphics/Rect;
    iget-object v3, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1643
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v56

    const/16 v57, 0x0

    .line 1640
    move-object/from16 v48, v10

    move-object/from16 v49, v9

    move/from16 v52, v11

    move/from16 v53, v14

    move/from16 v55, v15

    invoke-virtual/range {v48 .. v57}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v3

    .line 1646
    .local v3, "windowInsets":Landroid/view/WindowInsets;
    if-nez v36, :cond_5f2

    .line 1647
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 1648
    .local v10, "padding":Landroid/graphics/Rect;
    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v14, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v14

    add-int/2addr v0, v11

    .line 1649
    iget v11, v10, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v14

    add-int/2addr v6, v11

    .line 1650
    iget v11, v10, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v14, v10, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    iget v15, v10, Landroid/graphics/Rect;->right:I

    neg-int v15, v15

    move/from16 v25, v0

    .end local v0    # "w":I
    .local v25, "w":I
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    invoke-virtual {v3, v11, v14, v15, v0}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    move-object v3, v0

    .line 1652
    .end local v10    # "padding":Landroid/graphics/Rect;
    move v10, v6

    move-object v6, v3

    move/from16 v3, v25

    goto :goto_5f9

    .line 1653
    .end local v25    # "w":I
    .restart local v0    # "w":I
    :cond_5f2
    move/from16 v0, v35

    .line 1654
    move/from16 v6, v34

    move v10, v6

    move-object v6, v3

    move v3, v0

    .line 1657
    .end local v0    # "w":I
    .local v3, "w":I
    .local v6, "windowInsets":Landroid/view/WindowInsets;
    .local v10, "h":I
    :goto_5f9
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    if-eq v0, v3, :cond_601

    .line 1658
    const/16 v17, 0x1

    .line 1659
    iput v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 1661
    :cond_601
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_603
    .catch Landroid/os/RemoteException; {:try_start_45c .. :try_end_603} :catch_8e3

    if-eq v0, v10, :cond_610

    .line 1662
    const/4 v11, 0x1

    .line 1663
    .end local v17    # "sizeChanged":Z
    .local v11, "sizeChanged":Z
    :try_start_606
    iput v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_608
    .catch Landroid/os/RemoteException; {:try_start_606 .. :try_end_608} :catch_60b

    move/from16 v17, v11

    goto :goto_610

    .line 1835
    .end local v2    # "relayoutResult":I
    .end local v3    # "w":I
    .end local v5    # "transformHint":I
    .end local v6    # "windowInsets":Landroid/view/WindowInsets;
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "maxBounds":Landroid/graphics/Rect;
    .end local v23    # "isParentVisible":Z
    .end local v24    # "outMaxBounds":Landroid/graphics/Rect;
    .end local v33    # "needChangeVisibility":Z
    .end local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v45    # "isDesktopMode":Z
    :catch_60b
    move-exception v0

    move/from16 v17, v11

    goto/16 :goto_949

    .line 1670
    .end local v11    # "sizeChanged":Z
    .restart local v2    # "relayoutResult":I
    .restart local v3    # "w":I
    .restart local v5    # "transformHint":I
    .restart local v6    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v10    # "h":I
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "maxBounds":Landroid/graphics/Rect;
    .restart local v17    # "sizeChanged":Z
    .restart local v23    # "isParentVisible":Z
    .restart local v24    # "outMaxBounds":Landroid/graphics/Rect;
    .restart local v33    # "needChangeVisibility":Z
    .restart local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v45    # "isDesktopMode":Z
    :cond_610
    :goto_610
    :try_start_610
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v11, v0

    .line 1671
    .local v11, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v14, v0

    .line 1672
    .local v14, "stableInsets":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_62d

    .line 1673
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_62e

    :cond_62d
    move-object v0, v8

    :goto_62e
    move-object v15, v0

    .line 1674
    .local v15, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_639

    const/4 v0, 0x1

    goto :goto_63a

    :cond_639
    const/4 v0, 0x0

    :goto_63a
    or-int v18, v18, v0

    .line 1675
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_646

    const/4 v0, 0x1

    goto :goto_647

    :cond_646
    const/4 v0, 0x0

    :goto_647
    or-int v18, v18, v0

    .line 1676
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v15}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_653

    const/4 v0, 0x1

    goto :goto_654

    :cond_653
    const/4 v0, 0x0

    :goto_654
    or-int v18, v18, v0

    .line 1678
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v3, v10}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1679
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1681
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_670

    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_66f
    .catch Landroid/os/RemoteException; {:try_start_610 .. :try_end_66f} :catch_8e3

    .line 1684
    return-void

    .line 1687
    :cond_670
    const/16 v25, 0x0

    .line 1690
    .local v25, "didSurface":Z
    move/from16 v26, v3

    .end local v3    # "w":I
    .local v26, "w":I
    :try_start_674
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_679
    .catchall {:try_start_674 .. :try_end_679} :catchall_8a0

    .line 1692
    if-eqz v16, :cond_6db

    .line 1693
    const/4 v3, 0x1

    :try_start_67c
    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1694
    const/16 v25, 0x1

    .line 1697
    const-string v0, "WPMS.Engine.onSurfaceCreated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1698
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1699
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1700
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1701
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_6c4

    .line 1702
    array-length v3, v0
    :try_end_696
    .catchall {:try_start_67c .. :try_end_696} :catchall_6c9

    move/from16 v29, v5

    const/4 v5, 0x0

    .end local v5    # "transformHint":I
    .local v29, "transformHint":I
    :goto_699
    if-ge v5, v3, :cond_6c1

    :try_start_69b
    aget-object v30, v0, v5

    move-object/from16 v37, v30

    .line 1703
    .local v37, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v30, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v30, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v38, v3

    move-object/from16 v3, v37

    .end local v37    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_6aa
    .catchall {:try_start_69b .. :try_end_6aa} :catchall_6b1

    .line 1702
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    move/from16 v3, v38

    goto :goto_699

    .line 1816
    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_6b1
    move-exception v0

    move/from16 v30, v2

    move v3, v4

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    goto/16 :goto_8b0

    .line 1702
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_6c1
    move-object/from16 v30, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_6dd

    .line 1701
    .end local v29    # "transformHint":I
    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v5    # "transformHint":I
    :cond_6c4
    move-object/from16 v30, v0

    move/from16 v29, v5

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v5    # "transformHint":I
    .restart local v29    # "transformHint":I
    .restart local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_6dd

    .line 1816
    .end local v29    # "transformHint":I
    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v5    # "transformHint":I
    :catchall_6c9
    move-exception v0

    move/from16 v29, v5

    move/from16 v30, v2

    move v3, v4

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    .end local v5    # "transformHint":I
    .restart local v29    # "transformHint":I
    goto/16 :goto_8b0

    .line 1692
    .end local v29    # "transformHint":I
    .restart local v5    # "transformHint":I
    :cond_6db
    move/from16 v29, v5

    .line 1708
    .end local v5    # "transformHint":I
    .restart local v29    # "transformHint":I
    :goto_6dd
    if-nez v47, :cond_6e6

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_6e4

    goto :goto_6e6

    :cond_6e4
    const/4 v0, 0x0

    goto :goto_6e7

    :cond_6e6
    :goto_6e6
    const/4 v0, 0x1

    :goto_6e7
    or-int v3, v4, v0

    .line 1714
    .end local p3    # "redrawNeeded":Z
    .local v3, "redrawNeeded":Z
    :try_start_6e9
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z
    :try_end_6eb
    .catchall {:try_start_6e9 .. :try_end_6eb} :catchall_892

    if-eqz v0, :cond_70c

    :try_start_6ed
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_70c

    .line 1715
    const-string v0, "Set redraw after visible because drawn on invisible state"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    or-int/2addr v3, v0

    .line 1717
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z
    :try_end_6fc
    .catchall {:try_start_6ed .. :try_end_6fc} :catchall_6fd

    goto :goto_70c

    .line 1816
    :catchall_6fd
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    goto/16 :goto_8b0

    .line 1721
    :cond_70c
    :goto_70c
    if-nez p2, :cond_71f

    if-nez v47, :cond_71f

    if-nez v16, :cond_71f

    if-nez v46, :cond_71f

    if-eqz v17, :cond_717

    goto :goto_71f

    :cond_717
    move/from16 v30, v2

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    goto/16 :goto_787

    .line 1734
    :cond_71f
    :goto_71f
    const/16 v25, 0x1

    .line 1735
    :try_start_721
    const-string v0, "WPMS.Engine.onSurfaceChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1736
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_72c
    .catchall {:try_start_721 .. :try_end_72c} :catchall_892

    move/from16 v30, v2

    .end local v2    # "relayoutResult":I
    .local v30, "relayoutResult":I
    :try_start_72e
    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1738
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1739
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_73c
    .catchall {:try_start_72e .. :try_end_73c} :catchall_886

    .line 1740
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_781

    .line 1741
    :try_start_73e
    array-length v2, v0

    const/4 v4, 0x0

    :goto_740
    if-ge v4, v2, :cond_76d

    aget-object v5, v0, v4

    .line 1742
    .local v5, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 p3, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local p3, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v37, v2

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I
    :try_end_74c
    .catchall {:try_start_73e .. :try_end_74c} :catchall_774

    move-object/from16 v38, v8

    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .local v38, "rawCutout":Landroid/view/DisplayCutout;
    :try_start_74e
    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_750
    .catchall {:try_start_74e .. :try_end_750} :catchall_762

    move-object/from16 v39, v9

    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .local v39, "visibleFrame":Landroid/graphics/Rect;
    :try_start_752
    iget v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v5, v0, v2, v8, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1741
    .end local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    move/from16 v2, v37

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    goto :goto_740

    .line 1816
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    :catchall_762
    move-exception v0

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    goto/16 :goto_8b0

    .line 1741
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    :cond_76d
    move-object/from16 p3, v0

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    .restart local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_787

    .line 1816
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    :catchall_774
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    goto/16 :goto_8b0

    .line 1740
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    :cond_781
    move-object/from16 p3, v0

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 1748
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    :goto_787
    if-eqz v18, :cond_7aa

    .line 1749
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1750
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1751
    iput-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 1755
    const-string v0, "WPMS.Engine.onApplyWindowInsets"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v1, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 1757
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_7a0
    .catchall {:try_start_752 .. :try_end_7a0} :catchall_7a1

    goto :goto_7aa

    .line 1816
    :catchall_7a1
    move-exception v0

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    goto/16 :goto_8b0

    .line 1760
    :cond_7aa
    :goto_7aa
    if-nez v3, :cond_7ae

    if-eqz v17, :cond_7d8

    .line 1761
    :cond_7ae
    :try_start_7ae
    const-string v0, "WPMS.Engine.onSurfaceRedrawNeeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1762
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1763
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1764
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_7c1
    .catchall {:try_start_7ae .. :try_end_7c1} :catchall_87e

    .line 1765
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_7d8

    .line 1766
    :try_start_7c3
    array-length v2, v0

    const/4 v4, 0x0

    :goto_7c5
    if-ge v4, v2, :cond_7d8

    aget-object v5, v0, v4

    .line 1767
    .restart local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v5, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_7d5

    .line 1768
    move-object v8, v5

    check-cast v8, Landroid/view/SurfaceHolder$Callback2;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_7d5
    .catchall {:try_start_7c3 .. :try_end_7d5} :catchall_7a1

    .line 1766
    .end local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_7d5
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c5

    .line 1776
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_7d8
    :try_start_7d8
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z
    :try_end_7da
    .catchall {:try_start_7d8 .. :try_end_7da} :catchall_87e

    if-eqz v0, :cond_811

    .line 1777
    :try_start_7dc
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_807

    if-eqz v33, :cond_807

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_807

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update visibility of parent\'s one. visible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_7f1
    .catchall {:try_start_7dc .. :try_end_7f1} :catchall_80a

    move/from16 v2, v23

    .end local v23    # "isParentVisible":Z
    .local v2, "isParentVisible":Z
    :try_start_7f3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1780
    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1781
    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    goto :goto_813

    .line 1777
    .end local v2    # "isParentVisible":Z
    .restart local v23    # "isParentVisible":Z
    :cond_807
    move/from16 v2, v23

    .end local v23    # "isParentVisible":Z
    .restart local v2    # "isParentVisible":Z
    goto :goto_813

    .line 1816
    .end local v2    # "isParentVisible":Z
    .restart local v23    # "isParentVisible":Z
    :catchall_80a
    move-exception v0

    move/from16 v2, v23

    move-object/from16 v8, v19

    goto/16 :goto_883

    .line 1776
    :cond_811
    move/from16 v2, v23

    .line 1786
    .end local v23    # "isParentVisible":Z
    .restart local v2    # "isParentVisible":Z
    :goto_813
    if-eqz v25, :cond_849

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_849

    .line 1792
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v0, :cond_82f

    .line 1799
    const-string v0, "WPMS.Engine.onVisibilityChanged-true"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1800
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1801
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1803
    const-string/jumbo v0, "updateSurface onVisibilityChanged visible: true"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_82f
    const-string v0, "WPMS.Engine.onVisibilityChanged-false"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1809
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1810
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1812
    const-string/jumbo v0, "updateSurface onVisibilityChanged visible: false"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_841
    .catchall {:try_start_7f3 .. :try_end_841} :catchall_842

    goto :goto_849

    .line 1816
    :catchall_842
    move-exception v0

    move-object/from16 v8, v19

    move-object/from16 v5, v32

    goto/16 :goto_8b0

    :cond_849
    :goto_849
    const/4 v4, 0x0

    :try_start_84a
    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1817
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1818
    if-eqz v3, :cond_870

    .line 1820
    move-object/from16 v5, v32

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-nez v0, :cond_862

    .line 1823
    move-object/from16 v8, v19

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    .line 1828
    :cond_862
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v5, 0x7fffffff

    const/4 v7, 0x0

    invoke-interface {v0, v4, v7, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1830
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 1832
    :cond_870
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1833
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1834
    nop

    .line 1836
    .end local v2    # "isParentVisible":Z
    .end local v6    # "windowInsets":Landroid/view/WindowInsets;
    .end local v10    # "h":I
    .end local v11    # "contentInsets":Landroid/graphics/Rect;
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "maxBounds":Landroid/graphics/Rect;
    .end local v14    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v24    # "outMaxBounds":Landroid/graphics/Rect;
    .end local v25    # "didSurface":Z
    .end local v26    # "w":I
    .end local v29    # "transformHint":I
    .end local v30    # "relayoutResult":I
    .end local v33    # "needChangeVisibility":Z
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .end local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v45    # "isDesktopMode":Z
    move v4, v3

    goto/16 :goto_949

    .line 1816
    .restart local v6    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v10    # "h":I
    .restart local v11    # "contentInsets":Landroid/graphics/Rect;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "maxBounds":Landroid/graphics/Rect;
    .restart local v14    # "stableInsets":Landroid/graphics/Rect;
    .restart local v15    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v23    # "isParentVisible":Z
    .restart local v24    # "outMaxBounds":Landroid/graphics/Rect;
    .restart local v25    # "didSurface":Z
    .restart local v26    # "w":I
    .restart local v29    # "transformHint":I
    .restart local v30    # "relayoutResult":I
    .restart local v33    # "needChangeVisibility":Z
    .restart local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v45    # "isDesktopMode":Z
    :catchall_87e
    move-exception v0

    move-object/from16 v8, v19

    move/from16 v2, v23

    :goto_883
    move-object/from16 v5, v32

    .end local v23    # "isParentVisible":Z
    .restart local v2    # "isParentVisible":Z
    goto :goto_8b0

    .end local v2    # "isParentVisible":Z
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v23    # "isParentVisible":Z
    :catchall_886
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v23    # "isParentVisible":Z
    .restart local v2    # "isParentVisible":Z
    .restart local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    goto :goto_8b0

    .end local v30    # "relayoutResult":I
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .local v2, "relayoutResult":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v23    # "isParentVisible":Z
    :catchall_892
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v23    # "isParentVisible":Z
    .local v2, "isParentVisible":Z
    .restart local v30    # "relayoutResult":I
    .restart local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    goto :goto_8b0

    .end local v3    # "redrawNeeded":Z
    .end local v29    # "transformHint":I
    .end local v30    # "relayoutResult":I
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .local v2, "relayoutResult":I
    .local v5, "transformHint":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v23    # "isParentVisible":Z
    .local p3, "redrawNeeded":Z
    :catchall_8a0
    move-exception v0

    move/from16 v30, v2

    move/from16 v29, v5

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v8, v19

    move/from16 v2, v23

    move-object/from16 v5, v32

    move v3, v4

    .end local v5    # "transformHint":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v23    # "isParentVisible":Z
    .end local p3    # "redrawNeeded":Z
    .local v2, "isParentVisible":Z
    .restart local v3    # "redrawNeeded":Z
    .restart local v29    # "transformHint":I
    .restart local v30    # "relayoutResult":I
    .restart local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v39    # "visibleFrame":Landroid/graphics/Rect;
    :goto_8b0
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1817
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1818
    if-eqz v3, :cond_8d3

    .line 1820
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-nez v4, :cond_8c5

    .line 1823
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mNeedToRedrawAfterVisible:Z

    .line 1828
    :cond_8c5
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v7, 0x7fffffff

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1830
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 1832
    :cond_8d3
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1833
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1834
    nop

    .end local v3    # "redrawNeeded":Z
    .end local v16    # "surfaceCreating":Z
    .end local v17    # "sizeChanged":Z
    .end local v18    # "insetsChanged":Z
    .end local v20    # "flagsChanged":Z
    .end local v21    # "x":I
    .end local v22    # "y":I
    .end local v31    # "typeChanged":Z
    .end local v34    # "myHeight":I
    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .end local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .end local p1    # "forceRelayout":Z
    .end local p2    # "forceReport":Z
    throw v0
    :try_end_8df
    .catch Landroid/os/RemoteException; {:try_start_84a .. :try_end_8df} :catch_8df

    .line 1835
    .end local v2    # "isParentVisible":Z
    .end local v6    # "windowInsets":Landroid/view/WindowInsets;
    .end local v10    # "h":I
    .end local v11    # "contentInsets":Landroid/graphics/Rect;
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "maxBounds":Landroid/graphics/Rect;
    .end local v14    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v24    # "outMaxBounds":Landroid/graphics/Rect;
    .end local v25    # "didSurface":Z
    .end local v26    # "w":I
    .end local v29    # "transformHint":I
    .end local v30    # "relayoutResult":I
    .end local v33    # "needChangeVisibility":Z
    .end local v38    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v39    # "visibleFrame":Landroid/graphics/Rect;
    .end local v44    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v45    # "isDesktopMode":Z
    .restart local v3    # "redrawNeeded":Z
    .restart local v16    # "surfaceCreating":Z
    .restart local v17    # "sizeChanged":Z
    .restart local v18    # "insetsChanged":Z
    .restart local v20    # "flagsChanged":Z
    .restart local v21    # "x":I
    .restart local v22    # "y":I
    .restart local v31    # "typeChanged":Z
    .restart local v34    # "myHeight":I
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    .restart local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .restart local p1    # "forceRelayout":Z
    .restart local p2    # "forceReport":Z
    :catch_8df
    move-exception v0

    move v4, v3

    goto/16 :goto_949

    .end local v3    # "redrawNeeded":Z
    .restart local p3    # "redrawNeeded":Z
    :catch_8e3
    move-exception v0

    goto/16 :goto_949

    .end local v36    # "fixedSize":Z
    .local v9, "fixedSize":Z
    :catch_8e6
    move-exception v0

    move/from16 v36, v9

    .end local v9    # "fixedSize":Z
    .restart local v36    # "fixedSize":Z
    goto/16 :goto_949

    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .local v8, "myWidth":I
    .restart local v9    # "fixedSize":Z
    :catch_8eb
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    .end local v8    # "myWidth":I
    .end local v9    # "fixedSize":Z
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    goto/16 :goto_949

    .end local v34    # "myHeight":I
    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .restart local v8    # "myWidth":I
    .restart local v9    # "fixedSize":Z
    .local v10, "myHeight":I
    :catch_8f2
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    .end local v8    # "myWidth":I
    .end local v9    # "fixedSize":Z
    .end local v10    # "myHeight":I
    .restart local v34    # "myHeight":I
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    goto :goto_949

    .end local v34    # "myHeight":I
    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .restart local v8    # "myWidth":I
    .restart local v9    # "fixedSize":Z
    .restart local v10    # "myHeight":I
    .local v11, "formatChanged":Z
    .local v15, "creating":Z
    :catch_8fa
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v46, v11

    move/from16 v47, v15

    .end local v8    # "myWidth":I
    .end local v9    # "fixedSize":Z
    .end local v10    # "myHeight":I
    .end local v11    # "formatChanged":Z
    .end local v15    # "creating":Z
    .restart local v34    # "myHeight":I
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    goto :goto_949

    .end local v31    # "typeChanged":Z
    .end local v34    # "myHeight":I
    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .restart local v8    # "myWidth":I
    .restart local v9    # "fixedSize":Z
    .restart local v10    # "myHeight":I
    .restart local v11    # "formatChanged":Z
    .local v14, "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_906
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v46, v11

    move/from16 v31, v14

    move/from16 v47, v15

    .end local v8    # "myWidth":I
    .end local v9    # "fixedSize":Z
    .end local v10    # "myHeight":I
    .end local v11    # "formatChanged":Z
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .restart local v31    # "typeChanged":Z
    .restart local v34    # "myHeight":I
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    goto :goto_949

    .end local v22    # "y":I
    .end local v31    # "typeChanged":Z
    .end local v34    # "myHeight":I
    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .restart local v8    # "myWidth":I
    .restart local v9    # "fixedSize":Z
    .restart local v10    # "myHeight":I
    .restart local v11    # "formatChanged":Z
    .local v13, "y":I
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_914
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v46, v11

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    .end local v8    # "myWidth":I
    .end local v9    # "fixedSize":Z
    .end local v10    # "myHeight":I
    .end local v11    # "formatChanged":Z
    .end local v13    # "y":I
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .restart local v22    # "y":I
    .restart local v31    # "typeChanged":Z
    .restart local v34    # "myHeight":I
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    goto :goto_949

    .end local v21    # "x":I
    .end local v22    # "y":I
    .end local v31    # "typeChanged":Z
    .end local v34    # "myHeight":I
    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .restart local v8    # "myWidth":I
    .restart local v9    # "fixedSize":Z
    .restart local v10    # "myHeight":I
    .restart local v11    # "formatChanged":Z
    .local v12, "x":I
    .restart local v13    # "y":I
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_924
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v46, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    .end local v8    # "myWidth":I
    .end local v9    # "fixedSize":Z
    .end local v10    # "myHeight":I
    .end local v11    # "formatChanged":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .restart local v21    # "x":I
    .restart local v22    # "y":I
    .restart local v31    # "typeChanged":Z
    .restart local v34    # "myHeight":I
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    goto :goto_949

    .end local v20    # "flagsChanged":Z
    .end local v21    # "x":I
    .end local v22    # "y":I
    .end local v31    # "typeChanged":Z
    .end local v34    # "myHeight":I
    .end local v35    # "myWidth":I
    .end local v36    # "fixedSize":Z
    .end local v46    # "formatChanged":Z
    .end local v47    # "creating":Z
    .local v5, "flagsChanged":Z
    .restart local v8    # "myWidth":I
    .restart local v9    # "fixedSize":Z
    .restart local v10    # "myHeight":I
    .restart local v11    # "formatChanged":Z
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "creating":Z
    :catch_936
    move-exception v0

    move/from16 v20, v5

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v46, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v31, v14

    move/from16 v47, v15

    .line 1841
    .end local v5    # "flagsChanged":Z
    .end local v8    # "myWidth":I
    .end local v9    # "fixedSize":Z
    .end local v10    # "myHeight":I
    .end local v11    # "formatChanged":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    .end local v14    # "typeChanged":Z
    .end local v15    # "creating":Z
    .end local p3    # "redrawNeeded":Z
    .local v4, "redrawNeeded":Z
    .restart local v20    # "flagsChanged":Z
    .restart local v21    # "x":I
    .restart local v22    # "y":I
    .restart local v31    # "typeChanged":Z
    .restart local v34    # "myHeight":I
    .restart local v35    # "myWidth":I
    .restart local v36    # "fixedSize":Z
    .restart local v46    # "formatChanged":Z
    .restart local v47    # "creating":Z
    :goto_949
    return-void
.end method
