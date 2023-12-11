.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;,
        Landroid/view/SurfaceView$SurfaceLifecycleStrategy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_POSITION:Z

.field public static final SURFACE_LIFECYCLE_DEFAULT:I = 0x0

.field public static final SURFACE_LIFECYCLE_FOLLOWS_ATTACHMENT:I = 0x2

.field public static final SURFACE_LIFECYCLE_FOLLOWS_VISIBILITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field private static final UPDATESURFACE_CALLED_BY_DETACHEDFROMWINDOW:I = 0x4

.field private static final UPDATESURFACE_CALLED_BY_PREDRAW:I = 0x8

.field private static final UPDATESURFACE_CALLED_BY_SCROLLCHANGED:I = 0x7

.field private static final UPDATESURFACE_CALLED_BY_SETFORMAT:I = 0x6

.field private static final UPDATESURFACE_CALLED_BY_SETFRAME:I = 0x5

.field private static final UPDATESURFACE_CALLED_BY_SETVISIBILITY:I = 0x3

.field private static final UPDATESURFACE_CALLED_BY_WINDOWSTOPPED:I = 0x1

.field private static final UPDATESURFACE_CALLED_BY_WINDOWVISIBILITYCHANGED:I = 0x2


# instance fields
.field mAlpha:F

.field private mAttachedToWindow:Z

.field mBackgroundColor:I

.field mBackgroundControl:Landroid/view/SurfaceControl;

.field private mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mClipSurfaceToBounds:Z

.field mCornerRadius:F

.field private mDisableBackgroundLayer:Z

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private final mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field private mIsWindowOpaque:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mParentSurfaceSequenceId:I

.field private mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final mRTLastReportedPosition:Landroid/graphics/Rect;

.field private mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedSubLayer:I

.field private mRequestedSurfaceLifecycleStrategy:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceControl;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field final mSurfaceControlLock:Ljava/lang/Object;

.field mSurfaceCreated:Z

.field private mSurfaceCreatedCount:I

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceLifecycleStrategy:I

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field private final mSyncGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/SurfaceSyncGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpRect:Landroid/graphics/Rect;

.field mTransformHint:I

