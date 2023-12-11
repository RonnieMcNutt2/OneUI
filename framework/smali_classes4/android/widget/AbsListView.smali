.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$DeviceConfigChangeListener;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$SemSmoothScrollByMove;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForDoublePenClick;,
        Landroid/widget/AbsListView$SemFastScrollEventListener;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$SemFluidScrollerEventListener;,
        Landroid/widget/AbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final APPWIDGET_CURRENT_POSITION_ACTION:Ljava/lang/String; = "com.sec.android.app.clockpackage.APPWIDGET_CURRENT_POSITION"

.field private static final APPWIDGET_EXTRA_CURRENT_POSITION:Ljava/lang/String; = "appwidgetCurrentPosition"

.field private static final APPWIDGET_EXTRA_FIRST_POSITION:Ljava/lang/String; = "appwidgetFirstPosition"

.field private static final APPWIDGET_FIRST_POSITION_ACTION:Ljava/lang/String; = "android.widget.ListView.APPWIDGET_FIRST_POSITION"

.field static final APP_WIDGET_BROADCAST_CURRENT_POSITION_TYPE:I = 0x1

.field static final APP_WIDGET_BROADCAST_FIRST_POSITION_TYPE:I = 0x2

.field private static final APP_WIDGET_INDICATOR_ALPHA:I = 0xff

.field private static final APP_WIDGET_INDICATOR_LEFT:I = 0x1

.field private static final APP_WIDGET_INDICATOR_MAX_COUNT:I = 0x14

.field private static final APP_WIDGET_INDICATOR_RIGHT:I = 0x2

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field private static final HOVERSCROLL_DELAY:I = 0x0

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED:F = 15.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field public static final SEM_GO_TO_TOP_BUTTON_STYLE_BLACK:I = 0x1

.field public static final SEM_GO_TO_TOP_BUTTON_STYLE_WHITE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static sContentCaptureReportingEnabledByDeviceConfig:Z

.field private static sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private final ON_ABSORB_VELOCITY:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:I

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:I

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field mAnimator:Landroid/animation/ValueAnimator;

.field private mAppWidgetEnabled:Z

.field private mAppWidgetFastScroll:Z

.field private mAppWidgetGetCurrentPosition:Ljava/lang/String;

.field private mAppWidgetGetFirstPosition:Ljava/lang/String;

.field private mAppWidgetGoToTop:Z

.field private mAppWidgetGoToTopOffset:I

.field mAppWidgetIndicator:Z

.field mAppWidgetSnapScroll:Z

.field private mAutoscrollDuration:I

.field private mAutoscrollDurationGap:I

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDeferSetSelectionFromTop:Z

.field private mDeferSetSelectionPosition:I

.field private mDensityScale:F

.field private mDirection:I

.field mDoubleFlingEnabled:Z

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field public mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEnableVibrationAtLongPress:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field mFocusedPos:I

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGoToTopRenderNode:Landroid/graphics/RenderNode;

.field private mGoToToping:Z

.field private mHasDividerHeight:I

.field private mHasDivier:Z

.field private mHasPerformedLongPress:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field private mIndicatorAnimatedSize:I

.field private mIndicatorBottomPadding:I

.field private mIndicatorDefaultSize:I

.field private mIndicatorFocusedSize:I

.field private mIndicatorIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorItemCnt:I

.field private mIndicatorMarginHorizontal:I

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorRectSize:I

.field private mIndicatorWhere:I

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenClick:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoverScrolled:Z

.field mIsHoveredByMouse:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsLongPressTriggeredByKey:Z

.field private mIsMouseHoverScroll:Z

.field private mIsMouseHoverScrollX:I

.field private mIsMouseHoverScrollY:I

