.class public final Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$GlobalTransactionWrapper;,
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$StaticDisplayInfo;,
        Landroid/view/SurfaceControl$DynamicDisplayInfo;,
        Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;,
        Landroid/view/SurfaceControl$DisplayPrimaries;,
        Landroid/view/SurfaceControl$OnJankDataListener;,
        Landroid/view/SurfaceControl$TimerStates;,
        Landroid/view/SurfaceControl$LockDebuggingTransaction;,
        Landroid/view/SurfaceControl$TrustedPresentationCallback;,
        Landroid/view/SurfaceControl$TrustedPresentationThresholds;,
        Landroid/view/SurfaceControl$TransactionCommittedListener;,
        Landroid/view/SurfaceControl$CieXyz;,
        Landroid/view/SurfaceControl$RefreshRateRanges;,
        Landroid/view/SurfaceControl$RefreshRateRange;,
        Landroid/view/SurfaceControl$DisplayMode;,
        Landroid/view/SurfaceControl$Builder;,
        Landroid/view/SurfaceControl$CachingHint;,
        Landroid/view/SurfaceControl$JankData;,
        Landroid/view/SurfaceControl$OnReparentListener;,
        Landroid/view/SurfaceControl$BufferTransform;
    }
.end annotation


# static fields
.field public static final BUFFER_TRANSFORM_IDENTITY:I = 0x0

.field public static final BUFFER_TRANSFORM_MIRROR_HORIZONTAL:I = 0x1

.field public static final BUFFER_TRANSFORM_MIRROR_VERTICAL:I = 0x2

.field public static final BUFFER_TRANSFORM_ROTATE_180:I = 0x3

.field public static final BUFFER_TRANSFORM_ROTATE_270:I = 0x7

.field public static final BUFFER_TRANSFORM_ROTATE_90:I = 0x4

.field public static final CACHING_DISABLED:I = 0x0

.field public static final CACHING_ENABLED:I = 0x1

.field public static final CAN_RECEIVE_INPUT:I = 0x200000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final DISPLAY_DECORATION:I = 0x200

.field public static final DISPLAY_RECEIVES_INPUT:I = 0x1

.field public static final ENABLE_BACKPRESSURE:I = 0x100

.field public static final FX_SURFACE_BLAST:I = 0x40000

.field public static final FX_SURFACE_CONTAINER:I = 0x80000

.field public static final FX_SURFACE_EFFECT:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final INTERNAL_PRESENTATION_ONLY:I = -0x80000000

.field public static final METADATA_ACCESSIBILITY_ID:I = 0x5

.field public static final METADATA_GAME_MODE:I = 0x8

.field public static final METADATA_MOUSE_CURSOR:I = 0x4

.field public static final METADATA_OWNER_PID:I = 0x6

.field public static final METADATA_OWNER_UID:I = 0x1

.field public static final METADATA_TASK_ID:I = 0x3

.field public static final METADATA_WINDOW_TYPE:I = 0x2

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final NO_COLOR_FILL:I = 0x4000

.field public static final NO_REMOTECONTROL:I = 0xf00000

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field public static final SKIP_SCREENSHOT:I = 0x40

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_INTERNAL_DISP:I = 0x8

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field private static volatile sDebugUsageAfterRelease:Z

.field static sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;

.field static sTransactionNestCount:J


# instance fields
.field private mCallsite:Ljava/lang/String;

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerLock:Ljava/lang/Object;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mFreeNativeResources:Ljava/lang/Runnable;

.field private mHeight:I

.field private mLocalOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;

.field private mNativeHandle:J

.field public mNativeObject:J

.field private mReleaseStack:Ljava/lang/Throwable;

