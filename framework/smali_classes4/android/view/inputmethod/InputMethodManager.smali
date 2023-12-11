.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$Rune;,
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$DelegateImpl;,
        Landroid/view/inputmethod/InputMethodManager$BindState;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    }
.end annotation


# static fields
.field private static final CACHE_KEY_STYLUS_HANDWRITING_PROPERTY:Ljava/lang/String; = "cache_key.system_server.stylus_handwriting"

.field public static final CLEAR_SHOW_FORCED_FLAG_WHEN_LEAVING:J = 0xcc1a029L

.field private static final DEBUG:Z

.field static final DEBUG_SEP:Z

.field public static final DISPATCH_HANDLED:I = 0x1

.field public static final DISPATCH_IN_PROGRESS:I = -0x1

.field public static final DISPATCH_NOT_HANDLED:I = 0x0

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field private static final INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field private static final MSG_BIND:I = 0x2

.field private static final MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xb

.field private static final MSG_DUMP:I = 0x1

.field private static final MSG_FLUSH_INPUT_EVENT:I = 0x7

.field private static final MSG_ON_SHOW_REQUESTED:I = 0x1f

.field private static final MSG_REPORT_FULLSCREEN_MODE:I = 0xa

.field private static final MSG_SEND_INPUT_EVENT:I = 0x5

.field private static final MSG_SET_ACTIVE:I = 0x4

.field private static final MSG_SET_INTERACTIVE:I = 0xd

.field private static final MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field private static final MSG_UNBIND:I = 0x3

.field private static final MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xc

.field private static final MSG_UPDATE_VIRTUAL_DISPLAY_TO_SCREEN_MATRIX:I = 0x1e

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final OPTIMIZE_NONEDITABLE_VIEWS:Z

.field private static final PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_IMPLICIT:I = 0x1

.field public static final SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field private static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static final TAG_LIFE_CYCLE:Ljava/lang/String; = "InputMethodManager_LC"

.field static sInstance:Landroid/view/inputmethod/InputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sInstanceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sPreventImeStartupUnlessTextEditor:Z


# instance fields
.field private final mAccessibilityInputMethodSession:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;"
        }
    .end annotation
.end field

.field private mActive:Z

.field private final mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

.field private mCurChannel:Landroid/view/InputChannel;

.field mCurId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mCurRootView:Landroid/view/ViewRootImpl;

.field mCurRootViewWindowFocused:Z

.field private mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field private mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field private mCursorCandEnd:I

.field private mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field private mCursorSelEnd:I

.field private mCursorSelStart:I

.field private final mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

.field private final mDisplayId:I

.field private final mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field private final mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

.field private mInitialSelEnd:I

.field private mInitialSelStart:I

.field private final mMainLooper:Landroid/os/Looper;

.field private mNextServedView:Landroid/view/View;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

.field final mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRequestUpdateCursorAnchorInfoMonitorMode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mRestartOnNextWindowFocus:Z

.field private mServedConnecting:Z

.field private mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private mServedInputConnectionHandler:Landroid/os/Handler;

.field private mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpCursorRect:Landroid/graphics/Rect;

.field private mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;