.field private mIsMovedbeforeUP:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field final mIsScrap:[Z

.field private mIsSemOnClickEnabled:Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsfirstMoveEvent:Z

.field private mJumpScrollToTopState:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionEnabled:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field mNewFocusedPos:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOutline:Landroid/graphics/Outline;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mReportChildrenToContentCaptureOnNextUpdate:Z

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemCanGoFuther:Z

.field private mSemCloseChildByBottom:Landroid/view/View;

.field private mSemCloseChildByTop:Landroid/view/View;

.field private mSemCloseChildPositionByBottom:I

.field private mSemCloseChildPositionByTop:I

.field protected mSemCurrentFocusPosition:I

.field private mSemCustomMultiChoiceMode:Z

.field private mSemDistanceFromCloseChildBottom:I

.field private mSemDistanceFromCloseChildTop:I

.field private mSemDistanceFromTrackedChildTop:I

.field private mSemDragBlockBottom:I

.field private mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mSemDragBlockLeft:I

.field private mSemDragBlockRect:Landroid/graphics/Rect;

.field private mSemDragBlockRight:I

.field private mSemDragBlockTop:I

.field private mSemDragEndX:I

.field private mSemDragEndY:I

.field private mSemDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemDragSelectedItemSize:I

.field private mSemDragSelectedViewPosition:I

.field private mSemDragStartX:I

.field private mSemDragStartY:I

.field private mSemEnableGoToTop:Z

.field private mSemFastScroll:Landroid/widget/SemFastScroller;

.field mSemFastScrollCustomEffectEnabled:Z

.field public mSemFastScrollEffectState:Z

.field private mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

.field protected mSemForcedDrawEdgeEffect:Z

.field private final mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopBitmap:Landroid/graphics/Bitmap;

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSemPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemScrollAmount:I

.field private mSemScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemSizeChnage:Z

.field private mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

.field private mSemTrackedChild:Landroid/view/View;

.field private mSemTrackedChildPosition:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field protected mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchdownX:I

.field private mTouchdownY:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F

.field mWidthMeasureSpec:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivePointerId(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppWidgetGoToTop(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDecelerateInterpolator(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefInputConnection(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstPressedPoint(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForcedClick(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDetaching(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFirstPenClick(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSemOnClickEnabled(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPressMultiSelectionEnabled(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaximumVelocity(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinimumVelocity(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemCanGoFuther(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemCustomMultiChoiceMode(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemDragSelectedItemArray(Landroid/widget/AbsListView;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemDragSelectedItemSize(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemFastScroll(Landroid/widget/AbsListView;)Landroid/widget/SemFastScroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemGoToTopImage(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemScrollRemains(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTmpPoint(Landroid/widget/AbsListView;)[F
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVelocityTracker(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFirstPressedPoint(Landroid/widget/AbsListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFlingStrictSpan(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIndicatorAnimatedSize(Landroid/widget/AbsListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstPenClick(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLongPressMultiSelection(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLongPressTriggeredByKey(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingCheckForLongPress(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSemDragSelectedItemSize(Landroid/widget/AbsListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowFadeOutGTP(Landroid/widget/AbsListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTouchModeReset(Landroid/widget/AbsListView;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToPressItemListArray(Landroid/widget/AbsListView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearScrollingCache(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconsumeFlingInStretch(Landroid/widget/AbsListView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->consumeFlingInStretch(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcontentFits(Landroid/widget/AbsListView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTextFilterInput(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleMessage(Landroid/widget/AbsListView;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misItemClickable(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportActiveViewsToContentCapture(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->reportActiveViewsToContentCapture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemIsSupportGotoTop(Landroid/widget/AbsListView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msemPlayGotoToFadeIn(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemPlayGotoToFadeOut(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemPlayGotoTopHideImmediatley(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoTopHideImmediatley()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemSetFastScrollEnabledUiThread(Landroid/widget/AbsListView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemToNotifyMultiSelectionEnded(Landroid/widget/AbsListView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionEnded(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFastScrollerAlwaysVisibleUiThread(Landroid/widget/AbsListView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFastScrollerEnabledUiThread(Landroid/widget/AbsListView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldSkipScroll(Landroid/widget/AbsListView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldSkipScroll()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I
    .registers 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I
    .registers 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I
    .registers 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsContentCaptureReportingEnabledByDeviceConfig(Z)V
    .registers 1

    sput-boolean p0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 690
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    .line 695
    const/4 v1, 0x0

    sput-object v1, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 845
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v1, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 9455
    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 9456
    const/4 v0, 0x1

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 9457
    const/4 v0, 0x2

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 961
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 336
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 364
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 369
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 380
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 386
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 393
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 399
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 404
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 410
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 415
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 421
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 426
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 476
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 513
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 558
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 578
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 580
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 607
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 610
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 613
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 621
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 622
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 684
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 701
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 731
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 733
    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 735
    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 736
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 738
    new-array v4, v4, [F

    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 744
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 754
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 819
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 838
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    .line 839
    iput v0, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    .line 9244
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 9248
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 9249
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 9250
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 9252
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 9254
    new-instance v4, Landroid/graphics/Outline;

    invoke-direct {v4}, Landroid/graphics/Outline;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    .line 9259
    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 9260
    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 9261
    iput v0, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 9262
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 9263
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 9265
    const/16 v4, 0x9c4

    iput v4, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 9269
    new-instance v4, Landroid/widget/AbsListView$5;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 9274
    new-instance v4, Landroid/widget/AbsListView$6;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 9279
    new-instance v4, Landroid/widget/AbsListView$7;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 9305
    iput v0, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 9306
    iput v0, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 9308
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 9309
    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 9310
    const-wide/16 v6, 0x1f4

    iput-wide v6, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 9311
    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 9312
    iput v1, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 9314
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9315
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 9316
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 9317
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 9319
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 9320
    iput v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 9321
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 9322
    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 9323
    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 9333
    iput v1, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9334
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9340
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 9348
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 9349
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 9350
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 9351
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 9352
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 9353
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 9354
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 9357
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 9358
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 9360
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 9361
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 9362
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 9363
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 9364
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 9365
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 9366
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 9370
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 9371
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 9373
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 9374
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 9375
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 9376
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 9378
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 9379
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 9380
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 9381
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 9383
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 9384
    iput v1, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9385
    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 9387
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 9388
    iput v1, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9389
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 9390
    iput v1, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 9391
    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 9392
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 9393
    iput v1, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 9394
    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 9396
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 9397
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 9398
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 9399
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 9400
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 9404
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 9405
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 9406
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 9407
    iput v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    .line 9408
    iput v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    .line 9412
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 9416
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 9419
    iput v1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 9420
    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 9421
    iput v0, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 9422
    iput v0, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 9424
    iput v1, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    .line 9429
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 9430
    const/16 v1, 0x7f0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 9431
    const/16 v1, 0x8a

    iput v1, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 9435
    const/16 v1, 0x2710

    iput v1, p0, Landroid/widget/AbsListView;->ON_ABSORB_VELOCITY:I

    .line 9437
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 9439
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 9443
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 9446
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 9448
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 9449
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    .line 9451
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 9452
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 9453
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 9458
    sget v1, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 9461
    iput v0, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 9462
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 9463
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 9466
    iput v0, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 9477
    iput v0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    .line 9478
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    .line 9479
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    .line 9480
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    .line 9481
    const-string v1, ""

    iput-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    .line 9482
    iput-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    .line 9483
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    .line 9485
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    .line 9486
    iput v2, p0, Landroid/widget/AbsListView;->mIndicatorWhere:I

    .line 9495
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9497
    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    .line 9498
    iput v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    .line 9499
    iput v0, p0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    .line 9500
    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    .line 9501
    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    .line 9502
    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    .line 9503
    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    .line 9504
    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    .line 9505
    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    .line 9509
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    .line 9510
    iput v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    .line 962
    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    .line 963
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 964
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 966
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 967
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 969
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 971
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 973
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 974
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 975
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 976
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 977
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 980
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 981
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 985
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 988
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 302
    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 336
    iput v10, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 364
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 369
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 380
    const/4 v0, -0x1

    iput v0, v7, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 386
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 393
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, v7}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v7, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 399
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 404
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 410
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 415
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 421
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 426
    iput v10, v7, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 476
    iput v0, v7, Landroid/widget/AbsListView;->mTouchMode:I

    .line 513
    iput v10, v7, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 558
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 578
    iput v0, v7, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 580
    const/4 v1, 0x0

    iput-object v1, v7, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 607
    iput v0, v7, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 610
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 613
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 621
    iput-object v1, v7, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 622
    iput-object v1, v7, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 684
    iput v10, v7, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 701
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 731
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 733
    new-array v2, v11, [Z

    iput-object v2, v7, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 735
    const/4 v12, 0x2

    new-array v2, v12, [I

    iput-object v2, v7, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 736
    new-array v2, v12, [I

    iput-object v2, v7, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 738
    new-array v2, v12, [F

    iput-object v2, v7, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 744
    iput v10, v7, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 754
    iput v0, v7, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 819
    iput v10, v7, Landroid/widget/AbsListView;->mDirection:I

    .line 838
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHasDivier:Z

    .line 839
    iput v10, v7, Landroid/widget/AbsListView;->mHasDividerHeight:I

    .line 9244
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 9248
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 9249
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 9250
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 9252
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 9254
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    .line 9259
    iput v10, v7, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 9260
    iput v10, v7, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 9261
    iput v10, v7, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 9262
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 9263
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 9265
    const/16 v2, 0x9c4

    iput v2, v7, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 9269
    new-instance v2, Landroid/widget/AbsListView$5;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 9274
    new-instance v2, Landroid/widget/AbsListView$6;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 9279
    new-instance v2, Landroid/widget/AbsListView$7;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 9305
    iput v10, v7, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 9306
    iput v10, v7, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 9308
    const-wide/16 v2, 0x0

    iput-wide v2, v7, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 9309
    const-wide/16 v4, 0x12c

    iput-wide v4, v7, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 9310
    const-wide/16 v4, 0x1f4

    iput-wide v4, v7, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 9311
    iput-wide v2, v7, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 9312
    iput v0, v7, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 9314
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9315
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 9316
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 9317
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 9319
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 9320
    iput v10, v7, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 9321
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 9322
    iput v10, v7, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 9323
    iput v10, v7, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 9333
    iput v0, v7, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9334
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9340
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 9348
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 9349
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 9350
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 9351
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 9352
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 9353
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 9354
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 9357
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 9358
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 9360
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 9361
    iput v0, v7, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 9362
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 9363
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 9364
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 9365
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 9366
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 9370
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 9371
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 9373
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 9374
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 9375
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 9376
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 9378
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 9379
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 9380
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 9381
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 9383
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 9384
    iput v0, v7, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9385
    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 9387
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 9388
    iput v0, v7, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9389
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 9390
    iput v0, v7, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 9391
    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 9392
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 9393
    iput v0, v7, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 9394
    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 9396
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 9397
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 9398
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 9399
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 9400
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 9404
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 9405
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 9406
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 9407
    iput v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    .line 9408
    iput v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    .line 9412
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 9416
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 9419
    iput v0, v7, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 9420
    iput v10, v7, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 9421
    iput v10, v7, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 9422
    iput v10, v7, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 9424
    iput v0, v7, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    .line 9429
    const/16 v0, 0x64

    iput v0, v7, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 9430
    const/16 v0, 0x7f0

    iput v0, v7, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 9431
    const/16 v0, 0x8a

    iput v0, v7, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 9435
    const/16 v0, 0x2710

    iput v0, v7, Landroid/widget/AbsListView;->ON_ABSORB_VELOCITY:I

    .line 9437
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 9439
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 9443
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 9446
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 9448
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 9449
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    .line 9451
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 9452
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 9453
    const/16 v0, 0x1f4

    iput v0, v7, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 9458
    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v0, v7, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 9461
    iput v10, v7, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 9462
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 9463
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 9466
    iput v10, v7, Landroid/widget/AbsListView;->mPointerCount:I

    .line 9477
    iput v10, v7, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    .line 9478
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    .line 9479
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    .line 9480
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    .line 9481
    const-string v0, ""

    iput-object v0, v7, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    .line 9482
    iput-object v0, v7, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    .line 9483
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    .line 9485
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    .line 9486
    iput v11, v7, Landroid/widget/AbsListView;->mIndicatorWhere:I

    .line 9495
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9497
    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    .line 9498
    iput v10, v7, Landroid/widget/AbsListView;->mFocusedPos:I

    .line 9499
    iput v10, v7, Landroid/widget/AbsListView;->mNewFocusedPos:I

    .line 9500
    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    .line 9501
    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    .line 9502
    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    .line 9503
    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    .line 9504
    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    .line 9505
    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    .line 9509
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    .line 9510
    iput v10, v7, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    .line 989
    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    .line 990
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v8, v9}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 991
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v8, v9}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 993
    iget-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v7, v11}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 994
    iget-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v7, v11}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 996
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 998
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1000
    sget-object v0, Lcom/android/internal/R$styleable;->AbsListView:[I

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual {v8, v9, v0, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 1002
    .local v15, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 1005
    invoke-virtual {v15, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1006
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1eb

    .line 1007
    invoke-virtual {v7, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    :cond_1eb
    invoke-virtual {v15, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v7, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1012
    invoke-virtual {v15, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 1014
    const/4 v1, 0x3

    invoke-virtual {v15, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1016
    const/4 v1, 0x4

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 1018
    const/4 v1, 0x5

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1020
    const/4 v1, 0x6

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1022
    const/16 v2, 0x9

    invoke-virtual {v15, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1024
    const/4 v2, 0x7

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1027
    const/16 v2, 0x8

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1029
    const/16 v2, 0xb

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 1031
    const/16 v2, 0xa

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1034
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-ne v2, v1, :cond_256

    .line 1037
    invoke-virtual {v7, v10}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    .line 1039
    :cond_256
    return-void
.end method

.method private acceptFilter()Z
    .registers 2

    .line 2249
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    .line 2250
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2249
    :goto_1b
    return v0
.end method

.method static synthetic access$000(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 154
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 154
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 154
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method private addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "enabled"    # Z
    .param p3, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2916
    if-eqz p2, :cond_5

    .line 2917
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2919
    :cond_5
    return-void
.end method

.method private addToPressItemListArray(II)V
    .registers 7
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .line 9846
    const/4 v0, 0x0

    .line 9848
    .local v0, "checkCount":I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v1, :cond_6

    .line 9849
    return-void

    .line 9852
    :cond_6
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2b

    .line 9853
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 9854
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a6

    .line 9856
    :cond_20
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a6

    .line 9859
    :cond_2b
    if-ge p1, p2, :cond_59

    .line 9860
    sub-int v1, p2, p1

    add-int/lit8 v0, v1, 0x1

    .line 9861
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_58

    .line 9862
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 9863
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_53

    .line 9865
    :cond_4a
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9867
    :goto_53
    add-int/lit8 p1, p1, 0x1

    .line 9861
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .end local v1    # "i":I
    :cond_58
    goto :goto_a6

    .line 9869
    :cond_59
    if-le p1, p2, :cond_87

    .line 9870
    sub-int v1, p1, p2

    add-int/lit8 v0, v1, 0x1

    .line 9871
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_60
    if-ge v1, v0, :cond_86

    .line 9872
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 9873
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_81

    .line 9875
    :cond_78
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9877
    :goto_81
    add-int/lit8 p1, p1, -0x1

    .line 9871
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .end local v1    # "i":I
    :cond_86
    goto :goto_a6

    .line 9880
    :cond_87
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 9881
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 9883
    :cond_9d
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9887
    :goto_a6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9888
    return-void
.end method

.method private autoScrollWithDuration(I)V
    .registers 10
    .param p1, "duration"    # I

    .line 1872
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1873
    .local v0, "firstPosition":I
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1874
    .local v1, "firstView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1876
    .local v2, "lastView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1877
    .local v3, "height":I
    if-eqz v1, :cond_17

    .line 1878
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1880
    :cond_17
    if-eqz v2, :cond_1e

    .line 1881
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1884
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 1885
    .local v4, "count":I
    add-int/lit8 v5, v4, -0x1

    mul-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, -0x1

    sub-int v7, v4, v0

    mul-int/2addr v7, p1

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 1889
    return-void
.end method

.method private canScrollDown()Z
    .registers 9

    .line 2585
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2588
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_f

    move v1, v4

    goto :goto_10

    :cond_f
    move v1, v3

    .line 2591
    .local v1, "canScrollDown":Z
    :goto_10
    if-nez v1, :cond_29

    if-lez v0, :cond_29

    .line 2592
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2593
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_28

    move v3, v4

    :cond_28
    move v1, v3

    .line 2596
    .end local v2    # "child":Landroid/view/View;
    :cond_29
    return v1
.end method

.method private canScrollUp()Z
    .registers 7

    .line 2569
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2572
    .local v0, "canScrollUp":Z
    :goto_9
    if-nez v0, :cond_22

    .line 2573
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_22

    .line 2574
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2575
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    move v0, v1

    .line 2579
    .end local v3    # "child":Landroid/view/View;
    :cond_22
    return v0
.end method

.method private clearScrollingCache()V
    .registers 2

    .line 6254
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6255
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 6256
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6272
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6274
    :cond_16
    return-void
.end method

.method private consumeFlingInStretch(I)I
    .registers 7
    .param p1, "unconsumed"    # I

    .line 5023
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-gez p1, :cond_32

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_32

    .line 5024
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 5025
    .local v1, "size":I
    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 5026
    .local v3, "deltaDistance":F
    int-to-float v4, v1

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5027
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    .line 5026
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5028
    .local v0, "consumed":I
    if-eq v0, p1, :cond_2f

    .line 5029
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 5031
    :cond_2f
    sub-int v2, p1, v0

    return v2

    .line 5033
    .end local v0    # "consumed":I
    .end local v1    # "size":I
    .end local v3    # "deltaDistance":F
    :cond_32
    if-lez p1, :cond_61

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_61

    .line 5034
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 5035
    .restart local v1    # "size":I
    neg-int v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 5036
    .restart local v3    # "deltaDistance":F
    neg-int v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 5037
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    .line 5036
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5038
    .restart local v0    # "consumed":I
    if-eq v0, p1, :cond_5e

    .line 5039
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 5041
    :cond_5e
    sub-int v2, p1, v0

    return v2

    .line 5043
    .end local v0    # "consumed":I
    .end local v1    # "size":I
    .end local v3    # "deltaDistance":F
    :cond_61
    return p1
.end method

.method private contentFits()Z
    .registers 7

    .line 1463
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1464
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 1465
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    return v3

    .line 1467
    :cond_e
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_32

    add-int/lit8 v2, v0, -0x1

    .line 1468
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_32

    goto :goto_33

    :cond_32
    move v1, v3

    .line 1467
    :goto_33
    return v1
.end method

.method private createScrollingCache()V
    .registers 2

    .line 6246
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 6247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6248
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 6249
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 6251
    :cond_19
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 4
    .param p1, "animateEntrance"    # Z

    .line 7350
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_36

    .line 7351
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7352
    .local v0, "p":Landroid/widget/PopupWindow;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7353
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7354
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7355
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7356
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7357
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7358
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7359
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7360
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7361
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7363
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_36
    if-eqz p1, :cond_41

    .line 7364
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103030f

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_49

    .line 7366
    :cond_41
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030310

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7368
    :goto_49
    return-void
.end method

.method private dismissPopup()V
    .registers 2

    .line 6957
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    .line 6958
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6960
    :cond_7
    return-void
.end method

.method private doesTouchStopStretch()Z
    .registers 3

    .line 4405
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4406
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 4405
    :goto_24
    return v0
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 10060
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 10061
    .local v0, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 10062
    .local v1, "restoreCount":I
    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10064
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_19

    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_19

    .line 10065
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 10068
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 10069
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 10070
    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 10071
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    .line 10072
    .local v2, "alpha":F
    iget-object v4, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v4

    .line 10073
    .local v4, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v5, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 10074
    iget-object v5, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v6, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 10075
    iget-object v5, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, v2}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 10076
    iget-object v5, p0, Landroid/widget/AbsListView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 10077
    iget-object v3, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 10078
    iget-object v3, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 10079
    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 10080
    .end local v2    # "alpha":F
    .end local v4    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    goto :goto_64

    .line 10081
    :cond_5f
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10084
    :cond_64
    :goto_64
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10085
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 12185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_e

    .line 12186
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    .line 12189
    :cond_e
    iget v2, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    .line 12190
    return-void

    .line 12193
    :cond_14
    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    if-nez v2, :cond_30

    .line 12194
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 12195
    iget-object v5, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106039b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 12198
    :cond_30
    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    if-nez v2, :cond_3b

    .line 12199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    .line 12202
    :cond_3b
    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-eq v2, v5, :cond_52

    .line 12203
    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 12206
    :cond_52
    iget v2, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 12207
    .local v2, "scrollY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 12208
    .local v5, "restoreCount":I
    const/4 v6, 0x0

    int-to-float v7, v2

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12210
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    .line 12211
    .local v6, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    .line 12213
    .local v7, "h":I
    iget v8, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    const/16 v9, 0x14

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 12214
    .local v8, "itemCnt":I
    div-int/lit8 v10, v7, 0x2

    iget v11, v0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    mul-int/2addr v11, v8

    div-int/2addr v11, v3

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    sub-int/2addr v10, v11

    .line 12215
    .local v10, "halfHeight":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_78
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-ge v11, v12, :cond_9d

    .line 12216
    move v13, v11

    .line 12217
    .local v13, "realIndex":I
    if-le v12, v9, :cond_8b

    rsub-int/lit8 v14, v12, 0x28

    if-lt v11, v14, :cond_8b

    .line 12219
    sub-int/2addr v12, v11

    sub-int/2addr v12, v4

    div-int/2addr v12, v3

    rsub-int/lit8 v12, v12, 0x14

    add-int/lit8 v13, v12, -0x1

    goto :goto_91

    .line 12220
    :cond_8b
    rsub-int/lit8 v12, v12, 0x28

    if-gez v12, :cond_91

    .line 12221
    const/16 v13, 0x13

    .line 12223
    :cond_91
    :goto_91
    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12215
    .end local v13    # "realIndex":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_78

    .line 12226
    .end local v11    # "i":I
    :cond_9d
    iget-object v3, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 12227
    .local v3, "size":I
    iget v11, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-le v3, v11, :cond_15d

    iget v11, v0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    if-gt v3, v11, :cond_ad

    goto/16 :goto_15d

    .line 12230
    :cond_ad
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_ae
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-ge v11, v12, :cond_159

    .line 12232
    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v14, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xff

    const/16 v15, 0x7f

    const/high16 v16, 0x40000000    # 2.0f

    if-ne v12, v13, :cond_f6

    .line 12233
    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v13, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v4, v0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v12, v4, :cond_e5

    .line 12234
    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    int-to-float v4, v4

    div-float v4, v4, v16

    .line 12235
    .local v4, "radius":F
    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_11b

    .line 12237
    .end local v4    # "radius":F
    :cond_e5
    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    iget v13, v0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    sub-int/2addr v12, v13

    sub-int/2addr v4, v12

    int-to-float v4, v4

    div-float v4, v4, v16

    .line 12238
    .restart local v4    # "radius":F
    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_11b

    .line 12240
    .end local v4    # "radius":F
    :cond_f6
    iget-object v4, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v13, v0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v4, v12, :cond_111

    .line 12241
    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    int-to-float v4, v4

    div-float v4, v4, v16

    .line 12242
    .restart local v4    # "radius":F
    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_11b

    .line 12244
    .end local v4    # "radius":F
    :cond_111
    iget-object v4, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12245
    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    int-to-float v4, v4

    div-float v4, v4, v16

    .line 12248
    .restart local v4    # "radius":F
    :goto_11b
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-le v12, v9, :cond_129

    rsub-int/lit8 v12, v12, 0x28

    if-lt v11, v12, :cond_129

    rem-int/lit8 v12, v11, 0x2

    if-nez v12, :cond_129

    .line 12250
    const/4 v13, 0x1

    goto :goto_152

    .line 12253
    :cond_129
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorWhere:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_131

    .line 12254
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    goto :goto_135

    :cond_131
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    sub-int v12, v6, v12

    :goto_135
    int-to-float v12, v12

    int-to-float v14, v10

    iget v15, v0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    int-to-float v15, v15

    iget-object v9, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    .line 12255
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v9, v9, v17

    mul-float/2addr v15, v9

    add-float/2addr v14, v15

    iget-object v9, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 12253
    invoke-virtual {v1, v12, v14, v4, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12230
    .end local v4    # "radius":F
    :goto_152
    add-int/lit8 v11, v11, 0x1

    move v4, v13

    const/16 v9, 0x14

    goto/16 :goto_ae

    .line 12259
    .end local v11    # "i":I
    :cond_159
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 12260
    return-void

    .line 12228
    :cond_15d
    :goto_15d
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3184
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldDrawSelector()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3185
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3186
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3187
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3190
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_10
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_57

    .line 3191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3192
    .local v0, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3193
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3194
    .local v3, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3195
    if-eqz v1, :cond_56

    .line 3196
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3197
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3198
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3200
    .end local v3    # "selectedPosition":Ljava/lang/Integer;
    :cond_56
    goto :goto_20

    .line 3202
    .end local v0    # "tempSelectorRect":Landroid/graphics/Rect;
    .end local v1    # "selectedChild":Landroid/view/View;
    :cond_57
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 10088
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 10089
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10088
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10090
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10091
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10092
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10093
    return-object v0
.end method

.method private endLongPressMultiSelection(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 10992
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionEnded(II)V

    .line 10994
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 10995
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10997
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10998
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10999
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 11000
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 11002
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 11003
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 11004
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 11005
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 11007
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 11008
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 11009
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 11010
    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 11013
    iget-object v2, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 11014
    iget-object v2, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11016
    :cond_33
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11018
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 11019
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 11020
    return-void
.end method

.method private finishGlows()V
    .registers 2

    .line 7599
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7600
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7601
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7603
    :cond_10
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 7003
    sparse-switch p2, :sswitch_data_96

    .line 7036
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7011
    :sswitch_b
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 7012
    .local v0, "sX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 7013
    .local v1, "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 7014
    .local v2, "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 7015
    .local v3, "dY":I
    goto :goto_8c

    .line 7005
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_22
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 7006
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 7007
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 7008
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 7009
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 7023
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_39
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 7024
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 7025
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 7026
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 7027
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 7017
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_50
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 7018
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 7019
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 7020
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 7021
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 7030
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_67
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 7031
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 7032
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 7033
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 7034
    .restart local v3    # "dY":I
    nop

    .line 7040
    :goto_8c
    sub-int v4, v2, v0

    .line 7041
    .local v4, "deltaX":I
    sub-int v5, v3, v1

    .line 7042
    .local v5, "deltaY":I
    mul-int v6, v5, v5

    mul-int v7, v4, v4

    add-int/2addr v6, v7

    return v6

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_67
        0x2 -> :sswitch_67
        0x11 -> :sswitch_50
        0x21 -> :sswitch_39
        0x42 -> :sswitch_22
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .registers 7

    .line 3353
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_9

    .line 3355
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v0

    return-object v0

    .line 3361
    :cond_9
    sget-object v0, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3367
    .local v0, "enabledState":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 3369
    .local v2, "state":[I
    const/4 v3, -0x1

    .line 3370
    .local v3, "enabledPos":I
    array-length v4, v2

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_16
    if-ltz v4, :cond_21

    .line 3371
    aget v5, v2, v4

    if-ne v5, v0, :cond_1e

    .line 3372
    move v3, v4

    .line 3373
    goto :goto_21

    .line 3370
    :cond_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 3378
    .end local v4    # "i":I
    :cond_21
    :goto_21
    if-ltz v3, :cond_2b

    .line 3379
    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3383
    :cond_2b
    return-object v2
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .registers 4

    .line 7371
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_29

    .line 7372
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7373
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x10901cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 7378
    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 7380
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7381
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7383
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_29
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 9663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1e8

    goto/16 :goto_1e6

    .line 9665
    :pswitch_b
    const/4 v2, 0x0

    .line 9667
    .local v2, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 9668
    .local v3, "hoverRecognitionCurrentTime":J
    iget-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 9670
    .local v5, "hoverRecognitionDurationTime":J
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_27

    iget-wide v8, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long v8, v3, v8

    iget-wide v10, v0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_27

    .line 9671
    goto/16 :goto_1e6

    .line 9672
    :cond_27
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eqz v8, :cond_37

    iget-wide v8, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long v8, v3, v8

    iget-wide v10, v0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_37

    .line 9673
    goto/16 :goto_1e6

    .line 9676
    :cond_37
    const/4 v8, 0x1

    if-eqz v7, :cond_4b

    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    if-nez v7, :cond_4b

    .line 9677
    iget-object v7, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_47

    .line 9678
    iput v8, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 9679
    invoke-interface {v7, v0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 9682
    :cond_47
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 9683
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 9686
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 9691
    .local v7, "count":I
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v11, 0x0

    if-ge v9, v10, :cond_59

    move v9, v8

    goto :goto_5a

    :cond_59
    move v9, v11

    .line 9693
    .local v9, "canScrollDown":Z
    :goto_5a
    if-nez v9, :cond_85

    if-lez v7, :cond_85

    .line 9694
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 9695
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_83

    .line 9696
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_81

    goto :goto_83

    :cond_81
    move v12, v11

    goto :goto_84

    :cond_83
    :goto_83
    move v12, v8

    :goto_84
    move v9, v12

    .line 9700
    .end local v10    # "child":Landroid/view/View;
    :cond_85
    iget v10, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v10, :cond_8b

    move v10, v8

    goto :goto_8c

    :cond_8b
    move v10, v11

    .line 9702
    .local v10, "canScrollUp":Z
    :goto_8c
    if-nez v10, :cond_a6

    .line 9703
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_a6

    .line 9704
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9705
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_a4

    move v13, v8

    goto :goto_a5

    :cond_a4
    move v13, v11

    :goto_a5
    move v10, v13

    .line 9709
    .end local v12    # "child":Landroid/view/View;
    :cond_a6
    iget-object v12, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 9710
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 9709
    const/high16 v13, 0x41700000    # 15.0f

    invoke-static {v8, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 9712
    .local v12, "mHoverScrollSpeed":I
    const-wide/16 v13, 0x3

    cmp-long v13, v5, v13

    if-nez v13, :cond_ca

    .line 9713
    int-to-double v13, v12

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    goto :goto_e9

    .line 9714
    :cond_ca
    const-wide/16 v13, 0x4

    cmp-long v13, v5, v13

    if-nez v13, :cond_da

    .line 9715
    int-to-double v13, v12

    const-wide v15, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    goto :goto_e9

    .line 9716
    :cond_da
    const-wide/16 v13, 0x5

    cmp-long v13, v5, v13

    if-ltz v13, :cond_e9

    .line 9717
    int-to-double v13, v12

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    .line 9720
    :cond_e9
    :goto_e9
    iget v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_111

    .line 9721
    mul-int/lit8 v2, v12, -0x1

    .line 9722
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v15, :cond_f8

    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-nez v15, :cond_100

    :cond_f8
    iget v15, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    if-eq v15, v13, :cond_132

    iget-boolean v15, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-ne v15, v8, :cond_132

    .line 9723
    :cond_100
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 9724
    iget v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 9725
    iget v15, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9726
    iput v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9727
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    goto :goto_132

    .line 9730
    :cond_111
    move v2, v12

    .line 9731
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v15, :cond_11a

    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-nez v15, :cond_122

    :cond_11a
    iget v15, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    if-eq v15, v13, :cond_132

    iget-boolean v15, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-ne v15, v8, :cond_132

    .line 9732
    :cond_122
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 9733
    iget v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 9734
    iget v15, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9735
    iput v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9736
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 9740
    :cond_132
    :goto_132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_13f

    .line 9741
    goto/16 :goto_1e6

    .line 9744
    :cond_13f
    if-gez v2, :cond_143

    if-nez v10, :cond_147

    :cond_143
    if-lez v2, :cond_15e

    if-eqz v9, :cond_15e

    .line 9745
    :cond_147
    invoke-virtual {v0, v2, v11}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 9749
    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v13, :cond_155

    .line 9750
    iget v13, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v14, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {v0, v13, v14, v11}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    .line 9754
    :cond_155
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v8, v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1e6

    .line 9757
    :cond_15e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v13

    .line 9758
    .local v13, "overScrollMode":I
    if-eqz v13, :cond_16e

    if-ne v13, v8, :cond_16d

    .line 9759
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v15

    if-nez v15, :cond_16d

    goto :goto_16e

    :cond_16d
    goto :goto_16f

    :cond_16e
    :goto_16e
    move v11, v8

    .line 9761
    .local v11, "canOverScroll":Z
    :goto_16f
    if-eqz v11, :cond_1dc

    iget-boolean v15, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v15, :cond_1dc

    .line 9762
    iget v15, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-ne v15, v14, :cond_19b

    .line 9763
    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v14, v15, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9764
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v14, 0x2710

    invoke-virtual {v8, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 9766
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1c6

    .line 9767
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1c6

    .line 9769
    :cond_19b
    const/4 v8, 0x1

    if-ne v15, v8, :cond_1c6

    .line 9770
    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v14, v15, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9771
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/16 v14, 0x2710

    invoke-virtual {v8, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 9773
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 9774
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 9775
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1c6

    .line 9776
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9780
    :cond_1c6
    :goto_1c6
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_1d6

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1d9

    .line 9781
    :cond_1d6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9783
    :cond_1d9
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9786
    :cond_1dc
    if-nez v11, :cond_1e5

    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_1e5

    .line 9787
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9790
    .end local v11    # "canOverScroll":Z
    .end local v13    # "overScrollMode":I
    :cond_1e5
    nop

    .line 9794
    .end local v2    # "offset":I
    .end local v3    # "hoverRecognitionCurrentTime":J
    .end local v5    # "hoverRecognitionDurationTime":J
    .end local v7    # "count":I
    .end local v9    # "canScrollDown":Z
    .end local v10    # "canScrollUp":Z
    .end local v12    # "mHoverScrollSpeed":I
    :goto_1e6
    return-void

    nop

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method private hidden_mEdgeGlowBottom(Landroid/widget/EdgeEffect;)V
    .registers 2
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;

    .line 12048
    iput-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 12049
    return-void
.end method

.method private hidden_mEdgeGlowTop()Landroid/widget/EdgeEffect;
    .registers 2

    .line 12064
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method private hidden_mEdgeGlowTop(Landroid/widget/EdgeEffect;)V
    .registers 2
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;

    .line 12056
    iput-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 12057
    return-void
.end method

.method private initAbsListView()V
    .registers 8

    .line 1043
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 1044
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 1045
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 1046
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1047
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1049
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1050
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1051
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 1052
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1053
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1054
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1055
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1057
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1060
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1061
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1120183

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 1063
    .local v3, "resolved":Z
    if-eqz v3, :cond_6d

    .line 1064
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1066
    :cond_6d
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1120182

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 1067
    if-eqz v3, :cond_8a

    .line 1068
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1070
    :cond_8a
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x112014c

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1071
    .end local v3    # "resolved":Z
    .local v0, "resolved":Z
    if-eqz v0, :cond_a7

    .line 1072
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    .line 1077
    :cond_a7
    sget-boolean v3, Landroid/widget/AbsListView;->sIsSamsungBasicInteraction:Z

    if-eqz v3, :cond_c3

    .line 1078
    iget-object v3, p0, Landroid/widget/AbsListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1079
    iget-object v3, p0, Landroid/widget/AbsListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10603c6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1083
    :cond_c3
    return-void
.end method

.method private initGoToTOP()V
    .registers 3

    .line 9932
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 9933
    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 9934
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9936
    :cond_11
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 9937
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 9938
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 9939
    iput v1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 9940
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9941
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9942
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9943
    return-void
.end method

.method private initIndicator()V
    .registers 4

    .line 12139
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    .line 12140
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105041b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    .line 12141
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105041c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    .line 12142
    iget v0, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    if-nez v0, :cond_31

    .line 12143
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    .line 12145
    :cond_31
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    .line 12146
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105041a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    .line 12148
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_57

    .line 12149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    .line 12152
    :cond_57
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    .line 12154
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_81

    .line 12155
    iget v0, p0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    iget v1, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 12156
    new-instance v1, Landroid/widget/AbsListView$14;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$14;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12163
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$15;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$15;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12182
    :cond_81
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 5380
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 5381
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    .line 5383
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 5385
    :goto_e
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 5388
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 5389
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5391
    :cond_a
    return-void
.end method

.method private invalidateEdgeEffects()V
    .registers 2

    .line 4410
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4411
    return-void

    .line 4413
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4414
    return-void
.end method

.method private isItemClickable(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 2922
    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isOwnerThread()Z
    .registers 3

    .line 1589
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .registers 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 9563
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 9564
    .local v1, "action":I
    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 9565
    .local v4, "toolType":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    .line 9568
    .local v5, "flags":I
    const/4 v6, 0x7

    const/16 v7, 0xa

    const/4 v8, 0x1

    if-eq v1, v6, :cond_1b

    const/16 v6, 0x9

    if-ne v1, v6, :cond_21

    :cond_1b
    const/4 v6, 0x2

    if-ne v4, v6, :cond_21

    .line 9569
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_25

    .line 9570
    :cond_21
    if-ne v1, v7, :cond_25

    .line 9571
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 9575
    :cond_25
    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 9576
    .local v6, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v9

    if-eqz v9, :cond_3b

    const/4 v9, 0x3

    if-eq v4, v9, :cond_39

    const/high16 v9, 0x4000000

    and-int/2addr v9, v5

    if-eqz v9, :cond_3b

    :cond_39
    move v9, v8

    goto :goto_3c

    :cond_3b
    move v9, v2

    :goto_3c
    iput-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 9580
    iget-object v9, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_115

    iget-object v9, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_115

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_115

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-ne v9, v8, :cond_52

    goto/16 :goto_115

    .line 9584
    :cond_52
    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v9, :cond_114

    .line 9585
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v9

    if-nez v9, :cond_62

    .line 9586
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 9587
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 9590
    :cond_62
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v9

    if-nez v9, :cond_71

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    if-eqz v9, :cond_71

    .line 9591
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setHovered(Z)V

    .line 9592
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 9594
    :cond_71
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    .line 9595
    .local v9, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    .line 9596
    .local v10, "y":I
    invoke-virtual {v0, v9, v10}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v11

    .line 9597
    .local v11, "newHoverPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v12

    .line 9599
    .local v12, "shouldShowSelector":Z
    iget v13, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v14, -0x1

    if-eqz v13, :cond_9e

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_9e

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_9e

    .line 9600
    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 9601
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 9602
    return-void

    .line 9605
    :cond_9e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v13

    if-nez v13, :cond_b1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v13

    if-nez v13, :cond_b1

    .line 9606
    iget-object v13, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9609
    :cond_b1
    if-gez v11, :cond_cd

    .line 9610
    if-nez v12, :cond_ba

    .line 9611
    iget-object v7, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 9614
    :cond_ba
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v7, :cond_ca

    .line 9615
    iget-object v7, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9616
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 9617
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9619
    :cond_ca
    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9620
    return-void

    .line 9623
    :cond_cd
    iput v11, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9624
    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v13, v11, v13

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 9626
    .local v13, "child":Landroid/view/View;
    iget-object v15, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-interface {v15, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_f0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v14, :cond_f0

    .line 9627
    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-virtual {v0, v14, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 9628
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9629
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_fe

    .line 9631
    :cond_f0
    iget-object v8, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 9632
    iget-object v8, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9633
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9636
    :goto_fe
    if-ne v1, v7, :cond_114

    .line 9637
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9638
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9639
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v7, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9640
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 9641
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 9644
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "newHoverPosition":I
    .end local v12    # "shouldShowSelector":Z
    .end local v13    # "child":Landroid/view/View;
    :cond_114
    return-void

    .line 9581
    :cond_115
    :goto_115
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 5534
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5535
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_32

    .line 5539
    const/4 v2, 0x0

    if-nez v0, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    move v3, v2

    .line 5540
    .local v3, "newPointerIndex":I
    :goto_18
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5541
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5542
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5543
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5547
    iget v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5550
    .end local v3    # "newPointerIndex":I
    :cond_32
    return-void
.end method

.method private onTouchCancel()V
    .registers 10

    .line 5051
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_b2

    .line 5065
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v3, :cond_6f

    if-eqz v0, :cond_6f

    .line 5066
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5067
    .local v3, "secondView":Landroid/view/View;
    if-eqz v3, :cond_6f

    .line 5068
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 5069
    .local v4, "contentH":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v5, v6, :cond_35

    .line 5070
    move v5, v0

    goto :goto_36

    .line 5061
    .end local v3    # "secondView":Landroid/view/View;
    .end local v4    # "contentH":I
    :pswitch_22
    goto/16 :goto_9c

    .line 5053
    :pswitch_24
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_2f

    .line 5054
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5056
    :cond_2f
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 5057
    goto :goto_9c

    .line 5070
    .restart local v3    # "secondView":Landroid/view/View;
    .restart local v4    # "contentH":I
    :cond_35
    move v5, v2

    .line 5071
    .local v5, "scrollUp":Z
    :goto_36
    if-eqz v5, :cond_3a

    move-object v6, v3

    goto :goto_3e

    :cond_3a
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5072
    .local v6, "focusedView":Landroid/view/View;
    :goto_3e
    if-eqz v5, :cond_55

    .line 5073
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    div-int/lit8 v8, v4, 0x2

    if-le v7, v8, :cond_4e

    .line 5074
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    goto :goto_6f

    .line 5076
    :cond_4e
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    invoke-direct {p0, v7, v2}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    goto :goto_6f

    .line 5079
    :cond_55
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    div-int/lit8 v8, v4, 0x2

    if-ge v7, v8, :cond_64

    .line 5080
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    invoke-direct {p0, v7, v2}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    goto :goto_6f

    .line 5082
    :cond_64
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-direct {p0, v0, v7}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    .line 5088
    .end local v3    # "secondView":Landroid/view/View;
    .end local v4    # "contentH":I
    .end local v5    # "scrollUp":Z
    .end local v6    # "focusedView":Landroid/view/View;
    :cond_6f
    :goto_6f
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5089
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 5090
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5091
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_82

    .line 5092
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 5094
    :cond_82
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5095
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5097
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_99

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 5098
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5101
    :cond_99
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5104
    .end local v0    # "motionView":Landroid/view/View;
    :goto_9c
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 5105
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5106
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5108
    :cond_ac
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5110
    iput v2, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5112
    return-void

    nop

    :pswitch_data_b2
    .packed-switch 0x5
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4598
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 4599
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4600
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4602
    iget v1, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4605
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_45

    .line 4607
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_1e

    .line 4608
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4610
    :cond_1e
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_25

    .line 4611
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4613
    :cond_25
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4616
    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4617
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4618
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto/16 :goto_c4

    .line 4621
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4622
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 4623
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 4625
    .local v3, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_aa

    .line 4626
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_74

    .line 4628
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4629
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4630
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4631
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    .line 4632
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_6f

    .line 4633
    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4635
    :cond_6f
    int-to-float v0, v1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto :goto_aa

    .line 4636
    :cond_74
    if-ltz v3, :cond_aa

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 4640
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4643
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v0, :cond_90

    .line 4644
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4647
    :cond_90
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 4648
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4649
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4653
    :cond_aa
    :goto_aa
    if-ltz v3, :cond_ba

    .line 4655
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4656
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4659
    .end local v0    # "v":Landroid/view/View;
    :cond_ba
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4660
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4661
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4662
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4665
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "motionPosition":I
    :goto_c4
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_d8

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d8

    .line 4666
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 4667
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4669
    :cond_d8
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .line 4681
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_5

    .line 4683
    return-void

    .line 4686
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 4687
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 4688
    const/4 v0, 0x0

    .line 4689
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4692
    :cond_15
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1c

    .line 4695
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4698
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4700
    .local v1, "y":I
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_ca

    :pswitch_29
    goto :goto_84

    .line 4733
    :pswitch_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_84

    .line 4706
    :pswitch_33
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 4707
    goto :goto_84

    .line 4711
    :cond_3f
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v6

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4712
    .local v2, "motionView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 4713
    .local v6, "x":F
    int-to-float v7, v1

    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v8, v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v7

    if-nez v7, :cond_70

    .line 4714
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4715
    if-eqz v2, :cond_5e

    .line 4716
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 4718
    :cond_5e
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v7, :cond_65

    .line 4719
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_67

    :cond_65
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4718
    :goto_67
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4720
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4721
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_84

    .line 4722
    :cond_70
    if-eqz v2, :cond_84

    .line 4724
    iget-object v7, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4725
    .local v7, "point":[F
    aput v6, v7, v5

    .line 4726
    int-to-float v8, v1

    aput v8, v7, v4

    .line 4727
    invoke-virtual {p0, v7, v2}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4728
    aget v8, v7, v5

    aget v9, v7, v4

    invoke-virtual {v2, v8, v9}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4729
    .end local v7    # "point":[F
    nop

    .line 4738
    .end local v2    # "motionView":Landroid/view/View;
    .end local v6    # "x":F
    :cond_84
    :goto_84
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v2, :cond_c9

    .line 4739
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 4740
    .local v2, "firstVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    .line 4741
    .local v6, "lastVisiblePos":I
    const/4 v7, 0x0

    .local v7, "firstVisibleView":Landroid/view/View;
    const/4 v8, 0x0

    .line 4742
    .local v8, "lastVisibleView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-le v9, v4, :cond_a0

    .line 4743
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4744
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4747
    :cond_a0
    if-eqz v7, :cond_b5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_b5

    iget v4, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v4, v2, :cond_b5

    .line 4749
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    goto :goto_c9

    .line 4750
    :cond_b5
    if-eqz v8, :cond_c9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v4, v3, :cond_c9

    iget v3, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v3, v6, :cond_c9

    .line 4752
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    .line 4756
    .end local v2    # "firstVisiblePos":I
    .end local v6    # "lastVisiblePos":I
    .end local v7    # "firstVisibleView":Landroid/view/View;
    .end local v8    # "lastVisibleView":Landroid/view/View;
    :cond_c9
    :goto_c9
    return-void

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2a
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .registers 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4760
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchUp() mTouchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsListView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v3, 0x3e8

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_2f6

    :pswitch_28
    goto/16 :goto_2c6

    .line 4945
    :pswitch_2a
    iget-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_35

    .line 4946
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4948
    :cond_35
    iget-object v1, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4949
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v6, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4950
    iget v3, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v3, v3

    .line 4952
    .local v3, "initialVelocity":I
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4953
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v4, v6, :cond_57

    .line 4954
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_2c6

    .line 4956
    :cond_57
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_2c6

    .line 4842
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "initialVelocity":I
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4843
    .local v1, "childCount":I
    if-lez v1, :cond_1d0

    .line 4844
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4845
    .local v8, "firstChildTop":I
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 4846
    .local v9, "lastChildBottom":I
    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 4847
    .local v10, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    .line 4848
    .local v11, "contentBottom":I
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v12, :cond_9e

    if-lt v8, v10, :cond_9e

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v1

    iget v13, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v13, :cond_9e

    .line 4850
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    if-gt v9, v12, :cond_9e

    .line 4851
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4852
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_1ce

    .line 4854
    :cond_9e
    iget-object v12, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4855
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    iget v13, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v12, v3, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4857
    iget v3, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4858
    invoke-virtual {v12, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    iget v13, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v3, v13

    float-to-int v3, v3

    .line 4863
    .restart local v3    # "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v13, v14, :cond_ba

    move v13, v6

    goto :goto_bb

    :cond_ba
    move v13, v7

    .line 4864
    .local v13, "flingVelocity":Z
    :goto_bb
    if-eqz v13, :cond_e7

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_e7

    .line 4865
    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-direct {v0, v4, v3}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 4866
    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_1ce

    .line 4868
    :cond_d4
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v4, :cond_df

    .line 4869
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v4, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4871
    :cond_df
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_1ce

    .line 4873
    :cond_e7
    if-eqz v13, :cond_115

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_115

    .line 4874
    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v3

    invoke-direct {v0, v4, v6}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 4875
    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_1ce

    .line 4877
    :cond_102
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v4, :cond_10d

    .line 4878
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v4, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4880
    :cond_10d
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_1ce

    .line 4882
    :cond_115
    const/4 v14, 0x0

    if-eqz v13, :cond_158

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v15, :cond_122

    iget v15, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int v15, v10, v15

    if-eq v8, v15, :cond_158

    :cond_122
    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v15, v1

    iget v2, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v15, v2, :cond_12e

    iget v2, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v2, v11

    if-eq v9, v2, :cond_158

    .line 4888
    :cond_12e
    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_151

    .line 4889
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_141

    .line 4890
    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4892
    :cond_141
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4893
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4894
    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v6}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_1ce

    .line 4896
    :cond_151
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4897
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_1ce

    .line 4900
    :cond_158
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4901
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4902
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v2, :cond_164

    .line 4903
    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4905
    :cond_164
    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_16b

    .line 4906
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4908
    :cond_16b
    if-eqz v13, :cond_17a

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_17a

    .line 4909
    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v7}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    .line 4913
    :cond_17a
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v2, :cond_1ce

    .line 4914
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4915
    .local v2, "secondView":Landroid/view/View;
    if-eqz v2, :cond_1ce

    .line 4916
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 4917
    .local v4, "contentH":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v14

    iget v15, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v14, v15, :cond_192

    .line 4918
    move v14, v6

    goto :goto_193

    :cond_192
    move v14, v7

    .line 4919
    .local v14, "scrollUp":Z
    :goto_193
    if-eqz v14, :cond_197

    move-object v15, v2

    goto :goto_19b

    :cond_197
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 4920
    .local v15, "focusedView":Landroid/view/View;
    :goto_19b
    if-eqz v14, :cond_1b3

    .line 4921
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    if-le v5, v6, :cond_1ab

    .line 4922
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v0, v5, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_1ce

    .line 4924
    :cond_1ab
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_1ce

    .line 4927
    :cond_1b3
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v5

    div-int/lit8 v7, v4, 0x2

    if-ge v5, v7, :cond_1c3

    .line 4928
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_1ce

    .line 4930
    :cond_1c3
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 4938
    .end local v2    # "secondView":Landroid/view/View;
    .end local v3    # "initialVelocity":I
    .end local v4    # "contentH":I
    .end local v8    # "firstChildTop":I
    .end local v9    # "lastChildBottom":I
    .end local v10    # "contentTop":I
    .end local v11    # "contentBottom":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "flingVelocity":Z
    .end local v14    # "scrollUp":Z
    .end local v15    # "focusedView":Landroid/view/View;
    :cond_1ce
    :goto_1ce
    goto/16 :goto_2c6

    .line 4939
    :cond_1d0
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4940
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4942
    goto/16 :goto_2c6

    .line 4766
    .end local v1    # "childCount":I
    :pswitch_1d9
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4767
    .local v1, "motionPosition":I
    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4768
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2bf

    .line 4769
    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_1ed

    .line 4770
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4773
    :cond_1ed
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 4774
    .local v3, "x":F
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_20a

    .line 4775
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_20a

    const/4 v4, 0x1

    goto :goto_20b

    :cond_20a
    const/4 v4, 0x0

    .line 4776
    .local v4, "inList":Z
    :goto_20b
    if-eqz v4, :cond_2bf

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v5

    if-nez v5, :cond_2bf

    .line 4777
    iget-object v5, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez v5, :cond_21f

    .line 4778
    new-instance v5, Landroid/widget/AbsListView$PerformClick;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick-IA;)V

    iput-object v5, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4781
    :cond_21f
    iget-object v5, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4782
    .local v5, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v1, v5, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4783
    invoke-virtual {v5}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4785
    iput v1, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4787
    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v6, :cond_245

    const/4 v7, 0x1

    if-ne v6, v7, :cond_230

    goto :goto_245

    .line 4833
    :cond_230
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v6, :cond_238

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-eqz v6, :cond_2bf

    :cond_238
    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2bf

    .line 4834
    invoke-virtual {v5}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_2bf

    .line 4788
    :cond_245
    :goto_245
    if-nez v6, :cond_24a

    .line 4789
    iget-object v6, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_24c

    :cond_24a
    iget-object v6, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4788
    :goto_24c
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4790
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4791
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_2a9

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2a9

    .line 4792
    const/4 v6, 0x1

    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4793
    iget v7, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4794
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4795
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4796
    iget v7, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v7, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4797
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4798
    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_291

    .line 4799
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 4800
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_288

    instance-of v7, v6, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_288

    .line 4801
    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4803
    :cond_288
    iget-object v7, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4805
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_291
    iget-object v6, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v6, :cond_298

    .line 4806
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4808
    :cond_298
    new-instance v6, Landroid/widget/AbsListView$3;

    invoke-direct {v6, v0, v2, v5}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    iput-object v6, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4821
    nop

    .line 4822
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    .line 4821
    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2be

    .line 4824
    :cond_2a9
    const/4 v6, -0x1

    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4825
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4827
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-eqz v6, :cond_2be

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2be

    .line 4828
    invoke-virtual {v5}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 4832
    :cond_2be
    :goto_2be
    return-void

    .line 4838
    .end local v3    # "x":F
    .end local v4    # "inList":Z
    .end local v5    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_2bf
    :goto_2bf
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4839
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4840
    nop

    .line 4962
    .end local v1    # "motionPosition":I
    .end local v2    # "child":Landroid/view/View;
    :goto_2c6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4964
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_2da

    .line 4965
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4966
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4970
    :cond_2da
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4971
    iget-object v1, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4972
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4974
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4976
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4986
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2f5

    .line 4987
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4988
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4990
    :cond_2f5
    return-void

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_1d9
        :pswitch_1d9
        :pswitch_1d9
        :pswitch_5e
        :pswitch_28
        :pswitch_2a
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3738
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_30

    .line 3739
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3740
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_30

    .line 3741
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3742
    .local v1, "longPressPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 3743
    .local v3, "longPressId":J
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3744
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3745
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3746
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3747
    const/4 v2, 0x1

    return v2

    .line 3751
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v3    # "longPressId":J
    :cond_30
    return v2
.end method

.method private positionPopup()V
    .registers 7

    .line 6976
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6977
    .local v0, "screenHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6978
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6981
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 6982
    .local v2, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_34

    .line 6983
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3c

    .line 6986
    :cond_34
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6988
    :goto_3c
    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 2952
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2953
    .local v0, "positionChanged":Z
    :goto_9
    const/4 v3, -0x1

    if-eq p1, v3, :cond_e

    .line 2954
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2957
    :cond_e
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2958
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2959
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_2d

    .line 2960
    move-object v4, p2

    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2966
    :cond_2d
    instance-of v4, p0, Landroid/widget/SemExpandableListView;

    if-eqz v4, :cond_4f

    instance-of v4, p2, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4f

    .line 2967
    move-object v4, p2

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4f

    .line 2968
    move-object v4, p2

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2969
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v5, :cond_4f

    .line 2970
    move-object v5, v4

    check-cast v5, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v5, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2977
    .end local v4    # "child":Landroid/view/View;
    :cond_4f
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2978
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2979
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2980
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v6, p2, Landroid/view/View;->mExtraPaddingBottomForPreference:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2983
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    .line 2984
    .local v4, "isChildViewEnabled":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v4, :cond_78

    .line 2985
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2989
    :cond_78
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2990
    .local v5, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_a2

    .line 2991
    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v6

    if-nez v6, :cond_8c

    .line 2994
    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2995
    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2997
    :cond_8c
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2998
    if-eqz v0, :cond_9d

    .line 2999
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9a

    .line 3000
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3002
    :cond_9a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3004
    :cond_9d
    if-eqz p3, :cond_a2

    .line 3005
    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3008
    :cond_a2
    return-void
.end method

.method private postOnJumpScrollToFinished()V
    .registers 2

    .line 11954
    new-instance v0, Landroid/widget/AbsListView$13;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$13;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 11959
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 5394
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 5395
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5398
    :cond_a
    return-void
.end method

.method private releaseAllBoosters()V
    .registers 2

    .line 12035
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_a

    .line 12036
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 12037
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 12039
    :cond_a
    return-void
.end method

.method private releaseGlow(II)I
    .registers 8
    .param p1, "deltaY"    # I
    .param p2, "x"    # I

    .line 4378
    const/4 v0, 0x0

    .line 4379
    .local v0, "consumed":F
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_30

    .line 4380
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4381
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2c

    .line 4383
    :cond_18
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    .line 4384
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 4383
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 4386
    :goto_2c
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_62

    .line 4387
    :cond_30
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_62

    .line 4388
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 4389
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5f

    .line 4391
    :cond_46
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    .line 4392
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 4391
    invoke-virtual {v1, v2, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    neg-float v0, v1

    .line 4394
    :goto_5f
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4396
    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4397
    .local v1, "pixelsConsumed":I
    sub-int v2, p1, v1

    return v2
.end method

.method private reportActiveViewsToContentCapture()V
    .registers 4

    .line 7849
    sget-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez v0, :cond_5

    .line 7850
    return-void

    .line 7853
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 7854
    .local v0, "session":Landroid/view/contentcapture/ContentCaptureSession;
    if-eqz v0, :cond_16

    .line 7855
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureSession;->newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v1

    .line 7856
    .local v1, "structure":Landroid/view/ViewStructure;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 7857
    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    .line 7859
    .end local v1    # "structure":Landroid/view/ViewStructure;
    :cond_16
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .registers 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 4168
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, v12, v0

    .line 4169
    .local v0, "rawDeltaY":I
    const/4 v1, 0x0

    .line 4170
    .local v1, "scrollOffsetCorrection":I
    iget v2, v10, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_16

    .line 4171
    iget v4, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v4

    .line 4174
    :cond_16
    if-eq v2, v3, :cond_1b

    sub-int v2, v12, v2

    goto :goto_1c

    :cond_1b
    move v2, v0

    .line 4177
    .local v2, "incrementalDeltaY":I
    :goto_1c
    invoke-direct {v10, v2, v11}, Landroid/widget/AbsListView;->releaseGlow(II)I

    move-result v2

    .line 4179
    neg-int v3, v2

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_4e

    .line 4180
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v3, v3, v15

    add-int/2addr v0, v3

    .line 4181
    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v15

    neg-int v1, v4

    .line 4182
    add-int/2addr v2, v3

    .line 4183
    if-eqz v13, :cond_48

    .line 4184
    int-to-float v3, v4

    invoke-virtual {v13, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4185
    iget v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v15

    add-int/2addr v3, v4

    iput v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4188
    :cond_48
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    goto :goto_53

    .line 4179
    :cond_4e
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    .line 4188
    .end local v0    # "rawDeltaY":I
    .end local v1    # "scrollOffsetCorrection":I
    .end local v2    # "incrementalDeltaY":I
    .local v9, "incrementalDeltaY":I
    .local v16, "rawDeltaY":I
    .local v17, "scrollOffsetCorrection":I
    :goto_53
    move/from16 v8, v16

    .line 4189
    .local v8, "deltaY":I
    const/16 v18, 0x0

    .line 4191
    .local v18, "lastYCorrection":I
    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1a8

    .line 4199
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_6b

    .line 4201
    const-string v0, "AbsListView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4204
    :cond_6b
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_1a3

    .line 4208
    iget v0, v10, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_87

    .line 4209
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v1, :cond_87

    .line 4210
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4211
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_87

    .line 4212
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4217
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_87
    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v0, :cond_90

    .line 4218
    iget v1, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    .local v0, "motionIndex":I
    goto :goto_97

    .line 4222
    .end local v0    # "motionIndex":I
    :cond_90
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v5, v0

    .line 4225
    .local v5, "motionIndex":I
    :goto_97
    const/4 v0, 0x0

    .line 4226
    .local v0, "motionViewPrevTop":I
    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4227
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_a5

    .line 4228
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    move/from16 v20, v0

    goto :goto_a7

    .line 4227
    :cond_a5
    move/from16 v20, v0

    .line 4232
    .end local v0    # "motionViewPrevTop":I
    .local v20, "motionViewPrevTop":I
    :goto_a7
    const/4 v0, 0x0

    .line 4233
    .local v0, "atEdge":Z
    if-eqz v9, :cond_b1

    .line 4234
    invoke-virtual {v10, v8, v9}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    move/from16 v21, v0

    goto :goto_b3

    .line 4233
    :cond_b1
    move/from16 v21, v0

    .line 4238
    .end local v0    # "atEdge":Z
    .local v21, "atEdge":Z
    :goto_b3
    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4239
    .end local v1    # "motionView":Landroid/view/View;
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_195

    .line 4242
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v23

    .line 4243
    .local v23, "motionViewRealTop":I
    if-eqz v21, :cond_189

    .line 4246
    neg-int v0, v9

    sub-int v1, v23, v20

    sub-int v4, v0, v1

    .line 4248
    .local v4, "overscroll":I
    const/4 v1, 0x0

    sub-int v2, v4, v9

    const/4 v3, 0x0

    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v25, v4

    .end local v4    # "overscroll":I
    .local v25, "overscroll":I
    move/from16 v26, v5

    .end local v5    # "motionIndex":I
    .local v26, "motionIndex":I
    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_f8

    iget-boolean v0, v10, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    if-nez v0, :cond_f8

    .line 4250
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int v18, v18, v0

    .line 4251
    if-eqz v13, :cond_f3

    .line 4252
    int-to-float v0, v0

    invoke-virtual {v13, v6, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4253
    iget v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4291
    .end local v25    # "overscroll":I
    :cond_f3
    move/from16 v24, v8

    move v3, v9

    goto/16 :goto_18e

    .line 4256
    .restart local v25    # "overscroll":I
    :cond_f8
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v24, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v28, v2

    move/from16 v2, v25

    move/from16 v7, v24

    move/from16 v24, v8

    .end local v8    # "deltaY":I
    .local v24, "deltaY":I
    move/from16 v8, v28

    move/from16 v29, v9

    .end local v9    # "incrementalDeltaY":I
    .local v29, "incrementalDeltaY":I
    move/from16 v9, v27

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 4265
    .local v0, "atOverscrollEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 4266
    .local v1, "overscrollMode":I
    if-eqz v1, :cond_12d

    if-ne v1, v15, :cond_12a

    .line 4268
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_127

    goto :goto_12d

    :cond_127
    move/from16 v3, v29

    goto :goto_18e

    .line 4266
    :cond_12a
    move/from16 v3, v29

    goto :goto_18e

    .line 4269
    :cond_12d
    :goto_12d
    if-nez v0, :cond_134

    .line 4270
    iput v14, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 4271
    const/4 v2, 0x5

    iput v2, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4273
    :cond_134
    move/from16 v3, v29

    .end local v29    # "incrementalDeltaY":I
    .local v3, "incrementalDeltaY":I
    if-lez v3, :cond_15f

    .line 4274
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v4, v25

    .end local v25    # "overscroll":I
    .restart local v4    # "overscroll":I
    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 4275
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 4274
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4276
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_15b

    .line 4277
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4279
    :cond_15b
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_18e

    .line 4280
    .end local v4    # "overscroll":I
    .restart local v25    # "overscroll":I
    :cond_15f
    move/from16 v4, v25

    .end local v25    # "overscroll":I
    .restart local v4    # "overscroll":I
    if-gez v3, :cond_18e

    .line 4281
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 4282
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, v19, v6

    .line 4281
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4283
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_185

    .line 4284
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4286
    :cond_185
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_18e

    .line 4243
    .end local v0    # "atOverscrollEdge":Z
    .end local v1    # "overscrollMode":I
    .end local v3    # "incrementalDeltaY":I
    .end local v4    # "overscroll":I
    .end local v24    # "deltaY":I
    .end local v26    # "motionIndex":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_189
    move/from16 v26, v5

    move/from16 v24, v8

    move v3, v9

    .line 4291
    .end local v5    # "motionIndex":I
    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    .restart local v26    # "motionIndex":I
    :cond_18e
    :goto_18e
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    goto :goto_19a

    .line 4239
    .end local v3    # "incrementalDeltaY":I
    .end local v23    # "motionViewRealTop":I
    .end local v24    # "deltaY":I
    .end local v26    # "motionIndex":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_195
    move/from16 v26, v5

    move/from16 v24, v8

    move v3, v9

    .line 4293
    .end local v5    # "motionIndex":I
    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    .restart local v26    # "motionIndex":I
    :goto_19a
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 4294
    .end local v20    # "motionViewPrevTop":I
    .end local v21    # "atEdge":Z
    .end local v22    # "motionView":Landroid/view/View;
    .end local v26    # "motionIndex":I
    move v9, v3

    goto/16 :goto_2a9

    .line 4204
    .end local v3    # "incrementalDeltaY":I
    .end local v24    # "deltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_1a3
    move/from16 v24, v8

    move v3, v9

    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    goto/16 :goto_2a8

    .line 4295
    .end local v3    # "incrementalDeltaY":I
    .end local v24    # "deltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_1a8
    move v2, v7

    move/from16 v24, v8

    move v3, v9

    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    if-ne v0, v2, :cond_2a8

    .line 4296
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_2a8

    .line 4297
    iget v9, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 4298
    .local v9, "oldScroll":I
    sub-int v20, v9, v3

    .line 4299
    .local v20, "newScroll":I
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-le v12, v0, :cond_1bc

    move v0, v15

    goto :goto_1bd

    :cond_1bc
    const/4 v0, -0x1

    :goto_1bd
    move v8, v0

    .line 4301
    .local v8, "newDirection":I
    iget v0, v10, Landroid/widget/AbsListView;->mDirection:I

    if-nez v0, :cond_1c4

    .line 4302
    iput v8, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 4305
    :cond_1c4
    neg-int v0, v3

    .line 4306
    .local v0, "overScrollDistance":I
    if-gez v20, :cond_1c9

    if-gez v9, :cond_1cd

    :cond_1c9
    if-lez v20, :cond_1d3

    if-gtz v9, :cond_1d3

    .line 4307
    :cond_1cd
    neg-int v0, v9

    .line 4308
    add-int v1, v3, v0

    move v7, v0

    move v6, v1

    .end local v3    # "incrementalDeltaY":I
    .local v1, "incrementalDeltaY":I
    goto :goto_1d6

    .line 4310
    .end local v1    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    :cond_1d3
    const/4 v1, 0x0

    move v7, v0

    move v6, v1

    .line 4313
    .end local v0    # "overScrollDistance":I
    .end local v3    # "incrementalDeltaY":I
    .local v6, "incrementalDeltaY":I
    .local v7, "overScrollDistance":I
    :goto_1d6
    if-eqz v7, :cond_267

    .line 4314
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v26, v2

    move v2, v7

    move/from16 v5, v21

    move v14, v6

    .end local v6    # "incrementalDeltaY":I
    .local v14, "incrementalDeltaY":I
    move/from16 v6, v22

    move/from16 v30, v7

    .end local v7    # "overScrollDistance":I
    .local v30, "overScrollDistance":I
    move/from16 v7, v23

    move/from16 v31, v8

    .end local v8    # "newDirection":I
    .local v31, "newDirection":I
    move/from16 v8, v26

    move/from16 v22, v9

    .end local v9    # "oldScroll":I
    .local v22, "oldScroll":I
    move/from16 v9, v25

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4316
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 4317
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_214

    if-ne v0, v15, :cond_211

    .line 4319
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_20e

    goto :goto_214

    :cond_20e
    move/from16 v2, v30

    goto :goto_26d

    .line 4317
    :cond_211
    move/from16 v2, v30

    goto :goto_26d

    .line 4320
    :cond_214
    :goto_214
    if-lez v16, :cond_23c

    .line 4321
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v2, v30

    .end local v30    # "overScrollDistance":I
    .local v2, "overScrollDistance":I
    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 4322
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4321
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4323
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_238

    .line 4324
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4326
    :cond_238
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_26d

    .line 4327
    .end local v2    # "overScrollDistance":I
    .restart local v30    # "overScrollDistance":I
    :cond_23c
    move/from16 v2, v30

    .end local v30    # "overScrollDistance":I
    .restart local v2    # "overScrollDistance":I
    if-gez v16, :cond_26d

    .line 4328
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v3, v2

    int-to-float v3, v3

    .line 4329
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 4330
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v19, v4

    .line 4328
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4331
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_263

    .line 4332
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4334
    :cond_263
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_26d

    .line 4313
    .end local v0    # "overscrollMode":I
    .end local v2    # "overScrollDistance":I
    .end local v14    # "incrementalDeltaY":I
    .end local v22    # "oldScroll":I
    .end local v31    # "newDirection":I
    .restart local v6    # "incrementalDeltaY":I
    .restart local v7    # "overScrollDistance":I
    .restart local v8    # "newDirection":I
    .restart local v9    # "oldScroll":I
    :cond_267
    move v14, v6

    move v2, v7

    move/from16 v31, v8

    move/from16 v22, v9

    .line 4339
    .end local v6    # "incrementalDeltaY":I
    .end local v7    # "overScrollDistance":I
    .end local v8    # "newDirection":I
    .end local v9    # "oldScroll":I
    .restart local v2    # "overScrollDistance":I
    .restart local v14    # "incrementalDeltaY":I
    .restart local v22    # "oldScroll":I
    .restart local v31    # "newDirection":I
    :cond_26d
    :goto_26d
    if-eqz v14, :cond_29c

    .line 4341
    iget v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v0, :cond_279

    .line 4342
    const/4 v0, 0x0

    iput v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 4343
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4346
    :cond_279
    invoke-virtual {v10, v14, v14}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4348
    const/4 v0, 0x3

    iput v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4352
    invoke-virtual {v10, v12}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v0

    .line 4354
    .local v0, "motionPosition":I
    const/4 v1, 0x0

    iput v1, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4355
    iget v3, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4356
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_294

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_294
    iput v1, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4357
    add-int v1, v12, v17

    iput v1, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 4358
    iput v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4360
    .end local v0    # "motionPosition":I
    .end local v3    # "motionView":Landroid/view/View;
    :cond_29c
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 4361
    move/from16 v0, v31

    .end local v31    # "newDirection":I
    .local v0, "newDirection":I
    iput v0, v10, Landroid/widget/AbsListView;->mDirection:I

    move v9, v14

    goto :goto_2a9

    .line 4364
    .end local v0    # "newDirection":I
    .end local v2    # "overScrollDistance":I
    .end local v14    # "incrementalDeltaY":I
    .end local v20    # "newScroll":I
    .end local v22    # "oldScroll":I
    .local v3, "incrementalDeltaY":I
    :cond_2a8
    :goto_2a8
    move v9, v3

    .end local v3    # "incrementalDeltaY":I
    .local v9, "incrementalDeltaY":I
    :goto_2a9
    return-void
.end method

.method private scrollToPositionFromTop(II)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 6135
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 6136
    return-void
.end method

.method private semGetEnableVibrationAtLongPress()Z
    .registers 2

    .line 12012
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private semIsSupportGotoTop()Z
    .registers 2

    .line 10289
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private semIsTalkBackIsRunning()Z
    .registers 4

    .line 11772
    const/4 v0, 0x0

    .line 11773
    .local v0, "isRunning":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 11774
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 11775
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 11776
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 11777
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    :goto_2b
    move v0, v2

    .line 11780
    :cond_2c
    return v0
.end method

.method private semMultiSelection(IIIIZ)V
    .registers 24
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "contentTop"    # I
    .param p4, "contentBottom"    # I
    .param p5, "needToScroll"    # Z

    .line 10558
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    iget v4, v0, Landroid/widget/AbsListView;->mTouchdownX:I

    sub-int v4, v1, v4

    .line 10559
    .local v4, "deltaMoveX":I
    iget v5, v0, Landroid/widget/AbsListView;->mTouchdownY:I

    sub-int v5, v2, v5

    .line 10561
    .local v5, "deltaMoveY":I
    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    iget v7, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    mul-int/2addr v7, v7

    const/4 v8, 0x1

    if-le v6, v7, :cond_1d

    .line 10562
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 10564
    :cond_1d
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1f4

    .line 10565
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 10567
    .local v6, "count":I
    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    const/4 v10, -0x1

    if-eqz v9, :cond_9a

    .line 10568
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10569
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10570
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 10571
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 10573
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10575
    if-ne v9, v10, :cond_80

    .line 10576
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10577
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10578
    if-nez v9, :cond_8b

    .line 10579
    iget v9, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 10580
    if-eqz v9, :cond_67

    .line 10581
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 10584
    :cond_67
    iget v9, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 10585
    if-eqz v9, :cond_8b

    .line 10586
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    goto :goto_8b

    .line 10590
    :cond_80
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10593
    :cond_8b
    :goto_8b
    iget-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v9, :cond_98

    .line 10594
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10596
    :cond_98
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 10599
    :cond_9a
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    if-nez v9, :cond_ab

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-nez v9, :cond_ab

    .line 10600
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10601
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10602
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 10603
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 10606
    :cond_ab
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 10607
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10609
    if-gez v2, :cond_b4

    .line 10610
    iput v7, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_b8

    .line 10611
    :cond_b4
    if-le v2, v3, :cond_b8

    .line 10612
    iput v3, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10615
    :cond_b8
    :goto_b8
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10617
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 10618
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 10619
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 10620
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 10622
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e7
    if-ge v9, v6, :cond_1ee

    .line 10623
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 10624
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_1e0

    .line 10625
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 10626
    .local v12, "childLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 10627
    .local v13, "childTop":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 10628
    .local v14, "childRight":I
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 10630
    .local v15, "childBottom":I
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_1db

    .line 10631
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v12, :cond_115

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-le v8, v13, :cond_115

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-ge v8, v14, :cond_115

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-lt v8, v15, :cond_13b

    :cond_115
    if-le v7, v12, :cond_11b

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-lt v8, v14, :cond_127

    :cond_11b
    if-ge v7, v12, :cond_121

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-gt v8, v12, :cond_127

    :cond_121
    if-ge v7, v14, :cond_191

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-le v7, v14, :cond_191

    :cond_127
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-lt v7, v13, :cond_12f

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-le v8, v15, :cond_13b

    :cond_12f
    if-gt v7, v13, :cond_135

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-gt v8, v13, :cond_13b

    :cond_135
    if-ge v7, v15, :cond_191

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-lt v7, v15, :cond_191

    .line 10634
    :cond_13b
    add-int/lit8 v7, v12, 0x1

    add-int/lit8 v8, v13, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10635
    if-eq v7, v10, :cond_18c

    iget-object v8, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_18c

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10636
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_186

    .line 10637
    iget-object v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10638
    iget-object v7, v0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v7, :cond_180

    .line 10639
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v0, v7, v10}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10640
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .local v8, "deltaMoveX":I
    .local v17, "deltaMoveY":I
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-direct {v0, v11, v7, v4, v5}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    move v7, v6

    goto/16 :goto_1e4

    .line 10638
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_180
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move v7, v6

    goto/16 :goto_1e4

    .line 10636
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_186
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move v7, v6

    goto/16 :goto_1e4

    .line 10635
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_18c
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move v7, v6

    goto :goto_1e4

    .line 10631
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_191
    move v8, v4

    move/from16 v17, v5

    .line 10644
    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    add-int/lit8 v4, v12, 0x1

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10645
    if-eq v4, v10, :cond_1d9

    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1d9

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10646
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 10647
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10648
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v4, :cond_1d5

    .line 10649
    iget v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v0, v4, v10}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10650
    iget v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move v7, v6

    .end local v6    # "count":I
    .local v7, "count":I
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    invoke-direct {v0, v11, v4, v5, v6}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    goto :goto_1e4

    .line 10648
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_1d5
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_1e4

    .line 10646
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_1d7
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_1e4

    .line 10645
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_1d9
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_1e4

    .line 10630
    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local v6    # "count":I
    :cond_1db
    move v8, v4

    move/from16 v17, v5

    move v7, v6

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .end local v6    # "count":I
    .restart local v7    # "count":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    goto :goto_1e4

    .line 10624
    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v12    # "childLeft":I
    .end local v13    # "childTop":I
    .end local v14    # "childRight":I
    .end local v15    # "childBottom":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local v6    # "count":I
    :cond_1e0
    move v8, v4

    move/from16 v17, v5

    move v7, v6

    .line 10622
    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .end local v6    # "count":I
    .end local v11    # "child":Landroid/view/View;
    .restart local v7    # "count":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    :goto_1e4
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    move v4, v8

    move/from16 v5, v17

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_e7

    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local v6    # "count":I
    :cond_1ee
    move v8, v4

    move/from16 v17, v5

    move v7, v6

    .line 10657
    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .end local v6    # "count":I
    .end local v9    # "i":I
    .restart local v7    # "count":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    const/4 v4, 0x1

    .end local p5    # "needToScroll":Z
    .local v4, "needToScroll":Z
    goto :goto_1f9

    .line 10564
    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .local v4, "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local p5    # "needToScroll":Z
    :cond_1f4
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move/from16 v4, p5

    .line 10660
    .end local p5    # "needToScroll":Z
    .local v4, "needToScroll":Z
    :goto_1f9
    if-eqz v4, :cond_28e

    .line 10661
    iget v5, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int v5, p3, v5

    if-gt v2, v5, :cond_22e

    .line 10662
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_216

    .line 10663
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10665
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_217

    .line 10666
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_217

    .line 10662
    :cond_216
    const/4 v5, 0x1

    .line 10670
    :cond_217
    :goto_217
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_286

    .line 10671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10672
    const/4 v6, 0x2

    iput v6, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10673
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_286

    .line 10675
    :cond_22e
    iget v5, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v5, v3, v5

    if-lt v2, v5, :cond_260

    .line 10676
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_249

    .line 10677
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10679
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_24a

    .line 10680
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_24a

    .line 10676
    :cond_249
    const/4 v5, 0x1

    .line 10684
    :cond_24a
    :goto_24a
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_286

    .line 10685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10686
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10687
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_286

    .line 10690
    :cond_260
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v5, :cond_26c

    iget-object v5, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v5, :cond_26c

    .line 10691
    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10693
    :cond_26c
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10694
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10695
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10697
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_283

    .line 10698
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10700
    :cond_283
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10702
    :cond_286
    :goto_286
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v5, :cond_2a0

    .line 10703
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_2a0

    .line 10705
    :cond_28e
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    if-eqz v5, :cond_2a0

    .line 10707
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2a0

    .line 10708
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10711
    :cond_2a0
    :goto_2a0
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 10712
    return-void
.end method

.method private semMultiSelectionEnd(III)V
    .registers 10
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 10715
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_63

    .line 10716
    const/16 v0, 0xd4

    if-ne p1, v0, :cond_10

    .line 10717
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 10720
    :cond_10
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1b

    .line 10721
    invoke-interface {v0, p0, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10724
    :cond_1b
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10725
    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10726
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10728
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 10730
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-nez v0, :cond_36

    .line 10731
    new-instance v0, Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForDoublePenClick-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    .line 10734
    :cond_36
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p2, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    .line 10735
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p3, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    .line 10737
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    if-eqz v0, :cond_57

    .line 10738
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    if-eqz v0, :cond_4c

    .line 10739
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_63

    .line 10741
    :cond_4c
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_63

    .line 10744
    :cond_57
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10745
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10746
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 10750
    :cond_63
    :goto_63
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 10751
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 10752
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10754
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10755
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10756
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 10757
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10759
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 10760
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 10761
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 10762
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 10764
    iput-object v1, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10765
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10767
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 10768
    iput v0, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 10769
    iput-object v1, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 10770
    iput v0, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 10771
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 10772
    iput-object v1, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 10773
    iput v0, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 10774
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 10776
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v0, :cond_95

    .line 10777
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 10781
    :cond_95
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 10782
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10784
    :cond_a2
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 10785
    return-void
.end method

.method private semPerformItemCheck(Landroid/view/View;IJ)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 10963
    const/4 v0, 0x0

    .line 10964
    .local v0, "checkedStateChanged":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_64

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    const/4 v3, 0x3

    if-ne v2, v3, :cond_64

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_64

    .line 10966
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 10967
    .local v1, "checked":Z
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 10968
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 10969
    if-eqz v1, :cond_3b

    .line 10970
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_46

    .line 10972
    :cond_3b
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    .line 10975
    :cond_46
    :goto_46
    if-eqz v1, :cond_4f

    .line 10976
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_55

    .line 10978
    :cond_4f
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 10980
    :goto_55
    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_63

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_63

    .line 10981
    move v4, p2

    move-wide v5, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 10984
    :cond_63
    const/4 v0, 0x1

    .line 10986
    .end local v1    # "checked":Z
    :cond_64
    if-eqz v0, :cond_69

    .line 10987
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 10989
    :cond_69
    return-void
.end method

.method private semPlayGotoToFadeIn()V
    .registers 4

    .line 10266
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10267
    return-void

    .line 10269
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10270
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10273
    :cond_16
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 10274
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 10275
    return-void
.end method

.method private semPlayGotoToFadeOut()V
    .registers 4

    .line 10254
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10255
    return-void

    .line 10257
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10258
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10261
    :cond_16
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 10262
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 10263
    return-void
.end method

.method private semPlayGotoTopHideImmediatley()V
    .registers 3

    .line 10278
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10279
    return-void

    .line 10281
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10282
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10285
    :cond_16
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10286
    return-void
.end method

.method private semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 7
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 12263
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12264
    .local v0, "str":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_52

    const/4 v1, 0x0

    aget-object v3, v0, v1

    if-eqz v3, :cond_52

    aget-object v3, v0, v2

    if-eqz v3, :cond_52

    aget-object v3, v0, v1

    .line 12265
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    .line 12266
    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12267
    new-instance v3, Landroid/content/ComponentName;

    aget-object v1, v0, v1

    aget-object v2, v0, v2

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12268
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4d

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_4d

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 12269
    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    aget-object v1, v0, v1

    invoke-virtual {v2, p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_52

    .line 12271
    :cond_4d
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12274
    :cond_52
    :goto_52
    return-void
.end method

.method private semSetFastScrollEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 10404
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_8

    .line 10405
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    goto :goto_1a

    .line 10406
    :cond_8
    if-eqz p1, :cond_1a

    .line 10407
    new-instance v0, Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/SemFastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    .line 10408
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    .line 10409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 10412
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    if-eqz v0, :cond_24

    .line 10413
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->semSetUseOpenThemeResources(Z)V

    .line 10416
    :cond_24
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 10417
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_2e

    .line 10418
    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 10420
    :cond_2e
    return-void
.end method

.method private semToNotifyMultiSelectionEnded(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 10788
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    .line 10789
    return-void
.end method

.method private semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 12120
    const/4 v0, 0x0

    .line 12121
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 12123
    return v0
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 1580
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_7

    .line 1581
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1583
    :cond_7
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1512
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_8

    .line 1513
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_1a

    .line 1514
    :cond_8
    if-eqz p1, :cond_1a

    .line 1515
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1516
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1519
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    .line 1523
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1525
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_24

    .line 1526
    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1528
    :cond_24
    return-void
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 2774
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2776
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_d

    .line 2777
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1d

    .line 2778
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_d
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2779
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1d

    .line 2781
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1a
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2784
    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_1d
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_29

    .line 2785
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2787
    :cond_29
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2788
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2789
    if-eq v1, v0, :cond_3e

    .line 2790
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2792
    :cond_3e
    return-void
.end method

.method private static setupDeviceConfigProperties()V
    .registers 3

    .line 947
    sget-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    if-nez v0, :cond_26

    .line 948
    const-string/jumbo v0, "report_list_view_children"

    const/4 v1, 0x0

    const-string v2, "content_capture"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    .line 952
    new-instance v0, Landroid/widget/AbsListView$DeviceConfigChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$DeviceConfigChangeListener;-><init>(Landroid/widget/AbsListView$DeviceConfigChangeListener-IA;)V

    sput-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 953
    nop

    .line 955
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 953
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 958
    :cond_26
    return-void
.end method

.method private shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 7
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p2, "velocity"    # I

    .line 5002
    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 5003
    return v0

    .line 5005
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 5008
    .local v1, "distance":F
    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_19

    .line 5009
    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5011
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$FlingRunnable;->getSplineFlingDistance(I)F

    move-result v2

    .line 5013
    .local v2, "flingDistance":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method private shouldDisplayEdgeEffects()Z
    .registers 3

    .line 5047
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private shouldSkipScroll()Z
    .registers 4

    .line 12134
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "remove_animations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v2, v1

    :cond_14
    return v2
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .registers 15
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .line 3857
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 3858
    .local v6, "longPressPosition":I
    if-gez v6, :cond_8

    .line 3859
    const/4 v0, 0x0

    return v0

    .line 3862
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 3863
    .local v7, "longPressId":J
    const/4 v9, 0x0

    .line 3865
    .local v9, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1d

    .line 3866
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    .line 3870
    :cond_1d
    if-nez v9, :cond_38

    .line 3871
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3872
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3874
    if-eqz p4, :cond_34

    .line 3875
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v9

    goto :goto_38

    .line 3877
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    .line 3881
    .end local v0    # "child":Landroid/view/View;
    :cond_38
    :goto_38
    return v9
.end method

.method private showContextMenuInternal(FFZ)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .line 3818
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3819
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    .line 3820
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3821
    .local v1, "id":J
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3822
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2b

    .line 3823
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3824
    if-eqz p3, :cond_26

    .line 3825
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    .line 3827
    :cond_26
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3830
    .end local v1    # "id":J
    .end local v3    # "child":Landroid/view/View;
    :cond_2b
    goto :goto_2f

    .line 3832
    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3835
    :goto_2f
    if-eqz p3, :cond_36

    .line 3836
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v1

    return v1

    .line 3838
    :cond_36
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .line 9797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 9798
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_a

    .line 9799
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_22

    .line 9801
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change PointerIcon to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsListView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9803
    :goto_22
    return-void
.end method

.method private showPopup()V
    .registers 2

    .line 6967
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 6968
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6969
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6971
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6973
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 4120
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v0

    .line 4121
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4122
    .local v1, "distance":I
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 4123
    .local v2, "overscroll":Z
    :goto_11
    if-nez v2, :cond_17

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_70

    .line 4124
    :cond_17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_70

    .line 4125
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4126
    if-eqz v2, :cond_2a

    .line 4127
    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4128
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_35

    .line 4130
    :cond_2a
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4131
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-lez v0, :cond_32

    goto :goto_33

    :cond_32
    neg-int v5, v5

    :goto_33
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4133
    :goto_35
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4134
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4135
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4136
    .local v5, "motionView":Landroid/view/View;
    if-eqz v5, :cond_4b

    .line 4137
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4141
    :cond_4b
    iget v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v6, v3, :cond_60

    .line 4147
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 4148
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_54
    if-ge v7, v6, :cond_60

    .line 4149
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4148
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 4153
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_60
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4156
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 4157
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_6c

    .line 4158
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4160
    :cond_6c
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 4161
    return v3

    .line 4164
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v5    # "motionView":Landroid/view/View;
    :cond_70
    return v4
.end method

.method private stopEdgeGlowRecede(F)V
    .registers 5
    .param p1, "x"    # F

    .line 4672
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    .line 4673
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4675
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d

    .line 4676
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4678
    :cond_2d
    return-void
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .registers 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "fromUserTouch"    # Z

    .line 10792
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 10794
    .local v3, "count":I
    iget-boolean v4, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_76

    .line 10795
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10796
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10797
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionStarted(II)V

    .line 10799
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iput v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10800
    if-ne v4, v6, :cond_5c

    .line 10801
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10802
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v4, :cond_67

    .line 10803
    iget v4, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 10804
    if-eqz v4, :cond_43

    .line 10805
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 10808
    :cond_43
    iget v4, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 10809
    if-eqz v4, :cond_67

    .line 10810
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    goto :goto_67

    .line 10814
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10817
    :cond_67
    :goto_67
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v4, :cond_74

    .line 10818
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10820
    :cond_74
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 10823
    :cond_76
    const/4 v4, 0x0

    .line 10824
    .local v4, "contentTop":I
    const/4 v7, 0x0

    .line 10826
    .local v7, "contentBottom":I
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v8, :cond_8a

    .line 10827
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 10828
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .end local v7    # "contentBottom":I
    .local v8, "contentBottom":I
    goto :goto_8e

    .line 10830
    .end local v8    # "contentBottom":I
    .restart local v7    # "contentBottom":I
    :cond_8a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 10833
    .end local v7    # "contentBottom":I
    .restart local v8    # "contentBottom":I
    :goto_8e
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 10834
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10836
    if-gez v2, :cond_97

    .line 10837
    iput v5, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_9b

    .line 10838
    :cond_97
    if-le v2, v8, :cond_9b

    .line 10839
    iput v8, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10842
    :cond_9b
    :goto_9b
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-virtual {v0, v1, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    .line 10844
    .local v7, "touchedPosition":I
    if-eq v7, v6, :cond_a6

    .line 10845
    iput v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    goto :goto_b0

    .line 10847
    :cond_a6
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-virtual {v0, v9, v10}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10853
    :goto_b0
    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-ge v9, v10, :cond_bb

    .line 10854
    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10855
    .local v9, "startPosition":I
    iget v10, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .local v10, "endPosition":I
    goto :goto_bf

    .line 10857
    .end local v9    # "startPosition":I
    .end local v10    # "endPosition":I
    :cond_bb
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10858
    .restart local v9    # "startPosition":I
    iget v10, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10861
    .restart local v10    # "endPosition":I
    :goto_bf
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 10862
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 10863
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 10864
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 10866
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_e8
    if-ge v11, v3, :cond_1de

    .line 10867
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 10868
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_1d1

    .line 10869
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 10870
    .local v13, "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    .line 10871
    .local v14, "childTop":I
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v15

    .line 10873
    .local v15, "childPosition":I
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_1cd

    .line 10874
    const/16 v16, 0x0

    .line 10875
    .local v16, "needSelected":Z
    const/16 v17, 0x0

    .line 10876
    .local v17, "notNeedToCheck":Z
    if-gt v9, v15, :cond_11d

    if-gt v15, v10, :cond_11d

    .line 10877
    iget-object v6, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_118

    invoke-virtual {v6, v15, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-eqz v6, :cond_118

    .line 10878
    const/4 v6, 0x1

    move/from16 v17, v6

    .end local v17    # "notNeedToCheck":Z
    .local v6, "notNeedToCheck":Z
    goto :goto_11b

    .line 10880
    .end local v6    # "notNeedToCheck":Z
    .restart local v17    # "notNeedToCheck":Z
    :cond_118
    const/4 v6, 0x0

    move/from16 v17, v6

    .line 10882
    :goto_11b
    const/16 v16, 0x1

    .line 10885
    :cond_11d
    if-eqz v16, :cond_17f

    .line 10886
    add-int/lit8 v5, v13, 0x1

    add-int/lit8 v6, v14, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    iput v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10887
    const/4 v6, -0x1

    if-eq v5, v6, :cond_17b

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_17b

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v6, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10888
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    .line 10889
    if-eqz v17, :cond_14f

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-gt v9, v5, :cond_14f

    if-gt v5, v10, :cond_14f

    .line 10890
    const/16 v17, 0x0

    move/from16 v18, v7

    goto :goto_15b

    .line 10892
    :cond_14f
    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .local v18, "touchedPosition":I
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    const/4 v1, 0x0

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    .line 10894
    :goto_15b
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10895
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10896
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    invoke-super {v0, v12, v1, v5, v6}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    const/4 v5, -0x1

    goto :goto_1d4

    .line 10888
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_177
    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    const/4 v5, -0x1

    goto :goto_1d4

    .line 10887
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_17b
    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    const/4 v5, -0x1

    goto :goto_1d4

    .line 10899
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_17f
    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    add-int/lit8 v1, v13, 0x1

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10900
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1d4

    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1cb

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10901
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 10902
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v0, v7, v1, v5, v6}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    .line 10903
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10904
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10905
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-super {v0, v12, v1, v6, v7}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    goto :goto_1d4

    .line 10901
    :cond_1c9
    const/4 v5, -0x1

    goto :goto_1d4

    .line 10900
    :cond_1cb
    const/4 v5, -0x1

    goto :goto_1d4

    .line 10873
    .end local v16    # "needSelected":Z
    .end local v17    # "notNeedToCheck":Z
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_1cd
    move v5, v6

    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    goto :goto_1d4

    .line 10868
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    .end local v15    # "childPosition":I
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_1d1
    move v5, v6

    move/from16 v18, v7

    .line 10866
    .end local v7    # "touchedPosition":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v18    # "touchedPosition":I
    :cond_1d4
    :goto_1d4
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move v6, v5

    move/from16 v7, v18

    const/4 v5, 0x0

    goto/16 :goto_e8

    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_1de
    move/from16 v18, v7

    .line 10911
    .end local v7    # "touchedPosition":I
    .end local v11    # "i":I
    .restart local v18    # "touchedPosition":I
    if-eqz p3, :cond_266

    .line 10912
    iget v1, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v1, v4

    const/4 v5, 0x1

    if-gt v2, v1, :cond_212

    .line 10913
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_1fb

    .line 10914
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10917
    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1fb

    .line 10918
    invoke-interface {v1, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10923
    :cond_1fb
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_266

    .line 10924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10925
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10926
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_266

    .line 10928
    :cond_212
    iget v1, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v1, v8, v1

    if-lt v2, v1, :cond_241

    .line 10929
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_22b

    .line 10930
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10933
    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_22b

    .line 10934
    invoke-interface {v1, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10938
    :cond_22b
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_266

    .line 10939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10940
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10941
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_266

    .line 10944
    :cond_241
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_24d

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_24d

    .line 10945
    const/4 v6, 0x0

    invoke-interface {v1, v0, v6}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10948
    :cond_24d
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10949
    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10950
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10953
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_263

    .line 10954
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10956
    :cond_263
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10959
    :cond_266
    :goto_266
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 10960
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .registers 9

    .line 1372
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1373
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1374
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1376
    .local v2, "useActivated":Z
    :goto_17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_3f

    .line 1377
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1378
    .local v4, "child":Landroid/view/View;
    add-int v5, v0, v3

    .line 1380
    .local v5, "position":I
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_31

    .line 1381
    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_3c

    .line 1382
    :cond_31
    if-eqz v2, :cond_3c

    .line 1383
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1376
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1386
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method private useDefaultSelector()V
    .registers 3

    .line 1970
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1972
    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .registers 5
    .param p1, "extraSpace"    # I

    .line 9838
    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 9840
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 9838
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 9841
    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .registers 5
    .param p1, "extraSpace"    # I

    .line 9829
    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 9831
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 9829
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 9832
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 5557
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5558
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5559
    .local v1, "firstPosition":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5561
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_b

    .line 5562
    return-void

    .line 5565
    :cond_b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_23

    .line 5566
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5567
    .local v4, "child":Landroid/view/View;
    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5568
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5570
    :cond_1d
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5565
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 5572
    .end local v3    # "i":I
    :cond_23
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 7469
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 7428
    return-void
.end method

.method public canScrollList(I)Z
    .registers 11
    .param p1, "direction"    # I

    .line 6299
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6300
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6301
    return v1

    .line 6304
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6305
    .local v2, "firstPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 6306
    .local v3, "listPadding":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-lez p1, :cond_2a

    .line 6307
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 6308
    .local v5, "lastBottom":I
    add-int v6, v2, v0

    .line 6309
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v6, v7, :cond_28

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_29

    :cond_28
    move v1, v4

    :cond_29
    return v1

    .line 6311
    .end local v5    # "lastBottom":I
    .end local v6    # "lastPosition":I
    :cond_2a
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 6312
    .local v5, "firstTop":I
    if-gtz v2, :cond_38

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_39

    :cond_38
    move v1, v4

    :cond_39
    return v1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 7341
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7497
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .registers 2

    .line 1216
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_7

    .line 1217
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1219
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_e

    .line 1220
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1222
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1223
    return-void
.end method

.method public clearTextFilter()V
    .registers 3

    .line 7390
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    .line 7391
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7392
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7393
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7394
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7397
    :cond_1d
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 8

    .line 2336
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2337
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_3c

    .line 2338
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_3a

    .line 2339
    mul-int/lit8 v2, v0, 0x64

    .line 2341
    .local v2, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2342
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2343
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2344
    .local v4, "height":I
    if-lez v4, :cond_1f

    .line 2345
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 2348
    :cond_1f
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2349
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2350
    .local v5, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2351
    if-lez v4, :cond_39

    .line 2352
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 2355
    :cond_39
    return v2

    .line 2357
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "extent":I
    .end local v3    # "top":I
    .end local v4    # "height":I
    .end local v5    # "bottom":I
    :cond_3a
    const/4 v1, 0x1

    return v1

    .line 2360
    :cond_3c
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .registers 10

    .line 2365
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2366
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2367
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-ltz v0, :cond_53

    if-lez v1, :cond_53

    .line 2368
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_3b

    .line 2369
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2370
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2371
    .local v4, "top":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2372
    .local v5, "height":I
    if-lez v5, :cond_3a

    .line 2373
    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v4, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v7, v7

    .line 2374
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 2373
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 2376
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "top":I
    .end local v5    # "height":I
    :cond_3a
    goto :goto_53

    .line 2378
    :cond_3b
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2379
    .local v2, "count":I
    if-nez v0, :cond_41

    .line 2380
    const/4 v3, 0x0

    .local v3, "index":I
    goto :goto_4a

    .line 2381
    .end local v3    # "index":I
    :cond_41
    add-int v3, v0, v1

    if-ne v3, v2, :cond_47

    .line 2382
    move v3, v2

    .restart local v3    # "index":I
    goto :goto_4a

    .line 2384
    .end local v3    # "index":I
    :cond_47
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    .line 2386
    .restart local v3    # "index":I
    :goto_4a
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 2389
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_53
    :goto_53
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .registers 4

    .line 2395
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_28

    .line 2396
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2397
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_2a

    .line 2399
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2a

    .line 2402
    .end local v0    # "result":I
    :cond_28
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2404
    .restart local v0    # "result":I
    :cond_2a
    :goto_2a
    return v0
.end method

.method confirmCheckedPositionsById()V
    .registers 19

    .line 6743
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6745
    const/4 v1, 0x0

    .line 6746
    .local v1, "checkedCountChanged":Z
    const/4 v2, 0x0

    .local v2, "checkedIndex":I
    :goto_9
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_95

    .line 6747
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    .line 6748
    .local v10, "id":J
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6750
    .local v3, "lastPos":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 6751
    .local v12, "lastPosId":J
    cmp-long v4, v10, v12

    const/4 v14, 0x1

    if-eqz v4, :cond_8c

    .line 6753
    add-int/lit8 v4, v3, -0x14

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 6754
    .local v15, "start":I
    add-int/lit8 v4, v3, 0x14

    iget v5, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6755
    .local v9, "end":I
    const/4 v4, 0x0

    .line 6756
    .local v4, "found":Z
    move v5, v15

    .local v5, "searchPos":I
    :goto_3f
    if-ge v5, v9, :cond_60

    .line 6757
    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 6758
    .local v6, "searchId":J
    cmp-long v8, v10, v6

    if-nez v8, :cond_5c

    .line 6759
    const/4 v4, 0x1

    .line 6760
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6761
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v2, v14}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6762
    move v14, v4

    goto :goto_61

    .line 6756
    .end local v6    # "searchId":J
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x1

    goto :goto_3f

    :cond_60
    move v14, v4

    .line 6766
    .end local v4    # "found":Z
    .end local v5    # "searchPos":I
    .local v14, "found":Z
    :goto_61
    if-nez v14, :cond_88

    .line 6767
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6768
    add-int/lit8 v2, v2, -0x1

    .line 6769
    iget v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 6770
    const/4 v1, 0x1

    .line 6771
    iget-object v5, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_85

    iget-object v4, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_85

    .line 6772
    const/16 v16, 0x0

    move v6, v3

    move-wide v7, v10

    move/from16 v17, v9

    .end local v9    # "end":I
    .local v17, "end":I
    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_8a

    .line 6771
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_85
    move/from16 v17, v9

    .end local v9    # "end":I
    .restart local v17    # "end":I
    goto :goto_8a

    .line 6766
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_88
    move/from16 v17, v9

    .line 6776
    .end local v9    # "end":I
    .end local v14    # "found":Z
    .end local v15    # "start":I
    :goto_8a
    const/4 v5, 0x1

    goto :goto_92

    .line 6777
    :cond_8c
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6746
    .end local v3    # "lastPos":I
    .end local v10    # "id":J
    .end local v12    # "lastPosId":J
    :goto_92
    add-int/2addr v2, v5

    goto/16 :goto_9

    .line 6781
    .end local v2    # "checkedIndex":I
    :cond_95
    if-eqz v1, :cond_9e

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_9e

    .line 6782
    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 6784
    :cond_9e
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 3580
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .registers 2

    .line 6060
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .registers 2

    .line 7661
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7662
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/DragEvent;

    .line 11601
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 11603
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 11604
    .local v2, "cd":Landroid/content/ClipDescription;
    if-eqz v2, :cond_1ab

    const-string v3, "cropUri"

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_1ab

    .line 11609
    :cond_1a
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3b

    .line 11610
    iget v4, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v4, :cond_37

    .line 11611
    iget-object v4, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 11613
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 11611
    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 11615
    :cond_37
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 11616
    return v3

    .line 11619
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 11620
    .local v4, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 11621
    .local v5, "y":I
    const/4 v6, 0x0

    .line 11622
    .local v6, "contentBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 11626
    .local v7, "count":I
    if-eqz v7, :cond_50

    .line 11627
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .line 11631
    :cond_50
    iget v8, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v8, v7

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v10, 0x0

    if-ge v8, v9, :cond_5a

    move v8, v3

    goto :goto_5b

    :cond_5a
    move v8, v10

    .line 11633
    .local v8, "canScrollDown":Z
    :goto_5b
    if-nez v8, :cond_86

    if-lez v7, :cond_86

    .line 11634
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 11635
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_84

    .line 11636
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_82

    goto :goto_84

    :cond_82
    move v11, v10

    goto :goto_85

    :cond_84
    :goto_84
    move v11, v3

    :goto_85
    move v8, v11

    .line 11640
    .end local v9    # "child":Landroid/view/View;
    :cond_86
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_8c

    move v9, v3

    goto :goto_8d

    :cond_8c
    move v9, v10

    .line 11642
    .local v9, "canScrollUp":Z
    :goto_8d
    if-nez v9, :cond_a3

    .line 11643
    if-lez v7, :cond_a3

    .line 11644
    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 11645
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v12, v13, :cond_a1

    move v12, v3

    goto :goto_a2

    :cond_a1
    move v12, v10

    :goto_a2
    move v9, v12

    .line 11650
    .end local v11    # "child":Landroid/view/View;
    :cond_a3
    iget v11, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    const/4 v12, 0x2

    if-le v5, v11, :cond_ac

    sub-int v11, v6, v11

    if-lt v5, v11, :cond_179

    :cond_ac
    if-lez v4, :cond_179

    .line 11651
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v11

    if-gt v4, v11, :cond_179

    if-nez v9, :cond_ba

    if-nez v8, :cond_ba

    goto/16 :goto_179

    .line 11674
    :cond_ba
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v11, :cond_c5

    .line 11675
    new-instance v11, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 11678
    :cond_c5
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v11, :cond_cf

    .line 11679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11682
    :cond_cf
    packed-switch v1, :pswitch_data_1b0

    goto/16 :goto_174

    .line 11684
    :pswitch_d4
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11685
    if-ltz v5, :cond_f5

    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v5, v10, :cond_f5

    .line 11687
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_174

    .line 11688
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11690
    iput v12, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11691
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_174

    .line 11693
    :cond_f5
    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v10, v6, v10

    if-lt v5, v10, :cond_174

    if-gt v5, v6, :cond_174

    .line 11695
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_174

    .line 11696
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11698
    iput v3, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11699
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_174

    .line 11727
    :pswitch_115
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v11, :cond_11b

    .line 11728
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11734
    :cond_11b
    :pswitch_11b
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_128

    .line 11735
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11737
    :cond_128
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11739
    const-wide/16 v11, 0x0

    iput-wide v11, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11740
    iput-wide v11, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11741
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11742
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11743
    goto :goto_174

    .line 11704
    :pswitch_135
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11706
    if-ltz v5, :cond_155

    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v5, v10, :cond_155

    .line 11708
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_174

    .line 11709
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11711
    iput v12, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11712
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_174

    .line 11714
    :cond_155
    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v10, v6, v10

    if-lt v5, v10, :cond_174

    if-gt v5, v6, :cond_174

    .line 11716
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_174

    .line 11717
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11719
    iput v3, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11720
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 11749
    :cond_174
    :goto_174
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 11653
    :cond_179
    :goto_179
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v11, :cond_188

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_188

    .line 11654
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11657
    :cond_188
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_194

    iget-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-eqz v3, :cond_196

    .line 11658
    :cond_194
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11661
    :cond_196
    const-wide/16 v13, 0x0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11662
    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11663
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11666
    if-ne v1, v12, :cond_1a6

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v3, :cond_1a6

    .line 11667
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11670
    :cond_1a6
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 11605
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "contentBottom":I
    .end local v7    # "count":I
    .end local v8    # "canScrollDown":Z
    .end local v9    # "canScrollUp":Z
    :cond_1ab
    :goto_1ab
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :pswitch_data_1b0
    .packed-switch 0x2
        :pswitch_135
        :pswitch_115
        :pswitch_11b
        :pswitch_d4
        :pswitch_11b
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3033
    const/4 v0, 0x0

    .line 3034
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 3035
    .local v1, "clipToPadding":Z
    :goto_b
    if-eqz v1, :cond_36

    .line 3036
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3037
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 3038
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3039
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3042
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 3045
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_36
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3046
    .local v3, "drawSelectorOnTop":Z
    if-nez v3, :cond_3d

    .line 3047
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3050
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3052
    if-eqz v3, :cond_45

    .line 3053
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3056
    :cond_45
    if-eqz v1, :cond_4f

    .line 3057
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3058
    iget v4, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 3061
    :cond_4f
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v2, :cond_b0

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-nez v2, :cond_b0

    .line 3062
    iget v2, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-nez v2, :cond_60

    iget v2, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-nez v2, :cond_60

    .line 3063
    return-void

    .line 3066
    :cond_60
    const/4 v2, 0x0

    .line 3067
    .local v2, "trackChildTop":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    .line 3068
    .local v4, "firstChildPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 3069
    .local v5, "lastChildPosition":I
    iget v6, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-lt v6, v4, :cond_85

    if-gt v6, v5, :cond_85

    .line 3070
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 3071
    if-eqz v6, :cond_80

    .line 3072
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3074
    :cond_80
    iget v6, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 3076
    :cond_85
    iget v6, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 3077
    iget v6, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 3079
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v10, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3080
    iget-object v6, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3081
    iget-object v6, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3083
    .end local v2    # "trackChildTop":I
    .end local v4    # "firstChildPosition":I
    .end local v5    # "lastChildPosition":I
    :cond_b0
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3998
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 11330
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHoveringUIEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 11331
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 11333
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 11336
    .local v2, "action":I
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v3, v4, :cond_20

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eq v3, v4, :cond_23

    .line 11337
    :cond_20
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 11339
    :cond_23
    invoke-static {}, Landroid/widget/TextView;->semIsTextViewHovered()Z

    move-result v3

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 11341
    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v3, :cond_46

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    if-eqz v3, :cond_46

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_46

    .line 11342
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_43

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v6, :cond_46

    .line 11343
    :cond_43
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    goto :goto_48

    .line 11345
    :cond_46
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 11348
    :goto_48
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 11351
    const/16 v3, 0x9

    const/16 v8, 0x4e35

    const/16 v9, 0xa

    const/16 v10, 0x4e21

    if-eq v2, v3, :cond_ab

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_5b

    goto :goto_ab

    .line 11385
    :cond_5b
    const/4 v3, 0x7

    if-ne v2, v3, :cond_9e

    .line 11386
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_78

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_78

    .line 11387
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v6, :cond_78

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_7c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v6, :cond_7c

    :cond_78
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    if-eqz v3, :cond_83

    .line 11388
    :cond_7c
    invoke-direct {v0, v1, v8}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11389
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_110

    .line 11390
    :cond_83
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_110

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_110

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_110

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v6, :cond_110

    .line 11391
    invoke-direct {v0, v1, v10}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11392
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_110

    .line 11395
    :cond_9e
    if-ne v2, v9, :cond_110

    .line 11396
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_110

    .line 11397
    invoke-direct {v0, v1, v10}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11398
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_110

    .line 11352
    :cond_ab
    :goto_ab
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 11354
    .local v3, "toolType":I
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 11355
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 11358
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    if-nez v11, :cond_b9

    .line 11359
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 11363
    :cond_b9
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-eqz v11, :cond_106

    if-ne v3, v6, :cond_106

    .line 11365
    iget-object v11, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "pen_hovering"

    invoke-static {v11, v12, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v4, :cond_d0

    move v11, v4

    goto :goto_d1

    :cond_d0
    move v11, v7

    .line 11367
    .local v11, "isHoveringOn":Z
    :goto_d1
    iget-object v12, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "car_mode_on"

    const/4 v14, -0x3

    invoke-static {v12, v13, v7, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-ne v12, v4, :cond_e2

    move v12, v4

    goto :goto_e3

    :cond_e2
    move v12, v7

    .line 11370
    .local v12, "isCarModeOn":Z
    :goto_e3
    if-eqz v11, :cond_e7

    if-eqz v12, :cond_e9

    .line 11371
    :cond_e7
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 11374
    :cond_e9
    if-eqz v11, :cond_106

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v13, :cond_106

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v13, :cond_106

    if-ne v3, v6, :cond_106

    .line 11375
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    if-eq v13, v5, :cond_101

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    if-ne v13, v6, :cond_106

    .line 11376
    :cond_101
    invoke-direct {v0, v1, v8}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11377
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 11382
    .end local v11    # "isHoveringOn":Z
    .end local v12    # "isCarModeOn":Z
    :cond_106
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-eqz v8, :cond_10f

    const/4 v8, 0x3

    if-ne v3, v8, :cond_10f

    .line 11383
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 11385
    .end local v3    # "toolType":I
    :cond_10f
    nop

    .line 11403
    :cond_110
    :goto_110
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_119

    .line 11404
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 11408
    :cond_119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 11409
    .local v3, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    .line 11410
    .local v8, "y":I
    const/4 v11, 0x0

    .line 11411
    .local v11, "contentTop":I
    const/4 v12, 0x0

    .line 11412
    .local v12, "contentBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    .line 11417
    .local v13, "count":I
    iget-object v14, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v14, :cond_134

    .line 11418
    new-instance v14, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v14, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 11421
    :cond_134
    iget v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v14, :cond_13c

    iget v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v14, :cond_166

    .line 11422
    :cond_13c
    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 11424
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 11422
    const/high16 v15, 0x41c80000    # 25.0f

    invoke-static {v4, v15, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v14, v14, v16

    float-to-int v14, v14

    iput v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 11426
    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 11428
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 11426
    invoke-static {v4, v15, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    add-float v14, v14, v16

    float-to-int v14, v14

    iput v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 11432
    :cond_166
    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v14, :cond_178

    .line 11433
    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v14, Landroid/graphics/Rect;->top:I

    .line 11434
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    .end local v12    # "contentBottom":I
    .local v14, "contentBottom":I
    goto :goto_181

    .line 11436
    .end local v14    # "contentBottom":I
    .restart local v12    # "contentBottom":I
    :cond_178
    iget v11, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 11437
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iget v15, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    sub-int/2addr v14, v15

    .line 11441
    .end local v12    # "contentBottom":I
    .restart local v14    # "contentBottom":I
    :goto_181
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v13

    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v15, :cond_18a

    move v12, v4

    goto :goto_18b

    :cond_18a
    move v12, v7

    .line 11443
    .local v12, "canScrollDown":Z
    :goto_18b
    if-nez v12, :cond_1b6

    if-lez v13, :cond_1b6

    .line 11444
    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v0, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 11445
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    if-gt v9, v10, :cond_1b4

    .line 11446
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v4, v9, :cond_1b2

    goto :goto_1b4

    :cond_1b2
    move v4, v7

    goto :goto_1b5

    :cond_1b4
    :goto_1b4
    const/4 v4, 0x1

    :goto_1b5
    move v12, v4

    .line 11450
    .end local v15    # "child":Landroid/view/View;
    :cond_1b6
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1bc

    const/4 v4, 0x1

    goto :goto_1bd

    :cond_1bc
    move v4, v7

    .line 11452
    .local v4, "canScrollUp":Z
    :goto_1bd
    if-nez v4, :cond_1d3

    .line 11453
    if-lez v13, :cond_1d3

    .line 11454
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 11455
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-ge v10, v15, :cond_1d1

    const/4 v10, 0x1

    goto :goto_1d2

    :cond_1d1
    move v10, v7

    :goto_1d2
    move v4, v10

    .line 11459
    .end local v9    # "child":Landroid/view/View;
    :cond_1d3
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v6, :cond_1db

    const/4 v9, 0x1

    goto :goto_1dc

    :cond_1db
    move v9, v7

    .line 11461
    .local v9, "isPossibleToolType":Z
    :goto_1dc
    iget v10, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v11

    const/4 v15, 0x4

    if-le v8, v10, :cond_1ed

    iget v10, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v10, v14, v10

    if-lt v8, v10, :cond_1e9

    goto :goto_1ed

    :cond_1e9
    move v10, v8

    const/4 v5, 0x1

    goto/16 :goto_378

    :cond_1ed
    :goto_1ed
    if-lez v3, :cond_376

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v10

    if-gt v3, v10, :cond_376

    if-nez v4, :cond_1f9

    if-eqz v12, :cond_1e9

    :cond_1f9
    if-lt v8, v11, :cond_206

    iget v10, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v11

    if-gt v8, v10, :cond_206

    if-nez v4, :cond_206

    iget-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_1e9

    :cond_206
    iget v10, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v10, v14, v10

    if-lt v8, v10, :cond_214

    if-gt v8, v14, :cond_214

    if-nez v12, :cond_214

    iget-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_1e9

    :cond_214
    if-eqz v9, :cond_228

    .line 11465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-eq v10, v5, :cond_224

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_224

    goto :goto_228

    :cond_224
    move v10, v8

    const/4 v5, 0x1

    goto/16 :goto_378

    :cond_228
    :goto_228
    if-eqz v9, :cond_373

    .line 11466
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLockScreenMode()Z

    move-result v5

    if-nez v5, :cond_370

    iget-boolean v5, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v5, :cond_244

    iget v5, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v5, :cond_244

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_244

    move v10, v8

    const/4 v5, 0x1

    goto/16 :goto_378

    .line 11495
    :cond_244
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_24e

    .line 11496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11499
    :cond_24e
    const/16 v5, 0x4e2f

    const/16 v6, 0x4e2b

    packed-switch v2, :pswitch_data_3d6

    :pswitch_255
    move v10, v8

    .end local v8    # "y":I
    .local v10, "y":I
    goto/16 :goto_36e

    .line 11571
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :pswitch_258
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_266

    .line 11572
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11575
    :cond_266
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11577
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11578
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11579
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11580
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11581
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 11583
    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    if-eqz v6, :cond_289

    .line 11584
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 11585
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_289

    iget v7, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v7, v15, :cond_289

    .line 11586
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 11589
    :cond_289
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 11501
    :pswitch_28e
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11503
    if-lt v8, v11, :cond_2b8

    iget v10, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v11

    if-gt v8, v10, :cond_2b8

    .line 11505
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_2b5

    .line 11506
    move v10, v8

    .end local v8    # "y":I
    .restart local v10    # "y":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11507
    invoke-direct {v0, v1, v6}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11508
    const/4 v5, 0x2

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11509
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_36e

    .line 11505
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_2b5
    move v10, v8

    .end local v8    # "y":I
    .restart local v10    # "y":I
    goto/16 :goto_36e

    .line 11503
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_2b8
    move v10, v8

    .line 11511
    .end local v8    # "y":I
    .restart local v10    # "y":I
    iget v6, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v6, v14, v6

    if-lt v10, v6, :cond_36e

    if-gt v10, v14, :cond_36e

    .line 11513
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_36e

    .line 11514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11515
    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11516
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11517
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_36e

    .line 11523
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :pswitch_2dd
    move v10, v8

    .end local v8    # "y":I
    .restart local v10    # "y":I
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_2ef

    .line 11524
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11525
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 11526
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 11529
    :cond_2ef
    if-lt v10, v11, :cond_31d

    iget v7, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v7, v11

    if-gt v10, v7, :cond_31d

    .line 11531
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_36e

    .line 11532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11535
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v5, :cond_30e

    iget v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_313

    .line 11536
    :cond_30e
    const/16 v5, 0x4e2b

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11539
    :cond_313
    const/4 v5, 0x2

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11540
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_36e

    .line 11542
    :cond_31d
    iget v6, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v6, v14, v6

    if-lt v10, v6, :cond_34b

    if-gt v10, v14, :cond_34b

    .line 11544
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_349

    .line 11545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11548
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v6, :cond_33d

    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_340

    .line 11549
    :cond_33d
    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11551
    :cond_340
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11552
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_36e

    .line 11544
    :cond_349
    const/4 v5, 0x1

    goto :goto_36e

    .line 11542
    :cond_34b
    const/4 v5, 0x1

    .line 11556
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_359

    .line 11557
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11560
    :cond_359
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11561
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11562
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11563
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11564
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11565
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 11566
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 11568
    nop

    .line 11593
    :cond_36e
    :goto_36e
    const/4 v5, 0x1

    return v5

    .line 11466
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_370
    move v10, v8

    const/4 v5, 0x1

    .end local v8    # "y":I
    .restart local v10    # "y":I
    goto :goto_378

    .line 11465
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_373
    move v10, v8

    const/4 v5, 0x1

    .end local v8    # "y":I
    .restart local v10    # "y":I
    goto :goto_378

    .line 11461
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_376
    move v10, v8

    const/4 v5, 0x1

    .line 11468
    .end local v8    # "y":I
    .restart local v10    # "y":I
    :goto_378
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_38a

    .line 11469
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11470
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11473
    :cond_38a
    iget v5, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v5, v11

    if-le v10, v5, :cond_395

    iget v5, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v5, v14, v5

    if-lt v10, v5, :cond_39d

    :cond_395
    if-lez v3, :cond_39d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v5

    if-le v3, v5, :cond_3a0

    .line 11474
    :cond_39d
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11477
    :cond_3a0
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_3ac

    iget-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3b1

    .line 11478
    :cond_3ac
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 11480
    :cond_3b1
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11481
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11482
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11483
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 11485
    const/16 v6, 0xa

    if-ne v2, v6, :cond_3d1

    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    if-eqz v6, :cond_3d1

    .line 11486
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 11487
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_3d1

    iget v7, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v7, v15, :cond_3d1

    .line 11488
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 11492
    :cond_3d1
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :pswitch_data_3d6
    .packed-switch 0x7
        :pswitch_2dd
        :pswitch_255
        :pswitch_28e
        :pswitch_258
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .line 3992
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 11151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 11152
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    .line 11153
    .local v7, "y":I
    const/4 v1, 0x0

    .line 11154
    .local v1, "contentTop":I
    const/4 v2, 0x0

    .line 11155
    .local v2, "contentBottom":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 11156
    .local v8, "action":I
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v9

    .line 11158
    .local v9, "needToScroll":Z
    iget-object v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v3, :cond_1f

    .line 11159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    .line 11162
    :cond_1f
    iget-object v3, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v3, :cond_2a

    .line 11163
    new-instance v3, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v3, p0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 11166
    :cond_2a
    invoke-static {}, Landroid/widget/TextView;->semIsTextSelectionProgressing()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 11168
    const/16 v3, 0xd3

    const/4 v4, -0x3

    const-string v5, "car_mode_on"

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-ne v8, v3, :cond_52

    .line 11169
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 11170
    iput v0, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    .line 11171
    iput v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    .line 11172
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v10, :cond_4d

    move v3, v10

    goto :goto_4e

    :cond_4d
    move v3, v6

    .line 11175
    .local v3, "isCarModeOn":Z
    :goto_4e
    if-eqz v3, :cond_52

    .line 11176
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 11180
    .end local v3    # "isCarModeOn":Z
    :cond_52
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-eqz v3, :cond_58

    .line 11181
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 11184
    :cond_58
    iget v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v3, :cond_60

    iget v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v3, :cond_88

    .line 11185
    :cond_60
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 11187
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 11185
    const/high16 v11, 0x41c80000    # 25.0f

    invoke-static {v10, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 11189
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 11191
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 11189
    invoke-static {v10, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 11194
    :cond_88
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v3, :cond_9c

    .line 11195
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 11196
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v11

    move v11, v1

    move v12, v3

    .end local v2    # "contentBottom":I
    .local v3, "contentBottom":I
    goto :goto_a2

    .line 11198
    .end local v3    # "contentBottom":I
    .restart local v2    # "contentBottom":I
    :cond_9c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    move v11, v1

    move v12, v3

    .line 11201
    .end local v1    # "contentTop":I
    .end local v2    # "contentBottom":I
    .local v11, "contentTop":I
    .local v12, "contentBottom":I
    :goto_a2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v1, :cond_b9

    if-lt v7, v11, :cond_aa

    if-le v7, v12, :cond_b9

    .line 11202
    :cond_aa
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v10, :cond_b9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_b9

    .line 11203
    return v10

    .line 11206
    :cond_b9
    const/4 v1, 0x2

    sparse-switch v8, :sswitch_data_1ea

    goto/16 :goto_1e4

    .line 11253
    :sswitch_bf
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    .line 11254
    goto/16 :goto_1e4

    .line 11232
    :sswitch_ca
    goto/16 :goto_1e4

    .line 11256
    :sswitch_cc
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_e3

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 11257
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_dc

    iput v10, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 11258
    :cond_dc
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11260
    :cond_e3
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_123

    .line 11261
    iget v2, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v3, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    goto :goto_123

    .line 11234
    :sswitch_ef
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v2, :cond_fd

    .line 11235
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    .line 11236
    return v10

    .line 11239
    :cond_fd
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_104

    .line 11240
    invoke-direct {p0, v0, v7, v10}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    .line 11243
    :cond_104
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_1e4

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 11244
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_122

    .line 11245
    iput v10, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 11246
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 11247
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11249
    :cond_122
    return v10

    .line 11264
    :cond_123
    :goto_123
    :sswitch_123
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v2, :cond_136

    .line 11265
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-nez v1, :cond_130

    .line 11266
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/2addr v1, v10

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 11268
    :cond_130
    invoke-direct {p0, v8, v0, v7}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    .line 11269
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 11270
    return v10

    .line 11273
    :cond_136
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_13d

    .line 11274
    invoke-direct {p0, v0, v7}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    .line 11279
    :cond_13d
    :sswitch_13d
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_17d

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 11280
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 11281
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 11282
    const-string v1, "AbsListView"

    const-string v2, " can scroll top "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11283
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 11285
    .local v1, "childCount":I
    if-lez v1, :cond_165

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-ge v1, v2, :cond_165

    .line 11286
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 11289
    :cond_165
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 11290
    new-instance v2, Landroid/widget/AbsListView$12;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$12;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11302
    .end local v1    # "childCount":I
    :cond_16f
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 11303
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11304
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->playSoundEffect(I)V

    .line 11306
    return v10

    .line 11309
    :cond_17d
    invoke-direct {p0, v8, v0, v7}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    .line 11311
    goto/16 :goto_1e4

    .line 11208
    :sswitch_182
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 11209
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v2, v1, :cond_1b3

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v2

    if-eqz v2, :cond_1b3

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1b3

    .line 11210
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 11211
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v2, v0

    int-to-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 11212
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v2, 0x101009e

    const v3, 0x10100a1

    const v4, 0x10100a7

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11213
    return v10

    .line 11215
    :cond_1b3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v1, :cond_1e4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e4

    .line 11216
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 11217
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 11218
    iput v0, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    .line 11219
    iput v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    .line 11220
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v10, :cond_1d4

    move v1, v10

    goto :goto_1d5

    :cond_1d4
    move v1, v6

    :goto_1d5
    move v13, v1

    .line 11223
    .local v13, "isCarModeOn":Z
    if-eqz v13, :cond_1da

    .line 11224
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 11226
    :cond_1da
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    .line 11227
    return v10

    .line 11316
    .end local v13    # "isCarModeOn":Z
    :cond_1e4
    :goto_1e4
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_1ea
    .sparse-switch
        0x0 -> :sswitch_182
        0x1 -> :sswitch_123
        0x2 -> :sswitch_ef
        0x3 -> :sswitch_cc
        0xd3 -> :sswitch_ca
        0xd4 -> :sswitch_13d
        0xd5 -> :sswitch_bf
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 5318
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 5319
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_bc

    .line 5320
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5321
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v3

    .line 5327
    .local v3, "clipToPadding":Z
    if-eqz v3, :cond_2c

    .line 5328
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v4, v5

    .line 5329
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 5330
    .local v5, "height":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 5331
    .local v6, "translateX":I
    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .local v7, "translateY":I
    goto :goto_36

    .line 5333
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 5334
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    .line 5335
    .restart local v5    # "height":I
    const/4 v6, 0x0

    .line 5336
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .line 5338
    .restart local v7    # "translateY":I
    :goto_36
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5339
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5340
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_73

    .line 5341
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 5342
    .local v8, "restoreCount":I
    add-int v9, v6, v4

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5343
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v10

    add-int/2addr v10, v7

    .line 5342
    invoke-virtual {p1, v6, v7, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5344
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v9, v0

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v7

    .line 5345
    .local v9, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5346
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 5347
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 5349
    :cond_70
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5351
    .end local v8    # "restoreCount":I
    .end local v9    # "edgeY":I
    :cond_73
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_bc

    .line 5352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 5353
    .restart local v8    # "restoreCount":I
    add-int v9, v7, v5

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int v10, v6, v4

    add-int v11, v7, v5

    invoke-virtual {p1, v6, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5355
    neg-int v9, v4

    add-int/2addr v9, v6

    .line 5356
    .local v9, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 5357
    if-eqz v3, :cond_a1

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_a2

    :cond_a1
    move v11, v2

    :goto_a2
    sub-int/2addr v10, v11

    .line 5358
    .local v10, "edgeY":I
    int-to-float v11, v9

    int-to-float v12, v10

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5359
    const/high16 v11, 0x43340000    # 180.0f

    int-to-float v12, v4

    invoke-virtual {p1, v11, v12, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5360
    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v11

    if-eqz v11, :cond_b9

    .line 5361
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 5363
    :cond_b9
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5366
    .end local v0    # "scrollY":I
    .end local v3    # "clipToPadding":Z
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "restoreCount":I
    .end local v9    # "edgeX":I
    .end local v10    # "edgeY":I
    :cond_bc
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_c3

    .line 5367
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 5369
    :cond_c3
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_db

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_db

    .line 5370
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5373
    :cond_db
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_e2

    .line 5374
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 5377
    :cond_e2
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .line 3347
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3348
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3349
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 8709
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 8711
    const-string v0, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8712
    const-string v0, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8713
    const-string v0, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8714
    const-string v0, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8715
    const-string v0, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8716
    const-string v0, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8718
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 8719
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_48

    .line 8720
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 8721
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 8723
    :cond_48
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11923
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11925
    return-void
.end method

.method findClosestMotionRow(I)I
    .registers 5
    .param p1, "y"    # I

    .line 6594
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6595
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 6596
    return v1

    .line 6599
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 6600
    .local v2, "motionRow":I
    if-eq v2, v1, :cond_10

    move v1, v2

    goto :goto_15

    :cond_10
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_15
    return v1
.end method

.method abstract findMotionRow(I)I
.end method

.method public fling(I)V
    .registers 3
    .param p1, "velocityY"    # I

    .line 5264
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5265
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5267
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5268
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 5269
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .line 7481
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7487
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 7492
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1729
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "focusedView"    # Landroid/view/View;

    .line 2542
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2543
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_4
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_12

    if-eq v0, p0, :cond_12

    .line 2544
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2545
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2548
    :cond_12
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_18

    .line 2549
    const/4 v1, 0x0

    return-object v1

    .line 2552
    :cond_18
    return-object p1
.end method

.method public getBottomEdgeEffectColor()I
    .registers 2

    .line 7778
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 8

    .line 2426
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2427
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    .line 2428
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2429
    return v1

    .line 2431
    :cond_b
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_19

    .line 2432
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2435
    :cond_19
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2436
    .local v2, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 2437
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 2438
    .local v4, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_3a

    .line 2439
    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_3b

    :cond_3a
    move v5, v1

    .line 2438
    :goto_3b
    return v5
.end method

.method protected getBottomPaddingOffset()I
    .registers 3

    .line 3107
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :goto_b
    return v0
.end method

.method public getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 7565
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .line 1133
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 7

    .line 1197
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_d

    goto :goto_22

    .line 1201
    :cond_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1202
    .local v0, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1203
    .local v1, "count":I
    new-array v2, v1, [J

    .line 1205
    .local v2, "ids":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_21

    .line 1206
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1205
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1209
    .end local v3    # "i":I
    :cond_21
    return-object v2

    .line 1198
    .end local v0    # "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v1    # "count":I
    .end local v2    # "ids":[J
    :cond_22
    :goto_22
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .registers 3

    .line 1165
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 1166
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1169
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 1182
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1183
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1185
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .registers 2

    .line 1400
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 3804
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 1957
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1958
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 1961
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1962
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_16

    .line 1965
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1967
    :goto_16
    return-void
.end method

.method getFooterViewsCount()I
    .registers 2

    .line 6531
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .line 6521
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .registers 8
    .param p1, "position"    # I

    .line 8629
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 8630
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8631
    .local v1, "childCount":I
    sub-int v2, p1, v0

    .line 8632
    .local v2, "index":I
    if-ltz v2, :cond_17

    if-ge v2, v1, :cond_17

    .line 8634
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8635
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    return v4

    .line 8638
    .end local v3    # "view":Landroid/view/View;
    :cond_17
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 8639
    .restart local v3    # "view":Landroid/view/View;
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 8640
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 8641
    .local v4, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 8642
    return v4
.end method

.method protected getLeftPaddingOffset()I
    .registers 3

    .line 3092
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_c

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    :goto_c
    return v0
.end method

.method public getListPaddingBottom()I
    .registers 2

    .line 2630
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .line 2642
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .line 2654
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .line 2618
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .registers 3

    .line 3102
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    :goto_b
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2602
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2603
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2605
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .registers 3

    .line 1759
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1760
    .local v0, "choiceMode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_e

    .line 1769
    return v1

    .line 1767
    :pswitch_9
    const/4 v1, 0x2

    return v1

    .line 1764
    :pswitch_b
    const/4 v1, 0x1

    return v1

    .line 1762
    :pswitch_d
    return v1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3272
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .line 7531
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .line 2286
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 2287
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2289
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopEdgeEffectColor()I
    .registers 2

    .line 7764
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 6

    .line 2409
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2410
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2411
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2412
    return v1

    .line 2414
    :cond_b
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_12

    .line 2415
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2418
    :cond_12
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2419
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 2420
    .local v3, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v2, v4, :cond_2c

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v2, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_2d

    :cond_2c
    move v4, v1

    :goto_2d
    return v4
.end method

.method protected getTopPaddingOffset()I
    .registers 3

    .line 3097
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_c

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    :goto_c
    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    .line 11135
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .registers 2

    .line 7526
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 3

    .line 1608
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1609
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1610
    :cond_19
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1611
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v1}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1613
    :cond_32
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method handleBoundsChange()V
    .registers 7

    .line 3139
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_5

    .line 3140
    return-void

    .line 3142
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 3143
    .local v0, "childCount":I
    if-lez v0, :cond_2c

    .line 3144
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3145
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 3146
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_2c

    .line 3147
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3148
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3150
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_26

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v5, v1, :cond_26

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v5, v1, :cond_29

    .line 3151
    :cond_26
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 3146
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3155
    .end local v2    # "i":I
    :cond_2c
    return-void
.end method

.method protected handleDataChanged()V
    .registers 13

    .line 6788
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 6789
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6790
    .local v1, "lastHandledItemCount":I
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6792
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_24

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v3, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v2, v3, :cond_24

    .line 6794
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 6795
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 6796
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 6799
    :cond_24
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_35

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 6800
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 6804
    :cond_35
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 6806
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_fe

    .line 6811
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v6, :cond_d4

    .line 6813
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6814
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6816
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_50

    .line 6817
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6818
    return-void

    .line 6819
    :cond_50
    if-ne v6, v5, :cond_83

    .line 6820
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_5b

    .line 6821
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 6822
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6823
    return-void

    .line 6825
    :cond_5b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 6826
    .local v6, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 6827
    .local v8, "listBottom":I
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 6828
    .local v9, "lastChild":Landroid/view/View;
    if-eqz v9, :cond_75

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_76

    :cond_75
    move v10, v8

    .line 6829
    .local v10, "lastBottom":I
    :goto_76
    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_80

    if-gt v10, v8, :cond_80

    .line 6831
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6832
    return-void

    .line 6836
    :cond_80
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 6839
    .end local v6    # "childCount":I
    .end local v8    # "listBottom":I
    .end local v9    # "lastChild":Landroid/view/View;
    .end local v10    # "lastBottom":I
    :cond_83
    iget v6, p0, Landroid/widget/AbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_11c

    goto :goto_d4

    .line 6880
    :pswitch_8a
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6881
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6883
    return-void

    .line 6841
    :pswitch_9b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 6846
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6847
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6849
    return-void

    .line 6853
    :cond_b2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 6854
    .local v6, "newPos":I
    if-ltz v6, :cond_d4

    .line 6856
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 6857
    .local v9, "selectablePos":I
    if-ne v9, v6, :cond_d4

    .line 6859
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6861
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_ce

    .line 6864
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_d0

    .line 6868
    :cond_ce
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6872
    :goto_d0
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6873
    return-void

    .line 6887
    .end local v6    # "newPos":I
    .end local v9    # "selectablePos":I
    :cond_d4
    :goto_d4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_f9

    .line 6889
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 6892
    .restart local v6    # "newPos":I
    if-lt v6, v0, :cond_e2

    .line 6893
    add-int/lit8 v6, v0, -0x1

    .line 6895
    :cond_e2
    if-gez v6, :cond_e5

    .line 6896
    const/4 v6, 0x0

    .line 6900
    :cond_e5
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6902
    .local v7, "selectablePos":I
    if-ltz v7, :cond_ef

    .line 6903
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6904
    return-void

    .line 6907
    :cond_ef
    invoke-virtual {p0, v6, v4}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6908
    if-ltz v7, :cond_fe

    .line 6909
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6910
    return-void

    .line 6916
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_f9
    iget v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_fe

    .line 6917
    return-void

    .line 6924
    :cond_fe
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_103

    goto :goto_104

    :cond_103
    move v3, v5

    :goto_104
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6925
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6926
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 6927
    iput v3, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 6928
    iput-wide v5, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 6929
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6930
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6931
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6932
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 6933
    return-void

    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_8a
    .end packed-switch
.end method

.method protected handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4454
    const/4 v0, 0x0

    return v0
.end method

.method public hasTextFilter()Z
    .registers 2

    .line 7403
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .line 6546
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 6547
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    .line 6548
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6550
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1c

    .line 6551
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6553
    :cond_1c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 6554
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6555
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 6557
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6560
    :cond_27
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 3115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 3116
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3117
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 3119
    :cond_c
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .line 6607
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 6608
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 6609
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 6610
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6611
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 5

    .line 1710
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_10

    .line 1711
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    goto :goto_1f

    .line 1712
    :cond_10
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1f

    .line 1713
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemFastScroller;->onScroll(III)V

    .line 1715
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2e

    .line 1716
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1719
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1720
    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .registers 2

    .line 3234
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public isFastScrollAlwaysVisible()Z
    .registers 4

    .line 1599
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 1600
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 1602
    :cond_11
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1
.end method

.method public isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1625
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1626
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1628
    :cond_7
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .registers 2

    .line 7047
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 1148
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_d

    .line 1149
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1152
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isLockScreenMode()Z
    .registers 3

    .line 11767
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 11768
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public isMultiFocusEnabled()Z
    .registers 2

    .line 9926
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .line 3087
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1904
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSelectedChildViewEnabled()Z
    .registers 2

    .line 3016
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return v0
.end method

.method protected isSemUsingAdapterView()Z
    .registers 2

    .line 11830
    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1692
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1983
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1952
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .line 1657
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

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

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 3393
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3394
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3395
    :cond_a
    return-void
.end method

.method keyPressed()V
    .registers 10

    .line 3280
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_95

    .line 3284
    :cond_e
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3285
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3286
    .local v1, "selectorRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_94

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 3287
    :cond_20
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    .line 3289
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3291
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    .line 3292
    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_39

    return-void

    .line 3293
    :cond_39
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3295
    :cond_3c
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3297
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    .line 3298
    .local v3, "longClickable":Z
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3299
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_60

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_60

    .line 3300
    if-eqz v3, :cond_5a

    .line 3301
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 3302
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 3301
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_60

    .line 3304
    :cond_5a
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3309
    :cond_60
    :goto_60
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3310
    .local v5, "bounds":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3312
    if-eqz v3, :cond_94

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_94

    .line 3313
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v6, :cond_82

    .line 3314
    new-instance v6, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress-IA;)V

    iput-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    goto :goto_85

    .line 3317
    :cond_82
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3320
    :goto_85
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3321
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3324
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "longClickable":Z
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    :cond_94
    return-void

    .line 3281
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v1    # "selectorRect":Landroid/graphics/Rect;
    :cond_95
    :goto_95
    return-void
.end method

.method protected layoutChildren()V
    .registers 1

    .line 2534
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "outMetadata"    # [Z

    .line 2673
    const-string/jumbo v0, "obtainView"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2675
    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    .line 2679
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2680
    .local v3, "transientView":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v3, :cond_3a

    .line 2681
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2684
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v2, v5, :cond_34

    .line 2685
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2688
    .local v2, "updatedView":Landroid/view/View;
    if-eq v2, v3, :cond_34

    .line 2689
    invoke-direct {p0, v2, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2690
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2694
    .end local v2    # "updatedView":Landroid/view/View;
    :cond_34
    aput-boolean v4, p2, v0

    .line 2697
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2698
    return-object v3

    .line 2702
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_3a
    const/4 v5, 0x0

    .line 2704
    .local v5, "scrapView":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_4a

    .line 2705
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    .line 2707
    :cond_4a
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2710
    .local v6, "child":Landroid/view/View;
    if-eqz v5, :cond_65

    .line 2711
    if-eq v6, v5, :cond_5a

    .line 2713
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v5, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_65

    .line 2714
    :cond_5a
    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 2715
    aput-boolean v4, p2, v0

    .line 2718
    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2723
    :cond_65
    :goto_65
    if-nez v6, :cond_153

    .line 2724
    const-string v0, " try again to check child on obtainview"

    const-string v7, "AbsListView"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    invoke-interface {v0, p1, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2726
    if-nez v6, :cond_153

    .line 2727
    const-string v0, " child is null again"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAdapter ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getChildCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAdapter.getCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mItemCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mOldItemCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_152

    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FooterCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    :cond_152
    return-object v8

    .line 2745
    :cond_153
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v0, :cond_15a

    .line 2746
    invoke-virtual {v6, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2749
    :cond_15a
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_163

    .line 2750
    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2753
    :cond_163
    invoke-direct {p0, v6, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2759
    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v0, :cond_171

    .line 2760
    new-instance v0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2762
    :cond_171
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_17c

    .line 2763
    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2768
    :cond_17c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2770
    return-object v6
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 3399
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3401
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3402
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3403
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_19

    .line 3404
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3407
    :cond_19
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_3c

    .line 3408
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3409
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3412
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3413
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3414
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3419
    :cond_3c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_4e

    .line 3420
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_5f

    .line 3421
    :cond_4e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_5f

    .line 3422
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 3425
    :cond_5f
    :goto_5f
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .registers 2

    .line 3585
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3586
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_a

    .line 3587
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3589
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_11

    .line 3590
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3592
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_18

    .line 3593
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3595
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_1f

    .line 3596
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3598
    :cond_1f
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_26

    .line 3599
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3601
    :cond_26
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 7147
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7148
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_19

    .line 7149
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7150
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7152
    :cond_19
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7153
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7154
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 7156
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    .line 3429
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3431
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3434
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3437
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3439
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3440
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3441
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_23

    .line 3442
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3443
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3446
    :cond_23
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    iget-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v4, :cond_31

    .line 3447
    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3448
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3451
    :cond_31
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3a

    .line 3452
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3453
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3456
    :cond_3a
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_43

    .line 3457
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3458
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3461
    :cond_43
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4a

    .line 3462
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3465
    :cond_4a
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_51

    .line 3466
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3469
    :cond_51
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_58

    .line 3470
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3473
    :cond_58
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_5f

    .line 3474
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3477
    :cond_5f
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_6b

    .line 3478
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3479
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3483
    :cond_6b
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_72

    .line 3484
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3487
    :cond_72
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3489
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3490
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .line 6937
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6938
    sparse-switch p1, :sswitch_data_30

    goto :goto_26

    .line 6940
    :sswitch_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6941
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_26

    .line 6945
    :sswitch_15
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 6946
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6950
    :cond_26
    :goto_26
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 6951
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_15
        0x4 -> :sswitch_7
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .registers 3
    .param p1, "count"    # I

    .line 7473
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 7474
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7475
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 7477
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2294
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2295
    if-eqz p1, :cond_2b

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2296
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_28

    .line 2299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2300
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2301
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2303
    :cond_28
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2305
    :cond_2b
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_f6

    goto/16 :goto_f1

    .line 5230
    :sswitch_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 5231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 5232
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1b

    if-ne v0, v1, :cond_f1

    :cond_1b
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v1, :cond_21

    if-ne v1, v2, :cond_f1

    .line 5236
    :cond_21
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 5237
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 5239
    goto/16 :goto_f1

    .line 5242
    :cond_2f
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 5243
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5244
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_f1

    .line 5135
    .end local v0    # "actionButton":I
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :sswitch_41
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 5136
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .local v0, "axisValue":F
    goto :goto_5e

    .line 5137
    .end local v0    # "axisValue":F
    :cond_4e
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 5138
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "axisValue":F
    goto :goto_5e

    .line 5140
    .end local v0    # "axisValue":F
    :cond_5d
    const/4 v0, 0x0

    .line 5144
    .restart local v0    # "axisValue":F
    :goto_5e
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v1, :cond_73

    .line 5145
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6a

    const/16 v1, 0x82

    goto :goto_6c

    :cond_6a
    const/16 v1, 0x21

    :goto_6c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semHandleGenericMotionEvent(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5146
    return v2

    .line 5152
    :cond_73
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v1, :cond_87

    .line 5153
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 5154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    .line 5155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    .line 5159
    :cond_87
    iget v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5160
    .local v1, "delta":I
    if-eqz v1, :cond_f1

    .line 5198
    if-lez v1, :cond_94

    const/4 v3, 0x0

    goto :goto_99

    :cond_94
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    .line 5200
    .local v3, "motionIndex":I
    :goto_99
    const/4 v4, 0x0

    .line 5201
    .local v4, "motionViewPrevTop":I
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5202
    .local v5, "motionView":Landroid/view/View;
    if-eqz v5, :cond_a4

    .line 5203
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 5206
    :cond_a4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v6

    .line 5208
    .local v6, "overscrollMode":I
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v7

    if-nez v7, :cond_af

    .line 5209
    return v2

    .line 5210
    :cond_af
    const/16 v7, 0x2002

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    if-nez v7, :cond_f0

    if-eqz v5, :cond_f0

    if-eqz v6, :cond_c3

    if-ne v6, v2, :cond_f0

    .line 5213
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_f0

    .line 5214
    :cond_c3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 5215
    .local v7, "motionViewRealTop":I
    sub-int v8, v7, v4

    sub-int v8, v1, v8

    int-to-float v8, v8

    .line 5216
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 5217
    .local v8, "overscroll":F
    const/high16 v9, 0x3f000000    # 0.5f

    if-lez v1, :cond_e1

    .line 5218
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 5219
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_ec

    .line 5221
    :cond_e1
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-float v11, v8

    invoke-virtual {v10, v11, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 5222
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5224
    :goto_ec
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5225
    return v2

    .line 5227
    .end local v3    # "motionIndex":I
    .end local v4    # "motionViewPrevTop":I
    .end local v5    # "motionView":Landroid/view/View;
    .end local v6    # "overscrollMode":I
    .end local v7    # "motionViewRealTop":I
    .end local v8    # "overscroll":F
    :cond_f0
    nop

    .line 5251
    .end local v0    # "axisValue":F
    .end local v1    # "delta":I
    :cond_f1
    :goto_f1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :sswitch_data_f6
    .sparse-switch
        0x8 -> :sswitch_41
        0xb -> :sswitch_b
    .end sparse-switch
.end method

.method public onGlobalLayout()V
    .registers 2

    .line 7408
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7410
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_29

    .line 7411
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_29

    .line 7415
    :cond_1c
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7416
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7420
    :cond_29
    :goto_29
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2879
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 2881
    return-void

    .line 2884
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    .line 2885
    .local v0, "isItemActionable":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2886
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_16

    .line 2887
    move-object v2, v1

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v2, v2, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    and-int/2addr v0, v2

    .line 2890
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_26

    .line 2891
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2892
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2b

    .line 2895
    :cond_26
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2899
    :goto_2b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2900
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2903
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2906
    :cond_39
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2907
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2909
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2911
    :cond_47
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1735
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1736
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1737
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1738
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1739
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1740
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1742
    :cond_1d
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1743
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1744
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1745
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1749
    :cond_30
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1750
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1753
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_ON:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1754
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_OFF:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1756
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5410
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5411
    return v1

    .line 5412
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_17

    .line 5413
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5414
    return v1

    .line 5417
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5436
    .local v0, "actionMasked":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_b

    .line 5437
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5440
    :cond_b
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_d6

    .line 5448
    :cond_18
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 5449
    return v3

    .line 5450
    :cond_24
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_2f

    .line 5451
    invoke-virtual {v1, p1}, Landroid/widget/SemFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 5452
    return v3

    .line 5455
    :cond_2f
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_d8

    :pswitch_33
    goto/16 :goto_d5

    .line 5523
    :pswitch_35
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d5

    .line 5494
    :pswitch_3a
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_ea

    goto :goto_69

    .line 5496
    :pswitch_40
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 5497
    .local v4, "pointerIndex":I
    if-ne v4, v1, :cond_4f

    .line 5498
    const/4 v4, 0x0

    .line 5499
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5501
    :cond_4f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 5502
    .local v1, "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 5503
    iget-object v5, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5504
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v1, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 5505
    return v3

    .line 5509
    .end local v1    # "y":I
    .end local v4    # "pointerIndex":I
    :cond_69
    :goto_69
    goto :goto_d5

    .line 5514
    :pswitch_6a
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5515
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5516
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5517
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5518
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    .line 5519
    goto :goto_d5

    .line 5457
    :pswitch_78
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5458
    .local v1, "touchMode":I
    const/4 v4, 0x6

    if-eq v1, v4, :cond_d2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_81

    goto :goto_d2

    .line 5463
    :cond_81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 5464
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 5465
    .local v5, "y":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5467
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v6

    .line 5468
    .local v6, "motionPosition":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->doesTouchStopStretch()Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_a0

    .line 5470
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    move v1, v8

    goto :goto_bd

    .line 5471
    :cond_a0
    if-eq v1, v8, :cond_bd

    if-ltz v6, :cond_bd

    .line 5474
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5475
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5476
    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5477
    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5478
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5479
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5480
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5482
    .end local v7    # "v":Landroid/view/View;
    :cond_bd
    :goto_bd
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5483
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 5484
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5485
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 5486
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 5487
    if-ne v1, v8, :cond_d5

    .line 5488
    return v3

    .line 5459
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :cond_d2
    :goto_d2
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5460
    return v3

    .line 5528
    .end local v1    # "touchMode":I
    :cond_d5
    :goto_d5
    return v2

    .line 5445
    :cond_d6
    :goto_d6
    return v2

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_78
        :pswitch_6a
        :pswitch_3a
        :pswitch_6a
        :pswitch_33
        :pswitch_33
        :pswitch_35
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .registers 3

    .line 11962
    const-string v0, "AbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11963
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3887
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_14

    goto :goto_12

    .line 3890
    :sswitch_5
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 3891
    goto :goto_12

    .line 3894
    :sswitch_8
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 3895
    goto :goto_12

    .line 3897
    :sswitch_b
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_12

    .line 3898
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3902
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0

    :sswitch_data_14
    .sparse-switch
        0x1f -> :sswitch_b
        0x3b -> :sswitch_8
        0x3c -> :sswitch_8
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3907
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 3908
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 3909
    return v2

    .line 3911
    :cond_f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_50

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_50

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_50

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3913
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_50

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 3915
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3916
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_4c

    .line 3917
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3918
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3920
    :cond_4c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3921
    return v2

    .line 3926
    .end local v0    # "view":Landroid/view/View;
    :cond_50
    sparse-switch p1, :sswitch_data_e6

    goto/16 :goto_e0

    .line 3970
    :sswitch_55
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 3971
    goto/16 :goto_e0

    .line 3974
    :sswitch_59
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 3975
    iput v1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3976
    iput v1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 3977
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3978
    goto/16 :goto_e0

    .line 3980
    :sswitch_64
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_e0

    .line 3981
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_e0

    .line 3931
    :sswitch_6d
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_7a

    .line 3932
    iget v0, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v0, :cond_78

    .line 3933
    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_7a

    .line 3935
    :cond_78
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 3939
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_e0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_e0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3940
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_e0

    .line 3942
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3943
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3945
    .local v1, "currentView":Landroid/view/View;
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v2, :cond_d9

    if-eqz v0, :cond_d9

    .line 3946
    iget v2, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v2, :cond_c8

    .line 3947
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3948
    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3949
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3952
    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 3953
    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    goto :goto_d9

    .line 3955
    :cond_c8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3956
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3958
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 3962
    :cond_d9
    :goto_d9
    iget v2, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v2, :cond_df

    .line 3963
    iput v2, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3965
    .end local v0    # "selectedView":Landroid/view/View;
    .end local v1    # "currentView":Landroid/view/View;
    :cond_df
    nop

    .line 3985
    :cond_e0
    :goto_e0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_e6
    .sparse-switch
        0x13 -> :sswitch_6d
        0x14 -> :sswitch_6d
        0x15 -> :sswitch_6d
        0x16 -> :sswitch_6d
        0x1f -> :sswitch_64
        0x3b -> :sswitch_59
        0x3c -> :sswitch_59
        0x71 -> :sswitch_55
        0x72 -> :sswitch_55
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2471
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2473
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2475
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2476
    .local v1, "childCount":I
    if-eqz p1, :cond_1e

    .line 2477
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_19

    .line 2478
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2477
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2480
    .end local v2    # "i":I
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2483
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2485
    if-eqz p1, :cond_33

    .line 2486
    const-string v2, "AbsListView"

    const-string v3, " in onLayout changed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 2488
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 2489
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 2492
    :cond_33
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2495
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x0

    if-eqz v2, :cond_48

    .line 2496
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v0, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    goto :goto_62

    .line 2497
    :cond_48
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v2, :cond_62

    .line 2498
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/SemFastScroller;->onItemCountChanged(II)V

    .line 2501
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2502
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2503
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2504
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2507
    :cond_62
    :goto_62
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2508
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2445
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 2446
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2448
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2449
    .local v0, "listPadding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2450
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2451
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2452
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2455
    iget v1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    .line 2456
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2457
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2458
    .local v3, "listBottom":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2459
    .local v4, "lastChild":Landroid/view/View;
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_45

    :cond_44
    move v5, v3

    .line 2460
    .local v5, "lastBottom":I
    :goto_45
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v1

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_4f

    if-gt v5, v3, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2463
    .end local v1    # "childCount":I
    .end local v3    # "listBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastBottom":I
    :cond_52
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 5301
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5302
    .local v0, "childCount":I
    if-nez p4, :cond_38

    if-lez v0, :cond_38

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 5303
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 5304
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5305
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_29

    .line 5306
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5308
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_36

    .line 5309
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 5311
    :cond_36
    const/4 v1, 0x1

    return v1

    .line 5313
    :cond_38
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 19
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 5285
    move-object v6, p0

    move/from16 v7, p5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 5286
    .local v8, "motionIndex":I
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5287
    .local v9, "motionView":Landroid/view/View;
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    move v10, v0

    .line 5288
    .local v10, "oldTop":I
    if-eqz v9, :cond_20

    neg-int v0, v7

    neg-int v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5289
    :cond_20
    move/from16 v0, p5

    .line 5290
    .local v0, "myUnconsumed":I
    const/4 v1, 0x0

    .line 5291
    .local v1, "myConsumed":I
    if-eqz v9, :cond_2f

    .line 5292
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v2, v10

    .line 5293
    sub-int/2addr v0, v1

    move v11, v0

    move v12, v1

    goto :goto_31

    .line 5291
    :cond_2f
    move v11, v0

    move v12, v1

    .line 5295
    .end local v0    # "myUnconsumed":I
    .end local v1    # "myConsumed":I
    .local v11, "myUnconsumed":I
    .local v12, "myConsumed":I
    :goto_31
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v12

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 5297
    .end local v11    # "myUnconsumed":I
    .end local v12    # "myConsumed":I
    :cond_3a
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 5278
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 5279
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 5280
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 8
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 5116
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_19

    .line 5117
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 5120
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableFillOut:Z

    if-nez v0, :cond_13

    .line 5121
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5124
    :cond_13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 5126
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5128
    :cond_19
    return-void
.end method

.method public onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V
    .registers 9
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 7817
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 7818
    sget-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez v0, :cond_8

    .line 7819
    return-void

    .line 7822
    :cond_8
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 7824
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_16

    .line 7825
    const-string v1, "AbsListView"

    const-string v2, "Unexpected null extras Bundle in ViewStructure"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7826
    return-void

    .line 7829
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7830
    .local v1, "childCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7832
    .local v2, "idsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v1, :cond_33

    .line 7833
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7834
    .local v4, "activeView":Landroid/view/View;
    if-nez v4, :cond_29

    .line 7835
    goto :goto_30

    .line 7838
    :cond_29
    invoke-virtual {v4}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7832
    .end local v4    # "activeView":Landroid/view/View;
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 7841
    .end local v3    # "i":I
    :cond_33
    const-string v3, "android.view.ViewStructure.extra.ACTIVE_CHILDREN_IDS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7844
    nop

    .line 7845
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 7844
    const-string v4, "android.view.ViewStructure.extra.FIRST_ACTIVE_POSITION"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7846
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .registers 4

    .line 7669
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_21

    .line 7670
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7671
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_15

    .line 7672
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7673
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7676
    :cond_15
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    if-eqz v0, :cond_20

    .line 7677
    iget v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 7678
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    .line 7681
    :cond_20
    return v2

    .line 7682
    :cond_21
    if-eqz v0, :cond_28

    .line 7683
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7684
    const/4 v0, 0x1

    return v0

    .line 7686
    :cond_28
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .registers 1

    .line 7699
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 5422
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_b

    .line 5423
    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 5424
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_b

    .line 5425
    return-object v0

    .line 5428
    .end local v0    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2201
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2203
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2204
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2206
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2208
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2e

    .line 2209
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2210
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2211
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2212
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2213
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2214
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_4f

    .line 2215
    :cond_2e
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4f

    .line 2216
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2218
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2219
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2220
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2221
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2222
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2223
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2224
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2225
    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2228
    :cond_4f
    :goto_4f
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2230
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5c

    .line 2231
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2234
    :cond_5c
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_64

    .line 2235
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2238
    :cond_64
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2240
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_7b

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7b

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_7b

    .line 2242
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2245
    :cond_7b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2246
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 3560
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3561
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_f

    .line 3562
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_1a

    .line 3563
    :cond_f
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1a

    .line 3564
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 3566
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 12

    .line 2109
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2111
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2113
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2115
    .local v1, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v2, :cond_4b

    .line 2117
    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2118
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2119
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2120
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2121
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->height:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2122
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2123
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2124
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2125
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2126
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2127
    return-object v1

    .line 2130
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_59

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v2, :cond_59

    move v2, v3

    goto :goto_5a

    :cond_59
    move v2, v4

    .line 2131
    .local v2, "haveChildren":Z
    :goto_5a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v5

    .line 2132
    .local v5, "selectedId":J
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2133
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2135
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_7b

    .line 2137
    iget v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2138
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2139
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_a6

    .line 2141
    :cond_7b
    if-eqz v2, :cond_a0

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_a0

    .line 2151
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2152
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2153
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2154
    .local v8, "firstPos":I
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v8, v9, :cond_95

    .line 2155
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    .line 2157
    :cond_95
    iput v8, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2158
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2159
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "firstPos":I
    goto :goto_a6

    .line 2160
    :cond_a0
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2161
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2162
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2166
    :goto_a6
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2167
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v7, :cond_bd

    .line 2168
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2169
    .local v7, "textFilter":Landroid/widget/EditText;
    if-eqz v7, :cond_bd

    .line 2170
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 2171
    .local v8, "filterText":Landroid/text/Editable;
    if-eqz v8, :cond_bd

    .line 2172
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2177
    .end local v7    # "textFilter":Landroid/widget/EditText;
    .end local v8    # "filterText":Landroid/text/Editable;
    :cond_bd
    iget v7, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c7

    iget-object v7, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_c7

    goto :goto_c8

    :cond_c7
    move v3, v4

    :goto_c8
    iput-boolean v3, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2179
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_d4

    .line 2180
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2182
    :cond_d4
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_fc

    .line 2183
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 2184
    .local v3, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 2185
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e4
    if-ge v7, v4, :cond_fa

    .line 2186
    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2185
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 2188
    .end local v7    # "i":I
    :cond_fa
    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2190
    .end local v3    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v4    # "count":I
    :cond_fc
    iget v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2192
    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_107

    .line 2193
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2196
    :cond_107
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 3123
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 3124
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_b

    .line 3125
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    goto :goto_12

    .line 3126
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_12

    .line 3127
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/SemFastScroller;->onSizeChanged(IIII)V

    .line 3129
    :cond_12
    :goto_12
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 5273
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 7437
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 7438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7439
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7440
    .local v1, "length":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7441
    .local v2, "showing":Z
    if-nez v2, :cond_1e

    if-lez v1, :cond_1e

    .line 7443
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7444
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_28

    .line 7445
    :cond_1e
    if-eqz v2, :cond_28

    if-nez v1, :cond_28

    .line 7447
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7448
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7450
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v0, Landroid/widget/Filterable;

    if-eqz v3, :cond_42

    .line 7451
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7453
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3a

    .line 7454
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_42

    .line 7456
    :cond_3a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7461
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_42
    :goto_42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4460
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 4461
    return v1

    .line 4464
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const-string v2, "AbsListView"

    const/4 v3, 0x0

    if-nez v0, :cond_37

    .line 4468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent() mIsLongPressMultiSelection : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v3

    :cond_36
    :goto_36
    return v1

    .line 4473
    :cond_37
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3e

    .line 4474
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4477
    :cond_3e
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v0, :cond_14a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_14a

    .line 4488
    :cond_4a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4490
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_59

    invoke-virtual {v2, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 4491
    return v1

    .line 4492
    :cond_59
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v2, :cond_a0

    .line 4493
    invoke-virtual {v2, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 4494
    .local v2, "intercepted":Z
    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    if-eqz v4, :cond_90

    .line 4495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_71

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v0, :cond_85

    :cond_71
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    .line 4496
    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v0

    if-ne v0, v1, :cond_85

    .line 4497
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v4}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onPressed(F)V

    goto :goto_90

    .line 4499
    :cond_85
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v4}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onReleased(F)V

    .line 4502
    :cond_90
    :goto_90
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v0

    if-ne v0, v1, :cond_9a

    move v0, v1

    goto :goto_9b

    :cond_9a
    move v0, v3

    :goto_9b
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 4504
    if-eqz v2, :cond_a0

    .line 4505
    return v1

    .line 4509
    .end local v2    # "intercepted":Z
    :cond_a0
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4510
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4512
    .local v0, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 4513
    .local v2, "actionMasked":I
    if-nez v2, :cond_af

    .line 4514
    iput v3, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4516
    :cond_af
    iget v4, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4517
    packed-switch v2, :pswitch_data_172

    :pswitch_b9
    goto/16 :goto_13f

    .line 4539
    :pswitch_bb
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4540
    iget v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4541
    .local v3, "x":I
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4542
    .local v4, "y":I
    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 4543
    .local v5, "motionPosition":I
    if-ltz v5, :cond_ec

    .line 4545
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4546
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4547
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4549
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_eb

    invoke-interface {v7, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_eb

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_eb

    .line 4550
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4553
    .end local v6    # "child":Landroid/view/View;
    :cond_eb
    goto :goto_ef

    .line 4555
    :cond_ec
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4558
    :goto_ef
    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4560
    iget v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    sub-int/2addr v6, v1

    iput v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4562
    goto :goto_13f

    .line 4567
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "motionPosition":I
    :pswitch_f7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 4568
    .local v4, "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 4569
    .local v5, "id":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 4570
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 4571
    .local v7, "y":I
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4572
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4573
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4574
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4575
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 4576
    .local v3, "motionPosition":I
    if-ltz v3, :cond_127

    .line 4578
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4579
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4580
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4582
    .end local v8    # "child":Landroid/view/View;
    :cond_127
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4584
    iget v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4586
    goto :goto_13f

    .line 4534
    .end local v3    # "motionPosition":I
    .end local v4    # "index":I
    .end local v5    # "id":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_12f
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 4535
    goto :goto_13f

    .line 4524
    :pswitch_133
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 4525
    goto :goto_13f

    .line 4529
    :pswitch_137
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 4530
    goto :goto_13f

    .line 4519
    :pswitch_13b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 4520
    nop

    .line 4590
    :goto_13f
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_146

    .line 4591
    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4593
    :cond_146
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 4594
    return v1

    .line 4483
    .end local v0    # "vtev":Landroid/view/MotionEvent;
    .end local v2    # "actionMasked":I
    :cond_14a
    :goto_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchEvent() mIsDetaching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAttachedToWindow() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    return v3

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_13b
        :pswitch_137
        :pswitch_133
        :pswitch_12f
        :pswitch_b9
        :pswitch_f7
        :pswitch_bb
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .param p1, "isInTouchMode"    # Z

    .line 4418
    if-eqz p1, :cond_18

    .line 4420
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4424
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 4427
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4429
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_3e

    .line 4431
    :cond_18
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4432
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3e

    .line 4433
    :cond_20
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_27

    .line 4434
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4436
    :cond_27
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_2e

    .line 4437
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4440
    :cond_2e
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_3e

    .line 4441
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4442
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 4443
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 4444
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4448
    .end local v0    # "touchMode":I
    :cond_3e
    :goto_3e
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 11907
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 11908
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 11910
    if-nez p2, :cond_9

    goto :goto_c

    .line 11912
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 11914
    :goto_c
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasWindowFocus"    # Z

    .line 3494
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3496
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3498
    .local v0, "touchMode":I
    const/4 v2, 0x0

    if-nez p1, :cond_40

    .line 3499
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3500
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_36

    .line 3501
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3504
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v3, v2}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fputmSuppressIdleStateChangeCall(Landroid/widget/AbsListView$FlingRunnable;Z)V

    .line 3505
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3506
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_27

    .line 3507
    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3509
    :cond_27
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_36

    .line 3510
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3511
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3512
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3513
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3517
    :cond_36
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3519
    if-ne v0, v1, :cond_60

    .line 3521
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_60

    .line 3524
    :cond_40
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_4b

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_4b

    .line 3526
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3530
    :cond_4b
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_60

    const/4 v4, -0x1

    if-eq v3, v4, :cond_60

    .line 3532
    if-ne v0, v1, :cond_58

    .line 3534
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_60

    .line 3538
    :cond_58
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3539
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3540
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3545
    :cond_60
    :goto_60
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3548
    if-nez p1, :cond_67

    .line 3549
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3554
    :cond_67
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 3556
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1776
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1777
    return v1

    .line 1781
    :cond_8
    const/4 v0, 0x7

    .line 1782
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_24

    .line 1783
    const-string v2, "auto_scroll_speed_level_count"

    const/16 v3, 0xf

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1784
    .local v2, "autoScrollSpeedLevelCount":I
    add-int/lit8 v3, v2, -0x1

    const/16 v4, 0x78c

    div-int/2addr v4, v3

    iput v4, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 1786
    const-string v3, "auto_scroll_speed_level"

    const/16 v4, 0x8

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1789
    .end local v2    # "autoScrollSpeedLevelCount":I
    :cond_24
    const/16 v2, 0xc8

    const/16 v3, 0x7f0

    const-string v4, "AbsListView"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_154

    .line 1867
    return v5

    .line 1839
    :sswitch_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEM_ACTION_AUTOSCROLL_SPEED_DOWN, current duration = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1841
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    if-ge v2, v3, :cond_56

    .line 1842
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 1844
    :cond_56
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 1845
    return v1

    .line 1848
    :cond_5c
    return v5

    .line 1829
    :sswitch_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEM_ACTION_AUTOSCROLL_SPEED_UP, current duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1831
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_86

    .line 1832
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 1833
    :cond_86
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 1834
    return v1

    .line 1837
    :cond_8c
    return v5

    .line 1850
    :sswitch_8d
    const-string v2, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 1852
    invoke-virtual {p0, v5, v5, v5}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 1853
    return v1

    .line 1856
    :cond_9c
    return v5

    .line 1858
    :sswitch_9d
    const-string v2, "SEM_ACTION_AUTOSCROLL_OFF"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-virtual {p0, v5, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1860
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_ac

    .line 1861
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1863
    :cond_ac
    return v1

    .line 1820
    :sswitch_ad
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case SEM_ACTION_AUTOSCROLL_ON, canScrollDown = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 1822
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    mul-int/2addr v2, v0

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 1823
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 1824
    return v1

    .line 1827
    :cond_dd
    return v5

    .line 1806
    :sswitch_de
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_10d

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 1807
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1808
    .local v3, "viewportHeight":I
    neg-int v4, v3

    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1810
    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    .line 1811
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v2, :cond_10c

    .line 1812
    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    .line 1815
    :cond_10c
    return v1

    .line 1817
    .end local v3    # "viewportHeight":I
    :cond_10d
    return v5

    .line 1792
    :sswitch_10e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_152

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_125

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_130

    :cond_125
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_152

    .line 1793
    :cond_130
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1794
    .restart local v3    # "viewportHeight":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1796
    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    .line 1797
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v2, :cond_151

    .line 1798
    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    .line 1801
    :cond_151
    return v1

    .line 1803
    .end local v3    # "viewportHeight":I
    :cond_152
    return v5

    nop

    :sswitch_data_154
    .sparse-switch
        0x1000 -> :sswitch_10e
        0x2000 -> :sswitch_de
        0x400000 -> :sswitch_ad
        0x800000 -> :sswitch_9d
        0x1020038 -> :sswitch_de
        0x102003a -> :sswitch_10e
        0x4000000 -> :sswitch_8d
        0x10000000 -> :sswitch_5d
        0x20000000 -> :sswitch_2f
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1309
    move-object v0, p0

    move v7, p2

    const/4 v1, 0x0

    .line 1310
    .local v1, "handled":Z
    const/4 v8, 0x1

    .line 1312
    .local v8, "dispatchItemClick":Z
    iget v2, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_bc

    .line 1313
    const/4 v9, 0x1

    .line 1314
    .end local v1    # "handled":Z
    .local v9, "handled":Z
    const/4 v10, 0x0

    .line 1316
    .local v10, "checkedStateChanged":Z
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_64

    const/4 v1, 0x3

    if-ne v2, v1, :cond_17

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_17

    goto :goto_64

    .line 1338
    :cond_17
    if-ne v2, v4, :cond_63

    .line 1339
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 1340
    .local v1, "checked":Z
    if-eqz v1, :cond_4f

    .line 1341
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1342
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1343
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_4c

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1344
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1345
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1347
    :cond_4c
    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_61

    .line 1348
    :cond_4f
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_61

    .line 1349
    :cond_5f
    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1351
    :cond_61
    :goto_61
    const/4 v10, 0x1

    goto :goto_b6

    .line 1338
    .end local v1    # "checked":Z
    :cond_63
    :goto_63
    goto :goto_b6

    .line 1318
    :cond_64
    :goto_64
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    move v11, v1

    .line 1319
    .local v11, "checked":Z
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1320
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_9a

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1321
    if-eqz v11, :cond_8f

    .line 1322
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9a

    .line 1324
    :cond_8f
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1327
    :cond_9a
    :goto_9a
    if-eqz v11, :cond_a2

    .line 1328
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_a7

    .line 1330
    :cond_a2
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1332
    :goto_a7
    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_b4

    .line 1333
    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move v3, p2

    move-wide v4, p3

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1335
    const/4 v8, 0x0

    .line 1337
    :cond_b4
    const/4 v10, 0x1

    .end local v11    # "checked":Z
    goto :goto_63

    .line 1354
    :goto_b6
    if-eqz v10, :cond_bb

    .line 1355
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1359
    .end local v10    # "checkedStateChanged":Z
    :cond_bb
    move v1, v9

    .end local v9    # "handled":Z
    .local v1, "handled":Z
    :cond_bc
    if-eqz v8, :cond_c3

    .line 1360
    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1363
    :cond_c3
    return v1
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 3757
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    return v0
.end method

.method performLongPress(Landroid/view/View;IJFF)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 3769
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_25

    .line 3770
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 3771
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_24

    .line 3772
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_1a

    .line 3773
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 3775
    :cond_1a
    invoke-virtual {p0, p2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3776
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3778
    :cond_24
    return v1

    .line 3781
    :cond_25
    const/4 v0, 0x0

    .line 3782
    .local v0, "handled":Z
    iget-object v2, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v2, :cond_34

    .line 3783
    iget-object v3, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 3786
    :cond_34
    if-nez v0, :cond_4f

    .line 3787
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3788
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p5, v2

    if-eqz v3, :cond_4b

    cmpl-float v2, p6, v2

    if-eqz v2, :cond_4b

    .line 3789
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_4f

    .line 3791
    :cond_4b
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 3794
    :cond_4f
    :goto_4f
    if-eqz v0, :cond_5e

    .line 3795
    invoke-direct {p0}, Landroid/widget/AbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 3796
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3799
    :cond_5e
    return v0
.end method

.method public pointToPosition(II)I
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 4009
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4010
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_d

    .line 4011
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4012
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4015
    :cond_d
    instance-of v1, p0, Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    move-object v1, p0

    check-cast v1, Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    iput v1, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    .line 4016
    if-lez v1, :cond_25

    move-object v1, p0

    check-cast v1, Landroid/widget/ListView;

    iget-object v1, v1, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_25

    const/4 v2, 0x1

    :cond_25
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    .line 4019
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4020
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_2d
    if-ltz v2, :cond_54

    .line 4021
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4022
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_51

    .line 4023
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4024
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    if-eqz v4, :cond_47

    .line 4025
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 4028
    :cond_47
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 4029
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 4020
    .end local v3    # "child":Landroid/view/View;
    :cond_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 4033
    .end local v2    # "i":I
    :cond_54
    const/4 v2, -0x1

    return v2
.end method

.method public pointToRowId(II)J
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 4046
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 4047
    .local v0, "position":I
    if-ltz v0, :cond_d

    .line 4048
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 4050
    :cond_d
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method positionSelector(ILandroid/view/View;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2947
    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2948
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2936
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_1f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1f

    .line 2937
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2938
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 2939
    .local v7, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 2940
    .local v8, "y":F
    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2941
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "x":F
    .end local v8    # "y":F
    goto :goto_22

    .line 2942
    :cond_1f
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2944
    :goto_22
    return-void
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 2929
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2930
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7576
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7577
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    .line 7580
    .local v1, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_35

    .line 7581
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7582
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 7584
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_32

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 7585
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7586
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7587
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7588
    if-eqz v1, :cond_32

    .line 7590
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7580
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7594
    .end local v2    # "i":I
    :cond_35
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7595
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 7596
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 3

    .line 6568
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6569
    .local v0, "position":I
    if-gez v0, :cond_6

    .line 6570
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6572
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6573
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6574
    return v0
.end method

.method removePendingCallbacks()V
    .registers 3

    .line 11983
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 11984
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_10

    .line 11985
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11986
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11988
    :cond_10
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 11989
    return-void
.end method

.method reportScrollStateChange(I)V
    .registers 6
    .param p1, "newState"    # I

    .line 5583
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_83

    .line 5591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportScrollStateChange() newState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbsListView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5592
    if-eqz p1, :cond_3a

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_3a

    .line 5594
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_31

    .line 5595
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5596
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 5599
    :cond_31
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_3a

    .line 5600
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 5601
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5604
    :cond_3a
    if-nez p1, :cond_70

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_70

    .line 5606
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_62

    .line 5607
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    if-eqz v0, :cond_5f

    .line 5608
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5609
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 5610
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5612
    :cond_5f
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 5614
    :cond_62
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_70

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_70

    .line 5615
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 5616
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5619
    :cond_70
    if-eqz p1, :cond_79

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_79

    .line 5620
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 5623
    :cond_79
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 5624
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_90

    .line 5625
    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_90

    .line 5629
    :cond_83
    if-eqz p1, :cond_90

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5630
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_90

    .line 5631
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 5637
    :cond_90
    :goto_90
    if-eqz p1, :cond_95

    const/4 v0, 0x2

    if-ne p1, v0, :cond_97

    .line 5639
    :cond_95
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 5641
    :cond_97
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 5402
    if-eqz p1, :cond_5

    .line 5403
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5405
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5406
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 2309
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 2310
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2312
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .line 2001
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 2002
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 2003
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2004
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2006
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .line 2318
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2319
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2320
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2321
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2322
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2323
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2324
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2325
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2326
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2327
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2328
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2329
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2330
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2331
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2332
    return-void
.end method

.method public resetPressItemListArray()V
    .registers 2

    .line 9894
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    goto :goto_10

    .line 9898
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9899
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9900
    return-void

    .line 9895
    :cond_10
    :goto_10
    return-void
.end method

.method resurrectSelection()Z
    .registers 17

    .line 6640
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6642
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-gtz v1, :cond_a

    .line 6643
    return v2

    .line 6646
    :cond_a
    const/4 v3, 0x0

    .line 6648
    .local v3, "selectedTop":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 6649
    .local v4, "childrenTop":I
    iget v5, v0, Landroid/widget/AbsListView;->mBottom:I

    iget v6, v0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 6650
    .local v5, "childrenBottom":I
    iget v6, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6651
    .local v6, "firstPosition":I
    iget v7, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6652
    .local v7, "toPosition":I
    const/4 v8, 0x1

    .line 6654
    .local v8, "down":Z
    const/4 v9, 0x1

    if-lt v7, v6, :cond_4e

    add-int v10, v6, v1

    if-ge v7, v10, :cond_4e

    .line 6655
    move v10, v7

    .line 6657
    .local v10, "selectedPos":I
    iget v11, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v11, v10, v11

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 6658
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    .line 6659
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 6662
    .local v12, "selectedBottom":I
    if-ge v3, v4, :cond_3f

    .line 6663
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v13

    add-int v3, v4, v13

    goto :goto_4d

    .line 6664
    :cond_3f
    if-le v12, v5, :cond_4d

    .line 6665
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    .line 6666
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    .line 6668
    .end local v11    # "selected":Landroid/view/View;
    .end local v12    # "selectedBottom":I
    :cond_4d
    :goto_4d
    goto :goto_a4

    .line 6669
    .end local v10    # "selectedPos":I
    :cond_4e
    if-ge v7, v6, :cond_72

    .line 6671
    move v10, v6

    .line 6672
    .restart local v10    # "selectedPos":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_52
    if-ge v11, v1, :cond_71

    .line 6673
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6674
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 6676
    .local v13, "top":I
    if-nez v11, :cond_68

    .line 6678
    move v3, v13

    .line 6680
    if-gtz v6, :cond_63

    if-ge v13, v4, :cond_68

    .line 6683
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    add-int/2addr v4, v14

    .line 6686
    :cond_68
    if-lt v13, v4, :cond_6e

    .line 6688
    add-int v10, v6, v11

    .line 6689
    move v3, v13

    .line 6690
    goto :goto_71

    .line 6672
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "top":I
    :cond_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    .end local v11    # "i":I
    :cond_71
    :goto_71
    goto :goto_a4

    .line 6694
    .end local v10    # "selectedPos":I
    :cond_72
    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 6695
    .local v10, "itemCount":I
    const/4 v8, 0x0

    .line 6696
    add-int v11, v6, v1

    sub-int/2addr v11, v9

    .line 6698
    .local v11, "selectedPos":I
    add-int/lit8 v12, v1, -0x1

    .local v12, "i":I
    :goto_7a
    if-ltz v12, :cond_a3

    .line 6699
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 6700
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 6701
    .local v14, "top":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 6703
    .local v15, "bottom":I
    add-int/lit8 v9, v1, -0x1

    if-ne v12, v9, :cond_98

    .line 6704
    move v3, v14

    .line 6705
    add-int v9, v6, v1

    if-lt v9, v10, :cond_93

    if-le v15, v5, :cond_98

    .line 6706
    :cond_93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v9

    sub-int/2addr v5, v9

    .line 6710
    :cond_98
    if-gt v15, v5, :cond_9f

    .line 6711
    add-int v9, v6, v12

    .line 6712
    .end local v11    # "selectedPos":I
    .local v9, "selectedPos":I
    move v3, v14

    .line 6713
    move v10, v9

    goto :goto_a4

    .line 6698
    .end local v9    # "selectedPos":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "top":I
    .end local v15    # "bottom":I
    .restart local v11    # "selectedPos":I
    :cond_9f
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    goto :goto_7a

    :cond_a3
    move v10, v11

    .line 6719
    .end local v11    # "selectedPos":I
    .end local v12    # "i":I
    .local v10, "selectedPos":I
    :goto_a4
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6720
    iget-object v11, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6721
    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_b3

    .line 6722
    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6724
    :cond_b3
    iput v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6725
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 6726
    iput v3, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 6727
    invoke-virtual {v0, v10, v8}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 6728
    .end local v10    # "selectedPos":I
    .restart local v9    # "selectedPos":I
    if-lt v9, v6, :cond_d3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v9, v10, :cond_d3

    .line 6729
    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6730
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6731
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 6732
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_d4

    .line 6734
    :cond_d3
    const/4 v9, -0x1

    .line 6736
    :goto_d4
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6738
    if-ltz v9, :cond_da

    const/4 v2, 0x1

    :cond_da
    return v2
.end method

.method resurrectSelectionIfNeeded()Z
    .registers 2

    .line 6619
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6620
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6621
    const/4 v0, 0x1

    return v0

    .line 6623
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public scrollListBy(I)V
    .registers 4
    .param p1, "y"    # I

    .line 6286
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 6287
    return-void
.end method

.method public semAutoHide(I)V
    .registers 5
    .param p1, "when"    # I

    .line 10231
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_5

    .line 10232
    return-void

    .line 10234
    :cond_5
    if-nez p1, :cond_1b

    .line 10235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 10236
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10237
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b

    .line 10240
    :cond_1b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    .line 10241
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10242
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10244
    :cond_2b
    :goto_2b
    return-void
.end method

.method public semFinishMultiChoiceMode()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9541
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_a

    .line 9542
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 9543
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 9545
    :cond_a
    return-void
.end method

.method public semForceLongPressMultiSelectionForClickableItems()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10497
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    if-eqz v0, :cond_15

    .line 10498
    const-string v0, "AbsListView"

    const-string/jumbo v1, "requested semForceLongPressMultiSelectionForClickableItems by app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10499
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 10500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 10501
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 10503
    :cond_15
    return-void
.end method

.method protected semGetItemCount()I
    .registers 3

    .line 11817
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 11818
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    :goto_c
    return v1
.end method

.method public semGetLastScrollState()I
    .registers 2

    .line 12003
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    return v0
.end method

.method public semHandleGenericMotionEvent(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 12416
    const/4 v0, 0x0

    return v0
.end method

.method semInvalidateIndicator(I)V
    .registers 5
    .param p1, "position"    # I

    .line 12315
    if-gez p1, :cond_3

    .line 12316
    return-void

    .line 12318
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    if-eq v0, p1, :cond_2e

    .line 12319
    iput p1, p0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    .line 12320
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2e

    iget v1, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq p1, v1, :cond_2e

    iget v1, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    iget v2, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    if-ne v1, v2, :cond_2e

    .line 12322
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 12323
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12325
    :cond_22
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12326
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 12329
    :cond_2e
    return-void
.end method

.method public semIsFastScrollCustomEffectEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10458
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    return v0
.end method

.method public semIsFastScrollEnabled()Z
    .registers 2

    .line 10396
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_7

    .line 10397
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 10399
    :cond_7
    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public semIsFluidScrollerEnabled()Z
    .registers 2

    .line 12104
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public semIsLongPressTriggeredByKey()Z
    .registers 2

    .line 12008
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    return v0
.end method

.method protected semIsShowingScrollbar()Z
    .registers 2

    .line 11805
    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 12111
    const/4 v0, 0x0

    .line 12113
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v6, :cond_d

    .line 12114
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 12116
    :cond_d
    return v0
.end method

.method public semPointToNearPosition(II)I
    .registers 23
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 11043
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 11044
    .local v3, "count":I
    move/from16 v4, p2

    .line 11045
    .local v4, "adjustY":I
    const v5, 0x7fffffff

    .line 11047
    .local v5, "oldDistanceY":I
    const/4 v6, 0x0

    .line 11049
    .local v6, "previousChildCenter":I
    add-int/lit8 v7, v3, -0x1

    .local v7, "i":I
    :goto_12
    if-ltz v7, :cond_37

    .line 11050
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 11051
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_34

    .line 11052
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 11053
    .local v9, "childTop":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 11054
    .local v10, "childBottom":I
    add-int v11, v9, v10

    div-int/lit8 v11, v11, 0x2

    .line 11055
    .local v11, "childCenter":I
    if-ne v6, v11, :cond_29

    .line 11056
    goto :goto_34

    .line 11058
    :cond_29
    move v6, v11

    .line 11059
    sub-int v12, v2, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 11060
    .local v12, "newDistanceY":I
    if-ge v12, v5, :cond_37

    .line 11061
    move v5, v12

    .line 11062
    move v4, v11

    .line 11049
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childTop":I
    .end local v10    # "childBottom":I
    .end local v11    # "childCenter":I
    .end local v12    # "newDistanceY":I
    :cond_34
    :goto_34
    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    .line 11069
    .end local v7    # "i":I
    :cond_37
    const/4 v7, 0x0

    .line 11070
    .local v7, "oldDistanceFromLeft":I
    const/4 v8, 0x0

    .line 11071
    .local v8, "oldDistanceFromRight":I
    const/4 v9, 0x0

    .line 11072
    .local v9, "newDistanceFromLeft":I
    const/4 v10, 0x0

    .line 11073
    .local v10, "newDistanceFromRight":I
    const/4 v11, 0x0

    .line 11074
    .local v11, "closeIndexByLeft":I
    const/4 v12, 0x0

    .line 11076
    .local v12, "closeIndexByRight":I
    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_3f
    if-ltz v13, :cond_ac

    .line 11077
    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 11078
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_a3

    .line 11079
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    .line 11080
    .local v15, "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 11081
    .local v0, "childBottom":I
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 11082
    .local v16, "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    .line 11084
    .local v17, "childRight":I
    move/from16 v18, v5

    .end local v5    # "oldDistanceY":I
    .local v18, "oldDistanceY":I
    add-int/lit8 v5, v3, -0x1

    if-ne v13, v5, :cond_79

    .line 11085
    add-int/lit8 v5, v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v19

    add-int v11, v5, v19

    .line 11086
    add-int/lit8 v5, v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v19

    add-int v12, v5, v19

    .line 11087
    sub-int v5, v1, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 11088
    sub-int v5, v1, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 11092
    :cond_79
    if-lt v4, v15, :cond_9b

    if-gt v4, v0, :cond_9b

    .line 11093
    sub-int v5, v1, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 11094
    sub-int v5, v1, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 11096
    if-gt v9, v7, :cond_92

    .line 11097
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v11, v13, v5

    .line 11098
    move v7, v9

    .line 11100
    :cond_92
    if-gt v10, v8, :cond_9b

    .line 11101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v12, v13, v5

    .line 11102
    move v8, v10

    .line 11105
    :cond_9b
    if-gt v4, v0, :cond_9f

    if-nez v13, :cond_a5

    .line 11106
    :cond_9f
    if-ge v7, v8, :cond_a2

    .line 11107
    return v11

    .line 11109
    :cond_a2
    return v12

    .line 11078
    .end local v0    # "childBottom":I
    .end local v15    # "childTop":I
    .end local v16    # "childLeft":I
    .end local v17    # "childRight":I
    .end local v18    # "oldDistanceY":I
    .restart local v5    # "oldDistanceY":I
    :cond_a3
    move/from16 v18, v5

    .line 11076
    .end local v5    # "oldDistanceY":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v18    # "oldDistanceY":I
    :cond_a5
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v5, v18

    goto :goto_3f

    .end local v18    # "oldDistanceY":I
    .restart local v5    # "oldDistanceY":I
    :cond_ac
    move/from16 v18, v5

    .line 11114
    .end local v5    # "oldDistanceY":I
    .end local v13    # "i":I
    .restart local v18    # "oldDistanceY":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semPointToNearPosition didn\'t find valid position!! "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AbsListView"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11115
    const/4 v0, -0x1

    return v0
.end method

.method semSendBroadcastPosition(II)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "type"    # I

    .line 12280
    if-gez p1, :cond_3

    .line 12281
    return-void

    .line 12283
    :cond_3
    packed-switch p2, :pswitch_data_66

    goto :goto_64

    .line 12299
    :pswitch_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    .line 12300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.widget.ListView.APPWIDGET_FIRST_POSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12301
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appwidgetFirstPosition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12302
    iget-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V

    .line 12303
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_64

    .line 12285
    :pswitch_21
    iget-object v0, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 12286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.clockpackage.APPWIDGET_CURRENT_POSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12287
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "appwidgetCurrentPosition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12288
    iget-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V

    .line 12290
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3a
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-eqz v0, :cond_64

    iget v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_64

    .line 12291
    iget v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v0, p1

    const/4 v2, 0x0

    if-lez v0, :cond_52

    move v0, v1

    goto :goto_53

    :cond_52
    move v0, v2

    .line 12292
    .local v0, "isScollUp":Z
    :goto_53
    if-eqz v0, :cond_5a

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_5e

    :cond_5a
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 12293
    .local v1, "child":Landroid/view/View;
    :goto_5e
    if-eqz v1, :cond_63

    .line 12294
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 12296
    .end local v0    # "isScollUp":Z
    .end local v1    # "child":Landroid/view/View;
    :cond_63
    nop

    .line 12308
    :cond_64
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_21
        :pswitch_7
    .end packed-switch
.end method

.method public semSetAppWidgetEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 12342
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    .line 12343
    return-void
.end method

.method public semSetAppWidgetGetCurrentPosition(Ljava/lang/String;)V
    .registers 2
    .param p1, "component"    # Ljava/lang/String;

    .line 12349
    iput-object p1, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    .line 12350
    return-void
.end method

.method public semSetAppWidgetGetFirstPosition(Ljava/lang/String;)V
    .registers 4
    .param p1, "component"    # Ljava/lang/String;

    .line 12356
    iput-object p1, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    .line 12357
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    .line 12358
    return-void
.end method

.method public semSetAppWidgetIndicator(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 12364
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    .line 12365
    return-void
.end method

.method public semSetAppWidgetIndicatorBottomPadding(I)V
    .registers 2
    .param p1, "bottomPadding"    # I

    .line 12371
    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    .line 12372
    return-void
.end method

.method public semSetAppWidgetIndicatorMarginHorizontal(I)V
    .registers 2
    .param p1, "marginHorizontal"    # I

    .line 12378
    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    .line 12379
    return-void
.end method

.method public semSetAppWidgetIndicatorWhere(I)V
    .registers 2
    .param p1, "where"    # I

    .line 12385
    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorWhere:I

    .line 12386
    return-void
.end method

.method public semSetAppWidgetSnapScroll(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 12335
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    .line 12336
    return-void
.end method

.method public semSetClickableInMultiSelectMode(Z)V
    .registers 2
    .param p1, "clickable"    # Z

    .line 11125
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 11126
    return-void
.end method

.method public semSetCtrlKeyPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .line 10513
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 10514
    return-void
.end method

.method public semSetCustomMultiChoiceModeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 9556
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 9557
    return-void
.end method

.method public semSetDragBlockEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 11029
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 11030
    return-void
.end method

.method public semSetEnableVibrationAtLongPress(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 12022
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 12023
    return-void
.end method

.method public semSetFastScrollCustomEffectEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 10444
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    .line 10445
    return-void
.end method

.method public semSetFastScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 10372
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_18

    .line 10373
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 10375
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 10376
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    goto :goto_18

    .line 10378
    :cond_10
    new-instance v0, Landroid/widget/AbsListView$11;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10386
    :cond_18
    :goto_18
    return-void
.end method

.method public semSetFastScrollEnabledForAppWidget(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 10351
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    .line 10352
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabled(Z)V

    .line 10353
    return-void
.end method

.method public semSetFastScrollEventListener(Landroid/widget/AbsListView$SemFastScrollEventListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$SemFastScrollEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10342
    iput-object p1, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    .line 10343
    return-void
.end method

.method public semSetFastScrollStyle(I)V
    .registers 3
    .param p1, "styleResId"    # I

    .line 10429
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_7

    .line 10430
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_a

    .line 10432
    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setStyle(I)V

    .line 10434
    :goto_a
    return-void
.end method

.method public semSetFluidScrollerEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 12090
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 12091
    return-void
.end method

.method public semSetFluidScrollerEventListener(Landroid/widget/AbsListView$SemFluidScrollerEventListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$SemFluidScrollerEventListener;

    .line 12084
    return-void
.end method

.method public semSetFluidScrollerStyle(I)V
    .registers 2
    .param p1, "styleResId"    # I

    .line 12098
    return-void
.end method

.method public semSetForcedEdgeEffectEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11890
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 11891
    return-void
.end method

.method public semSetGoToTopEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 10129
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSetGoToTopEnabled(ZI)V

    .line 10130
    return-void
.end method

.method public semSetGoToTopEnabled(ZI)V
    .registers 13
    .param p1, "enabled"    # Z
    .param p2, "buttonStyle"    # I

    .line 10144
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 10145
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-ne v0, v2, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v1

    .line 10147
    .local v0, "isNight":Z
    :goto_18
    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080947

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_31

    .line 10148
    :cond_26
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080949

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_31
    iput-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 10149
    .end local v0    # "isNight":Z
    goto :goto_48

    .line 10150
    :cond_34
    if-nez p2, :cond_39

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    goto :goto_46

    .line 10151
    :cond_39
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080946

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_46
    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 10153
    :goto_48
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e5

    .line 10154
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 10155
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    const/16 v2, 0xff

    if-eq v0, v2, :cond_5b

    .line 10156
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10158
    :cond_5b
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    .line 10159
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10161
    if-eqz p1, :cond_70

    .line 10162
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_76

    .line 10164
    :cond_70
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10166
    :goto_76
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 10167
    const-wide/16 v3, 0x14d

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10168
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10169
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/AbsListView$8;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$8;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10188
    filled-new-array {v2, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 10189
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10190
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10191
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$9;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10199
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$10;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10219
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 10221
    .local v0, "elevation":I
    new-instance v1, Landroid/graphics/RenderNode;

    const-string v2, "goToTop"

    invoke-direct {v1, v2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    .line 10222
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 10224
    .end local v0    # "elevation":I
    :cond_e5
    return-void
.end method

.method public semSetGoToTopEnabledForAppWidget(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 10105
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    .line 10106
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSetGoToTopEnabled(ZI)V

    .line 10107
    return-void
.end method

.method public semSetGoToTopOffsetForAppWidget(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 10117
    iput p1, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    .line 10118
    return-void
.end method

.method public semSetHoverScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 9814
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 9815
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 9816
    return-void
.end method

.method public semSetLongPressMultiSelectionEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 10485
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 10486
    return-void
.end method

.method public semSetMultiFocusEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 9919
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 9920
    return-void
.end method

.method public semSetScrollBarBottomPadding(I)V
    .registers 3
    .param p1, "scrollBarBottomPadding"    # I

    .line 12393
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_8

    .line 12394
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->semSetScrollBarBottomPadding(I)V

    goto :goto_b

    .line 12396
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->semSetScrollBarBottomPadding(I)V

    .line 12398
    :goto_b
    return-void
.end method

.method public semSetScrollBarTopPadding(I)V
    .registers 3
    .param p1, "scrollBarTopPadding"    # I

    .line 12405
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_8

    .line 12406
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->semSetScrollBarTopPadding(I)V

    goto :goto_b

    .line 12408
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->semSetScrollBarTopPadding(I)V

    .line 12410
    :goto_b
    return-void
.end method

.method public semSetSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .line 11843
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 11844
    return-void
.end method

.method public semSetSmoothScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 10301
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 10302
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 10304
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    .line 10305
    return-void
.end method

.method public semSetupGoToTop(I)V
    .registers 27
    .param p1, "where"    # I

    .line 9949
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v1

    if-nez v1, :cond_1de

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v1, :cond_10

    move/from16 v2, p1

    goto/16 :goto_1e0

    .line 9950
    :cond_10
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9952
    const/4 v1, 0x1

    move/from16 v2, p1

    if-ne v2, v1, :cond_21

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_21

    .line 9953
    const/4 v2, 0x0

    .line 9956
    .end local p1    # "where":I
    .local v2, "where":I
    :cond_21
    const/4 v3, -0x1

    if-ne v2, v3, :cond_39

    iget-boolean v4, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v4, :cond_39

    .line 9957
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-nez v3, :cond_36

    .line 9958
    const/4 v2, 0x0

    goto :goto_48

    .line 9960
    :cond_36
    iget v2, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    goto :goto_48

    .line 9962
    :cond_39
    if-ne v2, v3, :cond_48

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 9963
    :cond_47
    const/4 v2, 0x1

    .line 9966
    :cond_48
    :goto_48
    if-eqz v2, :cond_50

    .line 9967
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_57

    .line 9968
    :cond_50
    if-eq v2, v1, :cond_57

    .line 9969
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9972
    :cond_57
    :goto_57
    iget v3, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    if-nez v3, :cond_66

    if-nez v2, :cond_66

    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v3, :cond_66

    .line 9973
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9976
    :cond_66
    const/4 v3, 0x2

    if-eq v2, v3, :cond_70

    .line 9977
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9980
    :cond_70
    iput v2, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 9982
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 9983
    .local v4, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    .line 9984
    .local v5, "h":I
    iget v6, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 9985
    .local v6, "contentW":I
    iget v7, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    .line 9987
    .local v7, "centerX":I
    const/4 v8, 0x0

    .line 9989
    .local v8, "paddingBottom":I
    const/4 v9, 0x0

    .line 9990
    .local v9, "btnW":I
    const/4 v10, 0x0

    .line 9991
    .local v10, "btnH":I
    const/4 v11, 0x0

    .line 9993
    .local v11, "gapH":I
    const/4 v12, 0x0

    filled-new-array {v12, v12}, [I

    move-result-object v13

    .line 9994
    .local v13, "locOnScr":[I
    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    .line 9995
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 9996
    .local v14, "dm":Landroid/util/DisplayMetrics;
    iget-object v15, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v15, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 9997
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v15

    .line 9998
    .local v15, "rotate":I
    if-eq v15, v1, :cond_b5

    const/4 v1, 0x3

    if-ne v15, v1, :cond_b3

    goto :goto_b5

    :cond_b3
    move v1, v12

    goto :goto_b6

    :cond_b5
    :goto_b5
    const/4 v1, 0x1

    .line 9999
    .local v1, "isLandScape":Z
    :goto_b6
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v17, v16

    .line 10000
    .local v17, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v12, v17

    .end local v17    # "displayFrame":Landroid/graphics/Rect;
    .local v12, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10002
    if-eqz v1, :cond_c9

    move-object/from16 v17, v3

    .end local v3    # "display":Landroid/view/Display;
    .local v17, "display":Landroid/view/Display;
    iget v3, v12, Landroid/graphics/Rect;->left:I

    goto :goto_cc

    .end local v17    # "display":Landroid/view/Display;
    .restart local v3    # "display":Landroid/view/Display;
    :cond_c9
    move-object/from16 v17, v3

    .end local v3    # "display":Landroid/view/Display;
    .restart local v17    # "display":Landroid/view/Display;
    const/4 v3, 0x0

    .line 10003
    .local v3, "left":I
    :goto_cc
    if-eqz v1, :cond_d3

    move/from16 v18, v1

    .end local v1    # "isLandScape":Z
    .local v18, "isLandScape":Z
    iget v1, v12, Landroid/graphics/Rect;->right:I

    goto :goto_d7

    .end local v18    # "isLandScape":Z
    .restart local v1    # "isLandScape":Z
    :cond_d3
    move/from16 v18, v1

    .end local v1    # "isLandScape":Z
    .restart local v18    # "isLandScape":Z
    iget v1, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10005
    .local v1, "right":I
    :goto_d7
    move/from16 v19, v6

    const/16 v16, 0x0

    .end local v6    # "contentW":I
    .local v19, "contentW":I
    aget v6, v13, v16

    if-ge v6, v3, :cond_f6

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    if-nez v6, :cond_f6

    .line 10006
    aget v6, v13, v16

    neg-int v6, v6

    .line 10007
    .local v6, "overlappedW":I
    move/from16 v20, v3

    .end local v3    # "left":I
    .local v20, "left":I
    iget v3, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    if-le v6, v3, :cond_f8

    .line 10008
    iget v3, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v3, v6, v3

    const/16 v21, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    goto :goto_f8

    .line 10005
    .end local v6    # "overlappedW":I
    .end local v20    # "left":I
    .restart local v3    # "left":I
    :cond_f6
    move/from16 v20, v3

    .line 10013
    .end local v3    # "left":I
    .restart local v20    # "left":I
    :cond_f8
    :goto_f8
    const/4 v3, 0x0

    aget v6, v13, v3

    add-int/2addr v6, v4

    if-le v6, v1, :cond_115

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    if-nez v6, :cond_115

    .line 10014
    aget v6, v13, v3

    add-int/2addr v6, v4

    iget v3, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v3

    .line 10015
    .restart local v6    # "overlappedW":I
    iget v3, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    if-le v6, v3, :cond_115

    .line 10016
    iget v3, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v6, v3

    const/16 v21, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 10020
    .end local v6    # "overlappedW":I
    :cond_115
    packed-switch v2, :pswitch_data_1e2

    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v24, v5

    const/4 v3, 0x0

    .end local v1    # "right":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .local v22, "right":I
    .local v23, "w":I
    .local v24, "h":I
    goto/16 :goto_193

    .line 10028
    .end local v22    # "right":I
    .end local v23    # "w":I
    .end local v24    # "h":I
    .restart local v1    # "right":I
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    :pswitch_121
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10029
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10503fc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 10030
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 10031
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    if-eqz v3, :cond_153

    .line 10032
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10503fb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 10033
    .end local v11    # "gapH":I
    .local v3, "gapH":I
    iget v6, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    add-int/2addr v3, v6

    move v11, v3

    goto :goto_161

    .line 10035
    .end local v3    # "gapH":I
    .restart local v11    # "gapH":I
    :cond_153
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10503fa

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v11, v3

    .line 10037
    :goto_161
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    div-int/lit8 v6, v9, 0x2

    sub-int v6, v7, v6

    sub-int v21, v5, v10

    sub-int v21, v21, v8

    move/from16 v22, v1

    .end local v1    # "right":I
    .restart local v22    # "right":I
    sub-int v1, v21, v11

    div-int/lit8 v21, v9, 0x2

    move/from16 v23, v4

    .end local v4    # "w":I
    .restart local v23    # "w":I
    add-int v4, v7, v21

    sub-int v21, v5, v8

    move/from16 v24, v5

    .end local v5    # "h":I
    .restart local v24    # "h":I
    sub-int v5, v21, v11

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 10038
    const/4 v3, 0x0

    goto :goto_193

    .line 10022
    .end local v22    # "right":I
    .end local v23    # "w":I
    .end local v24    # "h":I
    .restart local v1    # "right":I
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    :pswitch_180
    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v24, v5

    .end local v1    # "right":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .restart local v22    # "right":I
    .restart local v23    # "w":I
    .restart local v24    # "h":I
    iget v1, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_192

    .line 10023
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_193

    .line 10022
    :cond_192
    const/4 v3, 0x0

    .line 10043
    :goto_193
    iget v1, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_19a

    .line 10044
    iput v3, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 10046
    :cond_19a
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10048
    const/4 v1, 0x1

    if-ne v2, v1, :cond_1b9

    iget v1, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v1, :cond_1b4

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_1b4

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v1, :cond_1b9

    .line 10049
    :cond_1b4
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10052
    :cond_1b9
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 10053
    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v3, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 10054
    iget-object v3, v0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 10055
    iget-object v3, v0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    .line 10056
    iget-object v3, v0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 10057
    return-void

    .line 9949
    .end local v2    # "where":I
    .end local v7    # "centerX":I
    .end local v8    # "paddingBottom":I
    .end local v9    # "btnW":I
    .end local v10    # "btnH":I
    .end local v11    # "gapH":I
    .end local v12    # "displayFrame":Landroid/graphics/Rect;
    .end local v13    # "locOnScr":[I
    .end local v14    # "dm":Landroid/util/DisplayMetrics;
    .end local v15    # "rotate":I
    .end local v17    # "display":Landroid/view/Display;
    .end local v18    # "isLandScape":Z
    .end local v19    # "contentW":I
    .end local v20    # "left":I
    .end local v22    # "right":I
    .end local v23    # "w":I
    .end local v24    # "h":I
    .restart local p1    # "where":I
    :cond_1de
    move/from16 v2, p1

    :goto_1e0
    return-void

    nop

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_180
        :pswitch_121
        :pswitch_121
    .end packed-switch
.end method

.method semShowGoToTOP()V
    .registers 3

    .line 10247
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 10248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 10249
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 10251
    :cond_16
    return-void
.end method

.method public semSmoothScrollBy(I)V
    .registers 5
    .param p1, "distance"    # I

    .line 11855
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 11856
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 11859
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v0, :cond_26

    .line 11860
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 11861
    new-instance v0, Landroid/widget/AbsListView$SemSmoothScrollByMove;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$SemSmoothScrollByMove-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 11862
    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 11865
    :cond_26
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 11866
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_5a

    .line 11867
    if-lez p1, :cond_47

    .line 11868
    :goto_36
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_5a

    .line 11869
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 11868
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_36

    .line 11872
    :cond_47
    :goto_47
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v2, v1

    if-ge p1, v2, :cond_5a

    .line 11873
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 11872
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_47

    .line 11877
    :cond_5a
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 11878
    if-eqz v0, :cond_6a

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11879
    :cond_6a
    return-void
.end method

.method public semStartMultiChoiceMode()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9525
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_f

    .line 9526
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 9528
    :cond_f
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 7059
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 7060
    return v1

    .line 7063
    :cond_8
    const/4 v0, 0x0

    .line 7064
    .local v0, "handled":Z
    const/4 v2, 0x1

    .line 7065
    .local v2, "okToSend":Z
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_b2

    goto :goto_55

    .line 7095
    :sswitch_f
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_55

    .line 7073
    :sswitch_12
    const/4 v2, 0x0

    .line 7074
    goto :goto_55

    .line 7077
    :sswitch_14
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_53

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_53

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 7078
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_39

    .line 7079
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_39

    .line 7080
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7081
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_37

    .line 7082
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7084
    :cond_37
    const/4 v0, 0x1

    .line 7085
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_38
    goto :goto_53

    :cond_39
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_38

    .line 7086
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_53

    .line 7087
    const/4 v0, 0x1

    .line 7088
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7091
    :cond_53
    :goto_53
    const/4 v2, 0x0

    .line 7092
    nop

    .line 7099
    :goto_55
    if-eqz v2, :cond_b0

    .line 7100
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7102
    move-object v4, p3

    .line 7103
    .local v4, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_69

    .line 7104
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    .line 7107
    :cond_69
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 7108
    .local v5, "action":I
    const/16 v6, 0x72

    const/16 v7, 0x71

    const/16 v8, 0x3c

    const/16 v9, 0x3b

    packed-switch v5, :pswitch_data_dc

    goto :goto_b0

    .line 7135
    :pswitch_79
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b0

    .line 7121
    :pswitch_80
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p1, v4}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 7123
    if-eq p1, v9, :cond_92

    if-ne p1, v8, :cond_8b

    goto :goto_92

    .line 7128
    :cond_8b
    if-eq p1, v7, :cond_8f

    if-ne p1, v6, :cond_b0

    .line 7129
    :cond_8f
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_b0

    .line 7124
    :cond_92
    :goto_92
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 7125
    iput v1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 7126
    iput v1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 7127
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    goto :goto_b0

    .line 7110
    :pswitch_9c
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v4}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 7112
    if-eq p1, v9, :cond_ae

    if-ne p1, v8, :cond_a7

    goto :goto_ae

    .line 7114
    :cond_a7
    if-eq p1, v7, :cond_ab

    if-ne p1, v6, :cond_b0

    .line 7115
    :cond_ab
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_b0

    .line 7113
    :cond_ae
    :goto_ae
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 7139
    .end local v4    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v5    # "action":I
    :cond_b0
    :goto_b0
    return v0

    nop

    :sswitch_data_b2
    .sparse-switch
        0x4 -> :sswitch_14
        0x13 -> :sswitch_12
        0x14 -> :sswitch_12
        0x15 -> :sswitch_12
        0x16 -> :sswitch_12
        0x17 -> :sswitch_12
        0x3e -> :sswitch_f
        0x42 -> :sswitch_12
        0x6f -> :sswitch_14
        0xa0 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_80
        :pswitch_79
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 154
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 1090
    if-eqz p1, :cond_2f

    .line 1091
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1092
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1b

    .line 1094
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1096
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_25

    .line 1097
    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    .line 1098
    invoke-direct {p0}, Landroid/widget/AbsListView;->initGoToTOP()V

    .line 1101
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemAdapterChanged:Z

    .line 1105
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_2f

    .line 1106
    invoke-direct {p0}, Landroid/widget/AbsListView;->initIndicator()V

    .line 1110
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1112
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4c

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 1114
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 1115
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1117
    :cond_4c
    return-void
.end method

.method public setBottomEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 7735
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 7736
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 7737
    return-void
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .line 7545
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1c

    .line 7546
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 7547
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7548
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 7549
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7548
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 7551
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 7553
    .end local v0    # "count":I
    :cond_1c
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 7
    .param p1, "choiceMode"    # I

    .line 1413
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1414
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 1415
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1416
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1418
    :cond_c
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3d

    .line 1419
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1e

    .line 1420
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1422
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1423
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1426
    :cond_33
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_3d

    .line 1427
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1428
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1433
    :cond_3d
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_45

    .line 1434
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_50

    .line 1435
    :cond_45
    if-ne v0, v1, :cond_4a

    .line 1436
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_50

    .line 1437
    :cond_4a
    if-eqz v0, :cond_4e

    if-ne v0, v3, :cond_50

    .line 1438
    :cond_4e
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1441
    :cond_50
    :goto_50
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .param p1, "onTop"    # Z

    .line 3222
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3223
    return-void
.end method

.method public setEdgeEffectColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 7721
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTopEdgeEffectColor(I)V

    .line 7722
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setBottomEdgeEffectColor(I)V

    .line 7723
    return-void
.end method

.method public setEnableDoubleFling(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 12031
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 12032
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 11760
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 11761
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 9822
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 9823
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 1559
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_22

    .line 1560
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_e

    .line 1561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1564
    :cond_e
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1566
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1567
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_22

    .line 1569
    :cond_1a
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1577
    :cond_22
    :goto_22
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1487
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_20

    .line 1488
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1490
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1491
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    if-eqz v0, :cond_14

    .line 1492
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    goto :goto_20

    .line 1494
    :cond_14
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_20

    .line 1497
    :cond_18
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1509
    :cond_20
    :goto_20
    return-void
.end method

.method public setFastScrollStyle(I)V
    .registers 3
    .param p1, "styleResId"    # I

    .line 1537
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1538
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_a

    .line 1540
    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 1542
    :goto_a
    return-void
.end method

.method public setFastScrollTrackPadding(II)V
    .registers 3
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 10467
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    .line 10471
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 4
    .param p1, "filterText"    # Ljava/lang/String;

    .line 2261
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2265
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2266
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2267
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_37

    .line 2269
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2f

    .line 2270
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2271
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2275
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2276
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2279
    :cond_37
    return-void
.end method

.method public setForcedClick(Z)V
    .registers 2
    .param p1, "force"    # Z

    .line 11935
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 11936
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2515
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2517
    .local v0, "changed":Z
    if-eqz v0, :cond_22

    .line 2521
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 2522
    .local v1, "visible":Z
    :goto_f
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2523
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2527
    .end local v1    # "visible":Z
    :cond_22
    return v0
.end method

.method public setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .line 6040
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 6041
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6043
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 6044
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .line 1234
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_5

    .line 1235
    return-void

    .line 1239
    :cond_5
    const/4 v1, 0x3

    if-eqz p2, :cond_29

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_29

    .line 1240
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_21

    .line 1241
    invoke-virtual {v0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1246
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_29

    .line 1242
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_29
    :goto_29
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_8e

    if-ne v0, v1, :cond_33

    goto :goto_8e

    .line 1274
    :cond_33
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v4

    goto :goto_42

    :cond_41
    move v0, v3

    .line 1277
    .local v0, "updateIds":Z
    :goto_42
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_4a

    move v1, v4

    goto :goto_4b

    :cond_4a
    move v1, v3

    .line 1278
    .local v1, "itemCheckChanged":Z
    :goto_4b
    if-nez p2, :cond_53

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1279
    :cond_53
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1280
    if-eqz v0, :cond_5f

    .line 1281
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1286
    :cond_5f
    if-eqz p2, :cond_7b

    .line 1287
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1288
    if-eqz v0, :cond_77

    .line 1289
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1291
    :cond_77
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_ea

    .line 1292
    :cond_7b
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_ea

    .line 1293
    :cond_8b
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_ea

    .line 1251
    .end local v0    # "updateIds":Z
    .end local v1    # "itemCheckChanged":Z
    :cond_8e
    :goto_8e
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1252
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1253
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1254
    if-eqz p2, :cond_b7

    .line 1255
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_c2

    .line 1257
    :cond_b7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1260
    :cond_c2
    :goto_c2
    if-eq v0, p2, :cond_c5

    move v3, v4

    :cond_c5
    move v1, v3

    .line 1261
    .restart local v1    # "itemCheckChanged":Z
    if-eqz v1, :cond_d5

    .line 1262
    if-eqz p2, :cond_d0

    .line 1263
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_d5

    .line 1265
    :cond_d0
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1268
    :cond_d5
    :goto_d5
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_e9

    .line 1269
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1270
    .local v2, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v7, p1

    move-wide v8, v2

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1273
    .end local v0    # "oldValue":Z
    .end local v2    # "id":J
    :cond_e9
    nop

    .line 1298
    :cond_ea
    :goto_ea
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_100

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_100

    if-eqz v1, :cond_100

    .line 1299
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v0, :cond_fa

    .line 1300
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1302
    :cond_fa
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1303
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1305
    :cond_100
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 1453
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1454
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1456
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1457
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .registers 4
    .param p1, "startItem"    # I
    .param p2, "endItem"    # I

    .line 9906
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 9907
    return-void

    .line 9909
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 9910
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 9911
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 1701
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1702
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1703
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .registers 3
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .line 11943
    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .line 7792
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V

    .line 7793
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 7611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 7612
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 7624
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1b

    .line 7625
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7626
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7627
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7628
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 7629
    return-void

    .line 7632
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7634
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7635
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 7636
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7638
    :cond_34
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 7616
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 7650
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_7

    .line 7651
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 7653
    :cond_7
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 1644
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1645
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_a

    .line 1646
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1648
    :cond_a
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .line 3327
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3328
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3329
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1921
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 1922
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1924
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1925
    return-void
.end method

.method public setSelectedChildViewEnabled(Z)V
    .registers 2
    .param p1, "selectedChildViewEnabled"    # Z

    .line 3028
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 3029
    return-void
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "y"    # I

    .line 8656
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 8658
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    .line 8659
    iput p1, p0, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    .line 8661
    return-void

    .line 8665
    :cond_a
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v0, :cond_11

    .line 8666
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    .line 8669
    :cond_11
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_18

    .line 8670
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    .line 8674
    :cond_18
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_32

    .line 8675
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_32

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v0, v1, :cond_32

    .line 8676
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8677
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 8678
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 8681
    :cond_32
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_42

    .line 8682
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 8683
    if-ltz p1, :cond_44

    .line 8684
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_44

    .line 8687
    :cond_42
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8690
    :cond_44
    :goto_44
    if-ltz p1, :cond_68

    .line 8691
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8692
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8694
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_5e

    .line 8695
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8696
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 8699
    :cond_5e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_65

    .line 8700
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 8702
    :cond_65
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 8704
    :cond_68
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .param p1, "resID"    # I

    .line 3245
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3246
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 3249
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 3250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3251
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3253
    :cond_d
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3255
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3256
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 3257
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 3258
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 3259
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 3260
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3261
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3262
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1679
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1680
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .param p1, "stackFromBottom"    # Z

    .line 1994
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 1995
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1996
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1998
    :cond_9
    return-void
.end method

.method public setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .registers 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 11993
    iput-object p1, p0, Landroid/widget/AbsListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 11994
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .param p1, "textFilterEnabled"    # Z

    .line 1938
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1939
    return-void
.end method

.method public setTopEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 7749
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 7750
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 7751
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2
    .param p1, "value"    # I

    .line 11143
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 11144
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 7511
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 7512
    return-void
.end method

.method public setVelocityScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 6053
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 6054
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1634
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1635
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_b

    .line 1636
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_12

    .line 1637
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_12

    .line 1638
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 1640
    :cond_12
    :goto_12
    return-void
.end method

.method setVisibleRangeHint(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 7706
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_7

    .line 7707
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 7709
    :cond_7
    return-void
.end method

.method public final shouldDrawSelector()Z
    .registers 2

    .line 3209
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method shouldShowSelector()Z
    .registers 2

    .line 3180
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public showContextMenu()Z
    .registers 3

    .line 3809
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3814
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;

    .line 3844
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3845
    return v1

    .line 3847
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3852
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .line 6162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 6163
    return-void
.end method

.method smoothScrollBy(IIZZ)V
    .registers 13
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z
    .param p4, "suppressEndFlingStateChangeCall"    # Z

    .line 6168
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 6169
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6173
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6174
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6175
    .local v1, "childCount":I
    add-int v2, v0, v1

    .line 6176
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    .line 6177
    .local v3, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 6179
    .local v4, "bottomLimit":I
    const/4 v5, 0x0

    if-eqz p1, :cond_54

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v6, :cond_54

    if-eqz v1, :cond_54

    if-nez v0, :cond_37

    .line 6180
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-ne v6, v3, :cond_37

    if-ltz p1, :cond_54

    :cond_37
    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v2, v6, :cond_4a

    add-int/lit8 v6, v1, -0x1

    .line 6182
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ne v6, v4, :cond_4a

    if-lez p1, :cond_4a

    goto :goto_54

    .line 6188
    :cond_4a
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6189
    iget-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_60

    .line 6183
    :cond_54
    :goto_54
    iget-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v6}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6184
    iget-object v6, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v6, :cond_60

    .line 6185
    invoke-virtual {v6}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6193
    :cond_60
    :goto_60
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v6

    if-eqz v6, :cond_b7

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    if-eqz v6, :cond_b7

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v6, :cond_b7

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v6

    if-nez v6, :cond_b7

    .line 6194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " re calculate done2 mPositionScroller = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AbsListView"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 6196
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6197
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_9c

    .line 6198
    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6200
    :cond_9c
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    if-eqz v5, :cond_b7

    .line 6201
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6202
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 6203
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6207
    :cond_b7
    return-void
.end method

.method smoothScrollByOffset(I)V
    .registers 11
    .param p1, "position"    # I

    .line 6213
    const/4 v0, -0x1

    .line 6214
    .local v0, "index":I
    if-gez p1, :cond_8

    .line 6215
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_e

    .line 6216
    :cond_8
    if-lez p1, :cond_e

    .line 6217
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 6220
    :cond_e
    :goto_e
    const/4 v1, -0x1

    if-le v0, v1, :cond_64

    .line 6221
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6222
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_64

    .line 6223
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6224
    .local v2, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 6226
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 6227
    .local v3, "childRectArea":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 6228
    .local v4, "visibleRectArea":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 6229
    .local v5, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6230
    .local v6, "visibleThreshold":F
    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_4a

    cmpg-float v8, v5, v7

    if-gez v8, :cond_4a

    .line 6233
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 6234
    :cond_4a
    if-lez p1, :cond_52

    cmpg-float v7, v5, v7

    if-gez v7, :cond_52

    .line 6237
    add-int/lit8 v0, v0, -0x1

    .line 6240
    .end local v3    # "childRectArea":I
    .end local v4    # "visibleRectArea":I
    .end local v5    # "visibleArea":F
    .end local v6    # "visibleThreshold":F
    :cond_52
    :goto_52
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    add-int v4, v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 6243
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "visibleRect":Landroid/graphics/Rect;
    :cond_64
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 6070
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    .line 6071
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_b

    .line 6072
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    .line 6076
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_15

    .line 6077
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6079
    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 6080
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 6150
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 6151
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6153
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 6154
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 6121
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    .line 6122
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_b

    .line 6123
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    .line 6127
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_15

    .line 6128
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6130
    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 6131
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 6096
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    .line 6097
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_b

    .line 6098
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    .line 6102
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_15

    .line 6103
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6105
    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6106
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .line 3163
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 3168
    const/4 v0, 0x0

    return v0

    .line 3166
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .registers 28
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 6326
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 6327
    .local v3, "childCount":I
    const/4 v4, 0x1

    if-nez v3, :cond_e

    .line 6328
    return v4

    .line 6331
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 6332
    .local v6, "firstTop":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 6334
    .local v7, "lastBottom":I
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 6339
    .local v8, "listPadding":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 6340
    .local v9, "effectivePaddingTop":I
    const/4 v10, 0x0

    .line 6341
    .local v10, "effectivePaddingBottom":I
    iget v11, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v12, 0x22

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_30

    .line 6342
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 6343
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 6347
    :cond_30
    sub-int v11, v9, v6

    .line 6348
    .local v11, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    .line 6349
    .local v13, "end":I
    sub-int v14, v7, v13

    .line 6351
    .local v14, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v15, v5

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v15, v5

    .line 6352
    .local v15, "height":I
    if-gez v1, :cond_4d

    .line 6353
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local p1    # "deltaY":I
    .local v1, "deltaY":I
    goto :goto_53

    .line 6355
    .end local v1    # "deltaY":I
    .restart local p1    # "deltaY":I
    :cond_4d
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6358
    .end local p1    # "deltaY":I
    .restart local v1    # "deltaY":I
    :goto_53
    if-gez v2, :cond_5d

    .line 6359
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local p2    # "incrementalDeltaY":I
    .local v2, "incrementalDeltaY":I
    goto :goto_63

    .line 6361
    .end local v2    # "incrementalDeltaY":I
    .restart local p2    # "incrementalDeltaY":I
    :cond_5d
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6364
    .end local p2    # "incrementalDeltaY":I
    .restart local v2    # "incrementalDeltaY":I
    :goto_63
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6367
    .local v5, "firstPosition":I
    if-nez v5, :cond_6e

    .line 6368
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v4, v6, v4

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_73

    .line 6370
    :cond_6e
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 6372
    :goto_73
    add-int v4, v5, v3

    iget v12, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v4, v12, :cond_7f

    .line 6373
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_84

    .line 6375
    :cond_7f
    iget v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 6378
    :goto_84
    if-nez v5, :cond_8e

    iget v4, v8, Landroid/graphics/Rect;->top:I

    if-lt v6, v4, :cond_8e

    if-ltz v2, :cond_8e

    const/4 v4, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v4, 0x0

    .line 6380
    .local v4, "cannotScrollDown":Z
    :goto_8f
    add-int v12, v5, v3

    move/from16 v17, v6

    .end local v6    # "firstTop":I
    .local v17, "firstTop":I
    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v12, v6, :cond_a4

    .line 6381
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v12

    if-gt v7, v6, :cond_a4

    if-gtz v2, :cond_a4

    const/4 v6, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v6, 0x0

    .line 6383
    .local v6, "cannotScrollUp":Z
    :goto_a5
    if-nez v4, :cond_263

    if-eqz v6, :cond_bd

    move/from16 v19, v1

    move/from16 v16, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_275

    .line 6387
    :cond_bd
    if-gez v2, :cond_c1

    const/4 v12, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v12, 0x0

    .line 6389
    .local v12, "down":Z
    :goto_c2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v18

    .line 6390
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_cb

    .line 6391
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 6394
    :cond_cb
    move/from16 p1, v4

    .end local v4    # "cannotScrollDown":Z
    .local p1, "cannotScrollDown":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v4

    .line 6395
    .local v4, "headerViewsCount":I
    move/from16 p2, v6

    .end local v6    # "cannotScrollUp":Z
    .local p2, "cannotScrollUp":Z
    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v19

    sub-int v6, v6, v19

    .line 6397
    .local v6, "footerViewsStart":I
    const/16 v19, 0x0

    .line 6398
    .local v19, "start":I
    const/16 v20, 0x0

    .line 6400
    .local v20, "count":I
    if-eqz v12, :cond_129

    .line 6401
    move/from16 v21, v7

    .end local v7    # "lastBottom":I
    .local v21, "lastBottom":I
    neg-int v7, v2

    .line 6402
    .local v7, "top":I
    move/from16 v22, v9

    .end local v9    # "effectivePaddingTop":I
    .local v22, "effectivePaddingTop":I
    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v23, v10

    const/16 v10, 0x22

    .end local v10    # "effectivePaddingBottom":I
    .local v23, "effectivePaddingBottom":I
    and-int/2addr v9, v10

    if-ne v9, v10, :cond_f2

    .line 6403
    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    .line 6405
    :cond_f2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_f3
    if-ge v9, v3, :cond_11e

    .line 6406
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6407
    .local v10, "child":Landroid/view/View;
    move/from16 v24, v13

    .end local v13    # "end":I
    .local v24, "end":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v7, :cond_102

    .line 6408
    goto :goto_122

    .line 6410
    :cond_102
    add-int/lit8 v20, v20, 0x1

    .line 6411
    add-int v13, v5, v9

    .line 6415
    .local v13, "position":I
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6416
    if-lt v13, v4, :cond_115

    if-ge v13, v6, :cond_115

    .line 6417
    move/from16 v16, v7

    .end local v7    # "top":I
    .local v16, "top":I
    iget-object v7, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_117

    .line 6416
    .end local v16    # "top":I
    .restart local v7    # "top":I
    :cond_115
    move/from16 v16, v7

    .line 6405
    .end local v7    # "top":I
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    .restart local v16    # "top":I
    :goto_117
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    move/from16 v13, v24

    goto :goto_f3

    .end local v16    # "top":I
    .end local v24    # "end":I
    .restart local v7    # "top":I
    .local v13, "end":I
    :cond_11e
    move/from16 v16, v7

    move/from16 v24, v13

    .line 6422
    .end local v7    # "top":I
    .end local v9    # "i":I
    .end local v13    # "end":I
    .restart local v24    # "end":I
    :goto_122
    move/from16 v16, v3

    move/from16 v3, v19

    move/from16 v7, v20

    goto :goto_173

    .line 6423
    .end local v21    # "lastBottom":I
    .end local v22    # "effectivePaddingTop":I
    .end local v23    # "effectivePaddingBottom":I
    .end local v24    # "end":I
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .restart local v13    # "end":I
    :cond_129
    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v21    # "lastBottom":I
    .restart local v22    # "effectivePaddingTop":I
    .restart local v23    # "effectivePaddingBottom":I
    .restart local v24    # "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    .line 6424
    .local v7, "bottom":I
    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v10, 0x22

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_140

    .line 6425
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    .line 6427
    :cond_140
    add-int/lit8 v9, v3, -0x1

    .local v9, "i":I
    :goto_142
    if-ltz v9, :cond_16d

    .line 6428
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6429
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v7, :cond_151

    .line 6430
    move/from16 v16, v3

    goto :goto_16f

    .line 6432
    :cond_151
    move/from16 v19, v9

    .line 6433
    add-int/lit8 v20, v20, 0x1

    .line 6434
    add-int v13, v5, v9

    .line 6438
    .local v13, "position":I
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6439
    if-lt v13, v4, :cond_166

    if-ge v13, v6, :cond_166

    .line 6440
    move/from16 v16, v3

    .end local v3    # "childCount":I
    .local v16, "childCount":I
    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_168

    .line 6439
    .end local v16    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_166
    move/from16 v16, v3

    .line 6427
    .end local v3    # "childCount":I
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    .restart local v16    # "childCount":I
    :goto_168
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v16

    goto :goto_142

    .end local v16    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_16d
    move/from16 v16, v3

    .line 6447
    .end local v3    # "childCount":I
    .end local v7    # "bottom":I
    .end local v9    # "i":I
    .restart local v16    # "childCount":I
    :goto_16f
    move/from16 v3, v19

    move/from16 v7, v20

    .end local v19    # "start":I
    .end local v20    # "count":I
    .local v3, "start":I
    .local v7, "count":I
    :goto_173
    iget v9, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 6449
    const/4 v9, 0x1

    iput-boolean v9, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 6451
    if-lez v7, :cond_185

    .line 6452
    invoke-virtual {v0, v3, v7}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 6453
    iget-object v9, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 6458
    :cond_185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_18e

    .line 6459
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6462
    :cond_18e
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 6464
    if-eqz v12, :cond_198

    .line 6465
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6468
    :cond_198
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 6469
    .local v9, "absIncrementalDeltaY":I
    if-lt v11, v9, :cond_1a0

    if-ge v14, v9, :cond_1a3

    .line 6470
    :cond_1a0
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 6473
    :cond_1a3
    iget-object v10, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 6474
    const/4 v10, 0x0

    .line 6475
    .local v10, "selectorOnScreen":Z
    const/4 v13, -0x1

    if-nez v18, :cond_1d3

    move/from16 v19, v1

    .end local v1    # "deltaY":I
    .local v19, "deltaY":I
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v1, v13, :cond_1d0

    .line 6476
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v13

    .line 6477
    .local v1, "childIndex":I
    if-ltz v1, :cond_1cc

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-ge v1, v13, :cond_1cc

    .line 6478
    iget v13, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v20, v3

    .end local v3    # "start":I
    .local v20, "start":I
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6479
    const/4 v10, 0x1

    goto :goto_1ce

    .line 6477
    .end local v20    # "start":I
    .restart local v3    # "start":I
    :cond_1cc
    move/from16 v20, v3

    .line 6481
    .end local v1    # "childIndex":I
    .end local v3    # "start":I
    .restart local v20    # "start":I
    :goto_1ce
    goto/16 :goto_23f

    .line 6475
    .end local v20    # "start":I
    .restart local v3    # "start":I
    :cond_1d0
    move/from16 v20, v3

    .end local v3    # "start":I
    .restart local v20    # "start":I
    goto :goto_1d7

    .end local v19    # "deltaY":I
    .end local v20    # "start":I
    .local v1, "deltaY":I
    .restart local v3    # "start":I
    :cond_1d3
    move/from16 v19, v1

    move/from16 v20, v3

    .line 6482
    .end local v1    # "deltaY":I
    .end local v3    # "start":I
    .restart local v19    # "deltaY":I
    .restart local v20    # "start":I
    :goto_1d7
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    if-eqz v1, :cond_223

    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v1, v13, :cond_223

    .line 6483
    iget v1, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    iget v3, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6484
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v3

    .line 6485
    .local v1, "childIndex":I
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v3, v13, :cond_23e

    .line 6486
    if-ltz v1, :cond_20b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_20b

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-interface {v3, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_20b

    .line 6487
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v13, -0x1

    invoke-virtual {v0, v13, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_23e

    .line 6488
    :cond_20b
    if-ltz v1, :cond_23e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_23e

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-interface {v3, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_23e

    .line 6489
    iget-object v3, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_23e

    .line 6493
    .end local v1    # "childIndex":I
    :cond_223
    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_23e

    .line 6494
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v3

    .line 6495
    .restart local v1    # "childIndex":I
    if-ltz v1, :cond_23f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_23f

    .line 6496
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6497
    const/4 v10, 0x1

    goto :goto_23f

    .line 6493
    .end local v1    # "childIndex":I
    :cond_23e
    :goto_23e
    nop

    .line 6500
    :cond_23f
    :goto_23f
    if-nez v10, :cond_246

    .line 6501
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 6504
    :cond_246
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 6505
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v1, :cond_25e

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_25e

    iget v1, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-nez v1, :cond_25e

    .line 6506
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 6507
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 6509
    :cond_25e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6511
    const/4 v3, 0x0

    return v3

    .line 6383
    .end local v12    # "down":Z
    .end local v16    # "childCount":I
    .end local v18    # "inTouchMode":Z
    .end local v19    # "deltaY":I
    .end local v20    # "start":I
    .end local v21    # "lastBottom":I
    .end local v22    # "effectivePaddingTop":I
    .end local v23    # "effectivePaddingBottom":I
    .end local v24    # "end":I
    .end local p1    # "cannotScrollDown":Z
    .end local p2    # "cannotScrollUp":Z
    .local v1, "deltaY":I
    .local v3, "childCount":I
    .local v4, "cannotScrollDown":Z
    .local v6, "cannotScrollUp":Z
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .local v13, "end":I
    :cond_263
    move/from16 v19, v1

    move/from16 v16, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 6384
    .end local v1    # "deltaY":I
    .end local v3    # "childCount":I
    .end local v4    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v16    # "childCount":I
    .restart local v19    # "deltaY":I
    .restart local v21    # "lastBottom":I
    .restart local v22    # "effectivePaddingTop":I
    .restart local v23    # "effectivePaddingBottom":I
    .restart local v24    # "end":I
    .restart local p1    # "cannotScrollDown":Z
    .restart local p2    # "cannotScrollUp":Z
    :goto_275
    if-eqz v2, :cond_279

    move v4, v1

    goto :goto_27a

    :cond_279
    move v4, v3

    :goto_27a
    return v4
.end method

.method triggerDoubleFling(I)V
    .registers 6
    .param p1, "initialVelocity"    # I

    .line 11966
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 11967
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 11969
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_22

    .line 11970
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_1d

    .line 11971
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 11973
    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_3c

    .line 11974
    :cond_22
    if-gez p1, :cond_3c

    .line 11975
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_37

    .line 11976
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 11978
    :cond_37
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 11980
    :cond_3c
    :goto_3c
    return-void
.end method

.method public triggerJumpScrollToTop()V
    .registers 2

    .line 11949
    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 11950
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->triggerDoubleFling(I)V

    .line 11951
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .line 12131
    return-void
.end method

.method updateScrollIndicators()V
    .registers 5

    .line 2556
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_12

    .line 2557
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2560
    :cond_12
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 2561
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2563
    :cond_21
    return-void
.end method

.method updateSelectorState()V
    .registers 3

    .line 3333
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3334
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3335
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3336
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3337
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 3340
    :cond_1e
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3343
    :cond_23
    :goto_23
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 3388
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_11

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