.field private mUpdateSurfaceCalledBy:I

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method public static synthetic $r8$lambda$5Gc4ju_bU5_Ux5pvIM8ETQNADiQ(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZlsWXNwcvpkKCe5Y1bZoq5lAl30(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method public static synthetic $r8$lambda$cm3nmzErr-srXoT_KjIYQgdhFN0(Landroid/view/SurfaceView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rPUhx7UxuVQ6YOrJ1Nm66AE9Ock(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Landroid/view/SurfaceView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmUpdateSurfaceCalledBy(Landroid/view/SurfaceView;I)V
    .registers 2

    iput p1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG_POSITION()Z
    .registers 1

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 174
    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 357
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 364
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "disableBackgroundLayer"    # Z

    .line 370
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 182
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 184
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 188
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 201
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 208
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 210
    iput v1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 212
    iput v1, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 219
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    .line 220
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 224
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 225
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 227
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 241
    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 242
    iput v1, p0, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    .line 244
    const-string v2, "SurfaceView"

    iput-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 246
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 249
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 262
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 263
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 264
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 265
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 266
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 268
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 271
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 277
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 282
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 284
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 286
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 291
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 292
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 296
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 297
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 298
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 299
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 300
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 302
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 307
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 310
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 311
    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 316
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 318
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    .line 324
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 331
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 336
    new-instance v1, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 339
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 348
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    .line 1617
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 1695
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1760
    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 371
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 372
    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 376
    return-void
.end method

.method private applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 1582
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1583
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_49

    .line 1586
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aOrMT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1587
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1588
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1586
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_53

    .line 1596
    :cond_49
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v2, "aOrMT: t.apply"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1601
    :goto_53
    return-void
.end method

.method private applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2192
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2193
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_a

    .line 2195
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_d

    .line 2197
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2199
    :goto_d
    return-void
.end method

.method private clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 659
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v8

    .line 660
    .local v8, "alpha":F
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    .line 661
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 662
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1f

    .line 663
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 665
    :cond_1f
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v6, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v0, p1

    move v5, v6

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    goto :goto_4f

    .line 675
    :cond_3c
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    .line 677
    :goto_4f
    return-void
.end method

.method private copySurface(ZZ)V
    .registers 5
    .param p1, "surfaceControlCreated"    # Z
    .param p2, "bufferSizeChanged"    # Z

    .line 1412
    if-eqz p1, :cond_9

    .line 1413
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    .line 1416
    :cond_9
    if-eqz p2, :cond_26

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_26

    .line 1423
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_26

    .line 1424
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 1427
    :cond_26
    return-void
.end method

.method private createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1463
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_2b

    .line 1464
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1465
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1466
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1467
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBoundsLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1468
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1469
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1470
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1473
    :cond_2b
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_72

    .line 1474
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(BLAST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1475
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1476
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1477
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1478
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1479
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1480
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1481
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_93

    .line 1485
    :cond_72
    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7a

    move v4, v2

    goto :goto_7b

    :cond_7a
    move v4, v3

    .line 1486
    :goto_7b
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_89

    move v5, v2

    goto :goto_8a

    :cond_89
    move v5, v3

    .line 1487
    :goto_8a
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1488
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1491
    :goto_93
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d1

    .line 1492
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1493
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1494
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1495
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1497
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1498
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1499
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1504
    :cond_d1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_d8

    .line 1505
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1507
    :cond_d8
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1508
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1510
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1511
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1512
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 1513
    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    .line 1699
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1700
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 1701
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1702
    monitor-exit v0

    .line 1703
    return-object v1

    .line 1702
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    .line 1332
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v0, "surfaceSyncGroup":Landroid/window/SurfaceSyncGroup;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1334
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1345
    return-void
.end method

.method private handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .line 1348
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1349
    .local v0, "surfaceSyncGroup":Landroid/window/SurfaceSyncGroup;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1350
    :try_start_c
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1351
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1b

    .line 1353
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1361
    return-void

    .line 1351
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2104
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 2105
    .local v0, "connection":Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2106
    return-void

    .line 2108
    :cond_d
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 2109
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    .line 2108
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    .line 2111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 2112
    return-void
.end method

.method private isAboveParent()Z
    .registers 2

    .line 1730
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .registers 5
    .param p1, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p2, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;

    .line 1335
    const/4 v0, 0x0

    .line 1336
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_c

    .line 1337
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    .line 1338
    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1341
    :cond_c
    invoke-virtual {p2, v0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1342
    invoke-virtual {p2}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1343
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1344
    return-void
.end method

.method private synthetic lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V
    .registers 4
    .param p1, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;

    .line 1354
    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1355
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1356
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 1357
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1358
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1359
    return-void

    .line 1356
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private synthetic lambda$new$0()Z
    .registers 3

    .line 254
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 256
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 258
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 259
    return v1
.end method

.method private notifySurfaceDestroyed()V
    .registers 6

    .line 2115
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2116
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " surfaceDestroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :cond_28
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2121
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surfaceDestroyed callback.size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    array-length v1, v0

    const/4 v2, 0x0

    :goto_63
    if-ge v2, v1, :cond_6f

    aget-object v3, v0, v2

    .line 2126
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2125
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 2139
    :cond_6f
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2140
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 2143
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_7c
    return-void
.end method

.method private onDrawFinished()V
    .registers 3

    .line 1516
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finishedDrawing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_20
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1522
    return-void
.end method

.method private performDrawFinished()V
    .registers 2

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 496
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_f

    .line 497
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 498
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 500
    :cond_f
    return-void
.end method

.method private performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZLandroid/view/SurfaceControl$Transaction;)Z
    .registers 22
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p3, "creating"    # Z
    .param p4, "sizeChanged"    # Z
    .param p5, "hintChanged"    # Z
    .param p6, "relativeZChanged"    # Z
    .param p7, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 938
    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p7

    const/4 v11, 0x0

    .line 940
    .local v11, "realSizeChanged":Z
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 942
    :try_start_b
    invoke-direct {p0}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_15

    move v0, v12

    goto :goto_16

    :cond_15
    move v0, v13

    :goto_16
    iput-boolean v0, v8, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 944
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_3e

    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Cur surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_3e
    if-eqz p3, :cond_4a

    .line 953
    invoke-direct {p0, v10}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 954
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_4a

    .line 955
    invoke-direct {p0, v10, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 958
    :cond_4a
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, v8, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    .line 962
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_65

    .line 963
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_60

    .line 964
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_65

    .line 966
    :cond_60
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 970
    :cond_65
    :goto_65
    invoke-direct {p0, v10}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 971
    invoke-direct {p0, v10}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 972
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 973
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 974
    .local v0, "alpha":F
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 977
    .end local v0    # "alpha":F
    :cond_7a
    if-eqz p6, :cond_8c

    .line 978
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_89

    .line 981
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 983
    :cond_89
    invoke-direct {p0, v10}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 986
    :cond_8c
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 987
    if-nez p4, :cond_97

    if-eqz p5, :cond_9c

    :cond_97
    if-nez p3, :cond_9c

    .line 988
    invoke-direct {p0, v10}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 990
    :cond_9c
    if-nez p4, :cond_a6

    if-nez p3, :cond_a6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_199

    .line 996
    :cond_a6
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_b6

    iget-object v0, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_b6

    .line 997
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_bf

    .line 999
    :cond_b6
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1004
    :goto_bf
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pST: sr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1012
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1015
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    goto :goto_131

    .line 1017
    :cond_109
    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1020
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1021
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1017
    move-object v1, p0

    move-object/from16 v2, p7

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1023
    :goto_131
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    if-eqz v0, :cond_199

    .line 1024
    iget-object v0, v8, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v1, "%d performSurfaceTransaction %s position = [%d, %d, %d, %d] surfaceSize = %dx%d"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 1027
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    .line 1028
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_150

    const-string v3, "RenderWorker"

    goto :goto_152

    :cond_150
    const-string v3, "UI Thread"

    :goto_152
    aput-object v3, v2, v12

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 1029
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1030
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 1024
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_199
    invoke-direct {p0, v10}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1034
    invoke-virtual {p0, v13}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 1036
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->left:I

    .line 1037
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->top:I

    .line 1038
    if-nez v9, :cond_1b6

    .line 1039
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1040
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1ce

    .line 1042
    :cond_1b6
    iget v0, v9, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 1043
    .local v0, "appInvertedScale":F
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1044
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1046
    .end local v0    # "appInvertedScale":F
    :goto_1ce
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 1047
    .local v0, "surfaceWidth":I
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1048
    .local v1, "surfaceHeight":I
    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v2, v0, :cond_1e0

    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v2, v1, :cond_1df

    goto :goto_1e0

    :cond_1df
    move v12, v13

    :cond_1e0
    :goto_1e0
    move v11, v12

    .line 1050
    iput v0, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 1051
    iput v1, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1e5
    .catchall {:try_start_b .. :try_end_1e5} :catchall_1ec

    .line 1053
    .end local v0    # "surfaceWidth":I
    .end local v1    # "surfaceHeight":I
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1054
    nop

    .line 1056
    return v11

    .line 1053
    :catchall_1ec
    move-exception v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1054
    throw v0
.end method

.method private redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "callbacksCollected"    # Ljava/lang/Runnable;

    .line 1365
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {v0, p2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 1366
    .local v0, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 1367
    return-void
.end method

.method private releaseSurfaces(Z)V
    .registers 9
    .param p1, "releaseSurfacePackage"    # Z

    .line 881
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 882
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 883
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_c
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 885
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 886
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 889
    :cond_16
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 892
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 894
    .local v3, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v4, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "releaseSurfaces: viewRoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v6

    goto :goto_37

    .line 895
    :cond_34
    const-string/jumbo v6, "null"

    :goto_37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 894
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4b

    .line 899
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 900
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 902
    :cond_4b
    iget-object v4, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_54

    .line 903
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 904
    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 906
    :cond_54
    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_5d

    .line 907
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 908
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 911
    :cond_5d
    if-eqz p1, :cond_68

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v4, :cond_68

    .line 912
    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 913
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 916
    :cond_68
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 917
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "viewRoot":Landroid/view/ViewRootImpl;
    monitor-exit v0

    .line 918
    return-void

    .line 917
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_c .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method private reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2070
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2071
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 2074
    :cond_d
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2075
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2076
    return-void

    .line 2072
    :cond_1a
    :goto_1a
    return-void
.end method

.method private replacePositionUpdateListener(II)V
    .registers 5
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .line 928
    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_b

    .line 929
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 931
    :cond_b
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 932
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 933
    return-void
.end method

.method private requestEmbeddedFocus(Z)V
    .registers 7
    .param p1, "gainFocus"    # Z

    .line 2170
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2171
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_63

    if-nez v0, :cond_b

    goto :goto_63

    .line 2175
    :cond_b
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    const-string v3, "SurfaceView"

    if-ne v1, v2, :cond_39

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_39

    .line 2178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEmbeddedFocus: caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const/4 p1, 0x0

    .line 2183
    :cond_39
    :try_start_39
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2184
    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputToken()Landroid/os/IBinder;

    move-result-object v4

    .line 2183
    invoke-interface {v1, v2, v4, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_47

    .line 2188
    goto :goto_62

    .line 2185
    :catch_47
    move-exception v1

    .line 2186
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Exception requesting focus on embedded window"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2189
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_62
    return-void

    .line 2172
    :cond_63
    :goto_63
    return-void
.end method

.method private requiresSurfaceControlCreation(ZZ)Z
    .registers 7
    .param p1, "formatChanged"    # Z
    .param p2, "visibleChanged"    # Z

    .line 1060
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    .line 1061
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_12

    :cond_d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    return v2

    .line 1064
    :cond_14
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    if-nez p1, :cond_1c

    if-eqz p2, :cond_21

    :cond_1c
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    return v2
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1707
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1708
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    .line 1709
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1711
    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1713
    :goto_17
    return-void
.end method

.method private setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1430
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1431
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_16

    .line 1432
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1435
    :cond_16
    return-void
.end method

.method private setWindowStopped(Z)V
    .registers 6
    .param p1, "stopped"    # Z

    .line 393
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 394
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 397
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 398
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_4b

    .line 399
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowStopped("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_4b
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 404
    return-void
.end method

.method private surfaceShouldExist()Z
    .registers 5

    .line 1068
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    .line 1070
    .local v0, "respectVisibility":Z
    :goto_a
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v1, :cond_16

    if-nez v0, :cond_15

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :cond_16
    :goto_16
    return v2
.end method

.method private updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 874
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 875
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 876
    .local v0, "colorComponents":[F
    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 877
    return-object p1
.end method

.method private updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 856
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 857
    return-void

    .line 859
    :cond_5
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_34

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v1, :cond_34

    .line 862
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 863
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2e

    .line 864
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_37

    .line 866
    :cond_2e
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_37

    .line 869
    :cond_34
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 871
    :goto_37
    return-void
.end method

.method private updateOpaqueFlag()V
    .registers 2

    .line 848
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 849
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_15

    .line 851
    :cond_f
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 853
    :goto_15
    return-void
.end method

.method private updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2015
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2016
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_7

    .line 2018
    return-void

    .line 2020
    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2021
    .local v1, "viewRootControl":Landroid/view/SurfaceControl;
    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2022
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2023
    return-void
.end method

.method private updateRequestedVisibility()V
    .registers 2

    .line 389
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 390
    return-void
.end method


# virtual methods
.method public applyTransactionToFrame(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2226
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2227
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_15

    .line 2231
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->getLastAcquiredFrameNum()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 2232
    .local v1, "frameNumber":J
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v3, p1, v1, v2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 2233
    .end local v1    # "frameNumber":J
    monitor-exit v0

    .line 2234
    return-void

    .line 2228
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceView;
    .end local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    throw v1

    .line 2233
    .restart local p0    # "this":Landroid/view/SurfaceView;
    .restart local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 604
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 606
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 608
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 611
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 612
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 592
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_13

    .line 594
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_13

    .line 596
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 599
    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 600
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13
    .param p1, "region"    # Landroid/graphics/Region;

    .line 565
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_48

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_b

    goto :goto_48

    .line 569
    :cond_b
    const/4 v0, 0x1

    .line 570
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_17

    .line 572
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_3e

    .line 573
    :cond_17
    if-eqz p1, :cond_3e

    .line 574
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 575
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 576
    .local v2, "h":I
    if-lez v1, :cond_3e

    if-lez v2, :cond_3e

    .line 577
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 579
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    .line 580
    .local v4, "l":I
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 581
    .local v3, "t":I
    add-int v8, v4, v1

    add-int v9, v3, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 584
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "t":I
    .end local v4    # "l":I
    :cond_3e
    :goto_3e
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 585
    const/4 v0, 0x0

    .line 587
    :cond_47
    return v0

    .line 566
    .end local v0    # "opaque":Z
    :cond_48
    :goto_48
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 703
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getHostToken()Landroid/os/IBinder;
    .registers 3

    .line 1974
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1975
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_8

    .line 1976
    const/4 v1, 0x0

    return-object v1

    .line 1978
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public getImportantForAccessibility()I
    .registers 3

    .line 2092
    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 2096
    .local v0, "mode":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    if-eqz v0, :cond_11

    .line 2098
    :cond_10
    return v0

    .line 2100
    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .line 1315
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1316
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_9

    const-string v1, "detached"

    goto :goto_11

    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1317
    .local v1, "viewRootName":Ljava/lang/String;
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1964
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceRenderPosition()Landroid/graphics/Rect;
    .registers 2

    .line 1578
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedSize()Z
    .registers 3

    .line 1726
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public isZOrderedOnTop()Z
    .registers 2

    .line 752
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 408
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 410
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 413
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_15

    move v0, v2

    :cond_15
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 414
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 416
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 417
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 418
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_35

    .line 419
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 420
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 421
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 422
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 424
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_35
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .line 504
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 510
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 511
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 514
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 515
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_20

    .line 516
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 517
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 518
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 519
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 521
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_20
    sget-boolean v2, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Detaching SV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_40
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 526
    const/4 v2, 0x4

    iput v2, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 528
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 531
    iget-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "onDetachedFromWindow: tryReleaseSurfaces()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 536
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 537
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 538
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2165
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2166
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2167
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2081
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2082
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2083
    return-void

    .line 2087
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    .line 2088
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 542
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    .line 543
    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_e

    .line 544
    :cond_a
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_e
    nop

    .line 545
    .local v0, "width":I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_18

    .line 546
    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1c

    .line 547
    :cond_18
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1c
    nop

    .line 548
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 549
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 4
    .param p1, "alpha"    # I

    .line 488
    iget v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 489
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 491
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .registers 15
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "positionLeft"    # I
    .param p4, "positionTop"    # I
    .param p5, "postScaleX"    # F
    .param p6, "postScaleY"    # F

    .line 1542
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSSPAndSRT: pl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1547
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1549
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 428
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 429
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 430
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 432
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 433
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 434
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_53

    .line 435
    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowVisibilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 436
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_53
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 440
    return-void
.end method

.method public requestUpdateSurfacePositionAndScale()V
    .registers 9

    .line 1553
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1554
    return-void

    .line 1558
    :cond_5
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rUSPAndS: sr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1563
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1566
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1567
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 1563
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1568
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1569
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1570
    return-void
.end method

.method public semResetRenderNodePosition()V
    .registers 1

    .line 1614
    return-void
.end method

.method public setAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .line 479
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 480
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setAlpha: alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_24
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 484
    return-void
.end method

.method public setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2049
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2050
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 2051
    .local v0, "lastSc":Landroid/view/SurfaceControl;
    :goto_b
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2052
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_24

    .line 2053
    if-eqz v0, :cond_1e

    .line 2054
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2055
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 2057
    :cond_1e
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2058
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2060
    :cond_24
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2062
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2063
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2065
    :cond_30
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 2066
    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 628
    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 630
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_c

    goto :goto_45

    .line 636
    :cond_c
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 637
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 640
    :cond_1c
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_28

    .line 641
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_32

    .line 643
    :cond_28
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 645
    :goto_32
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 646
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 647
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 648
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 649
    return-void

    .line 631
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_45
    :goto_45
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4
    .param p1, "cornerRadius"    # F

    .line 687
    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    .line 688
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    .line 689
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    .line 690
    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 691
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    :cond_1e
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 694
    return-void
.end method

.method public setEnableSurfaceClipping(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 622
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    .line 623
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 624
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 555
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 557
    .local v0, "result":Z
    const/4 v1, 0x5

    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 559
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 560
    return v0
.end method

.method public setResizeBackgroundColor(I)V
    .registers 3
    .param p1, "bgColor"    # I

    .line 1741
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1742
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1743
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1744
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1745
    return-void
.end method

.method public setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bgColor"    # I

    .line 1753
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1754
    return-void

    .line 1756
    :cond_5
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1757
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1758
    return-void
.end method

.method public setSecure(Z)V
    .registers 7
    .param p1, "isSecure"    # Z

    .line 812
    if-eqz p1, :cond_42

    .line 815
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 816
    .local v0, "context":Landroid/content/Context;
    nop

    .line 817
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 819
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dexonpc_connection_state"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    nop

    :goto_25
    move v1, v2

    .line 821
    .local v1, "isDexForPcEnabled":Z
    if-eqz v1, :cond_3b

    .line 822
    const-class v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 823
    .local v2, "dm":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 827
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "isDexForPcEnabled":Z
    .end local v2    # "dm":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    :cond_3b
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_48

    .line 829
    :cond_42
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 831
    :goto_48
    return-void
.end method

.method public setSurfaceLifecycle(I)V
    .registers 2
    .param p1, "lifecycleStrategy"    # I

    .line 843
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 844
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 845
    return-void
.end method

.method public setUseAlpha()V
    .registers 1

    .line 474
    return-void
.end method

.method public setVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 444
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 446
    iget-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    .line 447
    .local v0, "newRequestedVisible":Z
    :goto_18
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_1f

    .line 454
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 456
    :cond_1f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 458
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    .line 460
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 461
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .registers 3
    .param p1, "isMediaOverlay"    # Z

    .line 718
    if-eqz p1, :cond_4

    .line 719
    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 720
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .registers 4
    .param p1, "onTop"    # Z

    .line 741
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 743
    .local v0, "allowDynamicChange":Z
    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 744
    return-void
.end method

.method public setZOrderedOnTop(ZZ)Z
    .registers 6
    .param p1, "onTop"    # Z
    .param p2, "allowDynamicChange"    # Z

    .line 773
    if-eqz p1, :cond_4

    .line 774
    const/4 v0, 0x1

    .local v0, "subLayer":I
    goto :goto_5

    .line 776
    .end local v0    # "subLayer":I
    :cond_4
    const/4 v0, -0x2

    .line 778
    .restart local v0    # "subLayer":I
    :goto_5
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_b

    .line 779
    return v2

    .line 781
    :cond_b
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 783
    if-nez p2, :cond_10

    .line 784
    return v2

    .line 786
    :cond_10
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 787
    return v2

    .line 789
    :cond_16
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 790
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_1d

    .line 791
    return v2

    .line 794
    :cond_1d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 795
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 796
    return v2
.end method

.method public surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1988
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1989
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 2

    .line 1998
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1999
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    .line 2000
    return-void
.end method

.method public surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2009
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    .line 2010
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 2012
    :cond_b
    return-void
.end method

.method public syncNextFrame(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2205
    .local p1, "t":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    .line 2206
    return-void
.end method

.method updateEmbeddedAccessibilityMatrix(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 2146
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2147
    return-void

    .line 2149
    :cond_9
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2154
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2155
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2156
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2157
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 2158
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2157
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2159
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    .line 2160
    return-void
.end method

.method protected updateSurface()V
    .registers 43

    .line 1075
    move-object/from16 v9, p0

    const-string v10, " h="

    const-string v11, " w="

    iget-boolean v0, v9, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_2b

    .line 1076
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 1077
    iget-object v0, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateSurface: has no frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_2a
    return-void

    .line 1081
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1083
    .local v12, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v12, :cond_32

    .line 1084
    return-void

    .line 1087
    :cond_32
    iget-object v0, v12, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v13, 0x0

    if-eqz v0, :cond_745

    iget-object v0, v12, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_43

    move-object/from16 v26, v12

    goto/16 :goto_747

    .line 1098
    :cond_43
    iget-object v14, v12, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1099
    .local v14, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    if-eqz v14, :cond_4c

    .line 1100
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v14}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 1103
    :cond_4c
    iget v0, v9, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1104
    .local v0, "myWidth":I
    if-gtz v0, :cond_54

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_54
    move v15, v0

    .line 1105
    .end local v0    # "myWidth":I
    .local v15, "myWidth":I
    iget v0, v9, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1106
    .local v0, "myHeight":I
    if-gtz v0, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_5d
    move v8, v0

    .line 1108
    .end local v0    # "myHeight":I
    .local v8, "myHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v7

    .line 1109
    .local v7, "alpha":F
    iget v0, v9, Landroid/view/SurfaceView;->mFormat:I

    iget v1, v9, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v0, v1, :cond_6a

    const/4 v0, 0x1

    goto :goto_6b

    :cond_6a
    move v0, v13

    :goto_6b
    move v5, v0

    .line 1110
    .local v5, "formatChanged":Z
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v1, v9, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_74

    const/4 v0, 0x1

    goto :goto_75

    :cond_74
    move v0, v13

    :goto_75
    move v4, v0

    .line 1111
    .local v4, "visibleChanged":Z
    iget v0, v9, Landroid/view/SurfaceView;->mAlpha:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_7e

    const/4 v0, 0x1

    goto :goto_7f

    :cond_7e
    move v0, v13

    :goto_7f
    move v3, v0

    .line 1112
    .local v3, "alphaChanged":Z
    invoke-direct {v9, v5, v4}, Landroid/view/SurfaceView;->requiresSurfaceControlCreation(ZZ)Z

    move-result v2

    .line 1113
    .local v2, "creating":Z
    iget v0, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v15, :cond_8f

    iget v0, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v8, :cond_8d

    goto :goto_8f

    :cond_8d
    move v0, v13

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 v0, 0x1

    :goto_90
    move v1, v0

    .line 1114
    .local v1, "sizeChanged":Z
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v6, v9, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v6, :cond_99

    const/4 v0, 0x1

    goto :goto_9a

    :cond_99
    move v0, v13

    :goto_9a
    move/from16 v17, v0

    .line 1117
    .local v17, "windowVisibleChanged":Z
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->isWindowOpaque()Z

    move-result v6

    .line 1118
    .local v6, "isWindowOpaque":Z
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    if-eq v0, v6, :cond_a6

    const/4 v0, 0x1

    goto :goto_a7

    :cond_a6
    move v0, v13

    :goto_a7
    move/from16 v18, v0

    .line 1119
    .local v18, "windowOpacityChanged":Z
    if-eqz v18, :cond_ad

    .line 1120
    iput-boolean v6, v9, Landroid/view/SurfaceView;->mIsWindowOpaque:Z

    .line 1124
    :cond_ad
    iget-object v0, v9, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v9, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 1125
    iget v0, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move/from16 v19, v6

    .end local v6    # "isWindowOpaque":Z
    .local v19, "isWindowOpaque":Z
    iget-object v6, v9, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v20, v10

    aget v10, v6, v13

    if-ne v0, v10, :cond_c8

    iget v0, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    const/4 v10, 0x1

    aget v6, v6, v10

    if-eq v0, v6, :cond_c6

    goto :goto_c8

    :cond_c6
    move v0, v13

    goto :goto_c9

    :cond_c8
    :goto_c8
    const/4 v0, 0x1

    :goto_c9
    move v10, v0

    .line 1127
    .local v10, "positionChanged":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v6, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v0, v6, :cond_e5

    .line 1128
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v6, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v0, v6, :cond_e3

    goto :goto_e5

    :cond_e3
    move v0, v13

    goto :goto_e6

    :cond_e5
    :goto_e5
    const/4 v0, 0x1

    :goto_e6
    move/from16 v21, v0

    .line 1129
    .local v21, "layoutSizeChanged":Z
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v6, v9, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v6, :cond_f6

    iget-boolean v0, v9, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_f6

    const/4 v0, 0x1

    goto :goto_f7

    :cond_f6
    move v0, v13

    :goto_f7
    move v6, v0

    .line 1131
    .local v6, "hintChanged":Z
    iget v0, v9, Landroid/view/SurfaceView;->mSubLayer:I

    iget v13, v9, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq v0, v13, :cond_100

    const/4 v0, 0x1

    goto :goto_101

    :cond_100
    const/4 v0, 0x0

    :goto_101
    move v13, v0

    .line 1132
    .local v13, "relativeZChanged":Z
    iget v0, v9, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    move-object/from16 v23, v11

    iget v11, v9, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    if-eq v0, v11, :cond_10c

    const/4 v0, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v0, 0x0

    :goto_10d
    move v11, v0

    .line 1135
    .local v11, "surfaceLifecycleStrategyChanged":Z
    if-nez v2, :cond_145

    if-nez v5, :cond_145

    if-nez v1, :cond_145

    if-nez v4, :cond_145

    if-nez v3, :cond_145

    if-nez v17, :cond_145

    if-nez v10, :cond_145

    if-nez v21, :cond_145

    if-nez v6, :cond_145

    if-nez v13, :cond_145

    iget-boolean v0, v9, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_145

    if-nez v11, :cond_145

    if-eqz v18, :cond_12b

    goto :goto_145

    :cond_12b
    move/from16 v34, v3

    move/from16 v27, v5

    move/from16 v37, v7

    move/from16 v24, v10

    move/from16 v28, v11

    move-object/from16 v26, v12

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move v7, v2

    move v11, v4

    move/from16 v19, v6

    move v13, v8

    move v8, v1

    goto/16 :goto_744

    .line 1141
    :cond_145
    :goto_145
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    move/from16 v24, v10

    .end local v10    # "positionChanged":Z
    .local v24, "positionChanged":Z
    const-string v10, "SurfaceView"

    if-eqz v0, :cond_1fa

    move/from16 v25, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v14

    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v26, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " Changes: creating="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " format="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " size="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " visible="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v27, v5

    .end local v5    # "formatChanged":Z
    .local v27, "formatChanged":Z
    const-string v5, " alpha="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hint="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " left="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v14, v9, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v22, 0x0

    aget v14, v14, v22

    if-eq v5, v14, :cond_1b6

    const/4 v5, 0x1

    goto :goto_1b7

    :cond_1b6
    const/4 v5, 0x0

    :goto_1b7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " top="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v14, v9, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v16, 0x1

    aget v14, v14, v16

    if-eq v5, v14, :cond_1cd

    const/4 v5, 0x1

    goto :goto_1ce

    :cond_1cd
    const/4 v5, 0x0

    :goto_1ce
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " z="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " attached="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, v9, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " lifecycleStrategy="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_200

    .end local v26    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v27    # "formatChanged":Z
    .restart local v5    # "formatChanged":Z
    .restart local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :cond_1fa
    move/from16 v25, v0

    move/from16 v27, v5

    move-object/from16 v26, v14

    .line 1154
    .end local v5    # "formatChanged":Z
    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v26    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v27    # "formatChanged":Z
    :goto_200
    :try_start_200
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v9, Landroid/view/SurfaceView;->mVisible:Z

    .line 1155
    iget-object v0, v9, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v14, v0, v5

    iput v14, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 1156
    const/4 v14, 0x1

    aget v0, v0, v14

    iput v0, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 1157
    iput v15, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 1158
    iput v8, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 1159
    iget v0, v9, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v9, Landroid/view/SurfaceView;->mFormat:I

    .line 1160
    iput v7, v9, Landroid/view/SurfaceView;->mAlpha:F

    .line 1161
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v9, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 1162
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, v9, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1163
    iget v0, v9, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    iput v0, v9, Landroid/view/SurfaceView;->mSubLayer:I

    .line 1165
    iget v0, v9, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    move v5, v0

    .line 1166
    .local v5, "previousSurfaceLifecycleStrategy":I
    iget v0, v9, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    iput v0, v9, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 1168
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v14, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v14, v0, Landroid/graphics/Rect;->left:I

    .line 1169
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v14, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 1170
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v14, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v28

    add-int v14, v14, v28

    iput v14, v0, Landroid/graphics/Rect;->right:I

    .line 1171
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v14, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v28

    add-int v14, v14, v28

    iput v14, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_253} :catch_6ce

    .line 1172
    if-eqz v26, :cond_293

    .line 1173
    :try_start_255
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_257} :catch_278

    move-object/from16 v14, v26

    .end local v26    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :try_start_259
    invoke-virtual {v14, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_25c} :catch_25d

    goto :goto_295

    .line 1301
    .end local v5    # "previousSurfaceLifecycleStrategy":I
    :catch_25d
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v28, v11

    move-object/from16 v26, v12

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move-object/from16 v3, v23

    move v7, v2

    move v11, v4

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v6, v20

    move v8, v1

    goto/16 :goto_6e7

    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v26    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_278
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v28, v11

    move/from16 v38, v13

    move/from16 v16, v19

    move-object/from16 v3, v23

    move-object/from16 v29, v26

    move v7, v2

    move v11, v4

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v26, v12

    move-object/from16 v6, v20

    move v8, v1

    .end local v26    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto/16 :goto_6e7

    .line 1172
    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v5    # "previousSurfaceLifecycleStrategy":I
    .restart local v26    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :cond_293
    move-object/from16 v14, v26

    .line 1176
    .end local v26    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :goto_295
    :try_start_295
    iget-object v0, v12, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 1177
    .local v26, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_29d} :catch_6b4

    move/from16 v28, v11

    move-object/from16 v11, v26

    move/from16 v26, v4

    .end local v4    # "visibleChanged":Z
    .local v11, "surfaceInsets":Landroid/graphics/Rect;
    .local v26, "visibleChanged":Z
    .local v28, "surfaceLifecycleStrategyChanged":Z
    :try_start_2a3
    iget v4, v11, Landroid/graphics/Rect;->left:I

    move/from16 v29, v5

    .end local v5    # "previousSurfaceLifecycleStrategy":I
    .local v29, "previousSurfaceLifecycleStrategy":I
    iget v5, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1180
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2b1} :catch_69b

    move-object v5, v0

    .line 1181
    .local v5, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v2, :cond_2fc

    .line 1182
    :try_start_2b4
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SurfaceView["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v9, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "name":Ljava/lang/String;
    invoke-direct {v9, v12, v0, v5}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2e1} :catch_2e2

    .end local v0    # "name":Ljava/lang/String;
    goto :goto_301

    .line 1301
    .end local v5    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v29    # "previousSurfaceLifecycleStrategy":I
    :catch_2e2
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move-object/from16 v3, v23

    move/from16 v11, v26

    move v7, v2

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v26, v12

    move-object/from16 v6, v20

    move v8, v1

    goto/16 :goto_6e7

    .line 1188
    .restart local v5    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v29    # "previousSurfaceLifecycleStrategy":I
    :cond_2fc
    :try_start_2fc
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2fe
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_2fe} :catch_69b

    if-nez v0, :cond_301

    .line 1189
    return-void

    .line 1188
    :cond_301
    :goto_301
    nop

    .line 1192
    if-nez v1, :cond_317

    if-nez v2, :cond_317

    if-nez v6, :cond_317

    :try_start_308
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v0, :cond_310

    iget-boolean v0, v9, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_317

    :cond_310
    if-nez v3, :cond_317

    if-eqz v13, :cond_315

    goto :goto_317

    :cond_315
    const/4 v0, 0x0

    goto :goto_318

    :cond_317
    :goto_317
    const/4 v0, 0x1

    :goto_318
    move/from16 v30, v0

    .line 1194
    .local v30, "redrawNeeded":Z
    if-eqz v30, :cond_32a

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_32a

    .line 1195
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v0
    :try_end_326
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_326} :catch_2e2

    if-eqz v0, :cond_32a

    const/4 v0, 0x1

    goto :goto_32b

    :cond_32a
    const/4 v0, 0x0

    :goto_32b
    move/from16 v31, v0

    .line 1196
    .local v31, "shouldSyncBuffer":Z
    const/4 v0, 0x0

    .line 1197
    .local v0, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    if-eqz v31, :cond_39f

    .line 1198
    :try_start_330
    new-instance v4, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    move-object/from16 v32, v0

    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v32, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback-IA;)V

    move-object v0, v4

    .line 1199
    .end local v32    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    iget-object v4, v9, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1201
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_33e} :catch_385

    move/from16 v33, v1

    .end local v1    # "sizeChanged":Z
    .local v33, "sizeChanged":Z
    :try_start_340
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    :try_end_345
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_345} :catch_36a

    .line 1199
    move/from16 v34, v2

    const/4 v2, 0x0

    .end local v2    # "creating":Z
    .local v34, "creating":Z
    :try_start_348
    invoke-virtual {v4, v2, v1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z
    :try_end_34b
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_34b} :catch_34e

    move-object v4, v0

    goto/16 :goto_3a7

    .line 1301
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v5    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v29    # "previousSurfaceLifecycleStrategy":I
    .end local v30    # "redrawNeeded":Z
    .end local v31    # "shouldSyncBuffer":Z
    :catch_34e
    move-exception v0

    move/from16 v37, v7

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move/from16 v11, v26

    move/from16 v7, v34

    move/from16 v34, v3

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v26, v12

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v8, v33

    goto/16 :goto_6e7

    .end local v34    # "creating":Z
    .restart local v2    # "creating":Z
    :catch_36a
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move-object/from16 v3, v23

    move/from16 v11, v26

    move v7, v2

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v26, v12

    move-object/from16 v6, v20

    move/from16 v8, v33

    .end local v2    # "creating":Z
    .restart local v34    # "creating":Z
    goto/16 :goto_6e7

    .end local v33    # "sizeChanged":Z
    .end local v34    # "creating":Z
    .restart local v1    # "sizeChanged":Z
    .restart local v2    # "creating":Z
    :catch_385
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move-object/from16 v3, v23

    move/from16 v11, v26

    move v7, v2

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v26, v12

    move-object/from16 v6, v20

    move v8, v1

    .end local v1    # "sizeChanged":Z
    .end local v2    # "creating":Z
    .restart local v33    # "sizeChanged":Z
    .restart local v34    # "creating":Z
    goto/16 :goto_6e7

    .line 1197
    .end local v33    # "sizeChanged":Z
    .end local v34    # "creating":Z
    .restart local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v1    # "sizeChanged":Z
    .restart local v2    # "creating":Z
    .restart local v5    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v29    # "previousSurfaceLifecycleStrategy":I
    .restart local v30    # "redrawNeeded":Z
    .restart local v31    # "shouldSyncBuffer":Z
    :cond_39f
    move-object/from16 v32, v0

    move/from16 v33, v1

    move/from16 v34, v2

    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v1    # "sizeChanged":Z
    .end local v2    # "creating":Z
    .restart local v32    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v33    # "sizeChanged":Z
    .restart local v34    # "creating":Z
    move-object/from16 v4, v32

    .line 1204
    .end local v32    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v4, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :goto_3a7
    move/from16 v2, v33

    .end local v33    # "sizeChanged":Z
    .local v2, "sizeChanged":Z
    move-object/from16 v1, p0

    move/from16 v32, v34

    .end local v2    # "sizeChanged":Z
    .end local v34    # "creating":Z
    .local v32, "creating":Z
    .restart local v33    # "sizeChanged":Z
    move-object v2, v12

    move/from16 v34, v3

    .end local v3    # "alphaChanged":Z
    .local v34, "alphaChanged":Z
    move-object v3, v14

    move-object/from16 v35, v11

    move/from16 v11, v26

    move-object/from16 v26, v12

    move-object v12, v4

    .end local v4    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v11, "visibleChanged":Z
    .local v12, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v26, "viewRoot":Landroid/view/ViewRootImpl;
    .local v35, "surfaceInsets":Landroid/graphics/Rect;
    move/from16 v4, v32

    move-object/from16 v36, v5

    move/from16 v41, v29

    move-object/from16 v29, v14

    move/from16 v14, v41

    .end local v5    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .local v14, "previousSurfaceLifecycleStrategy":I
    .local v29, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v36, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    move/from16 v5, v33

    move/from16 v16, v19

    const/4 v0, 0x1

    move/from16 v19, v6

    .end local v6    # "hintChanged":Z
    .local v16, "isWindowOpaque":Z
    .local v19, "hintChanged":Z
    move/from16 v37, v7

    .end local v7    # "alpha":F
    .local v37, "alpha":F
    move v7, v13

    move/from16 v38, v13

    move v13, v8

    .end local v8    # "myHeight":I
    .local v13, "myHeight":I
    .local v38, "relativeZChanged":Z
    move-object/from16 v8, v36

    :try_start_3d1
    invoke-direct/range {v1 .. v8}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v1
    :try_end_3d5
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_3d5} :catch_690

    .line 1209
    .local v1, "realSizeChanged":Z
    const/4 v2, 0x0

    .line 1211
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v3, v32

    .line 1212
    .local v3, "surfaceChanged":Z
    :try_start_3d8
    iget v4, v9, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3df

    move v6, v0

    goto :goto_3e0

    :cond_3df
    const/4 v6, 0x0

    :goto_3e0
    move v4, v6

    .line 1214
    .local v4, "respectVisibility":Z
    if-ne v14, v5, :cond_3e5

    move v6, v0

    goto :goto_3e6

    :cond_3e5
    const/4 v6, 0x0

    :goto_3e6
    move v5, v6

    .line 1217
    .local v5, "previouslyDidNotRespectVisibility":Z
    if-eqz v4, :cond_3ed

    if-eqz v5, :cond_3ed

    move v6, v0

    goto :goto_3ee

    :cond_3ed
    const/4 v6, 0x0

    .line 1219
    .local v6, "lifecycleNewlyRespectsVisibility":Z
    :goto_3ee
    iget-boolean v7, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_3f0
    .catchall {:try_start_3d8 .. :try_end_3f0} :catchall_66f

    if-eqz v7, :cond_41a

    .line 1220
    if-nez v3, :cond_404

    if-nez v4, :cond_3fa

    :try_start_3f6
    iget-boolean v7, v9, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v7, :cond_404

    :cond_3fa
    if-eqz v4, :cond_41a

    iget-boolean v7, v9, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v7, :cond_41a

    if-nez v11, :cond_404

    if-eqz v6, :cond_41a

    .line 1223
    :cond_404
    const/4 v7, 0x0

    iput-boolean v7, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1224
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_40a
    .catchall {:try_start_3f6 .. :try_end_40a} :catchall_40b

    goto :goto_41a

    .line 1296
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "surfaceChanged":Z
    .end local v4    # "respectVisibility":Z
    .end local v5    # "previouslyDidNotRespectVisibility":Z
    .end local v6    # "lifecycleNewlyRespectsVisibility":Z
    :catchall_40b
    move-exception v0

    move/from16 v40, v14

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v7, v32

    move/from16 v8, v33

    move/from16 v20, v1

    goto/16 :goto_67c

    .line 1228
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "surfaceChanged":Z
    .restart local v4    # "respectVisibility":Z
    .restart local v5    # "previouslyDidNotRespectVisibility":Z
    .restart local v6    # "lifecycleNewlyRespectsVisibility":Z
    :cond_41a
    :goto_41a
    move/from16 v7, v32

    move/from16 v8, v33

    .end local v32    # "creating":Z
    .end local v33    # "sizeChanged":Z
    .local v7, "creating":Z
    .local v8, "sizeChanged":Z
    :try_start_41e
    invoke-direct {v9, v7, v8}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    .line 1231
    iget-object v0, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move-object/from16 v33, v2

    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v33, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v39, v5

    .end local v5    # "previouslyDidNotRespectVisibility":Z
    .local v39, "previouslyDidNotRespectVisibility":Z
    const-string/jumbo v5, "updateSurface: mVisible = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, v9, Landroid/view/SurfaceView;->mVisible:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mSurface.isValid() = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 1233
    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v0

    if-eqz v0, :cond_646

    iget-object v0, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_646

    .line 1239
    iget-object v0, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSurface: mSurfaceCreated = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " surfaceChanged = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " visibleChanged = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_48f
    .catchall {:try_start_41e .. :try_end_48f} :catchall_665

    const-string v2, " "

    const-string v5, " #"

    if-nez v0, :cond_52e

    if-nez v3, :cond_4a4

    if-eqz v4, :cond_49c

    if-eqz v11, :cond_49c

    goto :goto_4a4

    :cond_49c
    move/from16 v25, v3

    move/from16 v32, v6

    move/from16 v40, v14

    goto/16 :goto_534

    .line 1246
    :cond_4a4
    :goto_4a4
    const/4 v0, 0x1

    :try_start_4a5
    iput-boolean v0, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1247
    iput-boolean v0, v9, Landroid/view/SurfaceView;->mIsCreating:Z
    :try_end_4a9
    .catchall {:try_start_4a5 .. :try_end_4a9} :catchall_523

    .line 1248
    if-eqz v25, :cond_4d3

    :try_start_4ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v3

    .end local v3    # "surfaceChanged":Z
    .local v25, "surfaceChanged":Z
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " visibleChanged -- surfaceCreated"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c7
    .catchall {:try_start_4ab .. :try_end_4c7} :catchall_4c8

    goto :goto_4d5

    .line 1296
    .end local v4    # "respectVisibility":Z
    .end local v6    # "lifecycleNewlyRespectsVisibility":Z
    .end local v25    # "surfaceChanged":Z
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v39    # "previouslyDidNotRespectVisibility":Z
    :catchall_4c8
    move-exception v0

    move/from16 v40, v14

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v20, v1

    goto/16 :goto_67c

    .line 1248
    .restart local v3    # "surfaceChanged":Z
    .restart local v4    # "respectVisibility":Z
    .restart local v6    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v39    # "previouslyDidNotRespectVisibility":Z
    :cond_4d3
    move/from16 v25, v3

    .line 1250
    .end local v3    # "surfaceChanged":Z
    .restart local v25    # "surfaceChanged":Z
    :goto_4d5
    :try_start_4d5
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1253
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v3, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move/from16 v32, v6

    .end local v6    # "lifecycleNewlyRespectsVisibility":Z
    .local v32, "lifecycleNewlyRespectsVisibility":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4e2
    .catchall {:try_start_4d5 .. :try_end_4e2} :catchall_523

    move/from16 v40, v14

    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .local v40, "previousSurfaceLifecycleStrategy":I
    :try_start_4e4
    const-string/jumbo v14, "surfaceCreated "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v9, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v14, v9, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    array-length v3, v0

    const/4 v6, 0x0

    :goto_510
    if-ge v6, v3, :cond_520

    aget-object v14, v0, v6

    .line 1258
    .local v14, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v33, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_51b
    .catchall {:try_start_4e4 .. :try_end_51b} :catchall_58d

    .line 1257
    .end local v14    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v33

    goto :goto_510

    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_520
    move-object/from16 v33, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_534

    .line 1296
    .end local v4    # "respectVisibility":Z
    .end local v25    # "surfaceChanged":Z
    .end local v32    # "lifecycleNewlyRespectsVisibility":Z
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v39    # "previouslyDidNotRespectVisibility":Z
    .end local v40    # "previousSurfaceLifecycleStrategy":I
    .local v14, "previousSurfaceLifecycleStrategy":I
    :catchall_523
    move-exception v0

    move/from16 v40, v14

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v20, v1

    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v40    # "previousSurfaceLifecycleStrategy":I
    goto/16 :goto_67c

    .line 1244
    .end local v40    # "previousSurfaceLifecycleStrategy":I
    .restart local v3    # "surfaceChanged":Z
    .restart local v4    # "respectVisibility":Z
    .restart local v6    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v39    # "previouslyDidNotRespectVisibility":Z
    :cond_52e
    move/from16 v25, v3

    move/from16 v32, v6

    move/from16 v40, v14

    .line 1261
    .end local v3    # "surfaceChanged":Z
    .end local v6    # "lifecycleNewlyRespectsVisibility":Z
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v25    # "surfaceChanged":Z
    .restart local v32    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v40    # "previousSurfaceLifecycleStrategy":I
    :goto_534
    if-nez v7, :cond_54d

    if-nez v27, :cond_54d

    if-nez v8, :cond_54d

    if-nez v19, :cond_54d

    if-eqz v4, :cond_540

    if-nez v11, :cond_54d

    :cond_540
    if-eqz v1, :cond_543

    goto :goto_54d

    :cond_543
    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v20, v1

    move/from16 v23, v4

    goto/16 :goto_605

    .line 1263
    :cond_54d
    :goto_54d
    :try_start_54d
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z
    :try_end_54f
    .catchall {:try_start_54d .. :try_end_54f} :catchall_63e

    if-eqz v0, :cond_596

    :try_start_551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " surfaceChanged -- format="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v9, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_56a
    .catchall {:try_start_551 .. :try_end_56a} :catchall_58d

    move-object/from16 v3, v23

    :try_start_56c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_574
    .catchall {:try_start_56c .. :try_end_574} :catchall_586

    move-object/from16 v6, v20

    :try_start_576
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59a

    .line 1296
    .end local v4    # "respectVisibility":Z
    .end local v25    # "surfaceChanged":Z
    .end local v32    # "lifecycleNewlyRespectsVisibility":Z
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v39    # "previouslyDidNotRespectVisibility":Z
    :catchall_586
    move-exception v0

    move-object/from16 v6, v20

    move/from16 v20, v1

    goto/16 :goto_67c

    :catchall_58d
    move-exception v0

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v20, v1

    goto/16 :goto_67c

    .line 1263
    .restart local v4    # "respectVisibility":Z
    .restart local v25    # "surfaceChanged":Z
    .restart local v32    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v39    # "previouslyDidNotRespectVisibility":Z
    :cond_596
    move-object/from16 v6, v20

    move-object/from16 v3, v23

    .line 1266
    :goto_59a
    if-nez v33, :cond_5a8

    .line 1267
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_5a0
    .catchall {:try_start_576 .. :try_end_5a0} :catchall_5a3

    move-object/from16 v33, v0

    goto :goto_5aa

    .line 1296
    .end local v4    # "respectVisibility":Z
    .end local v25    # "surfaceChanged":Z
    .end local v32    # "lifecycleNewlyRespectsVisibility":Z
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v39    # "previouslyDidNotRespectVisibility":Z
    :catchall_5a3
    move-exception v0

    move/from16 v20, v1

    goto/16 :goto_67c

    .line 1266
    .restart local v4    # "respectVisibility":Z
    .restart local v25    # "surfaceChanged":Z
    .restart local v32    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v39    # "previouslyDidNotRespectVisibility":Z
    :cond_5a8
    move-object/from16 v0, v33

    .line 1271
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_5aa
    :try_start_5aa
    iget-object v14, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;
    :try_end_5ac
    .catchall {:try_start_5aa .. :try_end_5ac} :catchall_63c

    move/from16 v20, v1

    .end local v1    # "realSizeChanged":Z
    .local v20, "realSizeChanged":Z
    :try_start_5ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v4

    .end local v4    # "respectVisibility":Z
    .local v23, "respectVisibility":Z
    const-string/jumbo v4, "surfaceChanged ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v9, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 1272
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v9, Landroid/view/SurfaceView;->mUpdateSurfaceCalledBy:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1271
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    array-length v1, v0

    const/4 v2, 0x0

    :goto_5f5
    if-ge v2, v1, :cond_603

    aget-object v4, v0, v2

    .line 1277
    .local v4, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v5, v9, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v14, v9, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v4, v5, v14, v15, v13}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1276
    .end local v4    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f5

    :cond_603
    move-object/from16 v33, v0

    .line 1280
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_605
    if-eqz v30, :cond_654

    .line 1281
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_625

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " surfaceRedrawNeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_625
    if-nez v33, :cond_62e

    .line 1285
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object/from16 v33, v0

    goto :goto_630

    .line 1284
    :cond_62e
    move-object/from16 v0, v33

    .line 1288
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_630
    if-eqz v31, :cond_636

    .line 1289
    invoke-direct {v9, v0, v12}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_654

    .line 1291
    :cond_636
    invoke-direct {v9, v0}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_639
    .catchall {:try_start_5ae .. :try_end_639} :catchall_63a

    goto :goto_654

    .line 1296
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "respectVisibility":Z
    .end local v25    # "surfaceChanged":Z
    .end local v32    # "lifecycleNewlyRespectsVisibility":Z
    .end local v39    # "previouslyDidNotRespectVisibility":Z
    :catchall_63a
    move-exception v0

    goto :goto_67c

    .end local v20    # "realSizeChanged":Z
    .restart local v1    # "realSizeChanged":Z
    :catchall_63c
    move-exception v0

    goto :goto_643

    :catchall_63e
    move-exception v0

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    :goto_643
    move/from16 v20, v1

    .end local v1    # "realSizeChanged":Z
    .restart local v20    # "realSizeChanged":Z
    goto :goto_67c

    .line 1236
    .end local v20    # "realSizeChanged":Z
    .end local v40    # "previousSurfaceLifecycleStrategy":I
    .restart local v1    # "realSizeChanged":Z
    .restart local v3    # "surfaceChanged":Z
    .local v4, "respectVisibility":Z
    .restart local v6    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v39    # "previouslyDidNotRespectVisibility":Z
    :cond_646
    move/from16 v25, v3

    move/from16 v32, v6

    move/from16 v40, v14

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v20, v1

    move/from16 v23, v4

    .line 1296
    .end local v1    # "realSizeChanged":Z
    .end local v3    # "surfaceChanged":Z
    .end local v4    # "respectVisibility":Z
    .end local v6    # "lifecycleNewlyRespectsVisibility":Z
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v33    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v39    # "previouslyDidNotRespectVisibility":Z
    .restart local v20    # "realSizeChanged":Z
    .restart local v40    # "previousSurfaceLifecycleStrategy":I
    :cond_654
    :goto_654
    const/4 v1, 0x0

    :try_start_655
    iput-boolean v1, v9, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1297
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_663

    iget-boolean v0, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_663

    .line 1298
    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1303
    .end local v12    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v20    # "realSizeChanged":Z
    .end local v30    # "redrawNeeded":Z
    .end local v31    # "shouldSyncBuffer":Z
    .end local v35    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v36    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v40    # "previousSurfaceLifecycleStrategy":I
    :cond_663
    goto/16 :goto_6ee

    .line 1296
    .restart local v1    # "realSizeChanged":Z
    .restart local v12    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v30    # "redrawNeeded":Z
    .restart local v31    # "shouldSyncBuffer":Z
    .restart local v35    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v36    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_665
    move-exception v0

    move/from16 v40, v14

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v20, v1

    .end local v1    # "realSizeChanged":Z
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v20    # "realSizeChanged":Z
    .restart local v40    # "previousSurfaceLifecycleStrategy":I
    goto :goto_67c

    .end local v7    # "creating":Z
    .end local v8    # "sizeChanged":Z
    .end local v20    # "realSizeChanged":Z
    .end local v40    # "previousSurfaceLifecycleStrategy":I
    .restart local v1    # "realSizeChanged":Z
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .local v32, "creating":Z
    .local v33, "sizeChanged":Z
    :catchall_66f
    move-exception v0

    move/from16 v40, v14

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v7, v32

    move/from16 v8, v33

    move/from16 v20, v1

    .end local v1    # "realSizeChanged":Z
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v32    # "creating":Z
    .end local v33    # "sizeChanged":Z
    .restart local v7    # "creating":Z
    .restart local v8    # "sizeChanged":Z
    .restart local v20    # "realSizeChanged":Z
    .restart local v40    # "previousSurfaceLifecycleStrategy":I
    :goto_67c
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1297
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_68b

    iget-boolean v1, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v1, :cond_68b

    .line 1298
    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1300
    :cond_68b
    nop

    .end local v7    # "creating":Z
    .end local v8    # "sizeChanged":Z
    .end local v11    # "visibleChanged":Z
    .end local v13    # "myHeight":I
    .end local v15    # "myWidth":I
    .end local v16    # "isWindowOpaque":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "windowOpacityChanged":Z
    .end local v19    # "hintChanged":Z
    .end local v21    # "layoutSizeChanged":Z
    .end local v24    # "positionChanged":Z
    .end local v26    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v27    # "formatChanged":Z
    .end local v28    # "surfaceLifecycleStrategyChanged":Z
    .end local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v34    # "alphaChanged":Z
    .end local v37    # "alpha":F
    .end local v38    # "relativeZChanged":Z
    .end local p0    # "this":Landroid/view/SurfaceView;
    throw v0
    :try_end_68d
    .catch Ljava/lang/Exception; {:try_start_655 .. :try_end_68d} :catch_68d

    .line 1301
    .end local v12    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v20    # "realSizeChanged":Z
    .end local v30    # "redrawNeeded":Z
    .end local v31    # "shouldSyncBuffer":Z
    .end local v35    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v36    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v40    # "previousSurfaceLifecycleStrategy":I
    .restart local v7    # "creating":Z
    .restart local v8    # "sizeChanged":Z
    .restart local v11    # "visibleChanged":Z
    .restart local v13    # "myHeight":I
    .restart local v15    # "myWidth":I
    .restart local v16    # "isWindowOpaque":Z
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "windowOpacityChanged":Z
    .restart local v19    # "hintChanged":Z
    .restart local v21    # "layoutSizeChanged":Z
    .restart local v24    # "positionChanged":Z
    .restart local v26    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v27    # "formatChanged":Z
    .restart local v28    # "surfaceLifecycleStrategyChanged":Z
    .restart local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v34    # "alphaChanged":Z
    .restart local v37    # "alpha":F
    .restart local v38    # "relativeZChanged":Z
    .restart local p0    # "this":Landroid/view/SurfaceView;
    :catch_68d
    move-exception v0

    goto/16 :goto_6e7

    .end local v7    # "creating":Z
    .end local v8    # "sizeChanged":Z
    .restart local v32    # "creating":Z
    .restart local v33    # "sizeChanged":Z
    :catch_690
    move-exception v0

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    move/from16 v7, v32

    move/from16 v8, v33

    .end local v32    # "creating":Z
    .end local v33    # "sizeChanged":Z
    .restart local v7    # "creating":Z
    .restart local v8    # "sizeChanged":Z
    goto/16 :goto_6e7

    .end local v11    # "visibleChanged":Z
    .end local v16    # "isWindowOpaque":Z
    .end local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v34    # "alphaChanged":Z
    .end local v37    # "alpha":F
    .end local v38    # "relativeZChanged":Z
    .local v1, "sizeChanged":Z
    .local v2, "creating":Z
    .local v3, "alphaChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "alpha":F
    .local v8, "myHeight":I
    .local v12, "viewRoot":Landroid/view/ViewRootImpl;
    .local v13, "relativeZChanged":Z
    .local v14, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v19, "isWindowOpaque":Z
    .local v26, "visibleChanged":Z
    :catch_69b
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move-object/from16 v3, v23

    move/from16 v11, v26

    move v7, v2

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v26, v12

    move-object/from16 v6, v20

    move v8, v1

    .end local v1    # "sizeChanged":Z
    .end local v2    # "creating":Z
    .end local v3    # "alphaChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v7, "creating":Z
    .local v8, "sizeChanged":Z
    .restart local v11    # "visibleChanged":Z
    .local v13, "myHeight":I
    .restart local v16    # "isWindowOpaque":Z
    .local v19, "hintChanged":Z
    .local v26, "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v34    # "alphaChanged":Z
    .restart local v37    # "alpha":F
    .restart local v38    # "relativeZChanged":Z
    goto :goto_6e7

    .end local v16    # "isWindowOpaque":Z
    .end local v26    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v28    # "surfaceLifecycleStrategyChanged":Z
    .end local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v34    # "alphaChanged":Z
    .end local v37    # "alpha":F
    .end local v38    # "relativeZChanged":Z
    .restart local v1    # "sizeChanged":Z
    .restart local v2    # "creating":Z
    .restart local v3    # "alphaChanged":Z
    .local v4, "visibleChanged":Z
    .restart local v6    # "hintChanged":Z
    .local v7, "alpha":F
    .local v8, "myHeight":I
    .local v11, "surfaceLifecycleStrategyChanged":Z
    .restart local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v13, "relativeZChanged":Z
    .restart local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v19, "isWindowOpaque":Z
    :catch_6b4
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v28, v11

    move-object/from16 v26, v12

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v16, v19

    move-object/from16 v3, v23

    move v7, v2

    move v11, v4

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v6, v20

    move v8, v1

    .end local v1    # "sizeChanged":Z
    .end local v2    # "creating":Z
    .end local v3    # "alphaChanged":Z
    .end local v4    # "visibleChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v7, "creating":Z
    .local v8, "sizeChanged":Z
    .local v11, "visibleChanged":Z
    .local v13, "myHeight":I
    .restart local v16    # "isWindowOpaque":Z
    .local v19, "hintChanged":Z
    .restart local v26    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v28    # "surfaceLifecycleStrategyChanged":Z
    .restart local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v34    # "alphaChanged":Z
    .restart local v37    # "alpha":F
    .restart local v38    # "relativeZChanged":Z
    goto :goto_6e7

    .end local v16    # "isWindowOpaque":Z
    .end local v28    # "surfaceLifecycleStrategyChanged":Z
    .end local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v34    # "alphaChanged":Z
    .end local v37    # "alpha":F
    .end local v38    # "relativeZChanged":Z
    .restart local v1    # "sizeChanged":Z
    .restart local v2    # "creating":Z
    .restart local v3    # "alphaChanged":Z
    .restart local v4    # "visibleChanged":Z
    .restart local v6    # "hintChanged":Z
    .local v7, "alpha":F
    .local v8, "myHeight":I
    .local v11, "surfaceLifecycleStrategyChanged":Z
    .restart local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v13, "relativeZChanged":Z
    .local v19, "isWindowOpaque":Z
    .local v26, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_6ce
    move-exception v0

    move/from16 v34, v3

    move/from16 v37, v7

    move/from16 v28, v11

    move/from16 v38, v13

    move/from16 v16, v19

    move-object/from16 v3, v23

    move-object/from16 v29, v26

    move v7, v2

    move v11, v4

    move/from16 v19, v6

    move v13, v8

    move-object/from16 v26, v12

    move-object/from16 v6, v20

    move v8, v1

    .line 1302
    .end local v1    # "sizeChanged":Z
    .end local v2    # "creating":Z
    .end local v3    # "alphaChanged":Z
    .end local v4    # "visibleChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v0, "ex":Ljava/lang/Exception;
    .local v7, "creating":Z
    .local v8, "sizeChanged":Z
    .local v11, "visibleChanged":Z
    .local v13, "myHeight":I
    .restart local v16    # "isWindowOpaque":Z
    .local v19, "hintChanged":Z
    .local v26, "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v28    # "surfaceLifecycleStrategyChanged":Z
    .restart local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v34    # "alphaChanged":Z
    .restart local v37    # "alpha":F
    .restart local v38    # "relativeZChanged":Z
    :goto_6e7
    iget-object v1, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1304
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6ee
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_744

    iget-object v0, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1306
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_744
    :goto_744
    return-void

    .line 1087
    .end local v7    # "creating":Z
    .end local v8    # "sizeChanged":Z
    .end local v11    # "visibleChanged":Z
    .end local v13    # "myHeight":I
    .end local v15    # "myWidth":I
    .end local v16    # "isWindowOpaque":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "windowOpacityChanged":Z
    .end local v19    # "hintChanged":Z
    .end local v21    # "layoutSizeChanged":Z
    .end local v24    # "positionChanged":Z
    .end local v26    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v27    # "formatChanged":Z
    .end local v28    # "surfaceLifecycleStrategyChanged":Z
    .end local v29    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v34    # "alphaChanged":Z
    .end local v37    # "alpha":F
    .end local v38    # "relativeZChanged":Z
    .restart local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_745
    move-object/from16 v26, v12

    .line 1090
    .end local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v26    # "viewRoot":Landroid/view/ViewRootImpl;
    :goto_747
    iget-object v0, v9, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updateSurface: surface is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 1094
    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1095
    return-void
.end method

.method public vriDrawStarted(Z)V
    .registers 6
    .param p1, "isWmSync"    # Z

    .line 1374
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1375
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1376
    if-eqz p1, :cond_21

    if-eqz v0, :cond_21

    .line 1377
    :try_start_b
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SurfaceSyncGroup;

    .line 1378
    .local v3, "syncGroup":Landroid/window/SurfaceSyncGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1379
    .end local v3    # "syncGroup":Landroid/window/SurfaceSyncGroup;
    goto :goto_11

    .line 1381
    :cond_21
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1382
    monitor-exit v1

    .line 1383
    return-void

    .line 1382
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v2
.end method