.field private mReparentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$OnReparentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetNativeTrustedPresentationCallbackFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->getNativeTrustedPresentationCallbackFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeApplyTransaction(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeClearTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeClearTransaction(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeClearTrustedPresentationCallback(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeClearTrustedPresentationCallback(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeCreateTransaction()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeGetDefaultApplyToken()Landroid/os/IBinder;
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smnativeGetNativeTransactionFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeGetTransactionId(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetTransactionId(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeMergeTransaction(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeRemoveCurrentInputFocus(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeRemoveCurrentInputFocus(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeReparent(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparent(JJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSanitize(JII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSanitize(JII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetAlpha(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetAnimationTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBackgroundBlurColorCurve(JJ[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurColorCurve(JJ[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBackgroundBlurRadius(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurRadius(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBlurRegions(JJ[[FI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetBlurRegions(JJ[[FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBufferTransform(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBufferTransform(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetCachingHint(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCachingHint(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetColor(JJ[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColorSpaceAgnostic(JJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetColorTransform(JJ[F[F)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetColorTransform(JJ[F[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetCornerRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDamageRegion(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDataSpace(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDataSpace(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDefaultApplyToken(Landroid/os/IBinder;)V
    .registers 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetDefaultApplyToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDefaultFrameRateCompatibility(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDefaultFrameRateCompatibility(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDestinationFrame(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetDestinationFrame(JJIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDimmingEnabled(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDimmingEnabled(JJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplayReluminoEffect(JLandroid/os/IBinder;FI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayReluminoEffect(JLandroid/os/IBinder;FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDropInputMode(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDropInputMode(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetEarlyWakeupEnd(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetEarlyWakeupStart(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetExtendedRangeBrightness(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetExtendedRangeBrightness(JJFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFixedTransformHint(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFlags(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFrameRate(JJFII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFrameTimelineVsync(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetFrameTimelineVsync(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetLayer(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetLayerStack(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetMatrix(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetMetadata(JJILandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetPosition(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetRelativeLayer(JJJI)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetScale(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetScale(JJFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetShadowRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V
    .registers 14

    invoke-static/range {p0 .. p13}, Landroid/view/SurfaceControl;->nativeSetStretchEffect(JJFFFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetTrustedOverlay(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTrustedOverlay(JJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetWindowCrop(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeStartChangeResolution(JLandroid/os/IBinder;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeStartChangeResolution(JLandroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeStartSurfaceAnimation(JJLjava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeStartSurfaceAnimation(JJLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSurfaceFlushJankData(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSurfaceFlushJankData(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeUnsetBuffer(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeUnsetBuffer(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 519
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    .line 522
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 524
    nop

    .line 525
    const-class v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 526
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeSurfaceControlFinalizer()J

    move-result-wide v1

    .line 525
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1513
    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1336
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1326
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 1327
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4
    .param p1, "other"    # Landroid/view/SurfaceControl;
    .param p2, "callsite"    # Ljava/lang/String;

    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1322
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1323
    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 34
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "parent"    # Landroid/view/SurfaceControl;
    .param p8, "metadata"    # Landroid/util/SparseIntArray;
    .param p10, "callsite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceSession;",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/SurfaceControl;",
            "Landroid/util/SparseIntArray;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1269
    .local p9, "localOwnerView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 515
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1270
    if-eqz v11, :cond_ef

    .line 1274
    iput-object v11, v1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 1275
    move/from16 v14, p3

    iput v14, v1, Landroid/view/SurfaceControl;->mWidth:I

    .line 1276
    move/from16 v15, p4

    iput v15, v1, Landroid/view/SurfaceControl;->mHeight:I

    .line 1277
    move-object/from16 v10, p9

    iput-object v10, v1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 1278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 1279
    .local v8, "metaParcel":Landroid/os/Parcel;
    const-wide/16 v16, 0x0

    .line 1281
    .local v16, "nativeObject":J
    if-eqz v13, :cond_81

    :try_start_3a
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 1282
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_75

    .line 1284
    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    nop

    .line 1286
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1287
    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1285
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1289
    .end local v0    # "i":I
    :cond_75
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_81

    .line 1294
    :catchall_7a
    move-exception v0

    move-object/from16 v4, p10

    move-object/from16 v22, v8

    goto/16 :goto_eb

    .line 1291
    :cond_81
    :goto_81
    nop

    .line 1292
    const-wide/16 v18, 0x0

    if-eqz v12, :cond_8b

    iget-wide v2, v12, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_88
    .catchall {:try_start_3a .. :try_end_88} :catchall_7a

    move-wide/from16 v20, v2

    goto :goto_8d

    :cond_8b
    move-wide/from16 v20, v18

    .line 1291
    :goto_8d
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v22, v8

    .end local v8    # "metaParcel":Landroid/os/Parcel;
    .local v22, "metaParcel":Landroid/os/Parcel;
    move-wide/from16 v8, v20

    move-object/from16 v10, v22

    :try_start_9f
    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide v2
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_e8

    .line 1294
    .end local v16    # "nativeObject":J
    .local v2, "nativeObject":J
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->recycle()V

    .line 1295
    nop

    .line 1296
    cmp-long v0, v2, v18

    if-eqz v0, :cond_de

    .line 1300
    move-object/from16 v4, p10

    invoke-direct {v1, v2, v3, v4}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1303
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CREATION:Z

    if-eqz v0, :cond_dd

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SurfaceControl is created"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1305
    const-string v5, ", sc="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1306
    const-string v5, ", caller="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x6

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    const-string v5, "SurfaceControl"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_dd
    return-void

    .line 1297
    :cond_de
    move-object/from16 v4, p10

    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v5, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v5}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    .end local v2    # "nativeObject":J
    .restart local v16    # "nativeObject":J
    :catchall_e8
    move-exception v0

    move-object/from16 v4, p10

    :goto_eb
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->recycle()V

    .line 1295
    throw v0

    .line 1271
    .end local v16    # "nativeObject":J
    .end local v22    # "metaParcel":Landroid/os/Parcel;
    :cond_ef
    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v4, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method

.method public static addJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p0, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .line 2680
    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeAddJankDataListener(JJ)V

    .line 2681
    return-void
.end method

.method private addToRegistry()V
    .registers 2

    .line 4770
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    .line 4771
    .local v0, "registry":Landroid/view/SurfaceControlRegistry;
    if-eqz v0, :cond_9

    .line 4772
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->add(Landroid/view/SurfaceControl;)V

    .line 4774
    :cond_9
    return-void
.end method

.method private assignNativeObject(JLjava/lang/String;)V
    .registers 8
    .param p1, "nativeObject"    # J
    .param p3, "callsite"    # Ljava/lang/String;

    .line 830
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 831
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 833
    :cond_b
    cmp-long v0, p1, v2

    if-eqz v0, :cond_17

    .line 834
    sget-object v0, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 835
    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 837
    :cond_17
    iput-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 838
    cmp-long v0, p1, v2

    if-eqz v0, :cond_22

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v0

    goto :goto_23

    :cond_22
    move-wide v0, v2

    :goto_23
    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    .line 839
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_39

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 840
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Assigned invalid nativeObject"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    goto :goto_3c

    .line 842
    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 844
    :goto_3c
    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 845
    cmp-long v0, p1, v2

    if-eqz v0, :cond_46

    .line 848
    invoke-direct {p0}, Landroid/view/SurfaceControl;->addToRegistry()V

    .line 850
    :cond_46
    return-void
.end method

.method public static bootFinished()Z
    .registers 1

    .line 2732
    invoke-static {}, Landroid/view/SurfaceControl;->nativeBootFinished()Z

    move-result v0

    return v0
.end method

.method private checkNotReleased()V
    .registers 5

    .line 1580
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_47

    .line 1581
    iget-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    if-eqz v0, :cond_27

    .line 1582
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage after release of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1585
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNativeObject of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null. Have you called release() already?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :cond_47
    return-void
.end method

.method public static clearAnimationFrameStats()Z
    .registers 1

    .line 1672
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static clearBootDisplayMode(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2385
    if-eqz p0, :cond_6

    .line 2389
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeClearBootDisplayMode(Landroid/os/IBinder;)V

    .line 2390
    return-void

    .line 2386
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeTransaction()V
    .registers 7

    .line 1641
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1642
    :try_start_3
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_13

    .line 1643
    const-string v1, "SurfaceControl"

    const-string v2, "Call to SurfaceControl.closeTransaction without matching openTransaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1645
    :cond_13
    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1e

    .line 1646
    monitor-exit v0

    return-void

    .line 1648
    :cond_1e
    :goto_1e
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->applyGlobalTransaction(Z)V

    .line 1649
    monitor-exit v0

    .line 1650
    return-void

    .line 1649
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .line 2475
    if-eqz p0, :cond_15

    .line 2480
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v1, v0, v2}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    .line 2482
    .local v0, "vd":Landroid/hardware/display/VirtualDisplay;
    if-nez v0, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getToken()Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_14
    return-object v2

    .line 2476
    .end local v0    # "vd":Landroid/hardware/display/VirtualDisplay;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2492
    if-eqz p0, :cond_e

    .line 2496
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 2497
    invoke-static {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 2496
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 2498
    return-void

    .line 2493
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .registers 2
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .line 1679
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getBootDisplayModeSupport()Z
    .registers 1

    .line 2366
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetBootDisplayModeSupport()Z

    move-result v0

    return v0
.end method

.method public static getCompositionColorSpaces()[Landroid/graphics/ColorSpace;
    .registers 6

    .line 2340
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetCompositionDataspaces()[I

    move-result-object v0

    .line 2341
    .local v0, "dataspaces":[I
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 2342
    .local v1, "srgb":Landroid/graphics/ColorSpace;
    filled-new-array {v1, v1}, [Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 2343
    .local v2, "colorSpaces":[Landroid/graphics/ColorSpace;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_22

    .line 2344
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v4, :cond_22

    .line 2345
    aget v5, v0, v3

    invoke-static {v5}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object v5

    .line 2346
    .local v5, "cs":Landroid/graphics/ColorSpace;
    if-eqz v5, :cond_1f

    .line 2347
    aput-object v5, v2, v3

    .line 2344
    .end local v5    # "cs":Landroid/graphics/ColorSpace;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2351
    .end local v3    # "i":I
    :cond_22
    return-object v2
.end method

.method public static getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2221
    if-eqz p0, :cond_7

    .line 2225
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0

    .line 2222
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2533
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2672
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2317
    if-eqz p0, :cond_7

    .line 2321
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    return-object v0

    .line 2318
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;
    .registers 3
    .param p0, "displayAddress"    # Landroid/view/DisplayAddress;

    .line 4797
    instance-of v0, p0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_10

    .line 4798
    move-object v0, p0

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    .line 4799
    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v0

    .line 4798
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 4801
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 7
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "maxFrames"    # J
    .param p3, "timestamp"    # J

    .line 1930
    if-eqz p0, :cond_7

    .line 1933
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0

    .line 1931
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1903
    if-eqz p0, :cond_7

    .line 1906
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0

    .line 1904
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 3
    .param p0, "displayId"    # J

    .line 1895
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getGPUContextPriority()I
    .registers 1

    .line 2696
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetGPUContextPriority()I

    move-result v0

    return v0
.end method

.method public static getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 4722
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    return-object v0
.end method

.method private static native getNativeTrustedPresentationCallbackFinalizer()J
.end method

.method public static getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 1

    .line 2359
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayIds()[J
    .registers 1

    .line 2504
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 3
    .param p0, "physicalDisplayId"    # J

    .line 2511
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getProtectedContentSupport()Z
    .registers 1

    .line 2519
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetProtectedContentSupport()Z

    move-result v0

    return v0
.end method

.method public static getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .registers 3
    .param p0, "displayId"    # J

    .line 1888
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTimerStates(Landroid/os/IBinder;)Landroid/view/SurfaceControl$TimerStates;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2721
    if-eqz p0, :cond_7

    .line 2724
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetTimerStates(Landroid/os/IBinder;)Landroid/view/SurfaceControl$TimerStates;

    move-result-object v0

    return-object v0

    .line 2722
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static invokeReleaseCallback(Ljava/util/function/Consumer;J)V
    .registers 4
    .param p1, "nativeFencePtr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;J)V"
        }
    .end annotation

    .line 4788
    .local p0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/SyncFence;>;"
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p1, p2}, Landroid/hardware/SyncFence;-><init>(J)V

    .line 4789
    .local v0, "fence":Landroid/hardware/SyncFence;
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4790
    return-void
.end method

.method public static mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1631
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1632
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1633
    monitor-exit v0

    .line 1634
    return-void

    .line 1633
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 6
    .param p0, "mirrorOf"    # Landroid/view/SurfaceControl;

    .line 2616
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeMirrorSurface(J)J

    move-result-wide v0

    .line 2617
    .local v0, "nativeObj":J
    new-instance v2, Landroid/view/SurfaceControl;

    invoke-direct {v2}, Landroid/view/SurfaceControl;-><init>()V

    .line 2618
    .local v2, "sc":Landroid/view/SurfaceControl;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (mirror)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 2619
    const-string/jumbo v3, "mirrorSurface"

    invoke-direct {v2, v0, v1, v3}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 2620
    return-object v2
.end method

.method private static native nativeAddJankDataListener(JJ)V
.end method

.method private static native nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
.end method

.method private static native nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
.end method

.method private static native nativeApplyTransaction(JZ)V
.end method

.method private static native nativeBootFinished()Z
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearBootDisplayMode(Landroid/os/IBinder;)V
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeClearTransaction(J)V
.end method

.method private static native nativeClearTrustedPresentationCallback(JJ)V
.end method

.method private static native nativeCopyFromSurfaceControl(J)J
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
.end method

.method private static native nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
.end method

.method private static native nativeCreateTransaction()J
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBootDisplayModeSupport()Z
.end method

.method private static native nativeGetCompositionDataspaces()[I
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDefaultApplyToken()Landroid/os/IBinder;
.end method

.method private static native nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.end method

.method private static native nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z
.end method

.method private static native nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
.end method

.method private static native nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
.end method

.method private static native nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
.end method

.method private static native nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
.end method

.method private static native nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
.end method

.method private static native nativeGetGPUContextPriority()I
.end method

.method private static native nativeGetHandle(J)J
.end method

.method private static native nativeGetLayerId(J)I
.end method

.method private static native nativeGetNativeSurfaceControlFinalizer()J
.end method

.method private static native nativeGetNativeTransactionFinalizer()J
.end method

.method private static native nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;
.end method

.method private static native nativeGetPhysicalDisplayIds()[J
.end method

.method private static native nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetProtectedContentSupport()Z
.end method

.method private static native nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
.end method

.method private static native nativeGetTimerStates(Landroid/os/IBinder;)Landroid/view/SurfaceControl$TimerStates;
.end method

.method private static native nativeGetTransactionId(J)J
.end method

.method private static native nativeGetTransformHint(J)I
.end method

.method private static native nativeMergeTransaction(JJ)V
.end method

.method private static native nativeMirrorSurface(J)J
.end method

.method private static native nativeNotifyHFRmode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeRemoveCurrentInputFocus(JI)V
.end method

.method private static native nativeRemoveJankDataListener(J)V
.end method

.method private static native nativeReparent(JJJ)V
.end method

.method private static native nativeRestrictHighRefreshRate(Z)V
.end method

.method private static native nativeSanitize(JII)V
.end method

.method private static native nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JJF)V
.end method

.method private static native nativeSetAnimationTransaction(J)V
.end method

.method private static native nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V
.end method

.method private static native nativeSetBackgroundBlurColorCurve(JJ[F)V
.end method

.method private static native nativeSetBackgroundBlurRadius(JJI)V
.end method

.method private static native nativeSetBlurRegions(JJ[[FI)V
.end method

.method private static native nativeSetBootDisplayMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/hardware/HardwareBuffer;",
            "J",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeSetBufferTransform(JJI)V
.end method

.method private static native nativeSetCachingHint(JJI)V
.end method

.method private static native nativeSetColor(JJ[F)V
.end method

.method private static native nativeSetColorSpaceAgnostic(JJZ)V
.end method

.method private static native nativeSetColorTransform(JJ[F[F)V
.end method

.method private static native nativeSetCornerRadius(JJF)V
.end method

.method private static native nativeSetDamageRegion(JJLandroid/graphics/Region;)V
.end method

.method private static native nativeSetDataSpace(JJI)V
.end method

.method private static native nativeSetDefaultApplyToken(Landroid/os/IBinder;)V
.end method

.method private static native nativeSetDefaultFrameRateCompatibility(JJI)V
.end method

.method private static native nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
.end method

.method private static native nativeSetDestinationFrame(JJIIII)V
.end method

.method private static native nativeSetDimmingEnabled(JJZ)V
.end method

.method private static native nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z
.end method

.method private static native nativeSetDisplayFlags(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplayReluminoEffect(JLandroid/os/IBinder;FI)V
.end method

.method private static native nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
.end method

.method private static native nativeSetDropInputMode(JJI)V
.end method

.method private static native nativeSetEarlyWakeupEnd(J)V
.end method

.method private static native nativeSetEarlyWakeupStart(J)V
.end method

.method private static native nativeSetExtendedRangeBrightness(JJFF)V
.end method

.method private static native nativeSetFixedTransformHint(JJI)V
.end method

.method private static native nativeSetFlags(JJII)V
.end method

.method private static native nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method private static native nativeSetFrameRate(JJFII)V
.end method

.method private static native nativeSetFrameRateSelectionPriority(JJI)V
.end method

.method private static native nativeSetFrameTimelineVsync(JJ)V
.end method

.method private static native nativeSetGameContentType(Landroid/os/IBinder;Z)V
.end method

.method private static native nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
.end method

.method private static native nativeSetGlobalShadowSettings([F[FFFF)V
.end method

.method private static native nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
.end method

.method private static native nativeSetLayer(JJI)V
.end method

.method private static native nativeSetLayerStack(JJI)V
.end method

.method private static native nativeSetMatrix(JJFFFF)V
.end method

.method private static native nativeSetMetadata(JJILandroid/os/Parcel;)V
.end method

.method private static native nativeSetPosition(JJFF)V
.end method

.method private static native nativeSetRelativeLayer(JJJI)V
.end method

.method private static native nativeSetScale(JJFF)V
.end method

.method private static native nativeSetShadowRadius(JJF)V
.end method

.method private static native nativeSetStretchEffect(JJFFFFFFFFFF)V
.end method

.method private static native nativeSetTransformHint(JI)V
.end method

.method private static native nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native nativeSetTrustedOverlay(JJZ)V
.end method

.method private static native nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
.end method

.method private static native nativeSetWindowCrop(JJIIII)V
.end method

.method private static native nativeStartChangeResolution(JLandroid/os/IBinder;Z)V
.end method

.method private static native nativeStartSurfaceAnimation(JJLjava/lang/String;)V
.end method

.method private static native nativeSurfaceFlushJankData(J)V
.end method

.method private static native nativeUnsetBuffer(JJ)V
.end method

.method private static native nativeUpdateDefaultBufferSize(JII)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static native nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
.end method

.method public static notifyHFRmode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "hfrMode"    # I

    .line 2235
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v0, :cond_2b

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyHFRmode, displayToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hfrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2237
    invoke-static {p1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2236
    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_2b
    if-eqz p0, :cond_31

    .line 2242
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeNotifyHFRmode(Landroid/os/IBinder;I)V

    .line 2243
    return-void

    .line 2240
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openTransaction()V
    .registers 6

    .line 1612
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1613
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    if-nez v1, :cond_f

    .line 1614
    new-instance v1, Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;-><init>(Landroid/view/SurfaceControl$GlobalTransactionWrapper-IA;)V

    sput-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    .line 1616
    :cond_f
    const-class v1, Landroid/view/SurfaceControl;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 1617
    :try_start_12
    sget-wide v2, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 1618
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1c

    .line 1619
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1f

    .line 1620
    return-void

    .line 1618
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2

    .line 1619
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private removeFromRegistry()V
    .registers 2

    .line 4780
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    .line 4781
    .local v0, "registry":Landroid/view/SurfaceControlRegistry;
    if-eqz v0, :cond_9

    .line 4782
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->remove(Landroid/view/SurfaceControl;)V

    .line 4784
    :cond_9
    return-void
.end method

.method public static removeJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)V
    .registers 3
    .param p0, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;

    .line 2688
    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRemoveJankDataListener(J)V

    .line 2689
    return-void
.end method

.method public static restrictHighRefreshRate(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restrictHighRefreshRate, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeRestrictHighRefreshRate(Z)V

    .line 2254
    return-void
.end method

.method public static rotationToBufferTransform(I)I
    .registers 4
    .param p0, "rotation"    # I

    .line 381
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_24

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to convert unknown rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v0

    .line 385
    :pswitch_1d
    const/4 v0, 0x7

    return v0

    .line 384
    :pswitch_1f
    const/4 v0, 0x3

    return v0

    .line 383
    :pswitch_21
    const/4 v0, 0x4

    return v0

    .line 382
    :pswitch_23
    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public static setActiveColorMode(Landroid/os/IBinder;I)Z
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "colorMode"    # I

    .line 2328
    if-eqz p0, :cond_7

    .line 2331
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 2329
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "on"    # Z

    .line 2396
    if-eqz p0, :cond_6

    .line 2400
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 2401
    return-void

    .line 2397
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setBootDisplayMode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "displayModeId"    # I

    .line 2374
    if-eqz p0, :cond_6

    .line 2378
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetBootDisplayMode(Landroid/os/IBinder;I)V

    .line 2379
    return-void

    .line 2375
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDebugUsageAfterRelease(Z)V
    .registers 2
    .param p0, "debug"    # Z

    .line 1385
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1386
    return-void

    .line 1388
    :cond_7
    sput-boolean p0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    .line 1389
    return-void
.end method

.method public static setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "desiredDisplayModeSpecs"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2203
    if-eqz p0, :cond_1d

    .line 2206
    if-eqz p1, :cond_15

    .line 2209
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ltz v0, :cond_d

    .line 2213
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0

    .line 2210
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultMode must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2207
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desiredDisplayModeSpecs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2204
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "brightness"    # F

    .line 2554
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, v0, p1, v0}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public static setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .registers 9
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "sdrBrightness"    # F
    .param p2, "sdrBrightnessNits"    # F
    .param p3, "displayBrightness"    # F
    .param p4, "displayBrightnessNits"    # F

    .line 2585
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2586
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_4b

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000    # -1.0f

    if-gez v2, :cond_1a

    cmpl-float v2, p3, v3

    if-nez v2, :cond_4b

    .line 2591
    :cond_1a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_31

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_31

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2c

    cmpl-float v0, p1, v3

    if-nez v0, :cond_31

    .line 2596
    :cond_2c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0

    .line 2593
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2588
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .registers 6
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .line 2439
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2440
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_18

    .line 2444
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    .line 2446
    .local v1, "dm":Landroid/hardware/display/IDisplayManager;
    :try_start_c
    invoke-interface {v1, p0, p1}, Landroid/hardware/display/IDisplayManager;->setDisplayIdToMirror(Landroid/os/IBinder;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2449
    nop

    .line 2450
    return-void

    .line 2447
    :catch_11
    move-exception v2

    .line 2448
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2441
    .end local v1    # "dm":Landroid/hardware/display/IDisplayManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .line 1878
    if-eqz p0, :cond_6

    .line 1881
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1882
    return-void

    .line 1879
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .line 2426
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 2427
    invoke-static {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2428
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2426
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 2429
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2459
    nop

    .line 2460
    invoke-static {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 2461
    .local v0, "virtualDisplayCallback":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 2462
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v1, v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 2463
    return-void
.end method

.method public static setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
    .registers 7
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "enable"    # Z
    .param p2, "componentMask"    # I
    .param p3, "maxFrames"    # I

    .line 1914
    if-eqz p0, :cond_14

    .line 1917
    const/4 v0, 0x4

    .line 1918
    .local v0, "maxColorComponents":I
    shr-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_c

    .line 1921
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1

    .line 1919
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid componentMask when enabling sampling"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1915
    .end local v0    # "maxColorComponents":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGameContentType(Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "on"    # Z

    .line 2407
    if-eqz p0, :cond_6

    .line 2411
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetGameContentType(Landroid/os/IBinder;Z)V

    .line 2412
    return-void

    .line 2408
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGlobalShadowSettings([F[FFFF)V
    .registers 5
    .param p0, "ambientColor"    # [F
    .param p1, "spotColor"    # [F
    .param p2, "lightPosY"    # F
    .param p3, "lightPosZ"    # F
    .param p4, "lightRadius"    # F

    .line 2654
    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 2655
    invoke-static {p1}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 2656
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetGlobalShadowSettings([F[FFFF)V

    .line 2657
    return-void
.end method

.method private static validateColorArg([F)V
    .registers 7
    .param p0, "color"    # [F

    .line 2624
    const-string v0, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    .line 2626
    .local v0, "msg":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x4

    const-string v3, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    if-ne v1, v2, :cond_23

    .line 2629
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    aget v4, p0, v2

    .line 2630
    .local v4, "c":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_1c

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_1c

    .line 2629
    .end local v4    # "c":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2631
    .restart local v4    # "c":F
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2634
    .end local v4    # "c":F
    :cond_22
    return-void

    .line 2627
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnReparentListener;

    .line 539
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 543
    :cond_f
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 544
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public clearContentFrameStats()Z
    .registers 3

    .line 1656
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1657
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 5
    .param p1, "other"    # Landroid/view/SurfaceControl;
    .param p2, "callsite"    # Ljava/lang/String;

    .line 856
    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 857
    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 858
    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 859
    iget-object v0, p1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 860
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeCopyFromSurfaceControl(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 861
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 1356
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .registers 5

    .line 1574
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 1575
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 1577
    :cond_b
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1506
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1507
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1508
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1509
    const-wide v2, 0x10500000003L

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1510
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1511
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1530
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 1531
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1533
    :cond_7
    invoke-direct {p0}, Landroid/view/SurfaceControl;->removeFromRegistry()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 1535
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1536
    nop

    .line 1537
    return-void

    .line 1535
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1536
    throw v0
.end method

.method getCallsite()Ljava/lang/String;
    .registers 2

    .line 1411
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    return-object v0
.end method

.method public getChoreographer()Landroid/view/Choreographer;
    .registers 3

    .line 1446
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1447
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1448
    :try_start_6
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_14

    .line 1449
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl;->getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1451
    :cond_14
    monitor-exit v0

    return-object v1

    .line 1452
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1470
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1471
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_6
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_13

    .line 1473
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    invoke-static {v1, v2, p1}, Landroid/view/Choreographer;->getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    goto :goto_19

    .line 1474
    :cond_13
    invoke-virtual {v1, p1}, Landroid/view/Choreographer;->isTheLooperSame(Landroid/os/Looper;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1478
    :goto_19
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit v0

    return-object v1

    .line 1475
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Choreographer already exists with a different looper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceControl;
    .end local p1    # "looper":Landroid/os/Looper;
    throw v1

    .line 1479
    .restart local p0    # "this":Landroid/view/SurfaceControl;
    .restart local p1    # "looper":Landroid/os/Looper;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 4
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .line 1664
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1665
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 1695
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1696
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    .line 1697
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getLayerId()I
    .registers 5

    .line 4759
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    .line 4760
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetLayerId(J)I

    move-result v0

    return v0

    .line 4763
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public getLocalOwnerView()Landroid/view/View;
    .registers 2

    .line 1708
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1419
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformHint()I
    .registers 3

    .line 4738
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 4739
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetTransformHint(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 1686
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    .line 1688
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public hasChoreographer()Z
    .registers 3

    .line 1492
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 1494
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isSameSurface(Landroid/view/SurfaceControl;)Z
    .registers 6
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .line 1431
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isValid()Z
    .registers 5

    .line 1599
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1339
    if-eqz p1, :cond_27

    .line 1343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 1344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 1347
    const-wide/16 v0, 0x0

    .line 1348
    .local v0, "object":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 1349
    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 1351
    :cond_20
    const-string/jumbo v2, "readFromParcel"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1352
    return-void

    .line 1340
    .end local v0    # "object":J
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 5

    .line 1550
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3c

    .line 1551
    iget-object v0, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1552
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1553
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    .line 1554
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_22

    .line 1556
    :cond_19
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Released"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1558
    :cond_22
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1559
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1560
    :try_start_2a
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_34

    .line 1561
    invoke-virtual {v1}, Landroid/view/Choreographer;->invalidate()V

    .line 1562
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    .line 1564
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_39

    .line 1565
    invoke-direct {p0}, Landroid/view/SurfaceControl;->removeFromRegistry()V

    goto :goto_3c

    .line 1564
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    .line 1567
    :cond_3c
    :goto_3c
    return-void
.end method

.method public removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnReparentListener;

    .line 556
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 558
    .local v1, "removed":Z
    iget-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 559
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 561
    :cond_14
    monitor-exit v0

    return v1

    .line 562
    .end local v1    # "removed":Z
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public resize(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 4729
    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 4730
    iput p2, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 4731
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeUpdateDefaultBufferSize(JII)V

    .line 4732
    return-void
.end method

.method public setTransformHint(I)V
    .registers 4
    .param p1, "transformHint"    # I

    .line 4752
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransformHint(JI)V

    .line 4753
    return-void
.end method

.method public setUnreleasedWarningCallSite(Ljava/lang/String;)V
    .registers 4
    .param p1, "callsite"    # Ljava/lang/String;

    .line 1399
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1400
    return-void

    .line 1402
    :cond_7
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p1}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iput-object p1, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    .line 1404
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1714
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1713
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1361
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_7

    .line 1362
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1364
    :cond_7
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1365
    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 1368
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 1370
    :cond_23
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    :goto_27
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 1374
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_33

    .line 1375
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 1377
    :cond_33
    return-void
.end method
