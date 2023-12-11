.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$AccessibilitySmartActions;,
        Landroid/widget/Editor$MagnifierMotionAnimator;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$InsertModeController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$TextActionMode;,
        Landroid/widget/Editor$AssistantCallbackHelper;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$MagnifierHandleTrigger;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_MENU_ITEM_ORDER_ASSIST:I = 0x0

.field private static final ACTION_MODE_MENU_ITEM_ORDER_AUTOFILL:I = 0xa

.field private static final ACTION_MODE_MENU_ITEM_ORDER_COPY:I = 0x5

.field private static final ACTION_MODE_MENU_ITEM_ORDER_CUT:I = 0x4

.field private static final ACTION_MODE_MENU_ITEM_ORDER_PASTE:I = 0x6

.field private static final ACTION_MODE_MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0xb

.field private static final ACTION_MODE_MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final ACTION_MODE_MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final ACTION_MODE_MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START:I = 0x32

.field private static final ACTION_MODE_MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final ACTION_MODE_MENU_ITEM_ORDER_SHARE:I = 0x7

.field static final BLINK:I = 0x1f4

.field private static final CONTEXT_MENU_GROUP_CLIPBOARD:I = 0x2

.field private static final CONTEXT_MENU_GROUP_MISC:I = 0x3

.field private static final CONTEXT_MENU_GROUP_UNDO_REDO:I = 0x1

.field private static final CONTEXT_MENU_ITEM_ORDER_REPLACE:I = 0xb

.field private static final CURSOR_START_FLOAT_DISTANCE_PX:I = 0x14

.field private static final DEBUG_UNDO:Z = false

.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final FLAG_MISSPELLED_OR_GRAMMAR_ERROR:I = 0xa

.field private static final FLAG_USE_MAGNIFIER:Z = true

.field public static final HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final LINE_CHANGE_SLOP_MAX_DP:I = 0x2d

.field private static final LINE_CHANGE_SLOP_MIN_DP:I = 0x8

.field private static final MAX_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x20

.field private static final MIN_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x14

.field private static final RECENT_CUT_COPY_DURATION_MS:I = 0x3a98

.field private static final SHADOW_VIEW_MAX_WIDTH:F = 0.75f

.field private static final SHADOW_VIEW_MAX_WIDTH_TABLET:F = 0.55f

.field private static final SHADOW_VIEW_WIDTH_RESTRICT_DP:I = 0x1e0

.field private static final SWITCH_CONTROL_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TAG_LAG:Ljava/lang/String; = "PF_LAG"

.field private static final TW_MENU_ITEM_ORDER_CLIPBOARD:I = 0xa

.field private static final TW_MENU_ITEM_ORDER_CLOSE:I = 0x0

.field private static final TW_MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final TW_MENU_ITEM_ORDER_CUT:I = 0x1

.field private static final TW_MENU_ITEM_ORDER_DICTIONARY:I = 0xc

.field private static final TW_MENU_ITEM_ORDER_HBD_TRANSLATE:I = 0x8

.field private static final TW_MENU_ITEM_ORDER_PASTE:I = 0x3

.field private static final TW_MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0x4

.field private static final TW_MENU_ITEM_ORDER_REDO:I = 0x6

.field private static final TW_MENU_ITEM_ORDER_SCAN_TEXT:I = 0x9

.field private static final TW_MENU_ITEM_ORDER_SELECT_ALL:I = 0x7

.field private static final TW_MENU_ITEM_ORDER_SHARE:I = 0xb

.field private static final TW_MENU_ITEM_ORDER_TRANSLATE:I = 0xd

.field private static final TW_MENU_ITEM_ORDER_UNDO:I = 0x5

.field private static final TW_MENU_ITEM_ORDER_WEBSEARCH:I = 0xe

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1

.field private static final mDisableDoubleTapTextSelection:Z


# instance fields
.field private final mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

.field mAllowUndo:Z

.field private final mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private mBackCallbackRegistered:Z

.field private mBlink:Landroid/widget/Editor$Blink;

.field private mContextMenuAnchorX:F

.field private mContextMenuAnchorY:F

.field private mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field private final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field private mCursorDragDirectionMinXYRatio:F

.field mCursorMoving:Z

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private final mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDiscardNextActionUp:Z

.field private mDrawCursorOnMagnifier:Z

.field mDrawableForCursor:Landroid/graphics/drawable/Drawable;

.field mError:Ljava/lang/CharSequence;

.field private mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field private mFlagCursorDragFromAnywhereEnabled:Z

.field private mFlagInsertionHandleGesturesEnabled:Z

.field mFrozenWithFocus:Z

.field private final mHapticTextHandleEnabled:Z

.field private mHasPendingRestartInputForSetText:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field private mInitialZoom:F

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertModeController:Landroid/widget/Editor$InsertModeController;

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsBeingLongClicked:Z

.field mIsBeingLongClickedByAccessibility:Z

.field mIsInsertionActionModeStartPending:Z

.field mIsSelectedByLongClick:Z

.field private mIsThemeDeviceDefault:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mLastButtonState:I

.field private mLineChangeSlopMax:I

.field private mLineChangeSlopMin:I

.field private final mLineSlopRatio:F

.field private mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

.field private final mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private mMaxLineHeightForMagnifier:I

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMinLineHeightForMagnifier:I

.field private final mNewMagnifierEnabled:Z

.field private final mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreserveSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private mRenderCursorRegardlessTiming:Z

.field private mRequestingLinkActionMode:Z

.field private mRestartActionModeOnNextRefresh:Z

.field mSelectAllOnFocus:Z

.field mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

.field private mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field private mShowMagnifier:Z

.field mShowSoftInputOnFocus:Z

.field private mShowSoftInputOnFocusInternal:Z

.field private mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field private mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private final mTextView:Landroid/widget/TextView;

.field private mToggleActionMode:Z

.field mTouchFocusSelected:Z

.field private final mTouchState:Landroid/widget/EditorTouchState;

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private final mUpdateMagnifierRunnable:Ljava/lang/Runnable;

.field private mUpdateWordIteratorText:Z

.field private mUseCtxMenuInDesktopMode:Z

.field private mUseNewContextMenu:Z

.field private mWasBlinking:Z

.field private mWasSIPShowing:Z

.field private mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;

.field private mhadWindowFocus:Z