# direct methods
.method public static synthetic $r8$lambda$DC74JLOV0LGjgN2kXyV7C4kETqY(Landroid/view/inputmethod/InputMethodManager;IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->lambda$updateSelection$3(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w2BVjuuFxEJLT4a6JAMZGmwORxs(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->lambda$startInputInner$2(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCursorCandEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCursorCandStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCursorSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCursorSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCompletions(Landroid/view/inputmethod/InputMethodManager;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentEditorInfo(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/EditorInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->clearAccessibilityBindingLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAllAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearAllAccessibilityBindingLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearCurRootViewIfNeeded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoDump(Landroid/view/inputmethod/InputMethodManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasActiveInputConnectionInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnectionInternal(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->onViewFocusChangedInternal(Landroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smcanStartInput(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->canStartInput(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 299
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 372
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    .line 391
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    .line 438
    nop

    .line 439
    const-string v0, "debug.imm.optimize_noneditable_views"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z

    .line 700
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V
    .registers 9
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "displayId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    .line 322
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 473
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 547
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 551
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 586
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 598
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 639
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 655
    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 665
    new-instance v3, Landroid/util/Pools$SimplePool;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 667
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 670
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-direct {v3, p0, v2}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$DelegateImpl-IA;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    .line 1342
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v3, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 4276
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1513
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1514
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 1515
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v1, p0, p3}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 1516
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    .line 1517
    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v3, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v3, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    invoke-direct {v1, p3, v3, p0, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1519
    return-void
.end method

.method private static areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 6
    .param p0, "lhs"    # Landroid/view/InputChannel;
    .param p1, "rhs"    # Landroid/view/InputChannel;

    .line 1976
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1977
    return v0

    .line 1979
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_17

    if-nez p1, :cond_a

    goto :goto_17

    .line 1982
    :cond_a
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    return v0

    .line 1980
    :cond_17
    :goto_17
    return v1
.end method

.method private static canStartInput(Landroid/view/View;)Z
    .registers 2
    .param p0, "servedView"    # Landroid/view/View;

    .line 782
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z
    .registers 7
    .param p1, "forceNewFocus"    # Z
    .param p2, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 3175
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_6

    .line 3176
    return v1

    .line 3178
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v0, v2, :cond_f

    if-nez p1, :cond_f

    .line 3179
    return v1

    .line 3181
    :cond_f
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    const-string v2, "InputMethodManager"

    if-eqz v0, :cond_5c

    .line 3182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFocus: view="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " next="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " force="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3186
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_51

    .line 3187
    :cond_4f
    const-string v3, "<none>"

    :goto_51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3182
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_5c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v0, :cond_70

    .line 3193
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_69

    .line 3194
    const-string v0, "checkFocus: return, mNextServedView is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    :cond_69
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 3198
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 3199
    return v1

    .line 3201
    :cond_70
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 3202
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_79

    .line 3203
    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 3205
    :cond_79
    const/4 v0, 0x1

    return v0
.end method

.method private clearAccessibilityBindingLocked(I)V
    .registers 4
    .param p1, "id"    # I

    .line 1940
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing accessibility binding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_1c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1942
    return-void
.end method

.method private clearAllAccessibilityBindingLocked()V
    .registers 3

    .line 1949
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "InputMethodManager"

    const-string v1, "Clearing all accessibility bindings"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1951
    return-void
.end method

.method private clearBindingLocked()V
    .registers 3

    .line 1926
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "InputMethodManager"

    const-string v1, "Clearing binding!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_b
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 1928
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    .line 1929
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1930
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 1932
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    .line 1933
    return-void
.end method

.method private clearConnectionLocked()V
    .registers 3

    .line 1991
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1992
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

    .line 1993
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_10

    .line 1994
    invoke-virtual {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 1995
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1996
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 1998
    :cond_10
    return-void
.end method

.method private clearCurRootViewIfNeeded()Z
    .registers 3

    .line 2039
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    if-nez v0, :cond_13

    .line 2040
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 2041
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->-$$Nest$msetCurrentRootViewLocked(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/ViewRootImpl;)V

    .line 2043
    const/4 v0, 0x1

    return v0

    .line 2046
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static createInputConnection(Landroid/view/View;)Landroid/util/Pair;
    .registers 5
    .param p0, "servedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/inputmethod/InputConnection;",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation

    .line 4709
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 4713
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 4714
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 4715
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 4716
    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4717
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input: editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    :cond_45
    if-nez v1, :cond_4e

    .line 4723
    sget-object v2, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    iput-object v2, v0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 4724
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 4726
    :cond_4e
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1453
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    goto :goto_f

    .line 1454
    :cond_b
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1453
    :goto_f
    return-object v0
.end method

.method private static createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 8
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1459
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 1460
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-eqz v0, :cond_20

    .line 1463
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    .line 1471
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1473
    .local v2, "identity":J
    :try_start_f
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v4, v5, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    .line 1476
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1477
    nop

    .line 1478
    return-object v1

    .line 1476
    :catchall_1b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1477
    throw v4

    .line 1461
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "identity":J
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IInputMethodManager is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 6
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1484
    const-class v0, Lcom/android/internal/view/IInputMethodManager;

    .line 1485
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/internal/view/IInputMethodManager;>;"
    nop

    .line 1486
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    .line 1509
    .local v1, "stubInterface":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v2, v1, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    return-object v2
.end method

.method private dismissAndShowAgainInputMethodPickerLocked()V
    .registers 1

    .line 4945
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->dismissAndShowAgainInputMethodPicker()V

    .line 4946
    return-void
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4497
    invoke-direct {p0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4498
    return-void

    .line 4501
    :cond_7
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4502
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFallbackInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRestartOnNextWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4506
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurImeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4507
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4504
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFullscreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4509
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 4510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_be

    .line 4512
    :cond_b9
    const-string v1, "  mCurMethod= null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4514
    :goto_be
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_bf
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f6

    .line 4515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAccessibilityInputMethodSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 4516
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 4517
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4515
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4514
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    .line 4519
    .end local v1    # "i":I
    :cond_f6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4523
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_16c

    .line 4524
    const-string v1, "  mCurrentEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4525
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_171

    .line 4527
    :cond_16c
    const-string v1, "  mCurrentEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4529
    :goto_171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnectionHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4537
    return-void
.end method

.method public static ensureDefaultInstanceForDefaultDisplayIfNecessary()V
    .registers 2

    .line 369
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    .line 370
    return-void
.end method

.method private finishedInputEvent(IZZ)V
    .registers 11
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 3985
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3986
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3987
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 3988
    monitor-exit v0

    return-void

    .line 3991
    :cond_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3992
    .local v2, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3993
    const-string v3, "aq:imm"

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v5, 0x4

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3995
    if-eqz p3, :cond_44

    .line 3996
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 3999
    :cond_44
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 4001
    .end local v1    # "index":I
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4f

    .line 4003
    invoke-direct {p0, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 4004
    return-void

    .line 4001
    .end local v2    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private flushPendingEventsLocked()V
    .registers 7

    .line 4024
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 4026
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4027
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 4028
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4029
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 4030
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4031
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4027
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4033
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;)V"
        }
    .end annotation

    .line 4701
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 4702
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4701
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4704
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public static forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1530
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1533
    .local v0, "displayId":I
    if-nez v0, :cond_b

    .line 1534
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1537
    .local v1, "looper":Landroid/os/Looper;
    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    .line 1539
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    return-object v2
.end method

.method private static forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 7
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1544
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1545
    .local v0, "isDefaultDisplay":Z
    :goto_5
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1546
    :try_start_8
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1547
    .local v3, "instance":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_14

    .line 1548
    monitor-exit v1

    return-object v3

    .line 1550
    :cond_14
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    move-object v3, v4

    .line 1552
    sget-object v4, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_21

    if-eqz v0, :cond_21

    .line 1553
    sput-object v3, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1555
    :cond_21
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1556
    monitor-exit v1

    return-object v3

    .line 1557
    .end local v3    # "instance":Landroid/view/inputmethod/InputMethodManager;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private getBindSequenceLocked()I
    .registers 2

    .line 4631
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mBindSequence:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method private getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 727
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 728
    return-object v0

    .line 736
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 737
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_b

    .line 738
    return-object v0

    .line 740
    :cond_b
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    .line 741
    .local v2, "viewRootDisplayId":I
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-ne v2, v3, :cond_14

    .line 743
    return-object v0

    .line 745
    :cond_14
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 746
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 747
    .local v3, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    const-string v4, "InputMethodManager"

    if-nez v3, :cond_39

    .line 748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get non-null fallback IMM. view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-object v0

    .line 751
    :cond_39
    iget v5, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-eq v5, v2, :cond_6a

    .line 752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get fallback IMM with expected displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " actual IMM#displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-object v0

    .line 757
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b/117267690: Display ID mismatch found. ViewRootImpl displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " InputMethodManager displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Use the right InputMethodManager instance to avoid performance overhead."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    return-object v3
.end method

.method private getImeIdLocked()Ljava/lang/String;
    .registers 2

    .line 4626
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1571
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethodManager.getInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1575
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 1576
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private getNextServedViewLocked()Landroid/view/View;
    .registers 2

    .line 1015
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private getServedViewLocked()Landroid/view/View;
    .registers 2

    .line 1010
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private getStartInputFlags(Landroid/view/View;I)I
    .registers 4
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "startInputFlags"    # I

    .line 3143
    or-int/lit8 p2, p2, 0x1

    .line 3144
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3145
    or-int/lit8 p2, p2, 0x2

    .line 3147
    :cond_a
    return p2
.end method

.method private handleVoiceHWKey()V
    .registers 4

    .line 5003
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 5005
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 5006
    .local v0, "view":Landroid/view/View;
    const-string v1, "InputMethodManager"

    if-nez v0, :cond_11

    .line 5007
    const-string v2, "handleVoiceHWKey: have no served view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    return-void

    .line 5011
    :cond_11
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 5012
    const-string v2, "handleVoiceHWKey: have no active input connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5013
    return-void

    .line 5016
    :cond_1d
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleVoiceHWKey()V

    .line 5017
    return-void
.end method

.method private hasActiveInputConnectionInternal(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 985
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 986
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_20

    .line 990
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_1d

    .line 991
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    monitor-exit v0

    .line 990
    return v2

    .line 987
    :cond_20
    :goto_20
    monitor-exit v0

    return v2

    .line 992
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private hasServedByInputMethodLocked(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1023
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 1024
    .local v0, "servedView":Landroid/view/View;
    if-eq v0, p1, :cond_11

    if-eqz v0, :cond_f

    .line 1025
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    .line 1024
    :goto_12
    return v1
.end method

.method private hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 15
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 2372
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 2373
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 2372
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v2, v1, v3, p4}, Landroid/view/inputmethod/ImeTracker;->onRequestHide(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 2375
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v0, v3, p4, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2377
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v3, "InputMethodManager#hideSoftInputFromWindow"

    invoke-virtual {v1, v3, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2380
    const-string v1, "InputMethodManager_LC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hsifw() - flag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    sget-boolean v1, Landroid/view/inputmethod/SemInputMethodManagerUtils;->DEBUG_CALL_STACK:Z

    if-eqz v1, :cond_5e

    .line 2382
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSoftInput callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_5e
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2386
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2387
    :try_start_64
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 2388
    .local v2, "servedView":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eq v4, p1, :cond_72

    goto :goto_8d

    .line 2402
    :cond_72
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2404
    const-string v3, "InputMethodManager_LC"

    const-string v4, "hsifw() - mService.hideSoftInput"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    move-object v5, p1

    move-object v6, v0

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-static/range {v4 .. v9}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 2389
    :cond_8d
    :goto_8d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2390
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v4

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v0, v3, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2394
    const-string v3, "InputMethodManager_LC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hsifw() ignored windowToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2395
    if-nez p1, :cond_b3

    const-string/jumbo v5, "null"

    goto :goto_b4

    :cond_b3
    move-object v5, p1

    :goto_b4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " servedView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2396
    if-nez v2, :cond_c4

    const-string/jumbo v5, "null"

    goto :goto_c8

    :cond_c4
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    :goto_c8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2394
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 2408
    .end local v2    # "servedView":Landroid/view/View;
    :catchall_e2
    move-exception v2

    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_64 .. :try_end_e4} :catchall_e2

    throw v2
.end method

.method public static invalidateLocalStylusHandwritingAvailabilityCaches()V
    .registers 1

    .line 696
    const-string v0, "cache_key.system_server.stylus_handwriting"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method private invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .registers 5
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .line 4008
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 4009
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4012
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    goto :goto_1f

    .line 4016
    :cond_12
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 4017
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4018
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4020
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1f
    return-void
.end method

.method private static isAutofillUIShowing(Landroid/view/View;)Z
    .registers 3
    .param p0, "servedView"    # Landroid/view/View;

    .line 711
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 712
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private isImeSessionAvailableLocked()Z
    .registers 2

    .line 4621
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isInEditMode()Z
    .registers 1

    .line 1444
    const/4 v0, 0x0

    return v0
.end method

.method static isInEditModeInternal()Z
    .registers 1

    .line 1448
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method private isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z
    .registers 13
    .param p1, "previousViewFocusParameters"    # Landroid/view/inputmethod/ViewFocusParameterInfo;
    .param p2, "startInputFlags"    # I
    .param p3, "startInputReason"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 3068
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_19

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_19

    if-eqz p1, :cond_19

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3071
    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/ViewFocusParameterInfo;->sameAs(Landroid/view/inputmethod/EditorInfo;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 3068
    :goto_1a
    return v0
.end method

.method static synthetic lambda$createStubInstance$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "proxy"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1488
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1489
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1489
    if-ne v0, v1, :cond_12

    .line 1490
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1491
    :cond_12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_17

    .line 1492
    return-object v3

    .line 1493
    :cond_17
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_22

    .line 1494
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1495
    :cond_22
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_27

    .line 1496
    return-object v3

    .line 1497
    :cond_27
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2c

    .line 1498
    return-object v3

    .line 1499
    :cond_2c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_31

    .line 1500
    return-object v3

    .line 1501
    :cond_31
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3b

    .line 1502
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1503
    :cond_3b
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_46

    .line 1504
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1506
    :cond_46
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$doInvalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 4
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "accessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I
    .param p3, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 2750
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method static synthetic lambda$getShortcutInputMethodsAndSubtypes$4(Landroid/view/inputmethod/InputMethodInfo;)I
    .registers 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 4237
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$startInputInner$2(I)V
    .registers 8
    .param p1, "startInputReason"    # I

    .line 2847
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    return-void
.end method

.method private synthetic lambda$updateSelection$3(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 13
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I
    .param p3, "candidatesStart"    # I
    .param p4, "candidatesEnd"    # I
    .param p5, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 3476
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move-object v0, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 4038
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4039
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_11

    .line 4040
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent-IA;)V

    move-object v0, v1

    .line 4042
    :cond_11
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4043
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 4044
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 4045
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 4046
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 4047
    return-object v0
.end method

.method private onViewFocusChangedInternal(Landroid/view/View;Z)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 3210
    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_a1

    .line 3219
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3220
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3221
    :try_start_11
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v0, :cond_44

    .line 3223
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v2, :cond_42

    .line 3224
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onViewFocusChangedInternal return, mCurRootView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  view.getViewRootImpl()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3226
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3224
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :cond_42
    monitor-exit v1

    return-void

    .line 3231
    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_7b

    .line 3240
    :cond_51
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_72

    .line 3241
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onViewFocusChangedInternal, view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3242
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3241
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    :cond_72
    if-eqz p2, :cond_76

    .line 3255
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 3257
    :cond_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_11 .. :try_end_77} :catchall_9e

    .line 3258
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 3259
    return-void

    .line 3233
    :cond_7b
    :goto_7b
    :try_start_7b
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v2, :cond_9c

    .line 3234
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onViewFocusChangedInternal return, view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3235
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3234
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    :cond_9c
    monitor-exit v1

    return-void

    .line 3257
    :catchall_9e
    move-exception v2

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_7b .. :try_end_a0} :catchall_9e

    throw v2

    .line 3212
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a1
    :goto_a1
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_c6

    .line 3213
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewFocusChangedInternal return, view is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3214
    if-nez p1, :cond_b9

    const-string/jumbo v2, "null"

    goto :goto_bb

    :cond_b9
    const-string v2, "detached temporarily"

    :goto_bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3213
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    :cond_c6
    return-void
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1590
    const-string v0, "InputMethodManager"

    const-string v1, "InputMethodManager.peekInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1595
    :try_start_f
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v0

    return-object v1

    .line 1596
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method

.method private processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 4641
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 4642
    return v0

    .line 4645
    :cond_4
    array-length v1, p2

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, p2, v2

    .line 4646
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "--proto-com-android-imetracing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4647
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4648
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 4649
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4650
    const/4 v1, 0x1

    return v1

    .line 4645
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "arg":Ljava/lang/String;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4653
    :cond_23
    return v0
.end method

.method private recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 3
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4052
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 4053
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 4054
    return-void
.end method

.method private reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .registers 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "icHandler"    # Landroid/os/Handler;
    .param p4, "view"    # Landroid/view/View;

    .line 3077
    invoke-virtual {p4, p1, p2, p3}, Landroid/view/View;->onInputConnectionOpenedInternal(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;)V

    .line 3078
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3079
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_10

    .line 3080
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/HandwritingInitiator;->onInputConnectionCreated(Landroid/view/View;)V

    .line 3082
    :cond_10
    return-void
.end method

.method private semToggleSoftInput(II)V
    .registers 12
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .line 2671
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2674
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2675
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2676
    .local v1, "view":Landroid/view/View;
    const-string v3, "InputMethodManager_LC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stsi("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), served view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    if-eqz v1, :cond_5a

    .line 2678
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2679
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x19

    invoke-direct {p0, v3, p2, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_5a

    .line 2682
    :cond_50
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    move-object v3, p0

    move-object v4, v1

    move v6, p1

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 2686
    .end local v1    # "view":Landroid/view/View;
    :cond_5a
    :goto_5a
    monitor-exit v0

    .line 2687
    return-void

    .line 2686
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 5
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3940
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3941
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 3942
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 3943
    monitor-exit v0

    return-void

    .line 3946
    :cond_c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    move v1, v2

    .line 3947
    .local v1, "handled":Z
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 3949
    invoke-direct {p0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 3950
    return-void

    .line 3947
    .end local v1    # "handled":Z
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .registers 9
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3955
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_8b

    .line 3956
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v2, :cond_16

    .line 3957
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 3960
    :cond_16
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3961
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 3962
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 3963
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3964
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 3965
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3964
    const-wide/16 v4, 0x4

    const-string v6, "aq:imm"

    invoke-static {v4, v5, v6, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3967
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3968
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3969
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3970
    const/4 v3, -0x1

    return v3

    .line 3973
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4a
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    const-string v4, "InputMethodManager"

    if-eqz v3, :cond_67

    .line 3974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping event because IME is evicted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 3976
    :cond_67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send input event to IME: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dropping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_8b
    :goto_8b
    return v1
.end method

.method private showInputMethodPickerLocked()V
    .registers 3

    .line 4086
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "showInputMethodPickerLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 4090
    return-void
.end method

.method private showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I

    .line 2206
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_10

    .line 2207
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    .line 2208
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 2207
    invoke-interface {v2, v0, v3, v1, p5}, Landroid/view/inputmethod/ImeTracker;->onRequestShow(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    .line 2210
    :cond_10
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, p2, v1, p5, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2212
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    const-string v3, "InputMethodManager#showSoftInput"

    invoke-virtual {v2, v3, p0, v0}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2215
    const-string v0, "InputMethodManager_LC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ssi(): flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2216
    const/4 v3, 0x0

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4d

    :cond_49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " reason = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2217
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2215
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_72

    .line 2220
    const-string v0, "InputMethodManager_LC"

    const-string/jumbo v2, "ssi() view is not EditText"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_72
    sget-boolean v0, Landroid/view/inputmethod/SemInputMethodManagerUtils;->DEBUG_CALL_STACK:Z

    if-eqz v0, :cond_95

    .line 2223
    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSoftInput callers="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_95
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2228
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a0

    .line 2229
    invoke-virtual {v0, p1, p3, p4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1

    .line 2232
    :cond_a0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2233
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 2234
    :try_start_a6
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_11a

    .line 2235
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2236
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, p2, v1, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2239
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring showSoftInput() as view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not served."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2243
    .local v1, "servedView":Landroid/view/View;
    const-string v2, "InputMethodManager_LC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ssi(): Ignoring showSoftInput() servedView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2244
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2246
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2243
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    monitor-exit v9

    return v3

    .line 2251
    .end local v1    # "servedView":Landroid/view/View;
    :cond_11a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2255
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 2256
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSoftInput() view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2257
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2256
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2260
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2263
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v6

    .line 2258
    move-object v4, p2

    move v5, p3

    move-object v7, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z

    move-result v1

    monitor-exit v9

    return v1

    .line 2266
    :catchall_173
    move-exception v1

    monitor-exit v9
    :try_end_175
    .catchall {:try_start_a6 .. :try_end_175} :catchall_173

    throw v1
.end method

.method private startInputInner(ILandroid/os/IBinder;III)Z
    .registers 41
    .param p1, "startInputReason"    # I
    .param p2, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 2812
    move-object/from16 v7, p0

    move/from16 v15, p1

    iget-object v1, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2813
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    .line 2816
    .local v14, "view":Landroid/view/View;
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 2817
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting input: view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2818
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2817
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_3a
    const/4 v13, 0x0

    if-nez v14, :cond_48

    .line 2821
    if-eqz v0, :cond_46

    const-string v0, "InputMethodManager"

    const-string v2, "ABORT input: no served view!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_46
    monitor-exit v1

    return v13

    .line 2824
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_498

    .line 2830
    invoke-virtual {v14}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 2831
    .local v12, "vh":Landroid/os/Handler;
    if-nez v12, :cond_63

    .line 2836
    if-eqz v0, :cond_58

    const-string v0, "InputMethodManager"

    const-string v1, "ABORT input: no handler for view! Close current input."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_58
    const-string v0, "InputMethodManager"

    const-string v1, "ABORT input: no handler for view! Close current input."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 2841
    return v13

    .line 2843
    :cond_63
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_7f

    .line 2846
    if-eqz v0, :cond_76

    const-string v0, "InputMethodManager"

    const-string v1, "Starting input: reschedule to view thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_76
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, v7, v15}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/InputMethodManager;I)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2848
    return v13

    .line 2851
    :cond_7f
    if-nez p2, :cond_bb

    .line 2852
    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2853
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .local v1, "windowGainingFocus":Landroid/os/IBinder;
    if-nez v1, :cond_8f

    .line 2854
    const-string v0, "InputMethodManager"

    const-string v2, "ABORT input: ServedView must be attached to a Window"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    return v13

    .line 2859
    :cond_8f
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-nez v2, :cond_9e

    .line 2860
    const-string v0, "InputMethodManager"

    const-string/jumbo v2, "startInputInner: viewRootImpl is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    return v13

    .line 2865
    :cond_9e
    move/from16 v2, p3

    invoke-direct {v7, v14, v2}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result v2

    .line 2866
    .end local p3    # "startInputFlags":I
    .local v2, "startInputFlags":I
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2867
    .end local p4    # "softInputMode":I
    .local v3, "softInputMode":I
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v4

    .end local p5    # "windowFlags":I
    .local v4, "windowFlags":I
    goto :goto_c3

    .line 2851
    .end local v1    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v2    # "startInputFlags":I
    .end local v3    # "softInputMode":I
    .end local v4    # "windowFlags":I
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :cond_bb
    move/from16 v2, p3

    move-object/from16 v20, p2

    move/from16 v21, p4

    move/from16 v22, p5

    .line 2873
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v2    # "startInputFlags":I
    .local v20, "windowGainingFocus":Landroid/os/IBinder;
    .local v21, "softInputMode":I
    .local v22, "windowFlags":I
    :goto_c3
    invoke-static {v14}, Landroid/view/inputmethod/InputMethodManager;->createInputConnection(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v11

    .line 2874
    .local v11, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Landroid/view/inputmethod/InputConnection;

    .line 2875
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/view/inputmethod/EditorInfo;

    .line 2877
    .local v9, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    iget-object v1, v9, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_dc

    .line 2878
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v9, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2880
    :cond_dc
    invoke-static {v14, v9}, Landroid/view/inputmethod/SemInputMethodManagerUtils;->putInfoInExtra(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)V

    .line 2884
    const/16 v23, 0x0

    .line 2886
    .local v23, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 2889
    :try_start_e4
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_489

    move-object v6, v1

    .line 2890
    .local v6, "servedView":Landroid/view/View;
    if-ne v6, v14, :cond_427

    :try_start_eb
    iget-boolean v1, v7, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v1, :cond_fd

    move-object/from16 v28, v6

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v3, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move v1, v13

    move-object v9, v14

    goto/16 :goto_433

    .line 2908
    :cond_fd
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;
    :try_end_ff
    .catchall {:try_start_eb .. :try_end_ff} :catchall_419

    if-nez v0, :cond_106

    .line 2909
    or-int/lit8 v2, v2, 0x4

    move/from16 v24, v2

    goto :goto_108

    .line 2908
    :cond_106
    move/from16 v24, v2

    .line 2912
    .end local v2    # "startInputFlags":I
    .local v24, "startInputFlags":I
    :goto_108
    :try_start_108
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialToolType(I)V

    .line 2915
    invoke-virtual {v9}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iput-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 2918
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-object/from16 v25, v0

    .line 2920
    .local v25, "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    iput-boolean v13, v7, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z
    :try_end_11d
    .catchall {:try_start_108 .. :try_end_11d} :catchall_409

    .line 2921
    const/4 v5, 0x0

    if-eqz v0, :cond_127

    .line 2922
    :try_start_120
    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 2923
    iput-object v5, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 2924
    iput-object v5, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2927
    :cond_127
    if-eqz v10, :cond_170

    .line 2928
    iget v0, v9, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 2929
    iget v0, v9, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 2930
    iget v1, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v1, v7, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    .line 2931
    iput v0, v7, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    .line 2932
    const/4 v0, -0x1

    iput v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2933
    iput v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2934
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2935
    iput-object v5, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    :try_end_143
    .catchall {:try_start_120 .. :try_end_143} :catchall_161

    .line 2936
    const/4 v1, 0x0

    .line 2938
    .local v1, "handler":Landroid/os/Handler;
    :try_start_144
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_148
    .catch Ljava/lang/AbstractMethodError; {:try_start_144 .. :try_end_148} :catch_14a
    .catchall {:try_start_144 .. :try_end_148} :catchall_161

    move-object v1, v0

    .line 2941
    goto :goto_14b

    .line 2939
    :catch_14a
    move-exception v0

    .line 2942
    :goto_14b
    move-object v0, v1

    .line 2943
    .local v0, "icHandler":Landroid/os/Handler;
    :try_start_14c
    iput-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2944
    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 2945
    if-eqz v0, :cond_157

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_15b

    :cond_157
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    :goto_15b
    invoke-direct {v2, v3, v10, v7, v14}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    :try_end_15e
    .catchall {:try_start_14c .. :try_end_15e} :catchall_161

    move-object v1, v2

    .line 2946
    .local v1, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    move-object v4, v1

    goto :goto_175

    .line 3031
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v1    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v6    # "servedView":Landroid/view/View;
    .end local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :catchall_161
    move-exception v0

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v3, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object v9, v14

    move v5, v15

    move/from16 v2, v24

    goto/16 :goto_494

    .line 2947
    .restart local v6    # "servedView":Landroid/view/View;
    .restart local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :cond_170
    const/4 v1, 0x0

    .line 2948
    .restart local v1    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    const/4 v0, 0x0

    .line 2949
    .restart local v0    # "icHandler":Landroid/os/Handler;
    :try_start_172
    iput-object v5, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    move-object v4, v1

    .line 2951
    .end local v1    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .local v4, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :goto_175
    iput-object v4, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 2953
    sget-boolean v26, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z
    :try_end_179
    .catchall {:try_start_172 .. :try_end_179} :catchall_409

    if-eqz v26, :cond_1b9

    .line 2954
    :try_start_17b
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START INPUT: view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startInputFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2956
    invoke-static/range {v24 .. v24}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2954
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catchall {:try_start_17b .. :try_end_1b9} :catchall_161

    .line 2960
    :cond_1b9
    :try_start_1b9
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z
    :try_end_1bb
    .catchall {:try_start_1b9 .. :try_end_1bb} :catchall_409

    const/4 v3, 0x1

    if-eqz v1, :cond_1da

    if-nez v25, :cond_1da

    if-nez v10, :cond_1da

    :try_start_1c2
    iget-object v2, v7, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

    .line 2963
    move-object/from16 v1, p0

    move/from16 v3, v24

    move-object/from16 v27, v4

    .end local v4    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .local v27, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    move/from16 v4, p1

    move/from16 v5, v21

    move-object/from16 v28, v6

    .end local v6    # "servedView":Landroid/view/View;
    .local v28, "servedView":Landroid/view/View;
    move/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z

    move-result v1
    :try_end_1d6
    .catchall {:try_start_1c2 .. :try_end_1d6} :catchall_161

    if-eqz v1, :cond_1de

    const/4 v3, 0x1

    goto :goto_1df

    .line 2960
    .end local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v28    # "servedView":Landroid/view/View;
    .restart local v4    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v6    # "servedView":Landroid/view/View;
    :cond_1da
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    .line 2963
    .end local v4    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v6    # "servedView":Landroid/view/View;
    .restart local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v28    # "servedView":Landroid/view/View;
    :cond_1de
    move v3, v13

    :goto_1df
    move/from16 v29, v3

    .line 2966
    .local v29, "canSkip":Z
    :try_start_1e1
    new-instance v6, Landroid/view/inputmethod/ViewFocusParameterInfo;

    iget-object v2, v7, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    move-object v1, v6

    move/from16 v3, v24

    move/from16 v4, p1

    move/from16 v5, v21

    move-object v13, v6

    move/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/ViewFocusParameterInfo;-><init>(Landroid/view/inputmethod/EditorInfo;IIII)V

    iput-object v13, v7, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;
    :try_end_1f4
    .catchall {:try_start_1e1 .. :try_end_1f4} :catchall_409

    .line 2968
    if-eqz v29, :cond_202

    .line 2969
    if-eqz v26, :cond_1ff

    .line 2970
    :try_start_1f8
    const-string v1, "InputMethodManager"

    const-string v2, "Not calling IMMS due to switching between non-editable views."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    :cond_1ff
    monitor-exit v8
    :try_end_200
    .catchall {:try_start_1f8 .. :try_end_200} :catchall_161

    const/4 v1, 0x0

    return v1

    .line 2974
    :cond_202
    const/4 v1, 0x0

    :try_start_203
    iget-object v2, v9, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;
    :try_end_205
    .catchall {:try_start_203 .. :try_end_205} :catchall_409

    if-eqz v2, :cond_20e

    .line 2975
    :try_start_207
    iget-object v2, v9, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2
    :try_end_20d
    .catchall {:try_start_207 .. :try_end_20d} :catchall_161

    goto :goto_212

    :cond_20e
    :try_start_20e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    :goto_212
    move/from16 v18, v2

    .line 2976
    .local v18, "targetUserId":I
    const-string v2, "IMM.startInputOrWindowGainedFocus"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2978
    const-string v2, "InputMethodManager"

    const-string/jumbo v5, "startInputInner - IInputMethodManagerGlobalInvoker.startInputOrWindowGainedFocus"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v2, v7, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2983
    if-nez v27, :cond_22a

    const/16 v16, 0x0

    goto :goto_230

    .line 2984
    :cond_22a
    invoke-virtual/range {v27 .. v27}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v5

    move-object/from16 v16, v5

    .line 2985
    :goto_230
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v6, v7, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;
    :try_end_23c
    .catchall {:try_start_20e .. :try_end_23c} :catchall_409

    .line 2980
    move-object/from16 v30, v8

    move/from16 v8, p1

    move-object v13, v9

    .end local v9    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v13, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move-object v9, v2

    move-object v2, v10

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v10, v20

    move-object/from16 v31, v11

    .end local v11    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v31, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    move/from16 v11, v24

    move-object/from16 v32, v12

    .end local v12    # "vh":Landroid/os/Handler;
    .local v32, "vh":Landroid/os/Handler;
    move/from16 v12, v21

    move-object/from16 v33, v13

    .end local v13    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v33, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move/from16 v13, v22

    move-object/from16 v34, v14

    .end local v14    # "view":Landroid/view/View;
    .local v34, "view":Landroid/view/View;
    move-object/from16 v14, v33

    move-object/from16 v15, v27

    move/from16 v17, v5

    move-object/from16 v19, v6

    :try_start_25b
    invoke-static/range {v8 .. v19}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v5
    :try_end_25f
    .catchall {:try_start_25b .. :try_end_25f} :catchall_3fd

    .line 2987
    .end local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .local v5, "res":Lcom/android/internal/inputmethod/InputBindResult;
    :try_start_25f
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_262
    .catchall {:try_start_25f .. :try_end_262} :catchall_3ef

    .line 2988
    if-eqz v26, :cond_28b

    :try_start_264
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting input: Bind result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27c
    .catchall {:try_start_264 .. :try_end_27c} :catchall_27d

    goto :goto_28b

    .line 3031
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v18    # "targetUserId":I
    .end local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v28    # "servedView":Landroid/view/View;
    .end local v29    # "canSkip":Z
    :catchall_27d
    move-exception v0

    move-object v3, v2

    move-object/from16 v23, v5

    move/from16 v2, v24

    move-object/from16 v6, v33

    move-object/from16 v9, v34

    move/from16 v5, p1

    goto/16 :goto_494

    .line 2989
    .restart local v0    # "icHandler":Landroid/os/Handler;
    .restart local v18    # "targetUserId":I
    .restart local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v28    # "servedView":Landroid/view/View;
    .restart local v29    # "canSkip":Z
    :cond_28b
    :goto_28b
    if-nez v5, :cond_2d4

    .line 2990
    :try_start_28d
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startInputOrWindowGainedFocus must not return null. startInputReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2992
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " editorInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_2a9
    .catchall {:try_start_28d .. :try_end_2a9} :catchall_2c6

    move-object/from16 v6, v33

    .end local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v6, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_2ab
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " startInputFlags="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2995
    invoke-static/range {v24 .. v24}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2990
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    monitor-exit v30
    :try_end_2c5
    .catchall {:try_start_2ab .. :try_end_2c5} :catchall_323

    return v1

    .line 3031
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v18    # "targetUserId":I
    .end local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v28    # "servedView":Landroid/view/View;
    .end local v29    # "canSkip":Z
    .restart local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :catchall_2c6
    move-exception v0

    move-object/from16 v6, v33

    move-object v3, v2

    move-object/from16 v23, v5

    move/from16 v2, v24

    move-object/from16 v9, v34

    move/from16 v5, p1

    .end local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    goto/16 :goto_494

    .line 2998
    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v0    # "icHandler":Landroid/os/Handler;
    .restart local v18    # "targetUserId":I
    .restart local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v28    # "servedView":Landroid/view/View;
    .restart local v29    # "canSkip":Z
    .restart local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_2d4
    move-object/from16 v6, v33

    .end local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_2d6
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputBindResult;->getVirtualDisplayToScreenMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iput-object v3, v7, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2999
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;
    :try_end_2de
    .catchall {:try_start_2d6 .. :try_end_2de} :catchall_3e3

    if-eqz v3, :cond_32f

    .line 3000
    :try_start_2e0
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-direct {v7, v3}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    .line 3001
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v3, v7, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 3002
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v3, v5}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    iput-object v3, v7, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    .line 3003
    iget-object v3, v7, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3004
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v3, :cond_31e

    .line 3005
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2fa
    iget-object v4, v5, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_31e

    .line 3006
    iget-object v4, v5, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 3008
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 3007
    invoke-static {v4}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v4

    .line 3009
    .local v4, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v4, :cond_31b

    .line 3010
    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    iget-object v9, v5, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 3011
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 3010
    invoke-virtual {v8, v9, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3005
    .end local v4    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    :cond_31b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2fa

    .line 3015
    .end local v3    # "i":I
    :cond_31e
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v3, v7, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;
    :try_end_322
    .catchall {:try_start_2e0 .. :try_end_322} :catchall_323

    goto :goto_33e

    .line 3031
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v18    # "targetUserId":I
    .end local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v28    # "servedView":Landroid/view/View;
    .end local v29    # "canSkip":Z
    :catchall_323
    move-exception v0

    move-object v3, v2

    move-object/from16 v23, v5

    move/from16 v2, v24

    move-object/from16 v9, v34

    move/from16 v5, p1

    goto/16 :goto_494

    .line 3016
    .restart local v0    # "icHandler":Landroid/os/Handler;
    .restart local v18    # "targetUserId":I
    .restart local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v28    # "servedView":Landroid/view/View;
    .restart local v29    # "canSkip":Z
    :cond_32f
    :try_start_32f
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;
    :try_end_331
    .catchall {:try_start_32f .. :try_end_331} :catchall_3e3

    if-eqz v3, :cond_33e

    :try_start_333
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v4, v7, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v3, v4, :cond_33e

    .line 3017
    iget-object v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V
    :try_end_33e
    .catchall {:try_start_333 .. :try_end_33e} :catchall_323

    .line 3019
    :cond_33e
    :goto_33e
    :try_start_33e
    iget v3, v5, Lcom/android/internal/inputmethod/InputBindResult;->result:I
    :try_end_340
    .catchall {:try_start_33e .. :try_end_340} :catchall_3e3

    packed-switch v3, :pswitch_data_4a0

    const/4 v3, 0x1

    goto :goto_34b

    .line 3021
    :pswitch_345
    const/4 v3, 0x1

    :try_start_346
    iput-boolean v3, v7, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 3022
    const/4 v4, 0x0

    iput-object v4, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;
    :try_end_34b
    .catchall {:try_start_346 .. :try_end_34b} :catchall_323

    .line 3025
    :goto_34b
    :try_start_34b
    iget-object v4, v7, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_34d
    .catchall {:try_start_34b .. :try_end_34d} :catchall_3e3

    if-eqz v4, :cond_35e

    .line 3026
    :try_start_34f
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v4

    if-eqz v4, :cond_35e

    .line 3027
    iget-object v4, v7, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v4, v8}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_35e
    .catchall {:try_start_34f .. :try_end_35e} :catchall_323

    .line 3030
    :cond_35e
    :try_start_35e
    iget-object v4, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v4, :cond_364

    move v13, v3

    goto :goto_365

    :cond_364
    move v13, v1

    :goto_365
    move v1, v13

    .line 3031
    .end local v18    # "targetUserId":I
    .end local v25    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v27    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v28    # "servedView":Landroid/view/View;
    .end local v29    # "canSkip":Z
    .local v1, "hasServedView":Z
    monitor-exit v30
    :try_end_367
    .catchall {:try_start_35e .. :try_end_367} :catchall_3e3

    .line 3034
    if-eqz v2, :cond_3e0

    if-eqz v5, :cond_3e0

    iget-object v4, v5, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v4, :cond_3e0

    if-eqz v1, :cond_3e0

    .line 3042
    sget-boolean v4, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v4, :cond_3da

    .line 3043
    const-string v4, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling View.onInputConnectionOpened: view= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, v34

    .end local v34    # "view":Landroid/view/View;
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", ic="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", editorInfo="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", handler="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", editorInfo inputType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3045
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", imeOptions="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v6, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3046
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", internalImeOptions="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v6, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3043
    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3dc

    .line 3042
    .end local v9    # "view":Landroid/view/View;
    .restart local v34    # "view":Landroid/view/View;
    :cond_3da
    move-object/from16 v9, v34

    .line 3051
    .end local v34    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    :goto_3dc
    invoke-direct {v7, v2, v6, v0, v9}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    goto :goto_3e2

    .line 3034
    .end local v9    # "view":Landroid/view/View;
    .restart local v34    # "view":Landroid/view/View;
    :cond_3e0
    move-object/from16 v9, v34

    .line 3054
    .end local v34    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    :goto_3e2
    return v3

    .line 3031
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v1    # "hasServedView":Z
    .end local v9    # "view":Landroid/view/View;
    .restart local v34    # "view":Landroid/view/View;
    :catchall_3e3
    move-exception v0

    move-object/from16 v9, v34

    move-object v3, v2

    move-object/from16 v23, v5

    move/from16 v2, v24

    move/from16 v5, p1

    .end local v34    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_494

    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v9    # "view":Landroid/view/View;
    .restart local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v34    # "view":Landroid/view/View;
    :catchall_3ef
    move-exception v0

    move-object/from16 v6, v33

    move-object/from16 v9, v34

    move-object v3, v2

    move-object/from16 v23, v5

    move/from16 v2, v24

    move/from16 v5, p1

    .end local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v34    # "view":Landroid/view/View;
    .restart local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_494

    .end local v5    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v9    # "view":Landroid/view/View;
    .restart local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v34    # "view":Landroid/view/View;
    :catchall_3fd
    move-exception v0

    move-object/from16 v6, v33

    move-object/from16 v9, v34

    move/from16 v5, p1

    move-object v3, v2

    move/from16 v2, v24

    .end local v33    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v34    # "view":Landroid/view/View;
    .restart local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_494

    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v31    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v32    # "vh":Landroid/os/Handler;
    .local v9, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v12    # "vh":Landroid/os/Handler;
    .restart local v14    # "view":Landroid/view/View;
    :catchall_409
    move-exception v0

    move-object/from16 v30, v8

    move-object v6, v9

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object v9, v14

    move/from16 v5, p1

    move-object v3, v10

    move/from16 v2, v24

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v12    # "vh":Landroid/os/Handler;
    .end local v14    # "view":Landroid/view/View;
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v9, "view":Landroid/view/View;
    .restart local v31    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v32    # "vh":Landroid/os/Handler;
    goto/16 :goto_494

    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v24    # "startInputFlags":I
    .end local v31    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v32    # "vh":Landroid/os/Handler;
    .local v2, "startInputFlags":I
    .local v9, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v12    # "vh":Landroid/os/Handler;
    .restart local v14    # "view":Landroid/view/View;
    :catchall_419
    move-exception v0

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v3, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object v9, v14

    move/from16 v5, p1

    goto/16 :goto_494

    .line 2890
    .local v6, "servedView":Landroid/view/View;
    :cond_427
    move-object/from16 v28, v6

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v3, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move v1, v13

    move-object v9, v14

    .line 2892
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v12    # "vh":Landroid/os/Handler;
    .end local v14    # "view":Landroid/view/View;
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    .local v6, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v9, "view":Landroid/view/View;
    .restart local v28    # "servedView":Landroid/view/View;
    .restart local v31    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v32    # "vh":Landroid/os/Handler;
    :goto_433
    if-eqz v0, :cond_46b

    :try_start_435
    const-string v0, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting input: finished by someone else. view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2893
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " servedView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2894
    invoke-static/range {v28 .. v28}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mServedConnecting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v7, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2892
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :cond_46b
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :try_end_46d
    .catchall {:try_start_435 .. :try_end_46d} :catchall_485

    if-eqz v0, :cond_481

    const/4 v4, 0x6

    move/from16 v5, p1

    if-ne v5, v4, :cond_483

    .line 2899
    nop

    .line 2900
    :try_start_475
    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v4, v7, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2899
    invoke-direct {v7, v0, v4, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    goto :goto_483

    .line 2896
    :cond_481
    move/from16 v5, p1

    .line 2903
    :cond_483
    :goto_483
    monitor-exit v30

    return v1

    .line 3031
    .end local v28    # "servedView":Landroid/view/View;
    :catchall_485
    move-exception v0

    move/from16 v5, p1

    goto :goto_494

    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v31    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v32    # "vh":Landroid/os/Handler;
    .local v9, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v12    # "vh":Landroid/os/Handler;
    .restart local v14    # "view":Landroid/view/View;
    :catchall_489
    move-exception v0

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v3, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object v9, v14

    move v5, v15

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v12    # "vh":Landroid/os/Handler;
    .end local v14    # "view":Landroid/view/View;
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v9, "view":Landroid/view/View;
    .restart local v31    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v32    # "vh":Landroid/os/Handler;
    :goto_494
    monitor-exit v30
    :try_end_495
    .catchall {:try_start_475 .. :try_end_495} :catchall_496

    throw v0

    :catchall_496
    move-exception v0

    goto :goto_494

    .line 2824
    .end local v2    # "startInputFlags":I
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v9    # "view":Landroid/view/View;
    .end local v20    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v21    # "softInputMode":I
    .end local v22    # "windowFlags":I
    .end local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v31    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v32    # "vh":Landroid/os/Handler;
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :catchall_498
    move-exception v0

    move/from16 v2, p3

    move v5, v15

    :goto_49c
    :try_start_49c
    monitor-exit v1
    :try_end_49d
    .catchall {:try_start_49c .. :try_end_49d} :catchall_49e

    throw v0

    :catchall_49e
    move-exception v0

    goto :goto_49c

    :pswitch_data_4a0
    .packed-switch 0xc
        :pswitch_345
    .end packed-switch
.end method

.method private startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z
    .registers 14
    .param p1, "startInputReason"    # I
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 998
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 999
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1000
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1001
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1002
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1e

    .line 1003
    nop

    .line 1004
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    :cond_13
    move-object v4, v1

    .line 1003
    move-object v2, p0

    move v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result v0

    return v0

    .line 1002
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;

    .line 2435
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2439
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_c

    .line 2440
    invoke-direct {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;)Z

    .line 2443
    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2445
    .local v1, "useDelegation":Z
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2446
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2447
    :try_start_18
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3f

    .line 2448
    const-string v3, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring startStylusHandwriting as view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not served."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    monitor-exit v2

    return v4

    .line 2452
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v3, v5, :cond_50

    .line 2453
    const-string v3, "InputMethodManager"

    const-string v5, "Ignoring startStylusHandwriting: View\'s window does not have focus."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    monitor-exit v2

    return v4

    .line 2457
    :cond_50
    if-eqz v1, :cond_66

    .line 2458
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2459
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2458
    invoke-static {v3, v4, v5, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    monitor-exit v2

    return v3

    .line 2462
    :cond_66
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 2464
    monitor-exit v2

    return v4

    .line 2465
    :catchall_6d
    move-exception v3

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_18 .. :try_end_6f} :catchall_6d

    throw v3
.end method

.method static tearDownEditMode()V
    .registers 2

    .line 1428
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1432
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    const/4 v1, 0x0

    :try_start_a
    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1434
    monitor-exit v0

    .line 1435
    return-void

    .line 1434
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v1

    .line 1429
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be called only from layoutlib"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateIMESwitchEnable()V
    .registers 4

    .line 4980
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 4981
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 4982
    nop

    .line 4983
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.honeyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4984
    .local v1, "switchDisable":Z
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v2, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 4985
    .end local v1    # "switchDisable":Z
    goto :goto_27

    .line 4986
    :cond_21
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 4988
    :goto_27
    return-void
.end method

.method private updateInputChannelLocked(Landroid/view/InputChannel;)V
    .registers 3
    .param p1, "channel"    # Landroid/view/InputChannel;

    .line 1955
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1956
    return-void

    .line 1962
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_18

    .line 1963
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 1964
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 1965
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 1968
    :cond_18
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1f

    .line 1969
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1971
    :cond_1f
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 1972
    return-void
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Landroid/view/View;)Z
    .registers 3
    .param p1, "delegateView"    # Landroid/view/View;

    .line 2554
    nop

    .line 2555
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2554
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)Z
    .registers 4
    .param p1, "delegateView"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;

    .line 2577
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addVirtualStylusIdForTestSession()V
    .registers 3

    .line 3091
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3092
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 3093
    monitor-exit v0

    .line 3094
    return-void

    .line 3093
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public checkFocus()V
    .registers 9

    .line 3157
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3158
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v1, :cond_9

    .line 3159
    monitor-exit v0

    return-void

    .line 3161
    :cond_9
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3162
    monitor-exit v0

    return-void

    .line 3164
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1d

    .line 3165
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    .line 3168
    return-void

    .line 3164
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method closeCurrentInput()V
    .registers 12

    .line 3263
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 3264
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3263
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onRequestHide(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3266
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3269
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3270
    :try_start_1e
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2a

    goto :goto_63

    .line 3278
    :cond_2a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3281
    const-string v2, "InputMethodManager_LC"

    const-string v3, "closeCurrentInput: IInputMethodManagerGlobalInvoker.hideSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_7f

    .line 3283
    :try_start_38
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 3285
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 3283
    move-object v7, v0

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_4b} :catch_4c
    .catchall {:try_start_38 .. :try_end_4b} :catchall_7f

    .line 3296
    goto :goto_61

    .line 3290
    :catch_4c
    move-exception v2

    .line 3291
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_4d
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5e

    .line 3292
    :cond_57
    const-string v3, "InputMethodManager"

    const-string v4, "NullPointerException: No current root view, ignoring closeCurrentInput()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :cond_5e
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 3308
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_61
    monitor-exit v1

    .line 3309
    return-void

    .line 3271
    :cond_63
    :goto_63
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3272
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3274
    const-string v2, "InputMethodManager"

    const-string v3, "No current root view, ignoring closeCurrentInput()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    monitor-exit v1

    return-void

    .line 3308
    :catchall_7f
    move-exception v2

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_4d .. :try_end_81} :catchall_7f

    throw v2
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .registers 3

    .line 4938
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4939
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->dismissAndShowAgainInputMethodPickerLocked()V

    .line 4940
    monitor-exit v0

    .line 4942
    return-void

    .line 4940
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 14
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3851
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3852
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 3853
    instance-of v1, p1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    if-eqz v1, :cond_43

    .line 3854
    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    .line 3855
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2a

    .line 3856
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_2a

    .line 3857
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2a

    .line 3858
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 3859
    monitor-exit v0

    return v2

    .line 3863
    :cond_2a
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_43

    .line 3864
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x44f

    if-ne v3, v4, :cond_43

    .line 3865
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_43

    .line 3866
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->handleVoiceHWKey()V

    .line 3867
    monitor-exit v0

    return v2

    .line 3872
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_43
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_63

    .line 3873
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISPATCH INPUT EVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    :cond_63
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v1

    .line 3878
    .local v1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 3880
    invoke-direct {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 3884
    :cond_7e
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3885
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3886
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 3887
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 3891
    .end local v1    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_90
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_9b

    .line 3892
    const-string v1, "InputMethodManager"

    const-string v2, "dispatchInputEvent: mCurBindState or mCurBindState.mImeSession is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    :cond_9b
    monitor-exit v0

    .line 3898
    const/4 v0, 0x0

    return v0

    .line 3897
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method public dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3917
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3918
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 3919
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 3920
    return-void

    .line 3923
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3924
    if-eqz p1, :cond_16

    :try_start_f
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    goto :goto_17

    .line 3934
    :catchall_14
    move-exception v2

    goto :goto_2b

    .line 3924
    :cond_16
    const/4 v2, 0x0

    .line 3925
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_17
    if-nez v2, :cond_24

    .line 3926
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 3927
    .local v3, "servedView":Landroid/view/View;
    if-eqz v3, :cond_24

    .line 3928
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    move-object v2, v4

    .line 3931
    .end local v3    # "servedView":Landroid/view/View;
    :cond_24
    if-eqz v2, :cond_29

    .line 3932
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 3934
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_29
    monitor-exit v1

    .line 3935
    return-void

    .line 3934
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_14

    throw v2
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 2051
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2052
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2053
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 2054
    return-void

    .line 2057
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2058
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2059
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2060
    monitor-exit v1

    return-void

    .line 2063
    :cond_18
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2064
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2065
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 2067
    :cond_29
    monitor-exit v1

    .line 2068
    return-void

    .line 2067
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public doInvalidateInput(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z
    .registers 9
    .param p1, "inputConnection"    # Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .param p2, "textSnapshot"    # Landroid/view/inputmethod/TextSnapshot;
    .param p3, "sessionId"    # I

    .line 2730
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2731
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_5e

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_d

    goto :goto_5e

    .line 2735
    :cond_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_16

    .line 2737
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2739
    :cond_16
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2740
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 2741
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 2742
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2743
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2744
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCursorCapsMode()I

    move-result v3

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 2745
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSurroundingText()Landroid/view/inputmethod/SurroundingText;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V

    .line 2746
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v3, v1, v4, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 2748
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 2749
    invoke-virtual {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v3

    .line 2750
    .local v3, "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    new-instance v4, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v3, p3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-direct {p0, v4}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 2752
    monitor-exit v0

    return v2

    .line 2733
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    :cond_5e
    :goto_5e
    monitor-exit v0

    return v2

    .line 2753
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "icProto"    # [B

    .line 4666
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4667
    return-void

    .line 4670
    :cond_7
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4671
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4672
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 4673
    :try_start_1d
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4674
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4675
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4676
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    const-wide v4, 0x10800000005L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4677
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000006L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4678
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000007L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4679
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4680
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_72

    .line 4681
    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ViewRootImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4683
    :cond_72
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_7e

    .line 4684
    const-wide v4, 0x10b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4686
    :cond_7e
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-eqz v3, :cond_8a

    .line 4687
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ImeInsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4689
    :cond_8a
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v3, :cond_96

    .line 4690
    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4692
    :cond_96
    if-eqz p2, :cond_a0

    .line 4693
    const-wide v3, 0x10b00000009L

    invoke-virtual {p1, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4695
    :cond_a0
    monitor-exit v2

    .line 4696
    return-void

    .line 4695
    :catchall_a2
    move-exception v3

    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_1d .. :try_end_a4} :catchall_a2

    throw v3
.end method

.method finishInputLocked()V
    .registers 5

    .line 2006
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2007
    const/4 v1, 0x0

    .line 2008
    .local v1, "clearedView":Landroid/view/View;
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 2009
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 2010
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2011
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2013
    :cond_e
    if-eqz v1, :cond_3b

    .line 2014
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_30

    .line 2015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FINISH INPUT: mServedView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2016
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2015
    const-string v3, "InputMethodManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_30
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2019
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2020
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 2024
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->updateIMESwitchEnable()V

    .line 2028
    :cond_3b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 2029
    return-void
.end method

.method public forceHideSoftInput()Z
    .registers 3

    .line 4830
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_b

    .line 4831
    const-string v0, "InputMethodManager_LC"

    const-string v1, "forceHideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4834
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput(Landroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public forceHideSoftInput(Landroid/os/ResultReceiver;)Z
    .registers 13
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4844
    const-string v0, "InputMethodManager_LC"

    const-string v1, "fhsi()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 4846
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 4845
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x2a

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onRequestHide(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 4848
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 4850
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v3, "InputMethodManager#forceHideSoftInput"

    invoke-virtual {v1, v3, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 4853
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4854
    :try_start_2f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4856
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 4857
    .local v2, "servedView":Landroid/view/View;
    if-nez v2, :cond_4b

    .line 4858
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x2a

    move-object v7, v0

    move-object v9, p1

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 4861
    :cond_4b
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v10, 0x2a

    move-object v7, v0

    move-object v9, p1

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 4863
    .end local v2    # "servedView":Landroid/view/View;
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method public getCurTokenDisplayId()I
    .registers 2

    .line 4970
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurTokenDisplayId()I

    move-result v0

    return v0
.end method

.method public getCurrentFocusDisplayID()I
    .registers 2

    .line 4963
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentFocusDisplayID()I

    move-result v0

    return v0
.end method

.method public getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 1711
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1710
    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInputMethodInfoAsUser(Landroid/os/UserHandle;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1725
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    nop

    .line 1727
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1726
    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 4157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .registers 2

    .line 951
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    return-object v0
.end method

.method public getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultKey"    # Ljava/lang/String;

    .line 4998
    const-string v0, "InputMethodManager"

    const-string v1, "getDexSettingsValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 4493
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    return v0
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1742
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1758
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 5
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1776
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1778
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1775
    invoke-static {v0, p2, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 5
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1798
    nop

    .line 1799
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1798
    invoke-static {v0, p2, p3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFallbackContextFromServedView()Landroid/content/Context;
    .registers 4

    .line 771
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 772
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 773
    monitor-exit v0

    return-object v2

    .line 775
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :cond_12
    monitor-exit v0

    return-object v2

    .line 776
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1611
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1676
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodListAsUser(II)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1696
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 2

    .line 4268
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 4483
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .line 4234
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 4237
    .local v0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4240
    .local v1, "numEnabledImes":I
    const/4 v2, 0x0

    .local v2, "imiIndex":I
    :goto_15
    if-ge v2, v1, :cond_49

    .line 4241
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4242
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 4244
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 4245
    .local v5, "subtypeCount":I
    const/4 v6, 0x0

    .local v6, "subtypeIndex":I
    :goto_27
    if-ge v6, v5, :cond_46

    .line 4246
    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 4247
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v8, "voice"

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 4248
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 4245
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 4240
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v5    # "subtypeCount":I
    .end local v6    # "subtypeIndex":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4252
    .end local v2    # "imiIndex":I
    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public getWACOMPen()Z
    .registers 2

    .line 4920
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getWACOMPen()Z

    move-result v0

    return v0
.end method

.method public hasActiveInputConnection(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 968
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 969
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, p1, :cond_1f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_1f

    .line 973
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 974
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    monitor-exit v0

    .line 969
    return v1

    .line 975
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public hasPendingImeVisibilityRequests()Z
    .registers 2

    .line 4118
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hasPendingImeVisibilityRequests()Z

    move-result v0

    return v0
.end method

.method public hasVirtualDisplayToScreenMatrix()Z
    .registers 3

    .line 4326
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4327
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 4328
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hsifi() - flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManager_LC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(II)V

    .line 3813
    return-void
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 2335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2366
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1820
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 1821
    return-void
.end method

.method public invalidateInput(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 2776
    const-string v0, "InputMethodManager"

    const-string v1, "invalidateInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    sget-boolean v0, Landroid/view/inputmethod/SemInputMethodManagerUtils;->DEBUG_CALL_STACK:Z

    if-eqz v0, :cond_29

    .line 2778
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateInput callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2786
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_36

    .line 2787
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 2788
    return-void

    .line 2791
    :cond_36
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2792
    :try_start_39
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_4b

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_44

    goto :goto_4b

    .line 2795
    :cond_44
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput()V

    .line 2796
    monitor-exit v1

    .line 2797
    return-void

    .line 2793
    :cond_4b
    :goto_4b
    monitor-exit v1

    return-void

    .line 2796
    :catchall_4d
    move-exception v2

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public isAcceptingText()Z
    .registers 3

    .line 1905
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1906
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1907
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    .line 1908
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isAccessoryKeyboardState()I
    .registers 2

    .line 4883
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isAccessoryKeyboard()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 3

    .line 1880
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1881
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1882
    :try_start_6
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 1883
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isActive(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1865
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1866
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 1867
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1870
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1871
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1872
    :try_start_11
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    monitor-exit v1

    return v2

    .line 1873
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .registers 3

    .line 4952
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4953
    :try_start_3
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4954
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isCurrentRootView(Landroid/view/View;)Z
    .registers 5
    .param p1, "attachedView"    # Landroid/view/View;

    .line 1895
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1896
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 1897
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isCursorAnchorInfoEnabled()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3544
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3545
    :try_start_3
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    move v2, v4

    goto :goto_e

    :cond_d
    move v2, v3

    .line 3547
    .local v2, "isImmediate":Z
    :goto_e
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_15

    :cond_14
    move v1, v3

    .line 3549
    .local v1, "isMonitoring":Z
    :goto_15
    if-nez v2, :cond_19

    if-eqz v1, :cond_1a

    :cond_19
    move v3, v4

    :cond_1a
    monitor-exit v0

    return v3

    .line 3550
    .end local v1    # "isMonitoring":Z
    .end local v2    # "isImmediate":Z
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public isFullscreenMode()Z
    .registers 3

    .line 1855
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1856
    :try_start_3
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    monitor-exit v0

    return v1

    .line 1857
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isInputMethodPickerShown()Z
    .registers 2

    .line 4106
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isInputMethodPickerShownForTest()Z

    move-result v0

    return v0
.end method

.method public isInputMethodShown()Z
    .registers 2

    .line 4761
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method public isInputMethodSuppressingSpellChecker()Z
    .registers 3

    .line 1915
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1916
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mIsInputMethodSuppressingSpellChecker:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 1918
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isStylusHandwritingAvailable()Z
    .registers 2

    .line 1622
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->isStylusHandwritingAvailableAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isStylusHandwritingAvailableAsUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 1641
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1642
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_8

    .line 1643
    const/4 v1, 0x0

    return v1

    .line 1646
    :cond_8
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1647
    :try_start_b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    if-nez v2, :cond_19

    .line 1648
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$3;

    const-string v3, "cache_key.system_server.stylus_handwriting"

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4, v3}, Landroid/view/inputmethod/InputMethodManager$3;-><init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    .line 1657
    :cond_19
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1658
    .local v2, "isAvailable":Z
    monitor-exit v1

    .line 1659
    return v2

    .line 1658
    .end local v2    # "isAvailable":Z
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3531
    const/4 v0, 0x0

    return v0
.end method

.method public minimizeSoftInput(Landroid/os/IBinder;I)Z
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .line 4790
    const-string v0, "InputMethodManager_LC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minimizeSoftInput h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4791
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4792
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4793
    :try_start_1f
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 4794
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_2c

    goto :goto_34

    .line 4801
    :cond_2c
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v2, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 4795
    :cond_34
    :goto_34
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minimizeSoftInput: cancel windowToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4796
    if-nez p1, :cond_48

    const-string/jumbo v4, "null"

    goto :goto_49

    :cond_48
    move-object v4, p1

    :goto_49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " servedView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4797
    if-nez v1, :cond_59

    const-string/jumbo v4, "null"

    goto :goto_5d

    :cond_59
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    :goto_5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4795
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 4802
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_1f .. :try_end_79} :catchall_77

    throw v1
.end method

.method public notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 12
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3392
    const-string v0, "InputMethodManager_LC"

    const-string/jumbo v1, "notifyImeHidden: IInputMethodManagerGlobalInvoker.hideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    const/4 v0, 0x0

    const/16 v1, 0x1c

    const/4 v2, 0x2

    if-nez p2, :cond_1a

    .line 3395
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    .line 3396
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 3395
    invoke-interface {v3, v0, v4, v2, v1}, Landroid/view/inputmethod/ImeTracker;->onRequestHide(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    .line 3399
    :cond_1a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, p2, v2, v1, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3402
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v2, "InputMethodManager#notifyImeHidden"

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3404
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3405
    :try_start_32
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_58

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_58

    .line 3406
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_44

    goto :goto_58

    .line 3413
    :cond_44
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3415
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 3418
    monitor-exit v0

    .line 3419
    return-void

    .line 3407
    :cond_58
    :goto_58
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3408
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, p2, v2, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3410
    monitor-exit v0

    return-void

    .line 3418
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_32 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .registers 6
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1846
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "notifySuggestionPicked() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return-void
.end method

.method public notifyUserAction()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4225
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "notifyUserAction() is a hidden method, which is now just a stub method that does nothing.  Leave comments in b.android.com/114740982 if your  application still depends on the previous behavior of this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    return-void
.end method

.method public prepareStylusHandwritingDelegation(Landroid/view/View;)V
    .registers 3
    .param p1, "delegatorView"    # Landroid/view/View;

    .line 2491
    nop

    .line 2492
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2491
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 2493
    return-void
.end method

.method public prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V
    .registers 7
    .param p1, "delegatorView"    # Landroid/view/View;
    .param p2, "delegatePackageName"    # Ljava/lang/String;

    .line 2521
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2522
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    nop

    .line 2526
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2527
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    .line 2528
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 2531
    :cond_10
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2533
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2535
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2531
    invoke-static {v1, v2, p2, v3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 2536
    return-void
.end method

.method public registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .registers 4
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 3317
    if-eqz p1, :cond_c

    .line 3321
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3322
    :try_start_5
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 3323
    monitor-exit v0

    .line 3324
    return-void

    .line 3323
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1

    .line 3318
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 4
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1834
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "registerSuggestionSpansForNotification() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    return-void
.end method

.method public removeImeSurface(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 3427
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_c

    .line 3428
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "removeImeSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    :cond_c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3431
    :try_start_f
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 3432
    monitor-exit v0

    .line 3433
    return-void

    .line 3432
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1
.end method

.method public reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 791
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 792
    return-void
.end method

.method public reportVirtualDisplayGeometry(ILandroid/graphics/Matrix;)V
    .registers 5
    .param p1, "childDisplayId"    # I
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 4308
    if-nez p2, :cond_4

    .line 4309
    const/4 v0, 0x0

    .local v0, "matrixValues":[F
    goto :goto_b

    .line 4311
    .end local v0    # "matrixValues":[F
    :cond_4
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 4312
    .restart local v0    # "matrixValues":[F
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4314
    :goto_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1, p1, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->reportVirtualDisplayGeometryAsync(Lcom/android/internal/inputmethod/IInputMethodClient;I[F)V

    .line 4316
    return-void
.end method

.method public requestImeShow(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3355
    const-string v0, "InputMethodManager_LC"

    const-string/jumbo v1, "ris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3358
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3359
    :try_start_e
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 3360
    .local v1, "servedView":Landroid/view/View;
    const/16 v2, 0x25

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq v3, p1, :cond_1d

    goto :goto_31

    .line 3373
    :cond_1d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3376
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 3378
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3361
    :cond_31
    :goto_31
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3365
    const-string v2, "InputMethodManager_LC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ris() ignored windowToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3366
    if-nez p1, :cond_4c

    const-string/jumbo v4, "null"

    goto :goto_4d

    :cond_4c
    move-object v4, p1

    :goto_4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " servedView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3367
    if-nez v1, :cond_5d

    const-string/jumbo v4, "null"

    goto :goto_61

    :cond_5d
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    :goto_61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3365
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3379
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_e .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public restartInput(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 2700
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2701
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2702
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2703
    return-void

    .line 2706
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2707
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2708
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2709
    monitor-exit v1

    return-void

    .line 2712
    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2713
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_26

    .line 2715
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 2716
    return-void

    .line 2713
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public semForceHideSoftInput()Z
    .registers 3

    .line 4815
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_c

    .line 4816
    const-string v0, "InputMethodManager_LC"

    const-string/jumbo v1, "semForceHideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    :cond_c
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v0

    return v0
.end method

.method public semIsAccessoryKeyboard()Z
    .registers 2

    .line 4875
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public semIsInputMethodShown()Z
    .registers 2

    .line 4753
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method public semMinimizeSoftInput(Landroid/os/IBinder;I)Z
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .line 4780
    const-string v0, "InputMethodManager_LC"

    const-string/jumbo v1, "semMinimizeSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->minimizeSoftInput(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public semShowSideSyncSoftInput(I)V
    .registers 2
    .param p1, "showFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4899
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSideSyncSoftInput(I)V

    .line 4900
    return-void
.end method

.method public semShowSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semShowSoftInput - flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManager_LC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 4742
    return-void
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 3657
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3658
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 3659
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3660
    return-void

    .line 3663
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3664
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3665
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_50

    .line 3666
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_50

    .line 3669
    :cond_21
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_47

    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP PRIVATE COMMAND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    :cond_47
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3671
    monitor-exit v1

    .line 3672
    return-void

    .line 3667
    :cond_50
    :goto_50
    monitor-exit v1

    return-void

    .line 3671
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_10 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4422
    nop

    .line 4423
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 4422
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 4424
    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 12
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4175
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 4176
    const-string v0, "InputMethodManager"

    const-string v1, "System process should not call setCurrentInputMethodSubtype() because almost always it is a bug under multi-user / multi-profile environment. Consider directly interacting with InputMethodManagerService via LocalServices."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    return v2

    .line 4182
    :cond_11
    if-nez p1, :cond_14

    .line 4184
    return v2

    .line 4186
    :cond_14
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4187
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_1b

    .line 4188
    return v2

    .line 4190
    :cond_1b
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 4192
    return v2

    .line 4194
    :cond_24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4195
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "default_input_method"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4197
    .local v3, "imeId":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_35

    .line 4199
    return v2

    .line 4201
    :cond_35
    nop

    .line 4203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 4202
    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    .line 4204
    .local v4, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 4205
    .local v6, "numSubtypes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_44
    if-ge v7, v6, :cond_61

    .line 4206
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4207
    .local v8, "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 4208
    nop

    .line 4209
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 4208
    const-string/jumbo v9, "selected_input_method_subtype"

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4210
    return v5

    .line 4205
    .end local v8    # "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 4213
    .end local v7    # "i":I
    :cond_61
    return v2
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypeHashCodes"    # [I

    .line 4472
    nop

    .line 4473
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 4472
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 4474
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3696
    const-string v0, "InputMethodManager"

    if-nez p1, :cond_9a

    .line 3700
    if-nez p2, :cond_7

    .line 3701
    return-void

    .line 3703
    :cond_7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_15

    .line 3704
    const-string v1, "System process should not be calling setInputMethod() because almost always it is a bug under multi-user / multi-profile environment. Consider interacting with InputMethodManagerService directly via LocalServices."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    return-void

    .line 3710
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 3711
    .local v1, "fallbackContext":Landroid/content/Context;
    if-nez v1, :cond_1c

    .line 3712
    return-void

    .line 3714
    :cond_1c
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_25

    .line 3716
    return-void

    .line 3718
    :cond_25
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 3719
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3720
    .local v3, "numImis":I
    const/4 v4, 0x0

    .line 3721
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    if-ge v5, v3, :cond_46

    .line 3722
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 3723
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 3724
    const/4 v4, 0x1

    .line 3725
    goto :goto_46

    .line 3721
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 3728
    .end local v5    # "i":I
    :cond_46
    :goto_46
    if-nez v4, :cond_6d

    .line 3730
    const-string v5, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 3732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setInputMethod(null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") because the specified id not found in enabled IMEs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    return-void

    .line 3739
    :cond_6d
    const-string v5, "The undocumented behavior that setInputMethod() accepts null token when the caller has WRITE_SECURE_SETTINGS is deprecated. This behavior may be completely removed in a future version.  Update secure settings directly instead."

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3744
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "selected_input_method_subtype"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3746
    const-string v6, "default_input_method"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3748
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInputMethod: Putting Settings.Secure.DEFAULT_INPUT_METHOD, id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    return-void

    .line 3753
    .end local v1    # "fallbackContext":Landroid/content/Context;
    .end local v2    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v3    # "numImis":I
    .end local v4    # "found":Z
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInputMethod: Calling setInputMethodtoken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 3757
    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3783
    if-nez p1, :cond_b

    .line 3784
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "setInputMethodAndSubtype() does not accept null token on Android Q and later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    return-void

    .line 3788
    :cond_b
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3789
    return-void
.end method

.method public setRequestCursorUpdateDisplayIdCheck(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 4294
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4295
    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(J)V
    .registers 5
    .param p1, "timeout"    # J

    .line 3105
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3106
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1, p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 3107
    monitor-exit v0

    .line 3108
    return-void

    .line 3107
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setUpdateCursorAnchorInfoMode(I)V
    .registers 4
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3562
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3563
    :try_start_3
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 3564
    monitor-exit v0

    .line 3565
    return-void

    .line 3564
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4383
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 4384
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    .line 4383
    return v0
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 6
    .param p1, "imiId"    # Ljava/lang/String;

    .line 4128
    const/4 v0, 0x0

    .line 4129
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4130
    :try_start_4
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_b

    .line 4131
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object v0, v2

    .line 4133
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_3f

    .line 4134
    if-nez v0, :cond_24

    .line 4135
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 4136
    .local v1, "appContext":Landroid/content/Context;
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 4137
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 4140
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_24
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4141
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 4145
    const-string v2, "input_method_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4147
    :cond_3b
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4148
    return-void

    .line 4133
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public showInputMethodPicker()V
    .registers 3

    .line 4063
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4064
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 4065
    monitor-exit v0

    .line 4066
    return-void

    .line 4065
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public showInputMethodPickerFromSystem(ZI)V
    .registers 4
    .param p1, "showAuxiliarySubtypes"    # Z
    .param p2, "displayId"    # I

    .line 4077
    if-eqz p1, :cond_4

    .line 4078
    const/4 v0, 0x1

    goto :goto_5

    .line 4079
    :cond_4
    const/4 v0, 0x2

    :goto_5
    nop

    .line 4080
    .local v0, "mode":I
    invoke-static {v0, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromSystem(II)V

    .line 4081
    return-void
.end method

.method public showSideSyncSoftInput(I)V
    .registers 6
    .param p1, "showFlags"    # I

    .line 4905
    const-string v0, "InputMethodManager"

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v1, :cond_2a

    .line 4907
    :try_start_6
    const-string/jumbo v1, "showSideSyncSoftInput(I)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4908
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v1, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->showSideSyncSoftInput(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 4911
    goto :goto_2a

    .line 4909
    :catch_12
    move-exception v1

    .line 4910
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSideSyncSoftInput(I) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 2126
    const-string v0, "InputMethodManager_LC"

    const-string/jumbo v1, "showSoftInput(View,I)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2131
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_13

    .line 2132
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2135
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2200
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ssifim() - flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManager_LC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(I)V

    .line 3837
    return-void
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2280
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2281
    :try_start_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    .line 2282
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2281
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3, v3}, Landroid/view/inputmethod/ImeTracker;->onRequestShow(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 2285
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const-string v2, "InputMethodManager"

    const-string/jumbo v4, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using androidx.appcompat.widget.SearchView, please update to version 26.0 or newer version."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_52

    .line 2294
    :cond_24
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2298
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 2299
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2301
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2304
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v8

    const/4 v10, 0x1

    .line 2299
    move-object v6, v1

    move v7, p1

    move-object v9, p2

    invoke-static/range {v4 .. v10}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z

    .line 2307
    nop

    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    monitor-exit v0

    .line 2308
    return-void

    .line 2289
    .restart local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_52
    :goto_52
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2290
    const-string v2, "InputMethodManager"

    const-string v3, "No current root view, ignoring showSoftInputUnchecked()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    monitor-exit v0

    return-void

    .line 2307
    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1809
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 1810
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 1811
    return-void
.end method

.method public startStylusHandwriting(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 2430
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;)Z

    .line 2431
    return-void
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4345
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 4
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4363
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 4364
    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    .line 4363
    return v0
.end method

.method public toggleSoftInput(II)V
    .registers 3
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2646
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->semToggleSoftInput(II)V

    .line 2647
    return-void
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2603
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2606
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2607
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2608
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_1a

    goto :goto_27

    .line 2618
    :cond_1a
    const-string v2, "InputMethodManager_LC"

    const-string/jumbo v3, "tsifw()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-virtual {p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2621
    .end local v1    # "servedView":Landroid/view/View;
    monitor-exit v0

    .line 2622
    return-void

    .line 2610
    .restart local v1    # "servedView":Landroid/view/View;
    :cond_27
    :goto_27
    const-string v2, "InputMethodManager_LC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tsifw() ignored windowToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2611
    if-nez p1, :cond_3b

    const-string/jumbo v4, "null"

    goto :goto_3c

    :cond_3b
    move-object v4, p1

    :goto_3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " servedView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2612
    if-nez v1, :cond_4c

    const-string/jumbo v4, "null"

    goto :goto_50

    :cond_4c
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    :goto_50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2610
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    monitor-exit v0

    return-void

    .line 2621
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_d .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public undoMinimizeSoftInput()V
    .registers 1

    .line 4928
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->undoMinimizeSoftInput()V

    .line 4929
    return-void
.end method

.method public unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .registers 4
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 3332
    if-eqz p1, :cond_11

    .line 3336
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3337
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-ne v1, p1, :cond_c

    .line 3338
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 3340
    :cond_c
    monitor-exit v0

    .line 3341
    return-void

    .line 3340
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1

    .line 3333
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3575
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 3576
    .local v6, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_10

    .line 3577
    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 3578
    return-void

    .line 3581
    :cond_10
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3582
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3583
    :try_start_16
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_69

    .line 3584
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_69

    .line 3588
    :cond_27
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3589
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 3590
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_57

    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_57
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursor(Landroid/graphics/Rect;)V

    .line 3593
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3595
    :cond_67
    monitor-exit v0

    .line 3596
    return-void

    .line 3585
    :cond_69
    :goto_69
    monitor-exit v0

    return-void

    .line 3595
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_16 .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method public updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 3603
    if-eqz p1, :cond_9b

    if-nez p2, :cond_6

    goto/16 :goto_9b

    .line 3607
    :cond_6
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3608
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    .line 3609
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 3610
    return-void

    .line 3613
    :cond_10
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3614
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3615
    :try_start_16
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_96

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_96

    .line 3616
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_96

    .line 3621
    :cond_27
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_33

    .line 3622
    invoke-virtual {v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->resetHasPendingImmediateCursorAnchorInfoUpdate()Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 3623
    .local v2, "isImmediate":Z
    :goto_34
    if-nez v2, :cond_5c

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 3626
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v3, :cond_5a

    .line 3627
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring redundant updateCursorAnchorInfo: info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_5a
    monitor-exit v1

    return-void

    .line 3632
    :cond_5c
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v3, :cond_79

    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCursorAnchorInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_79
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_8b

    .line 3634
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 3635
    invoke-static {p2, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v4

    .line 3634
    invoke-virtual {v3, v4}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    goto :goto_92

    .line 3638
    :cond_8b
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v3, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 3640
    :goto_92
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 3641
    .end local v2    # "isImmediate":Z
    monitor-exit v1

    .line 3642
    return-void

    .line 3617
    :cond_96
    :goto_96
    monitor-exit v1

    return-void

    .line 3641
    :catchall_98
    move-exception v2

    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_16 .. :try_end_9a} :catchall_98

    throw v2

    .line 3604
    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9b
    :goto_9b
    return-void
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 2072
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2073
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2074
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2075
    return-void

    .line 2078
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2079
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2080
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2081
    monitor-exit v1

    return-void

    .line 2084
    :cond_18
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2085
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 2087
    :cond_25
    monitor-exit v1

    .line 2088
    return-void

    .line 2087
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .line 3449
    move-object/from16 v7, p0

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    move/from16 v12, p5

    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 3450
    .local v16, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_20

    .line 3451
    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 3452
    return-void

    .line 3455
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3456
    iget-object v6, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v6

    .line 3457
    :try_start_26
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_c5

    .line 3458
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    if-nez v0, :cond_3c

    move-object v11, v6

    move v10, v12

    move v9, v13

    move v8, v14

    goto/16 :goto_c9

    .line 3462
    :cond_3c
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->hasPendingInvalidation()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3463
    monitor-exit v6

    return-void

    .line 3466
    :cond_48
    iget v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, v15, :cond_5e

    iget v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, v14, :cond_5e

    iget v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, v13, :cond_5e

    iget v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    if-eq v0, v12, :cond_59

    goto :goto_5e

    :cond_59
    move-object v11, v6

    move v10, v12

    move v9, v13

    move v8, v14

    goto :goto_bd

    .line 3469
    :cond_5e
    :goto_5e
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_6a

    const-string v1, "InputMethodManager"

    const-string/jumbo v2, "updateSelection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    :cond_6a
    if-eqz v0, :cond_88

    .line 3472
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECTION CHANGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    :cond_88
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v8, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v10, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I
    :try_end_90
    .catchall {:try_start_26 .. :try_end_90} :catchall_cb

    move/from16 v11, p2

    move v5, v12

    move/from16 v12, p3

    move v4, v13

    move/from16 v13, p4

    move v3, v14

    move/from16 v14, p5

    :try_start_9b
    invoke-virtual/range {v8 .. v14}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelection(IIIIII)V

    .line 3476
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_bf

    move-object v1, v0

    move-object/from16 v2, p0

    move v8, v3

    move/from16 v3, p2

    move v9, v4

    move/from16 v4, p3

    move v10, v5

    move/from16 v5, p4

    move-object v11, v6

    move/from16 v6, p5

    :try_start_af
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InputMethodManager;IIII)V

    invoke-direct {v7, v0}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 3478
    iput v15, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 3479
    iput v8, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 3480
    iput v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3481
    iput v10, v7, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3483
    :goto_bd
    monitor-exit v11

    .line 3484
    return-void

    .line 3483
    :catchall_bf
    move-exception v0

    move v8, v3

    move v9, v4

    move v10, v5

    move-object v11, v6

    goto :goto_d0

    .line 3457
    :cond_c5
    move-object v11, v6

    move v10, v12

    move v9, v13

    move v8, v14

    .line 3459
    :goto_c9
    monitor-exit v11

    return-void

    .line 3483
    :catchall_cb
    move-exception v0

    move-object v11, v6

    move v10, v12

    move v9, v13

    move v8, v14

    :goto_d0
    monitor-exit v11
    :try_end_d1
    .catchall {:try_start_af .. :try_end_d1} :catchall_d2

    throw v0

    :catchall_d2
    move-exception v0

    goto :goto_d0
.end method

.method public viewClicked(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3499
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3500
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 3501
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3502
    return-void

    .line 3507
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3508
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 3509
    .local v2, "servedView":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 3510
    .local v3, "nextServedView":Landroid/view/View;
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_5e

    .line 3511
    if-eq v2, v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    move v4, v1

    .line 3512
    .local v4, "focusChanged":Z
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3513
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 3514
    :try_start_22
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_59

    .line 3515
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_59

    .line 3518
    :cond_33
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_50

    const-string v1, "InputMethodManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onViewClicked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :cond_50
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClicked(Z)V

    .line 3520
    monitor-exit v5

    .line 3521
    return-void

    .line 3516
    :cond_59
    :goto_59
    monitor-exit v5

    return-void

    .line 3520
    :catchall_5b
    move-exception v1

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_22 .. :try_end_5d} :catchall_5b

    throw v1

    .line 3510
    .end local v2    # "servedView":Landroid/view/View;
    .end local v3    # "nextServedView":Landroid/view/View;
    .end local v4    # "focusChanged":Z
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "appWindowToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3140
    return-void
.end method