# direct methods
.method public static synthetic $r8$lambda$ff-65AeC77ZkiQSAzd0ZzHjDVLI(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->lambda$startActionModeInternal$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$layNskXavJcRHdIiC-RXDb8jfSs(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCursorDragDirectionMinXYRatio(Landroid/widget/Editor;)F
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mInitialZoom:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreserveSelection(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowMagnifier(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuggestionHelper(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateMagnifierRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseCtxMenuInDesktopMode(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCorrectionHighlighter(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInsertionActionModeRunnable(Landroid/widget/Editor;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreserveSelection(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestingLinkActionMode(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowMagnifier(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempRect(Landroid/widget/Editor;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTextActionMode(Landroid/widget/Editor;Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmToggleActionMode(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdismissMagnifierForDrag(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfindEquivalentSuggestionSpan(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetParagraphsRange(Landroid/widget/Editor;II)J
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWordStart(Landroid/widget/Editor;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOffsetVisible(Landroid/widget/Editor;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPositionOnText(Landroid/widget/Editor;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misUniversalSwitchEnable(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreplaceWithSuggestion(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresumeBlink(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectCurrentParagraph(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mselectCurrentWordAndStartDrag(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendUpdateSelection(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldBlink(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartDragAndDrop(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msuspendBlink(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMagnifierForDrag(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateMagnifierForDrag(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSpellCheckSpans(Landroid/widget/Editor;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmDisableDoubleTapTextSelection()Z
    .registers 1

    sget-boolean v0, Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 554
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableDoubleTapTextSelection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z

    .line 553
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 7
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Landroid/widget/TextViewOnReceiveContentListener;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListener;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    .line 276
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 277
    const-string v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 278
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 281
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 295
    new-instance v1, Landroid/widget/Editor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 306
    new-instance v2, Landroid/widget/Editor$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    .line 316
    new-instance v2, Landroid/widget/Editor$2;

    invoke-direct {v2, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 343
    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 376
    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    .line 393
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 410
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 428
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 446
    iput-object v2, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 447
    iput-boolean v0, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 450
    iput-boolean v1, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    .line 461
    new-instance v3, Landroid/widget/EditorTouchState;

    invoke-direct {v3}, Landroid/widget/EditorTouchState;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 485
    new-instance v3, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 488
    new-instance v3, Landroid/widget/Editor$3;

    invoke-direct {v3, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 497
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 499
    new-instance v3, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionHelper-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 519
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 534
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    .line 559
    iput-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    .line 560
    iput-boolean v1, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    .line 561
    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 562
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    .line 3865
    new-instance v3, Landroid/widget/Editor$5;

    invoke-direct {v3, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 582
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 584
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 585
    new-instance v3, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 586
    new-instance v3, Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-direct {v3, p1, v2}, Landroid/widget/Editor$AccessibilitySmartActions;-><init>(Landroid/widget/TextView;Landroid/widget/Editor$AccessibilitySmartActions-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    .line 587
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    .line 590
    const-string/jumbo v2, "widget__enable_cursor_drag_from_anywhere"

    invoke-static {v2, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b9

    move v2, v0

    goto :goto_ba

    :cond_b9
    move v2, v1

    :goto_ba
    iput-boolean v2, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    .line 593
    const-string/jumbo v2, "widget__min_angle_from_vertical_to_start_cursor_drag"

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    .line 596
    .local v2, "cursorDragMinAngleFromVertical":I
    invoke-static {v2}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v3

    iput v3, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 598
    const-string/jumbo v3, "widget__enable_insertion_handle_gestures"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d6

    move v3, v0

    goto :goto_d7

    :cond_d6
    move v3, v1

    :goto_d7
    iput-boolean v3, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 601
    const-string/jumbo v3, "widget__enable_new_magnifier"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e4

    move v3, v0

    goto :goto_e5

    :cond_e4
    move v3, v1

    :goto_e5
    iput-boolean v3, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    .line 604
    const-string/jumbo v3, "widget__line_slop_ratio"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3, v4}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    .line 607
    const-string/jumbo v3, "text__enable_new_context_menu"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_fc

    move v1, v0

    :cond_fc
    iput-boolean v1, p0, Landroid/widget/Editor;->mUseNewContextMenu:Z

    .line 621
    nop

    .line 623
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 621
    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 624
    nop

    .line 626
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 624
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 629
    invoke-virtual {p1}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    .line 631
    return-void
.end method

.method private canPrintLagLog()Z
    .registers 3

    .line 10362
    const-string/jumbo v0, "persist.keyboard.enable_write_lagLog"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10363
    .local v0, "enable":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 11
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .line 1256
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1257
    .local v0, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1259
    .local v1, "ht":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105051f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1261
    .local v2, "defaultWidthInPixels":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1263
    invoke-virtual {p3}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1264
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 1266
    .local v3, "l":Landroid/text/StaticLayout;
    const/4 v4, 0x0

    .line 1267
    .local v4, "max":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 1268
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1267
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 1275
    .end local v5    # "i":I
    :cond_4b
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1276
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1277
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .registers 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    .line 3206
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 3207
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_13

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 3209
    :cond_13
    const/4 v0, 0x0

    .line 3210
    .local v0, "drawableWidth":I
    if-eqz p1, :cond_20

    .line 3211
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3212
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_25

    .line 3214
    :cond_20
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3217
    :goto_25
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 3218
    .local v1, "scrollX":I
    int-to-float v2, v1

    sub-float v2, p2, v2

    .line 3219
    .local v2, "horizontalDiff":F
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3220
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3223
    .local v3, "viewClippedWidth":I
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_54

    .line 3225
    add-int v4, v3, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    sub-int/2addr v4, v5

    .local v4, "left":I
    goto :goto_84

    .line 3226
    .end local v4    # "left":I
    :cond_54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_7e

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3227
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/high16 v4, 0x100000

    sub-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v6, v3

    add-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_77

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_77

    goto :goto_7e

    .line 3233
    :cond_77
    float-to-int v4, p2

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .restart local v4    # "left":I
    goto :goto_84

    .line 3231
    .end local v4    # "left":I
    :cond_7e
    :goto_7e
    iget-object v4, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    .line 3235
    .restart local v4    # "left":I
    :goto_84
    return v4
.end method

.method private createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;
    .registers 15

    .line 672
    new-instance v0, Landroid/widget/Magnifier$Builder;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 674
    .local v0, "params":Landroid/widget/Magnifier$Builder;
    const-string/jumbo v1, "widget__magnifier_zoom_factor"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    .line 677
    .local v1, "zoom":F
    const-string/jumbo v2, "widget__magnifier_aspect_ratio"

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-static {v2, v3}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v2

    .line 681
    .local v2, "aspectRatio":F
    const v3, 0x3f99999a    # 1.2f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_27

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_29

    .line 682
    :cond_27
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 684
    :cond_29
    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_35

    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_37

    .line 685
    :cond_35
    const/high16 v2, 0x40b00000    # 5.5f

    .line 688
    :cond_37
    iput v1, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 689
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 691
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 689
    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    .line 692
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 694
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 692
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    .line 696
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 697
    .local v3, "layout":Landroid/text/Layout;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStartTransformed()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 698
    .local v5, "line":I
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v7

    .line 699
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 700
    .local v7, "sourceHeight":I
    int-to-float v8, v7

    mul-float/2addr v8, v1

    float-to-int v8, v8

    .line 701
    .local v8, "height":I
    iget v9, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    .line 703
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->setFishEyeStyle()Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 704
    invoke-virtual {v10, v9, v8}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 705
    invoke-virtual {v10, v9, v7}, Landroid/widget/Magnifier$Builder;->setSourceSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 706
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 707
    invoke-virtual {v10, v1}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 708
    invoke-virtual {v10, v6}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 710
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 711
    .local v10, "context":Landroid/content/Context;
    sget-object v11, Lcom/android/internal/R$styleable;->Magnifier:[I

    const v12, 0x112008c

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v12, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 714
    .local v11, "a":Landroid/content/res/TypedArray;
    nop

    .line 715
    const/4 v12, 0x3

    invoke-virtual {v11, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 717
    const/4 v13, 0x4

    invoke-virtual {v11, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 714
    invoke-virtual {v0, v12, v13}, Landroid/widget/Magnifier$Builder;->setDefaultSourceToMagnifierOffset(II)Landroid/widget/Magnifier$Builder;

    .line 719
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/Magnifier$Builder;->setSourceBounds(IIII)Landroid/widget/Magnifier$Builder;

    move-result-object v4

    return-object v4
.end method

.method private deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    .registers 11
    .param p1, "dragLocalState"    # Landroid/widget/Editor$DragLocalState;
    .param p2, "dropOffset"    # I
    .param p3, "lengthBeforeDrop"    # I

    .line 3498
    iget v0, p1, Landroid/widget/Editor$DragLocalState;->start:I

    .line 3499
    .local v0, "dragSourceStart":I
    iget v1, p1, Landroid/widget/Editor$DragLocalState;->end:I

    .line 3500
    .local v1, "dragSourceEnd":I
    if-gt p2, v0, :cond_13

    .line 3502
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    .line 3503
    .local v2, "shift":I
    add-int/2addr v0, v2

    .line 3504
    add-int/2addr v1, v2

    .line 3508
    .end local v2    # "shift":I
    :cond_13
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3511
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3512
    .local v2, "prevCharIdx":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3513
    .local v4, "nextCharIdx":I
    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_55

    .line 3514
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3515
    .local v5, "t":Ljava/lang/CharSequence;
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 3516
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3519
    .end local v5    # "t":Ljava/lang/CharSequence;
    :cond_55
    return-void
.end method

.method private discardTextDisplayLists()V
    .registers 4

    .line 922
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_20

    .line 923
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 924
    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    .line 925
    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 926
    .local v1, "displayList":Landroid/graphics/RenderNode;
    :goto_12
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 927
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->discardDisplayList()V

    .line 923
    .end local v1    # "displayList":Landroid/graphics/RenderNode;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 931
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private dismissMagnifierForDrag()V
    .registers 2

    .line 10250
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-eqz v0, :cond_d

    .line 10251
    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 10252
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    .line 10253
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 10255
    :cond_d
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .registers 7

    .line 1879
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1880
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_37

    .line 1881
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 1882
    .local v1, "spannable":Landroid/text/Spannable;
    nop

    .line 1883
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 1882
    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1884
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v4, v2

    if-ge v3, v4, :cond_37

    .line 1885
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    .line 1886
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_34

    and-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_34

    .line 1888
    and-int/lit8 v4, v4, -0x2

    .line 1889
    aget-object v5, v2, v3

    invoke-virtual {v5, v4}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1884
    .end local v4    # "flags":I
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1893
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v3    # "i":I
    :cond_37
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;II)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetHorizontal"    # I
    .param p3, "cursorOffsetVertical"    # I

    .line 2564
    if-nez p2, :cond_7

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v0, 0x1

    .line 2565
    .local v0, "translate":Z
    :goto_8
    if-eqz v0, :cond_f

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2566
    :cond_f
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 2567
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2569
    :cond_16
    if-eqz v0, :cond_1f

    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2570
    :cond_1f
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p5, "selectionHighlight"    # Landroid/graphics/Path;
    .param p6, "selectionHighlightPaint"    # Landroid/graphics/Paint;
    .param p7, "cursorOffsetVertical"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 2385
    .local p3, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p4, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v14

    .line 2386
    .local v14, "lineRange":J
    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    .line 2387
    .local v10, "firstLine":I
    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    .line 2388
    .local v9, "lastLine":I
    if-gez v9, :cond_15

    return-void

    .line 2390
    :cond_15
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v10

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 2393
    instance-of v0, v13, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_178

    .line 2394
    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v0, :cond_3a

    .line 2395
    const-class v0, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/Editor$TextRenderNode;

    iput-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2398
    :cond_3a
    move-object v8, v13

    check-cast v8, Landroid/text/DynamicLayout;

    .line 2399
    .local v8, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v7

    .line 2400
    .local v7, "blockEndLines":[I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    .line 2401
    .local v16, "blockIndices":[I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v6

    .line 2402
    .local v6, "numberOfBlocks":I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v5

    .line 2404
    .local v5, "indexFirstChangedBlock":I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    move-result-object v4

    .line 2405
    .local v4, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eqz v4, :cond_78

    .line 2406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_56
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 2407
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v1

    .line 2408
    .local v1, "blockIndex":I
    if-eq v1, v3, :cond_74

    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    if-eqz v3, :cond_74

    .line 2410
    iput-boolean v2, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2406
    .end local v1    # "blockIndex":I
    :cond_74
    add-int/lit8 v0, v0, 0x1

    const/4 v3, -0x1

    goto :goto_56

    .line 2415
    .end local v0    # "i":I
    :cond_78
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v10}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 2416
    .local v0, "startBlock":I
    if-gez v0, :cond_82

    .line 2417
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 2419
    :cond_82
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 2421
    .end local v0    # "startBlock":I
    .local v18, "startBlock":I
    const/4 v0, 0x0

    .line 2422
    .local v0, "startIndexToFindAvailableRenderNode":I
    move/from16 v19, v6

    .line 2424
    .local v19, "lastIndex":I
    move/from16 v1, v18

    move/from16 v20, v0

    move v3, v1

    .end local v0    # "startIndexToFindAvailableRenderNode":I
    .local v3, "i":I
    .local v20, "startIndexToFindAvailableRenderNode":I
    :goto_8e
    if-ge v3, v6, :cond_105

    .line 2425
    aget v1, v16, v3

    .line 2426
    .restart local v1    # "blockIndex":I
    if-lt v3, v5, :cond_9f

    const/4 v0, -0x1

    if-eq v1, v0, :cond_9f

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v1

    if-eqz v0, :cond_9f

    .line 2429
    iput-boolean v2, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2431
    :cond_9f
    aget v0, v7, v3

    if-ge v0, v10, :cond_b4

    .line 2434
    move/from16 v22, v2

    move/from16 v17, v3

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object v12, v8

    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    move-object v15, v4

    move v14, v5

    goto :goto_f0

    .line 2436
    :cond_b4
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v21, v1

    .end local v1    # "blockIndex":I
    .local v21, "blockIndex":I
    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object/from16 v2, p2

    move-wide/from16 v23, v14

    move/from16 v14, v17

    move/from16 v17, v3

    .end local v3    # "i":I
    .end local v14    # "lineRange":J
    .local v17, "i":I
    .local v23, "lineRange":J
    move-object/from16 v3, p5

    move-object v15, v4

    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v15, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v4, p6

    move v14, v5

    .end local v5    # "indexFirstChangedBlock":I
    .local v14, "indexFirstChangedBlock":I
    move/from16 v5, p7

    move/from16 v25, v6

    .end local v6    # "numberOfBlocks":I
    .local v25, "numberOfBlocks":I
    move-object v6, v7

    move-object/from16 v26, v7

    .end local v7    # "blockEndLines":[I
    .local v26, "blockEndLines":[I
    move-object/from16 v7, v16

    move-object v12, v8

    .end local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v12, "dynamicLayout":Landroid/text/DynamicLayout;
    move/from16 v8, v17

    move v13, v9

    .end local v9    # "lastLine":I
    .local v13, "lastLine":I
    move/from16 v9, v25

    move/from16 v27, v10

    .end local v10    # "firstLine":I
    .local v27, "firstLine":I
    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    .line 2440
    aget v0, v26, v17

    if-lt v0, v13, :cond_f0

    .line 2441
    add-int/lit8 v3, v17, 0x1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2442
    move/from16 v10, v19

    goto :goto_115

    .line 2424
    .end local v21    # "blockIndex":I
    :cond_f0
    :goto_f0
    add-int/lit8 v3, v17, 0x1

    move-object v8, v12

    move v9, v13

    move v5, v14

    move-object v4, v15

    move/from16 v2, v22

    move-wide/from16 v14, v23

    move/from16 v6, v25

    move-object/from16 v7, v26

    move/from16 v10, v27

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .end local v17    # "i":I
    .restart local v3    # "i":I
    goto :goto_8e

    .end local v12    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v13    # "lastLine":I
    .end local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v23    # "lineRange":J
    .end local v25    # "numberOfBlocks":I
    .end local v26    # "blockEndLines":[I
    .end local v27    # "firstLine":I
    .restart local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "indexFirstChangedBlock":I
    .restart local v6    # "numberOfBlocks":I
    .restart local v7    # "blockEndLines":[I
    .restart local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v9    # "lastLine":I
    .restart local v10    # "firstLine":I
    .local v14, "lineRange":J
    :cond_105
    move/from16 v17, v3

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object v12, v8

    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    move-object v15, v4

    move v14, v5

    .end local v3    # "i":I
    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "indexFirstChangedBlock":I
    .end local v6    # "numberOfBlocks":I
    .end local v7    # "blockEndLines":[I
    .end local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v9    # "lastLine":I
    .end local v10    # "firstLine":I
    .restart local v12    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v13    # "lastLine":I
    .local v14, "indexFirstChangedBlock":I
    .restart local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v17    # "i":I
    .restart local v23    # "lineRange":J
    .restart local v25    # "numberOfBlocks":I
    .restart local v26    # "blockEndLines":[I
    .restart local v27    # "firstLine":I
    move/from16 v10, v19

    .line 2445
    .end local v17    # "i":I
    .end local v19    # "lastIndex":I
    .local v10, "lastIndex":I
    :goto_115
    if-eqz v15, :cond_16c

    .line 2446
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_119
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v9, v0, :cond_168

    .line 2447
    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2448
    .local v8, "block":I
    invoke-virtual {v12, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v7

    .line 2449
    .local v7, "blockIndex":I
    const/4 v6, -0x1

    if-eq v7, v6, :cond_141

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    if-eqz v0, :cond_141

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-eqz v0, :cond_13b

    goto :goto_141

    :cond_13b
    move/from16 v17, v6

    move/from16 v22, v9

    move v11, v10

    goto :goto_162

    .line 2452
    :cond_141
    :goto_141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v17, v6

    move-object/from16 v6, v26

    move/from16 v19, v7

    .end local v7    # "blockIndex":I
    .local v19, "blockIndex":I
    move-object/from16 v7, v16

    move/from16 v21, v8

    .end local v8    # "block":I
    .local v21, "block":I
    move/from16 v22, v9

    .end local v9    # "i":I
    .local v22, "i":I
    move/from16 v9, v25

    move v11, v10

    .end local v10    # "lastIndex":I
    .local v11, "lastIndex":I
    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    .line 2446
    .end local v19    # "blockIndex":I
    .end local v21    # "block":I
    :goto_162
    add-int/lit8 v9, v22, 0x1

    move v10, v11

    move-object/from16 v11, p0

    .end local v22    # "i":I
    .restart local v9    # "i":I
    goto :goto_119

    .end local v11    # "lastIndex":I
    .restart local v10    # "lastIndex":I
    :cond_168
    move/from16 v22, v9

    move v11, v10

    .end local v9    # "i":I
    .end local v10    # "lastIndex":I
    .restart local v11    # "lastIndex":I
    .restart local v22    # "i":I
    goto :goto_16d

    .line 2445
    .end local v11    # "lastIndex":I
    .end local v22    # "i":I
    .restart local v10    # "lastIndex":I
    :cond_16c
    move v11, v10

    .line 2460
    .end local v10    # "lastIndex":I
    .restart local v11    # "lastIndex":I
    :goto_16d
    invoke-virtual {v12, v11}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 2461
    .end local v11    # "lastIndex":I
    .end local v12    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v14    # "indexFirstChangedBlock":I
    .end local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v16    # "blockIndices":[I
    .end local v18    # "startBlock":I
    .end local v20    # "startIndexToFindAvailableRenderNode":I
    .end local v25    # "numberOfBlocks":I
    .end local v26    # "blockEndLines":[I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v3, v13

    move/from16 v2, v27

    goto :goto_187

    .line 2463
    .end local v13    # "lastLine":I
    .end local v23    # "lineRange":J
    .end local v27    # "firstLine":I
    .local v9, "lastLine":I
    .local v10, "firstLine":I
    .local v14, "lineRange":J
    :cond_178
    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    .end local v9    # "lastLine":I
    .end local v10    # "firstLine":I
    .end local v14    # "lineRange":J
    .restart local v13    # "lastLine":I
    .restart local v23    # "lineRange":J
    .restart local v27    # "firstLine":I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v3, v13

    move/from16 v2, v27

    .end local v13    # "lastLine":I
    .end local v27    # "firstLine":I
    .local v2, "firstLine":I
    .local v3, "lastLine":I
    invoke-virtual {v1, v0, v2, v3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2465
    :goto_187
    return-void
.end method

.method private drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .registers 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I
    .param p6, "blockEndLines"    # [I
    .param p7, "blockIndices"    # [I
    .param p8, "blockInfoIndex"    # I
    .param p9, "numberOfBlocks"    # I
    .param p10, "startIndexToFindAvailableRenderNode"    # I

    .line 2471
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    aget v4, p6, p8

    .line 2472
    .local v4, "blockEndLine":I
    aget v0, v3, p8

    .line 2474
    .local v0, "blockIndex":I
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v0, v5, :cond_10

    move v5, v6

    goto :goto_11

    :cond_10
    const/4 v5, 0x0

    .line 2475
    .local v5, "blockIsInvalid":Z
    :goto_11
    if-eqz v5, :cond_29

    .line 2476
    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {v1, v3, v8, v9}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v0

    .line 2479
    aput v0, v3, p8

    .line 2480
    iget-object v10, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v0

    if-eqz v10, :cond_25

    .line 2481
    iput-boolean v6, v10, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2483
    :cond_25
    add-int/lit8 v9, v0, 0x1

    move v10, v0

    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .local v9, "startIndexToFindAvailableRenderNode":I
    goto :goto_2e

    .line 2475
    .end local v9    # "startIndexToFindAvailableRenderNode":I
    .restart local p10    # "startIndexToFindAvailableRenderNode":I
    :cond_29
    move/from16 v8, p9

    move/from16 v9, p10

    move v10, v0

    .line 2486
    .end local v0    # "blockIndex":I
    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .restart local v9    # "startIndexToFindAvailableRenderNode":I
    .local v10, "blockIndex":I
    :goto_2e
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v11, v0, v10

    if-nez v11, :cond_4e

    .line 2487
    new-instance v11, Landroid/widget/Editor$TextRenderNode;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Text "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    .line 2490
    :cond_4e
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v11

    .line 2491
    .local v11, "blockDisplayListIsInvalid":Z
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-object v12, v0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    .line 2492
    .local v12, "blockDisplayList":Landroid/graphics/RenderNode;
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-nez v0, :cond_6b

    if-eqz v11, :cond_67

    goto :goto_6b

    :cond_67
    move/from16 v16, v5

    goto/16 :goto_103

    .line 2493
    :cond_6b
    :goto_6b
    if-nez p8, :cond_6f

    .line 2494
    const/4 v0, 0x0

    goto :goto_74

    :cond_6f
    add-int/lit8 v0, p8, -0x1

    aget v0, p6, v0

    add-int/2addr v0, v6

    :goto_74
    move v6, v0

    .line 2495
    .local v6, "blockBeginLine":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 2496
    .local v13, "top":I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v14

    .line 2497
    .local v14, "bottom":I
    const/4 v0, 0x0

    .line 2498
    .local v0, "left":I
    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    .line 2499
    .local v15, "right":I
    iget-object v7, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 2500
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 2501
    .local v7, "min":F
    const/16 v16, 0x1

    .line 2502
    .local v16, "max":F
    move/from16 v17, v6

    move/from16 p10, v0

    move/from16 v0, v16

    move/from16 v3, v17

    .end local v16    # "max":F
    .local v0, "max":F
    .local v3, "line":I
    .local p10, "left":I
    :goto_99
    if-gt v3, v4, :cond_b2

    .line 2503
    move/from16 v16, v5

    .end local v5    # "blockIsInvalid":Z
    .local v16, "blockIsInvalid":Z
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 2504
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2502
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v16

    goto :goto_99

    .end local v16    # "blockIsInvalid":Z
    .restart local v5    # "blockIsInvalid":Z
    :cond_b2
    move/from16 v16, v5

    .line 2506
    .end local v3    # "line":I
    .end local v5    # "blockIsInvalid":Z
    .restart local v16    # "blockIsInvalid":Z
    float-to-int v3, v7

    .line 2507
    .end local p10    # "left":I
    .local v3, "left":I
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v0

    float-to-int v15, v5

    goto :goto_c0

    .line 2499
    .end local v3    # "left":I
    .end local v7    # "min":F
    .end local v16    # "blockIsInvalid":Z
    .local v0, "left":I
    .restart local v5    # "blockIsInvalid":Z
    :cond_ba
    move/from16 p10, v0

    move/from16 v16, v5

    .end local v0    # "left":I
    .end local v5    # "blockIsInvalid":Z
    .restart local v16    # "blockIsInvalid":Z
    .restart local p10    # "left":I
    move/from16 v3, p10

    .line 2511
    .end local p10    # "left":I
    .restart local v3    # "left":I
    :goto_c0
    if-eqz v11, :cond_f9

    .line 2512
    sub-int v0, v15, v3

    sub-int v5, v14, v13

    invoke-virtual {v12, v0, v5}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v5

    .line 2517
    .local v5, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    neg-int v0, v3

    int-to-float v0, v0

    neg-int v7, v13

    int-to-float v7, v7

    :try_start_ce
    invoke-virtual {v5, v0, v7}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 2518
    invoke-virtual {v2, v5, v6, v4}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2520
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canPrintLagLog()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 2521
    const-string v0, "PF_LAG"

    const-string v7, "drawText"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_e1
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_e8
    .catchall {:try_start_ce .. :try_end_e8} :catchall_f0

    .line 2528
    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2530
    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2531
    const/4 v7, 0x0

    goto :goto_fa

    .line 2528
    :catchall_f0
    move-exception v0

    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2530
    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2531
    throw v0

    .line 2511
    .end local v5    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    :cond_f9
    const/4 v7, 0x0

    .line 2535
    :goto_fa
    invoke-virtual {v12, v3, v13, v15, v14}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 2536
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2538
    .end local v3    # "left":I
    .end local v6    # "blockBeginLine":I
    .end local v13    # "top":I
    .end local v14    # "bottom":I
    .end local v15    # "right":I
    :goto_103
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0, v12}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 2539
    return v9
.end method

.method private ensureNoSelectionIfNonSelectable()V
    .registers 4

    .line 1864
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1868
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1869
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 1868
    invoke-static {v0, v1, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1872
    :cond_27
    return-void
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 15
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 2175
    const/4 v0, 0x0

    if-eqz p1, :cond_af

    if-nez p5, :cond_7

    goto/16 :goto_af

    .line 2179
    :cond_7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2180
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_10

    .line 2181
    return v0

    .line 2184
    :cond_10
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_6f

    .line 2185
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2186
    .local v2, "N":I
    if-gez p2, :cond_22

    .line 2187
    const/4 v4, -0x1

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2188
    const/4 p2, 0x0

    .line 2189
    move p3, v2

    goto :goto_5c

    .line 2193
    :cond_22
    add-int/2addr p3, p4

    .line 2195
    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_48

    .line 2196
    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    .line 2197
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 2199
    .local v5, "spans":[Ljava/lang/Object;
    array-length v6, v5

    .line 2200
    .local v6, "i":I
    :goto_31
    if-lez v6, :cond_48

    .line 2201
    add-int/lit8 v6, v6, -0x1

    .line 2202
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 2203
    .local v7, "j":I
    if-ge v7, p2, :cond_3e

    move p2, v7

    .line 2204
    :cond_3e
    aget-object v8, v5, v6

    invoke-interface {v4, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 2205
    if-le v7, p3, :cond_47

    move p3, v7

    .line 2206
    .end local v7    # "j":I
    :cond_47
    goto :goto_31

    .line 2208
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    .end local v6    # "i":I
    :cond_48
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2209
    sub-int v4, p3, p4

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2211
    if-le p2, v2, :cond_52

    .line 2212
    move p2, v2

    goto :goto_55

    .line 2213
    :cond_52
    if-gez p2, :cond_55

    .line 2214
    const/4 p2, 0x0

    .line 2216
    :cond_55
    :goto_55
    if-le p3, v2, :cond_59

    .line 2217
    move p3, v2

    goto :goto_5c

    .line 2218
    :cond_59
    if-gez p3, :cond_5c

    .line 2219
    const/4 p3, 0x0

    .line 2222
    :cond_5c
    :goto_5c
    iget v4, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_68

    .line 2223
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_6e

    .line 2226
    :cond_68
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2229
    .end local v2    # "N":I
    :goto_6e
    goto :goto_77

    .line 2230
    :cond_6f
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2231
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2232
    const-string v2, ""

    iput-object v2, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2234
    :goto_77
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2235
    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_87

    .line 2236
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2238
    :cond_87
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2239
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr v2, v3

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2241
    :cond_94
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2242
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 2243
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2244
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    .line 2245
    return v3

    .line 2176
    .end local v1    # "content":Ljava/lang/CharSequence;
    :cond_af
    :goto_af
    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .registers 4

    .line 2888
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 2889
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2890
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 2892
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    return v1
.end method

.method private findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .registers 10
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3764
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3765
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_13

    .line 3767
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object v1

    .line 3771
    :cond_13
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 3773
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_43

    aget-object v4, v1, v3

    .line 3774
    .local v4, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3775
    .local v5, "start":I
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v5, v6, :cond_2e

    .line 3776
    goto :goto_40

    .line 3778
    :cond_2e
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 3779
    .local v6, "end":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-eq v6, v7, :cond_37

    .line 3780
    goto :goto_40

    .line 3782
    :cond_37
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v4, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 3783
    return-object v4

    .line 3773
    .end local v4    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3786
    :cond_43
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveLayout()Landroid/text/Layout;
    .registers 4

    .line 10341
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 10342
    .local v0, "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 10343
    .local v1, "hintLayout":Landroid/text/Layout;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_25

    .line 10344
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 10345
    move-object v0, v1

    .line 10347
    :cond_25
    return-object v0
.end method

.method private getAvailableDisplayListIndex([III)I
    .registers 9
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .line 2544
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v0, v0

    .line 2545
    .local v0, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_19

    .line 2546
    const/4 v2, 0x0

    .line 2547
    .local v2, "blockIndexFound":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8
    if-ge v3, p2, :cond_13

    .line 2548
    aget v4, p1, v3

    if-ne v4, v1, :cond_10

    .line 2549
    const/4 v2, 0x1

    .line 2550
    goto :goto_13

    .line 2547
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2553
    .end local v3    # "j":I
    :cond_13
    :goto_13
    if-eqz v2, :cond_18

    .line 2545
    .end local v2    # "blockIndexFound":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2554
    .restart local v2    # "blockIndexFound":Z
    :cond_18
    return v1

    .line 2558
    .end local v1    # "i":I
    .end local v2    # "blockIndexFound":Z
    :cond_19
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/Editor$TextRenderNode;

    iput-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2559
    return v0
.end method

.method private getCharClusterRange(I)J
    .registers 7
    .param p1, "offset"    # I

    .line 1521
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1522
    .local v0, "textLength":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1c

    .line 1523
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1524
    .local v2, "clusterEndOffset":I
    nop

    .line 1525
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1524
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3

    .line 1527
    .end local v2    # "clusterEndOffset":I
    :cond_1c
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_2e

    .line 1528
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1529
    .local v1, "clusterStartOffset":I
    nop

    .line 1530
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1529
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1532
    .end local v1    # "clusterStartOffset":I
    :cond_2e
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1
.end method

.method private getErrorX()I
    .registers 7

    .line 1019
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1021
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1023
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 1026
    .local v2, "layoutDirection":I
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_54

    .line 1029
    if-eqz v1, :cond_35

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_35

    .line 1034
    :pswitch_23
    if-eqz v1, :cond_27

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_27
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v5, v3

    .line 1035
    .local v5, "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v5

    .local v3, "errorX":I
    goto :goto_52

    .line 1029
    .end local v3    # "errorX":I
    .end local v5    # "offset":I
    :cond_35
    :goto_35
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v5, v3

    .line 1030
    .restart local v5    # "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1031
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 1032
    .restart local v3    # "errorX":I
    nop

    .line 1038
    :goto_52
    return v3

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method private getErrorY()I
    .registers 11

    .line 1050
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 1051
    .local v0, "compoundPaddingTop":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1052
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1054
    .local v1, "vspace":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1056
    .local v2, "dr":Landroid/widget/TextView$Drawables;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v3

    .line 1058
    .local v3, "layoutDirection":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_58

    .line 1061
    if-eqz v2, :cond_33

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_33

    .line 1064
    :pswitch_2e
    if-eqz v2, :cond_32

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .local v4, "height":I
    :cond_32
    goto :goto_34

    .line 1062
    :cond_33
    :goto_33
    nop

    .line 1068
    :goto_34
    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    .line 1074
    .local v5, "icontop":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 1075
    .local v6, "scale":F
    add-int v7, v5, v4

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 2068
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getLastTapPosition()I
    .registers 3

    .line 1915
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_21

    .line 1916
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1917
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_21

    .line 1919
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_20

    .line 1920
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1922
    :cond_20
    return v0

    .line 1926
    .end local v0    # "lastTapPosition":I
    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method private getLastTouchOffsets()J
    .registers 6

    .line 1747
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1748
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1749
    .local v1, "minOffset":I
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v2

    .line 1750
    .local v2, "maxOffset":I
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 5

    .line 660
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-nez v0, :cond_20

    .line 663
    iget-boolean v0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    if-eqz v0, :cond_d

    .line 664
    invoke-direct {p0}, Landroid/widget/Editor;->createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;

    move-result-object v0

    goto :goto_13

    .line 665
    :cond_d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    :goto_13
    nop

    .line 666
    .local v0, "builder":Landroid/widget/Magnifier$Builder;
    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;Landroid/widget/Editor$MagnifierMotionAnimator-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 668
    .end local v0    # "builder":Landroid/widget/Magnifier$Builder;
    :cond_20
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object v0
.end method

.method private getNextCursorOffset(IZ)I
    .registers 8
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .line 1506
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1507
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_9

    return p1

    .line 1508
    :cond_9
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1509
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    .line 1511
    .local v1, "offsetTransformed":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    if-ne p2, v3, :cond_1b

    .line 1512
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v3

    .local v3, "nextCursor":I
    goto :goto_1f

    .line 1514
    .end local v3    # "nextCursor":I
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v3

    .line 1517
    .restart local v3    # "nextCursor":I
    :goto_1f
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v2

    return v2
.end method

.method private getParagraphsRange(II)J
    .registers 13
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    .line 1440
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 1442
    .local v0, "startOffsetTransformed":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v2

    .line 1444
    .local v2, "endOffsetTransformed":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 1445
    .local v3, "layout":Landroid/text/Layout;
    if-nez v3, :cond_1b

    .line 1446
    const/4 v1, -0x1

    invoke-static {v1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 1448
    :cond_1b
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1449
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 1451
    .local v5, "minLine":I
    :goto_23
    const/16 v6, 0xa

    if-lez v5, :cond_3a

    .line 1452
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 1453
    .local v7, "prevLineEndOffset":I
    add-int/lit8 v8, v7, -0x1

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_36

    .line 1454
    goto :goto_3a

    .line 1456
    :cond_36
    nop

    .end local v7    # "prevLineEndOffset":I
    add-int/lit8 v5, v5, -0x1

    .line 1457
    goto :goto_23

    .line 1458
    :cond_3a
    :goto_3a
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1460
    .local v7, "maxLine":I
    :goto_3e
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v7, v8, :cond_56

    .line 1461
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 1462
    .local v8, "lineEndOffset":I
    add-int/lit8 v9, v8, -0x1

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_52

    .line 1463
    goto :goto_56

    .line 1465
    :cond_52
    nop

    .end local v8    # "lineEndOffset":I
    add-int/lit8 v7, v7, 0x1

    .line 1466
    goto :goto_3e

    .line 1467
    :cond_56
    :goto_56
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    invoke-virtual {v6, v8, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v6

    .line 1469
    .local v6, "paragraphStart":I
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v1

    .line 1471
    .local v1, "paragraphEnd":I
    invoke-static {v6, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .registers 3

    .line 1561
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_c

    .line 1562
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1564
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .registers 2

    .line 2768
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-nez v0, :cond_b

    .line 2769
    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 2771
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    return-object v0
.end method

.method private getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .registers 23
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3346
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090178

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3348
    .local v1, "shadowView":Landroid/widget/FrameLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3356
    .local v2, "shadowViewContents":Landroid/widget/TextView;
    if-eqz v1, :cond_e7

    .line 3366
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3376
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3379
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3383
    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3384
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 3386
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    .line 3389
    .local v8, "width":F
    const/high16 v9, 0x43f00000    # 480.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_52

    .line 3390
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .local v9, "shadowViewMaxWidth":I
    goto :goto_5d

    .line 3392
    .end local v9    # "shadowViewMaxWidth":I
    :cond_52
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    const v10, 0x3f0ccccd    # 0.55f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 3394
    .restart local v9    # "shadowViewMaxWidth":I
    :goto_5d
    const v10, 0x10504c1

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 3396
    .local v10, "shadowViewMinWidth":I
    const v11, 0x10504bf

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 3400
    .local v11, "shadowSize":I
    const/4 v12, 0x0

    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 3401
    .local v13, "size":I
    invoke-virtual {v1, v13, v13}, Landroid/widget/FrameLayout;->measure(II)V

    .line 3404
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    .line 3405
    .local v14, "measuredWidth":I
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    .line 3407
    .local v15, "measuredHeight":I
    mul-int/lit8 v16, v11, 0x2

    sub-int v12, v14, v16

    .line 3408
    .local v12, "contentWidth":I
    mul-int/lit8 v16, v11, 0x2

    sub-int v16, v15, v16

    .line 3410
    .local v16, "contentHeight":I
    const/high16 v0, 0x40000000    # 2.0f

    if-le v12, v9, :cond_a7

    .line 3411
    mul-int/lit8 v18, v11, 0x2

    move-object/from16 v19, v3

    .end local v3    # "text":Ljava/lang/CharSequence;
    .local v19, "text":Ljava/lang/CharSequence;
    add-int v3, v9, v18

    .line 3412
    .local v3, "shadowWidth":I
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3413
    .local v0, "widthSpec":I
    move/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "shadowWidth":I
    .local v18, "shadowWidth":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3415
    .local v4, "heightSpec":I
    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 3417
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    .line 3418
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    .line 3419
    .end local v0    # "widthSpec":I
    .end local v4    # "heightSpec":I
    .end local v18    # "shadowWidth":I
    move-object/from16 v18, v2

    const/4 v2, 0x0

    goto :goto_db

    .end local v19    # "text":Ljava/lang/CharSequence;
    .local v3, "text":Ljava/lang/CharSequence;
    :cond_a7
    move-object/from16 v19, v3

    .end local v3    # "text":Ljava/lang/CharSequence;
    .restart local v19    # "text":Ljava/lang/CharSequence;
    if-ge v12, v10, :cond_d8

    .line 3421
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    int-to-float v4, v10

    mul-float/2addr v3, v4

    int-to-float v4, v12

    div-float/2addr v3, v4

    .line 3422
    .local v3, "textSize":F
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3423
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 3425
    mul-int/lit8 v4, v11, 0x2

    add-int/2addr v4, v10

    .line 3426
    .local v4, "shadowWidth":I
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3427
    .restart local v0    # "widthSpec":I
    move-object/from16 v18, v2

    move/from16 v17, v3

    const/4 v2, 0x0

    .end local v2    # "shadowViewContents":Landroid/widget/TextView;
    .end local v3    # "textSize":F
    .local v17, "textSize":F
    .local v18, "shadowViewContents":Landroid/widget/TextView;
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3429
    .local v3, "heightSpec":I
    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 3431
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    .line 3432
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    goto :goto_db

    .line 3419
    .end local v0    # "widthSpec":I
    .end local v3    # "heightSpec":I
    .end local v4    # "shadowWidth":I
    .end local v17    # "textSize":F
    .end local v18    # "shadowViewContents":Landroid/widget/TextView;
    .restart local v2    # "shadowViewContents":Landroid/widget/TextView;
    :cond_d8
    move-object/from16 v18, v2

    const/4 v2, 0x0

    .line 3435
    .end local v2    # "shadowViewContents":Landroid/widget/TextView;
    .restart local v18    # "shadowViewContents":Landroid/widget/TextView;
    :goto_db
    invoke-virtual {v1, v2, v2, v14, v15}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3439
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3440
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 3357
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "width":F
    .end local v9    # "shadowViewMaxWidth":I
    .end local v10    # "shadowViewMinWidth":I
    .end local v11    # "shadowSize":I
    .end local v12    # "contentWidth":I
    .end local v13    # "size":I
    .end local v14    # "measuredWidth":I
    .end local v15    # "measuredHeight":I
    .end local v16    # "contentHeight":I
    .end local v18    # "shadowViewContents":Landroid/widget/TextView;
    .end local v19    # "text":Ljava/lang/CharSequence;
    .restart local v2    # "shadowViewContents":Landroid/widget/TextView;
    :cond_e7
    move-object/from16 v18, v2

    .end local v2    # "shadowViewContents":Landroid/widget/TextView;
    .restart local v18    # "shadowViewContents":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to inflate text drag thumbnail"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWordEnd(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 1306
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 1307
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1309
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_23

    .line 1312
    :cond_1b
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    .line 1314
    :goto_23
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1315
    return p1

    .line 1317
    :cond_27
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .registers 5

    .line 1489
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v0, :cond_14

    .line 1490
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1491
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1493
    :cond_14
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v0, :cond_2a

    .line 1498
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1499
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1500
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1502
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_2a
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method private getWordStart(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 1291
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 1292
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1294
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_23

    .line 1297
    :cond_1b
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    .line 1299
    :goto_23
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1300
    return p1

    .line 1302
    :cond_27
    return v0
.end method

.method private hideCursorControllers()V
    .registers 2

    .line 1167
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 1168
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1170
    :cond_14
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 1172
    :cond_19
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1173
    return-void
.end method

.method private hideError()V
    .registers 2

    .line 1001
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_f

    .line 1002
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1003
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 1007
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 1008
    return-void
.end method

.method private hideSpanControllers()V
    .registers 2

    .line 1157
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_7

    .line 1158
    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 1160
    :cond_7
    return-void
.end method

.method private invalidateActionMode()V
    .registers 2

    .line 2762
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 2763
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2765
    :cond_7
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .registers 6

    .line 2975
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2976
    .local v0, "spannable":Landroid/text/Spannable;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2977
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 2976
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 2978
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 2979
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2b

    .line 2980
    return v4

    .line 2978
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2983
    .end local v2    # "i":I
    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method private isCursorVisible()Z
    .registers 2

    .line 1092
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isOffsetVisible(I)Z
    .registers 10
    .param p1, "offset"    # I

    .line 1573
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1574
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 1576
    :cond_a
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1577
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    .line 1578
    .local v1, "offsetTransformed":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1579
    .local v2, "line":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 1580
    .local v3, "lineBottom":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    .line 1581
    .local v4, "primaryHorizontal":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1582
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1583
    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    .line 1581
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v5

    return v5
.end method

.method private isPositionOnText(FF)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1590
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1591
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1594
    :cond_a
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    .line 1595
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1596
    .local v2, "offset":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v2, v4, :cond_2e

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1597
    return v1

    .line 1599
    :cond_2e
    return v3

    .line 1604
    .end local v2    # "offset":I
    :cond_2f
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    .line 1605
    .local v2, "line":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1607
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_44

    return v1

    .line 1608
    :cond_44
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4d

    return v1

    .line 1609
    :cond_4d
    return v3
.end method

.method private isUniversalSwitchEnable()Z
    .registers 4

    .line 10312
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_switch_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move v2, v1

    :cond_16
    return v2
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 9233
    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private synthetic lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "helper"    # Landroid/widget/Editor$AssistantCallbackHelper;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 3549
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 3550
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(ILjava/lang/String;)V

    .line 3552
    iget-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 3553
    return v1

    .line 3555
    :cond_1d
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x1020041

    if-ne v0, v2, :cond_2d

    invoke-virtual {p1, p2}, Landroid/widget/Editor$AssistantCallbackHelper;->onAssistMenuItemClicked(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3556
    return v1

    .line 3558
    :cond_2d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$startActionModeInternal$0()V
    .registers 1

    .line 2871
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method static varargs logCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "msgArgs"    # [Ljava/lang/Object;

    .line 10227
    const-string v0, "Editor"

    if-nez p1, :cond_8

    .line 10228
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 10230
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10232
    :goto_26
    return-void
.end method

.method private needsToSelectAllToSelectWordOrParagraph()Z
    .registers 6

    .line 1321
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1325
    return v1

    .line 1328
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 1329
    .local v0, "inputType":I
    and-int/lit8 v2, v0, 0xf

    .line 1330
    .local v2, "klass":I
    and-int/lit16 v3, v0, 0xff0

    .line 1333
    .local v3, "variation":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_30

    const/4 v4, 0x3

    if-eq v2, v4, :cond_30

    const/4 v4, 0x4

    if-eq v2, v4, :cond_30

    const/16 v4, 0x10

    if-eq v3, v4, :cond_30

    const/16 v4, 0x20

    if-eq v3, v4, :cond_30

    const/16 v4, 0xd0

    if-eq v3, v4, :cond_30

    const/16 v4, 0xb0

    if-ne v3, v4, :cond_2e

    goto :goto_30

    .line 1342
    :cond_2e
    const/4 v1, 0x0

    return v1

    .line 1340
    :cond_30
    :goto_30
    return v1
.end method

.method private obtainMagnifierShowCoordinatesForDrag(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "showPosInView"    # Landroid/graphics/PointF;

    .line 10259
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 10260
    .local v0, "offset":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    .line 10261
    return v2

    .line 10264
    :cond_13
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 10265
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 10268
    .local v3, "lineNumber":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 10269
    .local v4, "textViewLocationOnScreen":[I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 10270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    aget v6, v4, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 10271
    .local v5, "touchXInView":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 10272
    .local v6, "leftBound":F
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 10273
    .local v7, "rightBound":F
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v6, v8

    .line 10274
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    add-float/2addr v7, v8

    .line 10275
    iget-object v8, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v8}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Magnifier;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    .line 10276
    invoke-virtual {v9}, Landroid/widget/Magnifier;->getZoom()F

    move-result v9

    div-float/2addr v8, v9

    .line 10275
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 10277
    .local v8, "contentWidth":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v8, v9

    sub-float v10, v6, v10

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_c1

    div-float v10, v8, v9

    add-float/2addr v10, v7

    cmpl-float v10, v5, v10

    if-lez v10, :cond_8c

    goto :goto_c1

    .line 10282
    :cond_8c
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 10285
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 10286
    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v2, v10

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 10287
    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v2, v9

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v2, v9

    iput v2, p2, Landroid/graphics/PointF;->y:F

    .line 10289
    const/4 v2, 0x1

    return v2

    .line 10280
    :cond_c1
    :goto_c1
    return v2
.end method

.method private registerOnBackInvokedCallback()V
    .registers 5

    .line 909
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_5

    .line 910
    return-void

    .line 912
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 913
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_24

    .line 914
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 915
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 917
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 919
    :cond_24
    return-void
.end method

.method private replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .registers 24
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    .line 3790
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 3792
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-nez v2, :cond_d

    .line 3794
    return-void

    .line 3796
    :cond_d
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 3797
    .local v3, "editable":Landroid/text/Editable;
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 3798
    .local v4, "spanStart":I
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 3799
    .local v5, "spanEnd":I
    if-ltz v4, :cond_fc

    if-gt v5, v4, :cond_29

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_102

    .line 3804
    :cond_29
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 3806
    .local v6, "originalText":Ljava/lang/String;
    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 3808
    .local v7, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v8, v7

    .line 3809
    .local v8, "length":I
    new-array v9, v8, [I

    .line 3810
    .local v9, "suggestionSpansStarts":[I
    new-array v10, v8, [I

    .line 3811
    .local v10, "suggestionSpansEnds":[I
    new-array v11, v8, [I

    .line 3812
    .local v11, "suggestionSpansFlags":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3d
    if-ge v12, v8, :cond_67

    .line 3813
    aget-object v13, v7, v12

    .line 3814
    .local v13, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aput v14, v9, v12

    .line 3815
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    aput v14, v10, v12

    .line 3816
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v14

    aput v14, v11, v12

    .line 3819
    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    .line 3820
    .local v14, "suggestionSpanFlags":I
    and-int/lit8 v15, v14, 0xa

    if-eqz v15, :cond_64

    .line 3821
    and-int/lit8 v14, v14, -0x3

    .line 3822
    and-int/lit8 v14, v14, -0x9

    .line 3823
    and-int/lit8 v14, v14, -0x2

    .line 3824
    invoke-virtual {v13, v14}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3812
    .end local v13    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v14    # "suggestionSpanFlags":I
    :cond_64
    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    .line 3829
    .end local v12    # "i":I
    :cond_67
    iget v12, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 3830
    .local v12, "suggestionStart":I
    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 3831
    .local v13, "suggestionEnd":I
    iget-object v14, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v12, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 3832
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3833
    .local v14, "suggestion":Ljava/lang/String;
    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v4, v5, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3835
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v15

    .line 3836
    .local v15, "suggestions":[Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .local v16, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    iget v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    aput-object v6, v15, v2

    .line 3839
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v17, v5, v4

    sub-int v2, v2, v17

    .line 3840
    .local v2, "lengthDelta":I
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "i":I
    :goto_90
    if-ge v1, v8, :cond_db

    .line 3844
    move-object/from16 v17, v3

    .end local v3    # "editable":Landroid/text/Editable;
    .local v17, "editable":Landroid/text/Editable;
    aget v3, v9, v1

    if-gt v3, v4, :cond_c6

    aget v3, v10, v1

    if-lt v3, v5, :cond_c6

    aget v3, v10, v1

    add-int/2addr v3, v2

    move/from16 v18, v4

    .end local v4    # "spanStart":I
    .local v18, "spanStart":I
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3847
    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-gt v3, v4, :cond_bf

    .line 3849
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    aget-object v4, v7, v1

    move-object/from16 v19, v6

    .end local v6    # "originalText":Ljava/lang/String;
    .local v19, "originalText":Ljava/lang/String;
    aget v6, v9, v1

    aget v20, v10, v1

    move-object/from16 v21, v7

    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v21, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    add-int v7, v20, v2

    move/from16 v20, v8

    .end local v8    # "length":I
    .local v20, "length":I
    aget v8, v11, v1

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    goto :goto_ce

    .line 3847
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_bf
    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v19    # "originalText":Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    goto :goto_ce

    .line 3844
    .end local v18    # "spanStart":I
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v4    # "spanStart":I
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_c6
    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .line 3840
    .end local v4    # "spanStart":I
    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v18    # "spanStart":I
    .restart local v19    # "originalText":Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :goto_ce
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v6, v19

    move/from16 v8, v20

    move-object/from16 v7, v21

    goto :goto_90

    .end local v17    # "editable":Landroid/text/Editable;
    .end local v18    # "spanStart":I
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v3    # "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_db
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .line 3857
    .end local v1    # "i":I
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v17    # "editable":Landroid/text/Editable;
    .restart local v18    # "spanStart":I
    .restart local v19    # "originalText":Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    add-int v1, v5, v2

    .line 3858
    .local v1, "cursorPos":I
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-le v1, v3, :cond_f5

    .line 3859
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 3860
    :cond_f5
    move v3, v1

    .line 3862
    .local v3, "newCursorPosition":I
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    .line 3863
    return-void

    .line 3799
    .end local v1    # "cursorPos":I
    .end local v9    # "suggestionSpansStarts":[I
    .end local v10    # "suggestionSpansEnds":[I
    .end local v11    # "suggestionSpansFlags":[I
    .end local v12    # "suggestionStart":I
    .end local v13    # "suggestionEnd":I
    .end local v14    # "suggestion":Ljava/lang/String;
    .end local v15    # "suggestions":[Ljava/lang/String;
    .end local v16    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v17    # "editable":Landroid/text/Editable;
    .end local v18    # "spanStart":I
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .local v3, "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    :cond_fc
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 3801
    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .restart local v16    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .restart local v17    # "editable":Landroid/text/Editable;
    .restart local v18    # "spanStart":I
    :goto_102
    return-void
.end method

.method private resumeBlink()V
    .registers 2

    .line 1224
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_7

    .line 1225
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1229
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1230
    return-void
.end method

.method private selectCurrentParagraph()Z
    .registers 10

    .line 1411
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1412
    return v1

    .line 1415
    :cond_a
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1416
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1419
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1420
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1421
    .local v0, "minLastTouchOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 1423
    .local v4, "maxLastTouchOffset":I
    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v5

    .line 1424
    .local v5, "paragraphsRange":J
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 1425
    .local v7, "start":I
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 1426
    .local v8, "end":I
    if-ge v7, v8, :cond_3e

    .line 1429
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v7, v8}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1431
    const/4 v1, 0x1

    return v1

    .line 1433
    :cond_3e
    return v1
.end method

.method private selectCurrentWordAndStartDrag()Z
    .registers 3

    .line 2781
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 2782
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2784
    :cond_9
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 2785
    return v1

    .line 2787
    :cond_11
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2788
    return v1

    .line 2790
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2793
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 2794
    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    .line 2796
    return v1

    .line 2798
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2804
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 2805
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    const/4 v1, 0x1

    if-eqz v0, :cond_39

    .line 2806
    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 2810
    :cond_39
    return v1
.end method

.method private sendUpdateSelection()V
    .registers 12

    .line 2297
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_49

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_49

    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-nez v0, :cond_49

    .line 2299
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2300
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_49

    .line 2301
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 2302
    .local v7, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 2303
    .local v8, "selectionEnd":I
    const/4 v1, -0x1

    .line 2304
    .local v1, "candStart":I
    const/4 v2, -0x1

    .line 2305
    .local v2, "candEnd":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_3d

    .line 2306
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 2307
    .local v3, "sp":Landroid/text/Spannable;
    invoke-static {v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 2308
    invoke-static {v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    move v9, v1

    move v10, v2

    goto :goto_3f

    .line 2305
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_3d
    move v9, v1

    move v10, v2

    .line 2312
    .end local v1    # "candStart":I
    .end local v2    # "candEnd":I
    .local v9, "candStart":I
    .local v10, "candEnd":I
    :goto_3f
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object v1, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2316
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v7    # "selectionStart":I
    .end local v8    # "selectionEnd":I
    .end local v9    # "candStart":I
    .end local v10    # "candEnd":I
    :cond_49
    return-void
.end method

.method private setAssistContextMenuItems(Landroid/view/Menu;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3540
    nop

    .line 3541
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 3542
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    if-nez v0, :cond_c

    .line 3543
    return-void

    .line 3546
    :cond_c
    new-instance v1, Landroid/widget/Editor$AssistantCallbackHelper;

    .line 3547
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$AssistantCallbackHelper;-><init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V

    .line 3548
    .local v1, "helper":Landroid/widget/Editor$AssistantCallbackHelper;
    new-instance v2, Landroid/widget/Editor$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$$ExternalSyntheticLambda3;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/Editor$AssistantCallbackHelper;->updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 3560
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 989
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 990
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_14

    .line 991
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$Drawables;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    iput-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 993
    :cond_14
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 995
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 996
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 997
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 998
    return-void
.end method

.method private shouldBlink()Z
    .registers 4

    .line 3270
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3271
    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorMoving:Z

    if-eqz v0, :cond_1e

    goto :goto_32

    .line 3273
    :cond_1e
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 3274
    .local v0, "start":I
    if-gez v0, :cond_25

    return v1

    .line 3276
    :cond_25
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3277
    .local v2, "end":I
    if-gez v2, :cond_2e

    return v1

    .line 3279
    :cond_2e
    if-ne v0, v2, :cond_31

    const/4 v1, 0x1

    :cond_31
    return v1

    .line 3271
    .end local v0    # "start":I
    .end local v2    # "end":I
    :cond_32
    :goto_32
    return v1
.end method

.method private shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1955
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    goto :goto_34

    .line 1959
    :cond_11
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    xor-int/2addr v0, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 1961
    .local v0, "primaryButtonStateChanged":Z
    :goto_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1962
    .local v3, "action":I
    if-eqz v3, :cond_26

    if-ne v3, v2, :cond_29

    :cond_26
    if-nez v0, :cond_29

    .line 1964
    return v2

    .line 1966
    :cond_29
    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 1967
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_33

    .line 1968
    return v2

    .line 1970
    :cond_33
    return v1

    .line 1957
    .end local v0    # "primaryButtonStateChanged":Z
    .end local v3    # "action":I
    :cond_34
    :goto_34
    return v1
.end method

.method private showError()V
    .registers 9

    .line 934
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 935
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 936
    return-void

    .line 939
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_56

    .line 940
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 943
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 944
    iget-boolean v2, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    if-eqz v2, :cond_23

    const v2, 0x10901cd

    goto :goto_26

    .line 945
    :cond_23
    const v2, 0x10901a0

    :goto_26
    nop

    .line 943
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 948
    .local v2, "err":Landroid/widget/TextView;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 949
    .local v3, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 951
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 954
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v1}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 957
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "err":Landroid/widget/TextView;
    .end local v3    # "scale":F
    :cond_56
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 958
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 959
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 963
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 964
    return-void
.end method

.method private showFloatingToolbar()V
    .registers 6

    .line 2054
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2057
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 2058
    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2063
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    .line 2065
    .end local v0    # "delay":I
    :cond_1b
    return-void
.end method

.method private softInputShown()Z
    .registers 3

    .line 569
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 570
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private startDragAndDrop()V
    .registers 10

    .line 1613
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    .line 1616
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1617
    return-void

    .line 1619
    :cond_10
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1620
    .local v0, "start":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1621
    .local v1, "end":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1622
    .local v2, "selectedText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 1623
    .local v3, "data":Landroid/content/ClipData;
    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1625
    .local v4, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 1626
    .local v5, "audioManager":Landroid/media/AudioManager;
    if-eqz v5, :cond_44

    .line 1627
    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_4c

    .line 1629
    :cond_44
    const-string v6, "Editor"

    const-string/jumbo v7, "performSoundEffect: Couldn\'t get audio manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :goto_4c
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    const/16 v8, 0x300

    invoke-virtual {v6, v3, v7, v4, v8}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1643
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1644
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1645
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1647
    :cond_67
    return-void
.end method

.method private suspendBlink()V
    .registers 2

    .line 1218
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_7

    .line 1219
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1221
    :cond_7
    return-void
.end method

.method private toggleInsertionActionMode()V
    .registers 2

    .line 1731
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    .line 1732
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_b

    .line 1734
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 1736
    :goto_b
    return-void
.end method

.method private tooLargeTextForMagnifierForDrag()Z
    .registers 6

    .line 10237
    const/4 v0, 0x0

    .line 10238
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-eqz v1, :cond_35

    .line 10239
    invoke-static {v1}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v1

    .line 10240
    invoke-virtual {v1}, Landroid/widget/Magnifier;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v2

    .line 10241
    invoke-virtual {v2}, Landroid/widget/Magnifier;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    .line 10239
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 10242
    .local v1, "magnifierContentHeight":F
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 10243
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    .line 10244
    .local v3, "glyphHeight":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_33

    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    move v0, v4

    .line 10246
    .end local v1    # "magnifierContentHeight":F
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v3    # "glyphHeight":F
    :cond_35
    return v0
.end method

.method private touchPositionIsInSelection()Z
    .registers 7

    .line 1536
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1537
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1539
    .local v1, "selectionEnd":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 1540
    return v2

    .line 1543
    :cond_10
    if-le v0, v1, :cond_20

    .line 1544
    move v3, v0

    .line 1545
    .local v3, "tmp":I
    move v0, v1

    .line 1546
    move v1, v3

    .line 1549
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1553
    .end local v3    # "tmp":I
    :cond_20
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    .line 1554
    .local v3, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    .line 1555
    .local v4, "minOffset":I
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v5

    .line 1557
    .local v5, "maxOffset":I
    if-lt v4, v0, :cond_31

    if-ge v5, v1, :cond_31

    const/4 v2, 0x1

    :cond_31
    return v2
.end method

.method private unregisterOnBackInvokedCallback()V
    .registers 4

    .line 896
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-nez v0, :cond_5

    .line 897
    return-void

    .line 899
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 900
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_25

    .line 901
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 902
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 903
    invoke-virtual {v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 904
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 906
    :cond_25
    return-void
.end method

.method private updateCursorPosition(IIF)V
    .registers 11
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "horizontal"    # F

    .line 3180
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 3181
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p3}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    .line 3182
    .local v0, "left":I
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3184
    .local v1, "width":I
    int-to-float v2, v1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCursorThicknessScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3190
    .local v2, "scaledWidth":I
    iget-object v3, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, p1, v4

    add-int v5, v0, v2

    iget-object v6, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p2

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3192
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2034
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_14

    .line 2035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    .line 2037
    :pswitch_c
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    .line 2038
    goto :goto_14

    .line 2041
    :pswitch_11
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    .line 2044
    :cond_14
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method private updateMagnifierForDrag(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 10293
    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_7

    .line 10294
    return-void

    .line 10297
    :cond_7
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10298
    .local v0, "showPosInView":Landroid/graphics/PointF;
    invoke-direct {p0}, Landroid/widget/Editor;->tooLargeTextForMagnifierForDrag()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 10299
    invoke-direct {p0, p1, v0}, Landroid/widget/Editor;->obtainMagnifierShowCoordinatesForDrag(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 10300
    .local v1, "shouldShow":Z
    :goto_1c
    if-eqz v1, :cond_32

    .line 10302
    iput-boolean v2, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    .line 10303
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 10304
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 10305
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    goto :goto_35

    .line 10307
    :cond_32
    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    .line 10309
    :goto_35
    return-void
.end method

.method private updateSpellCheckSpans(IIZ)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .line 1180
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1181
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1183
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1184
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1185
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1186
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1189
    return-void

    .line 1191
    :cond_2f
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v1, :cond_3e

    if-eqz p3, :cond_3e

    .line 1192
    new-instance v1, Landroid/widget/SpellChecker;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 1194
    :cond_3e
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_45

    .line 1195
    invoke-virtual {v1, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 1198
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_45
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .registers 7
    .param p1, "text"    # Landroid/text/Spannable;

    .line 3522
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 3524
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    .line 3525
    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3528
    :cond_e
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1a

    .line 3529
    new-instance v1, Landroid/widget/Editor$SpanController;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SpanController-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 3531
    :cond_1a
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3532
    return-void
.end method

.method public adjustIconSpacing(Landroid/view/ContextMenu;)V
    .registers 8
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 3732
    const/4 v0, -0x1

    .line 3733
    .local v0, "width":I
    const/4 v1, -0x1

    .line 3734
    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 3735
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3736
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3737
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_14

    .line 3738
    goto :goto_24

    .line 3741
    :cond_14
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3742
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3734
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3745
    .end local v2    # "i":I
    :cond_27
    if-ltz v0, :cond_4c

    if-gez v1, :cond_2c

    goto :goto_4c

    .line 3749
    :cond_2c
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 3750
    .local v2, "paddingDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 3752
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 3753
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3754
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3755
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_48

    .line 3756
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3752
    .end local v4    # "item":Landroid/view/MenuItem;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 3759
    .end local v3    # "i":I
    :cond_4b
    return-void

    .line 3746
    .end local v2    # "paddingDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_4c
    :goto_4c
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .registers 8
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .line 1237
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1238
    if-nez p1, :cond_b

    if-eqz p2, :cond_11

    .line 1239
    :cond_b
    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 1242
    :cond_11
    if-eqz p3, :cond_29

    .line 1243
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_29

    .line 1246
    :cond_1c
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 1247
    if-eqz p4, :cond_29

    .line 1248
    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 1252
    :cond_29
    :goto_29
    return-void
.end method

.method beforeSetText()V
    .registers 2

    .line 10207
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_5

    return-void

    .line 10208
    :cond_5
    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->beforeSetText()V

    .line 10209
    return-void
.end method

.method public beginBatchEdit()V
    .registers 5

    .line 2072
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2073
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2074
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_37

    .line 2075
    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2076
    .local v2, "nesting":I
    if-ne v2, v0, :cond_37

    .line 2077
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 2078
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2079
    iget-boolean v3, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v3, :cond_26

    .line 2082
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2083
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_2d

    .line 2085
    :cond_26
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2086
    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2087
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2089
    :goto_2d
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 2090
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 2093
    .end local v2    # "nesting":I
    :cond_37
    return-void
.end method

.method canRedo()Z
    .registers 3

    .line 774
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    filled-new-array {v0}, [Landroid/content/UndoOwner;

    move-result-object v0

    .line 775
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method canUndo()Z
    .registers 3

    .line 769
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    filled-new-array {v0}, [Landroid/content/UndoOwner;

    move-result-object v0

    .line 770
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method checkField()Z
    .registers 3

    .line 2819
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    .line 2824
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 2820
    :cond_13
    :goto_13
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    const/4 v0, 0x0

    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .registers 2

    .line 1079
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_b

    .line 1080
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 1082
    :cond_b
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .registers 2

    .line 1085
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_b

    .line 1086
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1088
    :cond_b
    return-void
.end method

.method public editorShowSoftInput()Z
    .registers 2

    .line 565
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public endBatchEdit()V
    .registers 3

    .line 2096
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2097
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2098
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_12

    .line 2099
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2100
    .local v1, "nesting":I
    if-nez v1, :cond_12

    .line 2101
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 2104
    .end local v1    # "nesting":I
    :cond_12
    return-void
.end method

.method ensureEndedBatchEdit()V
    .registers 3

    .line 2107
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2108
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 2109
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2110
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 2112
    :cond_e
    return-void
.end method

.method enterInsertMode(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 10175
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_11

    .line 10176
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 10177
    :cond_a
    new-instance v1, Landroid/widget/Editor$InsertModeController;

    invoke-direct {v1, v0}, Landroid/widget/Editor$InsertModeController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    .line 10179
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->enterInsertMode(I)Z

    move-result v0

    return v0
.end method

.method exitInsertMode()V
    .registers 2

    .line 10186
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_5

    return-void

    .line 10187
    :cond_5
    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    .line 10188
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 2168
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .registers 4
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .line 2115
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 2116
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 2118
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_13

    goto :goto_1d

    .line 2121
    :cond_13
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_25

    .line 2123
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_25

    .line 2119
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 2120
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2127
    :cond_25
    :goto_25
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 2130
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_56

    .line 2131
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2132
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    goto :goto_3d

    :cond_39
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 2133
    .local v0, "cursorController":Landroid/widget/Editor$CursorController;
    :goto_3d
    if-eqz v0, :cond_56

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2134
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2135
    invoke-virtual {v1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2136
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    .line 2139
    .end local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_56
    return-void
.end method

.method forgetUndoRedo()V
    .registers 4

    .line 763
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    filled-new-array {v0}, [Landroid/content/UndoOwner;

    move-result-object v0

    .line 764
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 765
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 766
    return-void
.end method

.method public getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .registers 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .line 8222
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 8223
    .local v0, "trueLine":I
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-gt p2, v1, :cond_64

    .line 8224
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_64

    if-gez p2, :cond_17

    goto :goto_64

    .line 8229
    :cond_17
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_21

    .line 8231
    return v0

    .line 8234
    :cond_21
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 8235
    .local v1, "lineHeight":I
    iget v2, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 8236
    .local v2, "slop":I
    iget v3, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    iget v4, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    add-int v5, v1, v2

    .line 8237
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8236
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 8238
    .end local v2    # "slop":I
    .local v3, "slop":I
    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8240
    .end local v3    # "slop":I
    .restart local v2    # "slop":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    int-to-float v3, v3

    .line 8241
    .local v3, "verticalOffset":F
    if-le v0, p2, :cond_55

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_55

    .line 8242
    return v0

    .line 8244
    :cond_55
    if-ge v0, p2, :cond_63

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_63

    .line 8245
    return v0

    .line 8247
    :cond_63
    return p2

    .line 8226
    .end local v1    # "lineHeight":I
    .end local v2    # "slop":I
    .end local v3    # "verticalOffset":F
    :cond_64
    :goto_64
    return v0
.end method

.method public getCursorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3176
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;
    .registers 2

    .line 756
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    return-object v0
.end method

.method public getFlagCursorDragFromAnywhereEnabled()Z
    .registers 2

    .line 635
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return v0
.end method

.method public getFlagInsertionHandleGesturesEnabled()Z
    .registers 2

    .line 650
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return v0
.end method

.method public getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .registers 3

    .line 3142
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_6

    .line 3143
    const/4 v0, 0x0

    return-object v0

    .line 3146
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1c

    .line 3147
    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 3149
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3150
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3153
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method getLastUpPositionX()F
    .registers 2

    .line 1739
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpX()F

    move-result v0

    return v0
.end method

.method getLastUpPositionY()F
    .registers 2

    .line 1743
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpY()F

    move-result v0

    return v0
.end method

.method public getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .registers 3

    .line 3159
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_6

    .line 3160
    const/4 v0, 0x0

    return-object v0

    .line 3163
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1c

    .line 3164
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 3166
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3167
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3170
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method getTextActionMode()Landroid/view/ActionMode;
    .registers 2

    .line 2728
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .registers 2

    .line 2723
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .registers 3

    .line 1482
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_11

    .line 1483
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1485
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .registers 2

    .line 3129
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .registers 2

    .line 3136
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideCursorAndSpanControllers()V
    .registers 1

    .line 1152
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1153
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 1154
    return-void
.end method

.method hideFloatingToolbar(I)V
    .registers 5
    .param p1, "duration"    # I

    .line 2047
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_11

    .line 2048
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2049
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 2051
    :cond_11
    return-void
.end method

.method hideInsertionPointCursorController()V
    .registers 2

    .line 1143
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_7

    .line 1144
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 1146
    :cond_7
    return-void
.end method

.method invalidateActionModeAsync()V
    .registers 2

    .line 2755
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 2756
    return-void
.end method

.method invalidateHandlesAndActionMode()V
    .registers 2

    .line 2573
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_7

    .line 2574
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 2576
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_e

    .line 2577
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 2579
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_15

    .line 2580
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2582
    :cond_15
    return-void
.end method

.method invalidateTextDisplayList()V
    .registers 4

    .line 2622
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_14

    .line 2623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 2624
    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2623
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2627
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .registers 16
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2588
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_4e

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_4e

    .line 2589
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2590
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 2591
    .local v0, "startTransformed":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2592
    invoke-virtual {v2, p3, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    .line 2593
    .local v1, "endTransformed":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2594
    .local v2, "firstLine":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2596
    .local v3, "lastLine":I
    move-object v4, p1

    check-cast v4, Landroid/text/DynamicLayout;

    .line 2597
    .local v4, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v5

    .line 2598
    .local v5, "blockEndLines":[I
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v6

    .line 2599
    .local v6, "blockIndices":[I
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 2601
    .local v7, "numberOfBlocks":I
    const/4 v8, 0x0

    .line 2603
    .local v8, "i":I
    :goto_2d
    if-ge v8, v7, :cond_37

    .line 2604
    aget v9, v5, v8

    if-lt v9, v2, :cond_34

    goto :goto_37

    .line 2605
    :cond_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 2609
    :cond_37
    :goto_37
    if-ge v8, v7, :cond_4e

    .line 2610
    aget v9, v6, v8

    .line 2611
    .local v9, "blockIndex":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_45

    .line 2612
    iget-object v10, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v9

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2614
    :cond_45
    aget v10, v5, v8

    if-lt v10, v3, :cond_4a

    goto :goto_4e

    .line 2615
    :cond_4a
    nop

    .end local v9    # "blockIndex":I
    add-int/lit8 v8, v8, 0x1

    .line 2616
    goto :goto_37

    .line 2618
    .end local v0    # "startTransformed":I
    .end local v1    # "endTransformed":I
    .end local v2    # "firstLine":I
    .end local v3    # "lastLine":I
    .end local v4    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v5    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    .end local v7    # "numberOfBlocks":I
    .end local v8    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method public isBlinking()Z
    .registers 2

    .line 3303
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 3304
    :cond_6
    invoke-static {v0}, Landroid/widget/Editor$Blink;->-$$Nest$fgetmCancelled(Landroid/widget/Editor$Blink;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method loadCursorDrawable()V
    .registers 2

    .line 8279
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 8280
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 8282
    :cond_c
    return-void
.end method

.method loadHandleDrawables(Z)V
    .registers 3
    .param p1, "overwrite"    # Z

    .line 9038
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1b

    .line 9039
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 9040
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 9041
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-$$Nest$mreloadHandleDrawable(Landroid/widget/Editor$InsertionPointCursorController;)V

    .line 9045
    :cond_1b
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_42

    .line 9046
    :cond_25
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 9047
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 9048
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 9049
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$mreloadHandleDrawables(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 9052
    :cond_42
    return-void
.end method

.method makeBlink()V
    .registers 5

    .line 3283
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 3285
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_18

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 3288
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 3289
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3290
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_37

    .line 3292
    :cond_2e
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_37

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3294
    :cond_37
    :goto_37
    return-void
.end method

.method maybeFireScheduledRestartInputForSetText()V
    .registers 3

    .line 2155
    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-eqz v0, :cond_12

    .line 2156
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2157
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_f

    .line 2158
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 2160
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 2162
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    return-void
.end method

.method onAttachedToWindow()V
    .registers 5

    .line 809
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 810
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 811
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 814
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 815
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 818
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1d

    .line 819
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 821
    :cond_1d
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_29

    .line 822
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 823
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 826
    :cond_29
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 830
    :cond_2e
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 833
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 834
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 837
    :cond_47
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 841
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 842
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 3247
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_c

    .line 3248
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_10

    .line 3250
    :cond_c
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-$$Nest$minvalidate(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    .line 3253
    :goto_10
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 3254
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3255
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 19
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 3566
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v2, :cond_28b

    iget v2, v0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_28b

    iget v2, v0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3567
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_28b

    .line 3570
    :cond_1a
    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, v0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v4, v0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .line 3571
    .local v2, "offset":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    .line 3572
    return-void

    .line 3575
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 3576
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canSelectText()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_60

    .line 3577
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3578
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    if-lt v2, v3, :cond_4f

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3579
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-gt v2, v3, :cond_4f

    move v3, v5

    goto :goto_50

    :cond_4f
    move v3, v4

    .line 3580
    .local v3, "isOnSelection":Z
    :goto_50
    if-nez v3, :cond_60

    .line 3585
    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 3587
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3591
    .end local v3    # "isOnSelection":Z
    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v3

    const/4 v6, 0x5

    if-eqz v3, :cond_9d

    .line 3592
    new-array v3, v6, [Landroid/widget/Editor$SuggestionInfo;

    .line 3594
    .local v3, "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6a
    array-length v8, v3

    const/4 v9, 0x0

    if-ge v7, v8, :cond_78

    .line 3595
    new-instance v8, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v8, v9}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo-IA;)V

    aput-object v8, v3, v7

    .line 3594
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    .line 3597
    .end local v7    # "i":I
    :cond_78
    const/16 v7, 0xb

    const v8, 0x1040bc0

    invoke-interface {v1, v4, v4, v7, v8}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v7

    .line 3599
    .local v7, "subMenu":Landroid/view/SubMenu;
    iget-object v8, v0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v8, v3, v9}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v8

    .line 3600
    .local v8, "numItems":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_88
    if-ge v9, v8, :cond_9d

    .line 3601
    aget-object v10, v3, v9

    .line 3602
    .local v10, "info":Landroid/widget/Editor$SuggestionInfo;
    iget-object v11, v10, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v7, v4, v4, v9, v11}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/widget/Editor$4;

    invoke-direct {v12, v0, v10}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 3603
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3600
    .end local v10    # "info":Landroid/widget/Editor$SuggestionInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    .line 3613
    .end local v3    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    .end local v7    # "subMenu":Landroid/view/SubMenu;
    .end local v8    # "numItems":I
    .end local v9    # "i":I
    :cond_9d
    const/4 v3, 0x2

    .line 3614
    .local v3, "menuItemOrderUndo":I
    const/4 v7, 0x3

    .line 3615
    .local v7, "menuItemOrderRedo":I
    const/4 v8, 0x4

    .line 3616
    .local v8, "menuItemOrderCut":I
    const/4 v9, 0x5

    .line 3617
    .local v9, "menuItemOrderCopy":I
    const/4 v10, 0x6

    .line 3622
    .local v10, "menuItemOrderPaste":I
    iget-boolean v11, v0, Landroid/widget/Editor;->mUseNewContextMenu:Z

    const/4 v12, 0x2

    if-eqz v11, :cond_ca

    .line 3623
    const/4 v11, 0x7

    .line 3624
    .local v11, "menuItemOrderPasteAsPlainText":I
    const/16 v13, 0x8

    .line 3625
    .local v13, "menuItemOrderSelectAll":I
    const/16 v14, 0x9

    .line 3626
    .local v14, "menuItemOrderShare":I
    const/16 v15, 0xa

    .line 3628
    .local v15, "menuItemOrderAutofill":I
    invoke-interface {v1, v5}, Landroid/view/ContextMenu;->setOptionalIconsVisible(Z)V

    .line 3629
    invoke-interface {v1, v5}, Landroid/view/ContextMenu;->setGroupDividerEnabled(Z)V

    .line 3631
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor;->setAssistContextMenuItems(Landroid/view/Menu;)V

    .line 3633
    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 3634
    .local v6, "keyboard":I
    if-ne v6, v12, :cond_c6

    move v4, v5

    :cond_c6
    invoke-interface {v1, v4}, Landroid/view/ContextMenu;->setQwertyMode(Z)V

    .line 3635
    .end local v6    # "keyboard":I
    goto :goto_d1

    .line 3636
    .end local v11    # "menuItemOrderPasteAsPlainText":I
    .end local v13    # "menuItemOrderSelectAll":I
    .end local v14    # "menuItemOrderShare":I
    .end local v15    # "menuItemOrderAutofill":I
    :cond_ca
    const/4 v14, 0x7

    .line 3637
    .restart local v14    # "menuItemOrderShare":I
    const/16 v13, 0x8

    .line 3638
    .restart local v13    # "menuItemOrderSelectAll":I
    const/16 v15, 0xa

    .line 3639
    .restart local v15    # "menuItemOrderAutofill":I
    const/16 v11, 0xb

    .line 3642
    .restart local v11    # "menuItemOrderPasteAsPlainText":I
    :goto_d1
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_28c

    invoke-virtual {v4, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3653
    .local v4, "a":Landroid/content/res/TypedArray;
    const v6, 0x1020032

    move/from16 v16, v2

    .end local v2    # "offset":I
    .local v16, "offset":I
    const v2, 0x1040e47

    invoke-interface {v1, v5, v6, v12, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3655
    const/16 v6, 0x7a

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v12, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3656
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 3657
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3658
    invoke-virtual {v6}, Landroid/widget/TextView;->canUndo()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3659
    const v2, 0x1020033

    const v6, 0x1040bab

    const/4 v12, 0x3

    invoke-interface {v1, v5, v2, v12, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3661
    const/16 v6, 0x1001

    const/16 v12, 0x7a

    invoke-interface {v2, v12, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v12, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3662
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 3663
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3664
    invoke-virtual {v12}, Landroid/widget/TextView;->canRedo()Z

    move-result v12

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3666
    const v2, 0x1020020

    const v12, 0x1040003

    const/4 v5, 0x4

    const/4 v6, 0x2

    invoke-interface {v1, v6, v2, v5, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3668
    const/16 v12, 0x78

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v12, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3669
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 3670
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3671
    invoke-virtual {v12}, Landroid/widget/TextView;->canCut()Z

    move-result v12

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3672
    const v2, 0x1020021

    const v12, 0x1040001

    const/4 v5, 0x5

    invoke-interface {v1, v6, v2, v5, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3674
    const/16 v5, 0x63

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3675
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 3676
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3677
    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3678
    const v2, 0x1020022

    const v5, 0x104000b

    const/4 v6, 0x6

    const/4 v12, 0x2

    invoke-interface {v1, v12, v2, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3680
    const/16 v5, 0x76

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3681
    invoke-virtual {v12}, Landroid/widget/TextView;->canPaste()Z

    move-result v12

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 3682
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3683
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3684
    const v2, 0x1020031

    const v6, 0x1040019

    const/4 v12, 0x2

    invoke-interface {v1, v12, v2, v11, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3687
    const/16 v6, 0x1001

    invoke-interface {v2, v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3688
    invoke-virtual {v5}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 3689
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3690
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3691
    const v2, 0x102001f

    const v5, 0x104000d

    const/4 v6, 0x2

    invoke-interface {v1, v6, v2, v13, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3693
    const/16 v5, 0x61

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3694
    invoke-virtual {v5}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 3695
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3696
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3698
    const v2, 0x1020035

    const v5, 0x1040d4c

    const/4 v6, 0x3

    invoke-interface {v1, v6, v2, v14, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3700
    invoke-virtual {v5}, Landroid/widget/TextView;->canShare()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 3701
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3702
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3703
    const v2, 0x1020043

    const v5, 0x104001a

    const/4 v6, 0x3

    invoke-interface {v1, v6, v2, v15, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3705
    invoke-virtual {v5}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3706
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3708
    const/16 v2, 0xc

    const v5, 0x104043f

    const v6, 0x10202be

    const/4 v12, 0x0

    invoke-interface {v1, v12, v6, v2, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v5, v0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    if-eqz v5, :cond_25b

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3710
    invoke-virtual {v5}, Landroid/widget/TextView;->canDictionary()Z

    move-result v5

    if-eqz v5, :cond_25b

    const/4 v12, 0x1

    goto :goto_25c

    :cond_25b
    const/4 v12, 0x0

    :goto_25c
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3711
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3713
    const/16 v2, 0xa

    const v5, 0x1040e3b

    const v6, 0x1020265

    const/4 v12, 0x0

    invoke-interface {v1, v12, v6, v2, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3715
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3716
    invoke-virtual {v5}, Landroid/widget/TextView;->canClipboardForContextMenu()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3719
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3720
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3723
    invoke-virtual/range {p0 .. p1}, Landroid/widget/Editor;->adjustIconSpacing(Landroid/view/ContextMenu;)V

    .line 3724
    return-void

    .line 3568
    .end local v3    # "menuItemOrderUndo":I
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "menuItemOrderRedo":I
    .end local v8    # "menuItemOrderCut":I
    .end local v9    # "menuItemOrderCopy":I
    .end local v10    # "menuItemOrderPaste":I
    .end local v11    # "menuItemOrderPasteAsPlainText":I
    .end local v13    # "menuItemOrderSelectAll":I
    .end local v14    # "menuItemOrderShare":I
    .end local v15    # "menuItemOrderAutofill":I
    .end local v16    # "offset":I
    :cond_28b
    :goto_28b
    return-void

    :array_28c
    .array-data 4
        0x112000a
        0x1120009
        0x1010311
        0x1010312
        0x1010313
        0x101037e
        0x1010479
    .end array-data
.end method

.method onDetachedFromWindow()V
    .registers 3

    .line 845
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 847
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    .line 848
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 851
    :cond_10
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 853
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1a

    .line 854
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 857
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_21

    .line 858
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 861
    :cond_21
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2a

    .line 862
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 866
    :cond_2a
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_33

    .line 867
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 870
    :cond_33
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 872
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 874
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_47

    .line 875
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 882
    :cond_47
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 883
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 884
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 888
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_58
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 889
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 891
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    invoke-virtual {v0}, Landroid/widget/TextViewOnReceiveContentListener;->clearInputConnectionInfo()V

    .line 892
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 893
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p5, "selectionHighlight"    # Landroid/graphics/Path;
    .param p6, "selectionHighlightPaint"    # Landroid/graphics/Paint;
    .param p7, "cursorOffsetVertical"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 2323
    .local p3, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p4, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p7

    iget-object v0, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .line 2324
    .local v11, "selectionStart":I
    iget-object v0, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    .line 2326
    .local v12, "selectionEnd":I
    iget-object v13, v8, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2327
    .local v13, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v13, :cond_32

    iget v0, v13, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v0, :cond_32

    .line 2328
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2329
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_32

    .line 2330
    iget-object v1, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2331
    iget-boolean v1, v13, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v1, :cond_2f

    iget-boolean v1, v13, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v1, :cond_32

    .line 2335
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2341
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_32
    iget-object v0, v8, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v0, :cond_39

    .line 2342
    invoke-virtual {v0, v9, v10}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 2345
    :cond_39
    if-eqz p5, :cond_76

    if-ne v11, v12, :cond_76

    iget-object v0, v8, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_76

    iget-object v0, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2347
    invoke-virtual {v0}, Landroid/widget/TextView;->hasGesturePreviewHighlight()Z

    move-result v0

    if-nez v0, :cond_76

    .line 2349
    const/4 v0, 0x0

    .line 2350
    .local v0, "cursorOffsetHorizontal":I
    if-nez v11, :cond_71

    iget-object v1, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2351
    iget-object v1, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 2352
    iget-object v1, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_71

    .line 2353
    mul-int/lit8 v0, v0, -0x1

    .line 2356
    :cond_71
    invoke-direct {p0, v9, v0, v10}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;II)V

    .line 2359
    const/4 v1, 0x0

    .end local p5    # "selectionHighlight":Landroid/graphics/Path;
    .local v1, "selectionHighlight":Landroid/graphics/Path;
    goto :goto_78

    .line 2362
    .end local v0    # "cursorOffsetHorizontal":I
    .end local v1    # "selectionHighlight":Landroid/graphics/Path;
    .restart local p5    # "selectionHighlight":Landroid/graphics/Path;
    :cond_76
    move-object/from16 v1, p5

    .end local p5    # "selectionHighlight":Landroid/graphics/Path;
    .restart local v1    # "selectionHighlight":Landroid/graphics/Path;
    :goto_78
    iget-object v0, v8, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-eqz v0, :cond_8a

    .line 2363
    invoke-virtual {v0, v9}, Landroid/widget/SelectionActionModeHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 2364
    iget-object v0, v8, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2365
    const/4 v1, 0x0

    move-object v14, v1

    goto :goto_8b

    .line 2369
    :cond_8a
    move-object v14, v1

    .end local v1    # "selectionHighlight":Landroid/graphics/Path;
    .local v14, "selectionHighlight":Landroid/graphics/Path;
    :goto_8b
    iget-object v0, v8, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz v0, :cond_92

    .line 2370
    invoke-virtual {v0, v9}, Landroid/widget/Editor$InsertModeController;->onDraw(Landroid/graphics/Canvas;)V

    .line 2373
    :cond_92
    iget-object v0, v8, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 2374
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v14

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_c2

    .line 2377
    :cond_b2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v14

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 2380
    :goto_c2
    return-void
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 3455
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3456
    .local v0, "offset":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 3457
    .local v1, "localState":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 3458
    .local v2, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v3, v1, Landroid/widget/Editor$DragLocalState;

    if-eqz v3, :cond_1a

    .line 3459
    move-object v2, v1

    check-cast v2, Landroid/widget/Editor$DragLocalState;

    .line 3461
    :cond_1a
    if-eqz v2, :cond_24

    iget-object v3, v2, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v3, v4, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 3463
    .local v3, "dragDropIntoItself":Z
    :goto_25
    if-eqz v3, :cond_30

    .line 3464
    iget v4, v2, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v0, v4, :cond_30

    iget v4, v2, Landroid/widget/Editor$DragLocalState;->end:I

    if-ge v0, v4, :cond_30

    .line 3466
    return-void

    .line 3470
    :cond_30
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v4

    .line 3471
    .local v4, "permissions":Landroid/view/DragAndDropPermissions;
    if-eqz v4, :cond_39

    .line 3472
    invoke-virtual {v4}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 3474
    :cond_39
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 3475
    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3477
    :try_start_43
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 3480
    .local v5, "originalLength":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 3482
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 3483
    .local v6, "clip":Landroid/content/ClipData;
    new-instance v7, Landroid/view/ContentInfo$Builder;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v8}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 3484
    invoke-virtual {v7, v4}, Landroid/view/ContentInfo$Builder;->setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 3485
    invoke-virtual {v7}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v7

    .line 3486
    .local v7, "payload":Landroid/view/ContentInfo;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 3487
    if-eqz v3, :cond_74

    .line 3488
    invoke-direct {p0, v2, v0, v5}, Landroid/widget/Editor;->deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    :try_end_74
    .catchall {:try_start_43 .. :try_end_74} :catchall_80

    .line 3491
    .end local v5    # "originalLength":I
    .end local v6    # "clip":Landroid/content/ClipData;
    .end local v7    # "payload":Landroid/view/ContentInfo;
    :cond_74
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3492
    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3493
    nop

    .line 3494
    return-void

    .line 3491
    :catchall_80
    move-exception v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3492
    iget-object v6, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v6}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3493
    throw v5
.end method

.method onFocusChanged(ZI)V
    .registers 12
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .line 1758
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1759
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1761
    if-eqz p1, :cond_a2

    .line 1762
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1763
    .local v0, "selStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1767
    .local v1, "selEnd":I
    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    if-nez v0, :cond_2d

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1768
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v4

    .line 1770
    .local v2, "isFocusHighlighted":Z
    :goto_2e
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_3e

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_3e

    if-nez v2, :cond_3e

    move v5, v3

    goto :goto_3f

    :cond_3e
    move v5, v4

    :goto_3f
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1773
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_49

    if-ltz v0, :cond_49

    if-gez v1, :cond_93

    .line 1776
    :cond_49
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v5

    .line 1777
    .local v5, "lastTapPosition":I
    if-ltz v5, :cond_5a

    .line 1783
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v5}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 1788
    :cond_5a
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    .line 1789
    .local v6, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v6, :cond_6d

    .line 1790
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v6, v7, v8, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1798
    :cond_6d
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v7

    if-nez v7, :cond_79

    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v7, :cond_88

    :cond_79
    if-ltz v0, :cond_88

    if-ltz v1, :cond_88

    .line 1811
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v0, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1815
    :cond_88
    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v7, :cond_91

    .line 1816
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->selectAllText()Z

    .line 1819
    :cond_91
    iput-boolean v3, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1822
    .end local v5    # "lastTapPosition":I
    .end local v6    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_93
    iput-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1823
    iput-boolean v4, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1825
    iget-object v3, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9e

    .line 1826
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1829
    :cond_9e
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1830
    .end local v0    # "selStart":I
    .end local v1    # "selEnd":I
    .end local v2    # "isFocusHighlighted":Z
    goto :goto_e3

    .line 1831
    :cond_a2
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a9

    .line 1832
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1835
    :cond_a9
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1837
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1838
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1839
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_d2

    .line 1841
    :cond_bd
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1842
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1843
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_cf

    .line 1845
    :cond_cc
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1847
    :goto_cf
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 1850
    :goto_d2
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_d9

    .line 1851
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1854
    :cond_d9
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz v0, :cond_e0

    .line 1855
    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    .line 1858
    :cond_e0
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1860
    :goto_e3
    return-void
.end method

.method onInitializeSmartActionsAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 10215
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10216
    return-void
.end method

.method onLocaleChanged()V
    .registers 2

    .line 1477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1478
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1479
    return-void
.end method

.method onScreenStateChanged(I)V
    .registers 3
    .param p1, "screenState"    # I

    .line 1201
    packed-switch p1, :pswitch_data_1c

    goto :goto_1a

    .line 1205
    :pswitch_4
    iget-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    if-eqz v0, :cond_1a

    .line 1206
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    .line 1207
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_1a

    .line 1211
    :pswitch_f
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    .line 1212
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 1215
    :cond_1a
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_4
    .end packed-switch
.end method

.method onScrollChanged()V
    .registers 2

    .line 3258
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_7

    .line 3259
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 3261
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    .line 3262
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 3264
    :cond_e
    return-void
.end method

.method final onTextOperationUserChanged()V
    .registers 2

    .line 3103
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_7

    .line 3104
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 3106
    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1978
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1980
    .local v0, "filterOutEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1981
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_15

    .line 1983
    iput-boolean v1, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 1985
    :cond_15
    return-void

    .line 1987
    :cond_16
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1988
    .local v2, "viewConfiguration":Landroid/view/ViewConfiguration;
    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3, p1, v2}, Landroid/widget/EditorTouchState;->update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V

    .line 1989
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 1991
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1992
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Editor$InsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1994
    :cond_35
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1995
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1998
    :cond_42
    iget-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_4e

    .line 1999
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2000
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2004
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_63

    .line 2005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_63

    .line 2006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_6a

    .line 2007
    :cond_63
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsSelectedByLongClick:Z

    .line 2008
    iput-boolean v4, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 2009
    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    .line 2013
    :cond_6a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_8e

    .line 2016
    iput-boolean v4, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 2017
    iput-boolean v4, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 2021
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_85

    goto :goto_86

    :cond_85
    move v1, v4

    :goto_86
    iput-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    .line 2023
    invoke-direct {p0}, Landroid/widget/Editor;->softInputShown()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    .line 2027
    :cond_8e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_9d

    .line 2028
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->setUseCtxMenuInDesktopMode(Z)V

    .line 2031
    :cond_9d
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2990
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 2991
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 2990
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2992
    return-void

    .line 2995
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 2998
    .local v0, "selectAllGotFocus":Z
    :goto_2c
    const/4 v3, 0x0

    .line 2999
    .local v3, "insertionHandleActived":Z
    const/4 v4, -0x1

    .line 3000
    .local v4, "beforeCursorOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    if-eqz v5, :cond_3e

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v5

    if-nez v5, :cond_52

    :cond_3e
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3001
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_59

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_59

    .line 3002
    :cond_52
    const/4 v3, 0x1

    .line 3003
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 3007
    :cond_59
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 3008
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3009
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3011
    .local v5, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_15b

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ltz v6, :cond_15b

    .line 3013
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    .line 3015
    .local v6, "offset":I
    iget-boolean v7, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    xor-int/2addr v7, v2

    .line 3016
    .local v7, "shouldInsertCursor":Z
    if-eqz v7, :cond_8d

    .line 3019
    move-object v8, v5

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v6}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 3021
    iget-object v8, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v8, :cond_8d

    .line 3023
    invoke-virtual {v8}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 3027
    :cond_8d
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v8

    if-nez v8, :cond_15b

    .line 3028
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 3030
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_a2

    .line 3031
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3036
    :cond_a2
    const/4 v1, 0x0

    .line 3037
    .local v1, "isHBDGrammarly":Z
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 3038
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3039
    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    const-class v10, Landroid/text/style/SuggestionSpan;

    .line 3038
    invoke-interface {v2, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    .line 3040
    .local v8, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c0
    array-length v10, v8

    if-ge v9, v10, :cond_d2

    .line 3041
    aget-object v10, v8, v9

    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, 0x3000

    if-eqz v10, :cond_cf

    .line 3043
    const/4 v1, 0x1

    .line 3044
    goto :goto_d2

    .line 3040
    :cond_cf
    add-int/lit8 v9, v9, 0x1

    goto :goto_c0

    .line 3048
    .end local v9    # "i":I
    :cond_d2
    :goto_d2
    if-nez v1, :cond_db

    .line 3049
    new-instance v9, Landroid/widget/Editor$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Editor;)V

    iput-object v9, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 3054
    :cond_db
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 3055
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    .line 3054
    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "isHBDGrammarly":Z
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v8    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    goto/16 :goto_15a

    .line 3056
    :cond_e9
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_15a

    .line 3057
    if-eqz v7, :cond_152

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v8

    if-eqz v8, :cond_152

    .line 3059
    iget-boolean v8, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    if-nez v8, :cond_103

    invoke-direct {p0}, Landroid/widget/Editor;->softInputShown()Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    .line 3061
    :cond_103
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_134

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_134

    .line 3064
    iget-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    if-eqz v1, :cond_15b

    iget-boolean v1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    iget-boolean v2, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    if-ne v1, v2, :cond_15b

    .line 3065
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    .line 3066
    .local v1, "mInsertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v1, :cond_133

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v2

    if-nez v2, :cond_133

    .line 3067
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 3068
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 3070
    .end local v1    # "mInsertionController":Landroid/widget/Editor$InsertionPointCursorController;
    :cond_133
    goto :goto_15b

    .line 3073
    :cond_134
    if-eqz v3, :cond_148

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    if-ne v4, v8, :cond_148

    iget-boolean v8, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    if-nez v8, :cond_148

    .line 3075
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 3077
    iput-boolean v2, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    goto :goto_14a

    .line 3081
    :cond_148
    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 3086
    :goto_14a
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_15b

    .line 3090
    :cond_152
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    goto :goto_15b

    .line 3056
    :cond_15a
    :goto_15a
    nop

    .line 3095
    .end local v6    # "offset":I
    .end local v7    # "shouldInsertCursor":Z
    :cond_15b
    :goto_15b
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .line 1930
    if-eqz p1, :cond_17

    .line 1931
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 1932
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1933
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_34

    .line 1936
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 1937
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_21

    .line 1938
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1941
    :cond_21
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1942
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1943
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_2e

    .line 1944
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1948
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1950
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1952
    :cond_34
    :goto_34
    return-void
.end method

.method public performLongClick(Z)Z
    .registers 8
    .param p1, "handled"    # Z

    .line 1653
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1654
    if-nez p1, :cond_a

    .line 1655
    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    .line 1657
    :cond_a
    return v1

    .line 1660
    :cond_b
    const/4 v0, 0x0

    const/16 v2, 0x275

    if-nez p1, :cond_71

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v4}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v3

    if-nez v3, :cond_71

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 1661
    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v3

    if-nez v3, :cond_71

    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v3, :cond_71

    .line 1662
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v4}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 1663
    invoke-virtual {v5}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v5

    .line 1662
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 1665
    .local v3, "offset":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1666
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 1667
    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 1668
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 1673
    :cond_53
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 1675
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1676
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 1677
    const/4 p1, 0x1

    .line 1678
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1679
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1678
    invoke-static {v4, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1684
    .end local v3    # "offset":I
    :cond_71
    if-nez p1, :cond_ad

    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_ad

    .line 1685
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1686
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    .line 1687
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1688
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1687
    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_ac

    .line 1692
    :cond_8b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1693
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 1695
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_a3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1696
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 1699
    :cond_a3
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1700
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1699
    invoke-static {v3, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1704
    :goto_ac
    const/4 p1, 0x1

    .line 1708
    :cond_ad
    if-nez p1, :cond_e4

    .line 1709
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    .line 1711
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 1712
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1713
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    goto :goto_d9

    .line 1715
    :cond_ce
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 1716
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 1719
    :cond_d9
    :goto_d9
    if-eqz p1, :cond_e4

    .line 1720
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1721
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1720
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1727
    :cond_e4
    return p1
.end method

.method performSmartActionsAccessibilityAction(I)Z
    .registers 3
    .param p1, "actionId"    # I

    .line 10223
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->performAccessibilityAction(I)Z

    move-result v0

    return v0
.end method

.method prepareCursorControllers()V
    .registers 8

    .line 1108
    const/4 v0, 0x0

    .line 1110
    .local v0, "windowSupportsHandles":Z
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1111
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    .line 1112
    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1113
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_23

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_21

    goto :goto_23

    :cond_21
    move v5, v4

    goto :goto_24

    :cond_23
    :goto_23
    move v5, v3

    :goto_24
    move v0, v5

    .line 1117
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_25
    if-eqz v0, :cond_31

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_31

    move v2, v3

    goto :goto_32

    :cond_31
    move v2, v4

    .line 1118
    .local v2, "enabled":Z
    :goto_32
    if-eqz v2, :cond_40

    iget-boolean v5, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    if-nez v5, :cond_3e

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_3e
    move v5, v3

    goto :goto_41

    :cond_40
    move v5, v4

    :goto_41
    iput-boolean v5, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 1119
    if-eqz v2, :cond_4e

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_4f

    :cond_4e
    move v3, v4

    :goto_4f
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 1121
    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v5, 0x0

    if-nez v3, :cond_62

    .line 1122
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1123
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v3, :cond_62

    .line 1124
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 1125
    iput-object v5, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 1129
    :cond_62
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_72

    .line 1130
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1131
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v3, :cond_72

    .line 1132
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 1133
    iput-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 1138
    :cond_72
    iput-boolean v4, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 1140
    return-void
.end method

.method redo()V
    .registers 4

    .line 787
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_5

    .line 788
    return-void

    .line 790
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    filled-new-array {v0}, [Landroid/content/UndoOwner;

    move-result-object v0

    .line 791
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 792
    return-void
.end method

.method refreshTextActionMode()V
    .registers 6

    .line 2652
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2653
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2654
    return-void

    .line 2656
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 2657
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 2658
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    .line 2659
    .local v3, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v4

    if-nez v4, :cond_28

    :cond_20
    if-eqz v3, :cond_2b

    .line 2660
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2662
    :cond_28
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2663
    return-void

    .line 2665
    :cond_2b
    if-eqz v0, :cond_52

    .line 2666
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 2667
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_3c

    .line 2668
    iget-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v4, :cond_66

    .line 2671
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_66

    .line 2673
    :cond_3c
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_4b

    .line 2678
    :cond_45
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_66

    .line 2675
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2676
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_66

    .line 2683
    :cond_52
    if-eqz v3, :cond_63

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_63

    .line 2685
    :cond_5b
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_66

    .line 2686
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_66

    .line 2684
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2689
    :cond_66
    :goto_66
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2690
    return-void
.end method

.method replace()V
    .registers 3

    .line 795
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_b

    .line 796
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 798
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 799
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 801
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 804
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 806
    return-void
.end method

.method reportExtractedText()Z
    .registers 12

    .line 2249
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2250
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2251
    return v1

    .line 2253
    :cond_6
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2254
    .local v2, "wasContentChanged":Z
    if-nez v2, :cond_f

    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-nez v3, :cond_f

    .line 2255
    return v1

    .line 2257
    :cond_f
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2258
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 2259
    iget-object v3, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 2260
    .local v3, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-nez v3, :cond_18

    .line 2261
    return v1

    .line 2263
    :cond_18
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 2264
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v10, :cond_1f

    .line 2265
    return v1

    .line 2273
    :cond_1f
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_28

    if-nez v2, :cond_28

    .line 2274
    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2276
    :cond_28
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2286
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v5, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2287
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2288
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2289
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2290
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2291
    const/4 v1, 0x1

    return v1

    .line 2293
    :cond_4c
    return v1
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .registers 5
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .line 737
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 738
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 739
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 741
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 742
    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .registers 4

    .line 729
    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 730
    .local v0, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 731
    .local v1, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 732
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 733
    return-object v0
.end method

.method scheduleRestartInputForSetText()V
    .registers 2

    .line 2146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 2147
    return-void
.end method

.method selectCurrentWord()Z
    .registers 13

    .line 1350
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1351
    return v1

    .line 1354
    :cond_a
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1355
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1358
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1360
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1361
    .local v0, "minOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 1363
    .local v4, "maxOffset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1364
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move v4, v5

    move v0, v5

    .line 1369
    :cond_33
    if-ltz v0, :cond_bd

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v0, v5, :cond_43

    goto/16 :goto_bd

    .line 1370
    :cond_43
    if-ltz v4, :cond_bc

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_52

    goto :goto_bc

    .line 1375
    :cond_52
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1376
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v5, v0, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 1377
    .local v5, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_81

    .line 1378
    aget-object v6, v5, v1

    .line 1379
    .local v6, "urlSpan":Landroid/text/style/URLSpan;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1380
    .local v8, "selectionStart":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1381
    .local v6, "selectionEnd":I
    goto :goto_ad

    .line 1384
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_81
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v6

    .line 1385
    .local v6, "wordIterator":Landroid/text/method/WordIterator;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1387
    invoke-virtual {v6, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    .line 1388
    .restart local v8    # "selectionStart":I
    invoke-virtual {v6, v4}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    .line 1390
    .local v9, "selectionEnd":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_a0

    if-eq v9, v10, :cond_a0

    if-ne v8, v9, :cond_9e

    goto :goto_a0

    :cond_9e
    move v6, v9

    goto :goto_ad

    .line 1393
    :cond_a0
    :goto_a0
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v10

    .line 1394
    .local v10, "range":J
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v8

    .line 1395
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    move v6, v9

    .line 1401
    .end local v9    # "selectionEnd":I
    .end local v10    # "range":J
    .local v6, "selectionEnd":I
    :goto_ad
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v8, v6}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1403
    if-le v6, v8, :cond_bb

    move v1, v7

    :cond_bb
    return v1

    .line 1370
    .end local v5    # "urlSpans":[Landroid/text/style/URLSpan;
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_bc
    :goto_bc
    return v1

    .line 1369
    :cond_bd
    :goto_bd
    return v1
.end method

.method sendOnTextChanged(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .line 1896
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    .line 1897
    add-int v0, p1, p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1900
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1905
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1907
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1c

    .line 1908
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1910
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1911
    return-void
.end method

.method setContextMenuAnchor(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3535
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 3536
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3537
    return-void
.end method

.method public setCursorDragMinAngleFromVertical(I)V
    .registers 3
    .param p1, "degreesFromVertical"    # I

    .line 645
    invoke-static {p1}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 646
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 967
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 968
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 970
    if-nez v0, :cond_24

    .line 971
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 972
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_20

    .line 973
    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 974
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 977
    :cond_1e
    iput-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 979
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_32

    .line 981
    :cond_24
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 982
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 983
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 986
    :cond_32
    :goto_32
    return-void
.end method

.method public setFlagCursorDragFromAnywhereEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 640
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    .line 641
    return-void
.end method

.method public setFlagInsertionHandleGesturesEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 655
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 656
    return-void
.end method

.method setFrame()V
    .registers 10

    .line 1280
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_2c

    .line 1281
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1282
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 1283
    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 1284
    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v8

    .line 1283
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 1286
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_2c
    return-void
.end method

.method public setLineChangeSlopMinMaxForTesting(II)V
    .registers 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 8216
    iput p1, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 8217
    iput p2, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 8218
    return-void
.end method

.method setRestartActionModeOnNextRefresh(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 2732
    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2733
    return-void
.end method

.method setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .line 10196
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_b

    .line 10197
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTransformationMethodInternal(Landroid/text/method/TransformationMethod;Z)V

    .line 10198
    return-void

    .line 10200
    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->updateTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 10201
    return-void
.end method

.method public setUseCtxMenuInDesktopMode(Z)V
    .registers 7
    .param p1, "isMouse"    # Z

    .line 10319
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 10320
    iput-boolean p1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 10321
    return-void

    .line 10323
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_1f

    .line 10324
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 10327
    :cond_1f
    iget-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_3f

    .line 10328
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 10329
    .local v0, "desktopModeState":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v2

    .line 10331
    .local v3, "isStandAlone":Z
    :goto_36
    if-nez p1, :cond_3c

    if-nez v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v2

    :cond_3c
    :goto_3c
    iput-boolean v1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 10332
    .end local v0    # "desktopModeState":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .end local v3    # "isStandAlone":Z
    goto :goto_41

    .line 10333
    :cond_3f
    iput-boolean p1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 10335
    :goto_41
    return-void
.end method

.method shouldOfferToShowSuggestions()Z
    .registers 18

    .line 2901
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2902
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x0

    if-nez v2, :cond_e

    return v3

    .line 2904
    :cond_e
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    .line 2905
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2906
    .local v4, "selectionStart":I
    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 2907
    .local v5, "selectionEnd":I
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    .line 2909
    .local v6, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v7, v6

    if-nez v7, :cond_29

    .line 2910
    return v3

    .line 2912
    :cond_29
    const/4 v7, 0x1

    if-ne v4, v5, :cond_49

    .line 2914
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2d
    array-length v9, v6

    if-ge v8, v9, :cond_48

    .line 2916
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x3000

    if-eqz v9, :cond_3b

    .line 2918
    return v3

    .line 2921
    :cond_3b
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_45

    .line 2922
    return v7

    .line 2914
    :cond_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 2925
    .end local v8    # "i":I
    :cond_48
    return v3

    .line 2927
    :cond_49
    iget-object v8, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 2928
    .local v8, "minSpanStart":I
    const/4 v9, 0x0

    .line 2929
    .local v9, "maxSpanEnd":I
    iget-object v10, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 2930
    .local v10, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .line 2931
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v12, 0x0

    .line 2932
    .local v12, "hasValidSuggestions":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_61
    array-length v14, v6

    if-ge v13, v14, :cond_a6

    .line 2934
    aget-object v14, v6, v13

    invoke-virtual {v14}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    and-int/lit16 v14, v14, 0x3000

    if-eqz v14, :cond_6f

    .line 2936
    return v3

    .line 2939
    :cond_6f
    aget-object v14, v6, v13

    invoke-interface {v2, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 2940
    .local v14, "spanStart":I
    aget-object v15, v6, v13

    invoke-interface {v2, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 2941
    .local v15, "spanEnd":I
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2942
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2943
    if-lt v4, v14, :cond_a2

    if-le v4, v15, :cond_88

    .line 2945
    goto :goto_a2

    .line 2947
    :cond_88
    if-nez v12, :cond_96

    aget-object v16, v6, v13

    .line 2948
    invoke-virtual/range {v16 .. v16}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_94

    goto :goto_96

    :cond_94
    move v7, v3

    goto :goto_97

    :cond_96
    :goto_96
    const/4 v7, 0x1

    .line 2949
    .end local v12    # "hasValidSuggestions":Z
    .local v7, "hasValidSuggestions":Z
    :goto_97
    nop

    .line 2950
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2951
    nop

    .line 2952
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v7

    .line 2932
    .end local v7    # "hasValidSuggestions":Z
    .end local v14    # "spanStart":I
    .end local v15    # "spanEnd":I
    .restart local v12    # "hasValidSuggestions":Z
    :cond_a2
    :goto_a2
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_61

    .line 2954
    .end local v13    # "i":I
    :cond_a6
    if-nez v12, :cond_a9

    .line 2955
    return v3

    .line 2957
    :cond_a9
    if-lt v10, v11, :cond_ac

    .line 2959
    return v3

    .line 2961
    :cond_ac
    if-lt v8, v10, :cond_b3

    if-le v9, v11, :cond_b1

    goto :goto_b3

    .line 2967
    :cond_b1
    const/4 v3, 0x1

    return v3

    .line 2965
    :cond_b3
    :goto_b3
    return v3
.end method

.method shouldRenderCursor()Z
    .registers 10

    .line 1096
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorMoving:Z

    if-eqz v0, :cond_c

    goto :goto_25

    .line 1100
    :cond_c
    iget-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 1101
    return v2

    .line 1103
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v3, v5

    .line 1104
    .local v3, "showCursorDelta":J
    const-wide/16 v5, 0x3e8

    rem-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-gez v0, :cond_24

    move v1, v2

    :cond_24
    return v1

    .line 1098
    .end local v3    # "showCursorDelta":J
    :cond_25
    :goto_25
    return v1
.end method

.method startActionModeInternal(I)Z
    .registers 8
    .param p1, "actionMode"    # I

    .line 2828
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz v0, :cond_9

    .line 2829
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 2832
    :cond_9
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 2833
    return v1

    .line 2835
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_19

    .line 2837
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2838
    return v1

    .line 2841
    :cond_19
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    .line 2842
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2843
    :cond_2a
    return v1

    .line 2846
    :cond_2b
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v2

    if-nez v2, :cond_34

    .line 2847
    return v1

    .line 2855
    :cond_34
    iget-boolean v2, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_58

    :cond_41
    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_58

    .line 2856
    new-instance v2, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v2, p0, p1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2857
    .local v2, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2858
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2859
    .end local v2    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    goto :goto_5f

    .line 2860
    :cond_58
    const-string v2, "Editor"

    const-string v4, "Action mode didn\'t start because Universal Switch / Desktop mode was enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    :goto_5f
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-eqz v2, :cond_70

    goto :goto_72

    :cond_70
    move v2, v1

    goto :goto_73

    :cond_72
    :goto_72
    move v2, v3

    .line 2866
    .local v2, "selectableText":Z
    :goto_73
    if-ne p1, v0, :cond_87

    if-nez v2, :cond_87

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    instance-of v4, v0, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v4, :cond_87

    .line 2870
    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    new-instance v4, Landroid/widget/Editor$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Editor;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/FloatingActionMode;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    .line 2874
    :cond_87
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8c

    goto :goto_8d

    :cond_8c
    move v3, v1

    :goto_8d
    move v0, v3

    .line 2875
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_b0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2876
    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-eqz v3, :cond_b0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_b0

    iget-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v3, :cond_b0

    .line 2879
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2880
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_b0

    .line 2881
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 2884
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_b0
    return v0
.end method

.method startInsertionActionMode()V
    .registers 4

    .line 2696
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 2697
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2699
    :cond_9
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2700
    return-void

    .line 2702
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2705
    iget-boolean v0, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_1f
    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2706
    :cond_25
    const-string v0, "Editor"

    const-string v1, "Action mode didn\'t start because Universal Switch / Desktop mode was enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    return-void

    .line 2711
    :cond_2d
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2713
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2715
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2716
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 2717
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 2719
    :cond_4f
    return-void
.end method

.method startLinkActionModeAsync(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2743
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_b

    .line 2744
    return-void

    .line 2746
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    .line 2748
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->startLinkActionModeAsync(II)V

    .line 2749
    return-void
.end method

.method startSelectionActionModeAsync(Z)V
    .registers 3
    .param p1, "adjustSelection"    # Z

    .line 2739
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeAsync(Z)V

    .line 2740
    return-void
.end method

.method protected stopTextActionMode()V
    .registers 2

    .line 3109
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 3111
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3113
    :cond_7
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 3114
    return-void
.end method

.method protected stopTextActionModeFromIME()V
    .registers 2

    .line 10351
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 10352
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 10354
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_e

    .line 10355
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 10357
    :cond_e
    return-void
.end method

.method stopTextActionModeWithPreservingSelection()V
    .registers 3

    .line 3117
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 3118
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 3120
    :cond_7
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3121
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3123
    return-void
.end method

.method undo()V
    .registers 4

    .line 779
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_5

    .line 780
    return-void

    .line 782
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    filled-new-array {v0}, [Landroid/content/UndoOwner;

    move-result-object v0

    .line 783
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 784
    return-void
.end method

.method updateCursorPosition()V
    .registers 9

    .line 2630
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 2631
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 2632
    return-void

    .line 2638
    :cond_8
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2640
    .local v0, "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2641
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v2

    .line 2643
    .local v2, "transformedOffset":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2644
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 2645
    .local v4, "top":I
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 2647
    .local v5, "bottom":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    .line 2648
    .local v6, "clamped":Z
    invoke-virtual {v0, v2, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v4, v5, v7}, Landroid/widget/Editor;->updateCursorPosition(IIF)V

    .line 2649
    return-void
.end method
