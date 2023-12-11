.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$OnAnimationStartedListener;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$SourceInfo;
    }
.end annotation


# static fields
.field public static final ANIM_CLIP_REVEAL:I = 0xb

.field public static final ANIM_CUSTOM:I = 0x1

.field public static final ANIM_CUSTOM_DISPLAY_CHANGE:I = 0xf

.field public static final ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final ANIM_DEFAULT:I = 0x6

.field public static final ANIM_FROM_STYLE:I = 0xe

.field public static final ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_OPEN_CROSS_PROFILE_APPS:I = 0xc

.field public static final ANIM_REMOTE_ANIMATION:I = 0xd

.field public static final ANIM_SCALE_UP:I = 0x2

.field public static final ANIM_SCENE_TRANSITION:I = 0x5

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final ANIM_UNDEFINED:I = -0x1

.field public static final END:I = 0x2

.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field public static final INVALID_ML_TYPE:I = -0x1

.field private static final KEY_ACTIVE_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isActiveLaunch"

.field private static final KEY_ACTIVITY_EMBEDDED_PLACEHOLDER:Ljava/lang/String; = "android:activity.activityEmbeddedPlaceholder"

.field private static final KEY_ALLOW_ENTER_PIP_WHILE_LAUNCHING:Ljava/lang/String; = "android.activity.enterPipWhileLaunching"

.field private static final KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final KEY_ANIM_BACKGROUND_COLOR:Ljava/lang/String; = "android:activity.backgroundColor"

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final KEY_APPLY_ACTIVITY_FLAGS_FOR_BUBBLES:Ljava/lang/String; = "android:activity.applyActivityFlagsForBubbles"

.field private static final KEY_APPLY_BIG_FREEFORM_SIZE:Ljava/lang/String; = "android:activity.applyBigFreeformSize"

.field private static final KEY_APPLY_MULTIPLE_TASK_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyMultipleTaskFlagForShortcut"

.field private static final KEY_APPLY_NO_USER_ACTION_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyNoUserActionFlagForShortcut"

.field private static final KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final KEY_CUSTOMIZED_COVER_DENSITY:Ljava/lang/String; = "android.activity.customizedCoverDensity"

.field private static final KEY_DISABLE_STARTING_WINDOW:Ljava/lang/String; = "android.activity.disableStarting"

.field private static final KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final KEY_DISMISS_KEYGUARD:Ljava/lang/String; = "android.activity.dismissKeyguard"

.field private static final KEY_DISMISS_SPLIT_BEFORE_LAUNCH:Ljava/lang/String; = "android:activity.dismissSplitBeforeLaunch"

.field private static final KEY_ENTER_SPLIT_SIDE_WITH_ADJACENT_FLAG:Ljava/lang/String; = "android:activity.enterSplitSideWithAdjacentFlag"

.field private static final KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field private static final KEY_FORCE_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.forceWindowingMode"

.field private static final KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field public static final KEY_LATE_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.lateTransientLaunch"

.field private static final KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field private static final KEY_LAUNCHED_FROM_DND:Ljava/lang/String; = "android.activity.launchTypeDnD"

.field private static final KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field private static final KEY_LAUNCH_IN_FOCUSED_STAGE_ROOT:Ljava/lang/String; = "android:activity.launchInFocusedStageRoot"

.field public static final KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final KEY_LAUNCH_TASK_DISPLAY_AREA_FEATURE_ID:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaFeatureId"

.field private static final KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final KEY_ML_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isMlLaunch"

.field private static final KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final KEY_PENDING_INTENT_CREATOR_BACKGROUND_ACTIVITY_START_MODE:Ljava/lang/String; = "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

.field private static final KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final KEY_POP_OVER:Ljava/lang/String; = "android:activity.popOver"

.field private static final KEY_POP_OVER_ANCHOR:Ljava/lang/String; = "android:activity.popOverAnchor"

.field private static final KEY_POP_OVER_ANCHOR_POSITION:Ljava/lang/String; = "android:activity.popOverAnchorPosition"

.field private static final KEY_POP_OVER_HEIGHT:Ljava/lang/String; = "android:activity.popOverHeight"

.field private static final KEY_POP_OVER_INHERIT_OPTIONS:Ljava/lang/String; = "android:activity.popOverInheritOptions"

.field private static final KEY_POP_OVER_WIDTH:Ljava/lang/String; = "android:activity.popOverWidth"

.field private static final KEY_PRESERVE_TASK_WINDOWING_MODE:Ljava/lang/String; = "android.activity.preserveTaskWindowingMode"

.field private static final KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final KEY_RESUMED_AFFORDANCE_ANIMATION_REQUESTED:Ljava/lang/String; = "android:activity.resumedAffordanceAnimationRequested"

.field private static final KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final KEY_SHARE_IDENTITY:Ljava/lang/String; = "android:activity.shareIdentity"

.field private static final KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final KEY_SPLIT_POSITION:Ljava/lang/String; = "android.activity.splitPosition"

.field public static final KEY_STARTED_BY_MDM_ADMIN:Ljava/lang/String; = "edm:activity.startedByMDMAdmin"

.field public static final KEY_STARTED_FROM_WINDOW_TYPE_LAUNCHER:Ljava/lang/String; = "android:activity.startedFromWindowTypeLauncher"

.field private static final KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field public static final KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field private static final KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field public static final LAND:I = 0x0

.field public static final ML_TYPE_EMPTY_PROCESS:I = 0x1

.field public static final ML_TYPE_NAP_PROCESS:I = 0x0

.field public static final ML_TYPE_SEEDBED_PROCESS:I = 0x2

.field public static final MODE_BACKGROUND_ACTIVITY_START_ALLOWED:I = 0x1

.field public static final MODE_BACKGROUND_ACTIVITY_START_DENIED:I = 0x2

.field public static final MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED:I = 0x0

.field public static final POP_OVER_ANCHOR_HORIZONTAL_MASK:I = 0x70

.field public static final POP_OVER_ANCHOR_VERTICAL_MASK:I = 0x7

.field private static final POP_OVER_CHOOSER_BOTTOM_MARGIN_DP:I = 0x2c

.field private static final POP_OVER_CHOOSER_HEIGHT_DP:I = 0x168

.field private static final POP_OVER_CHOOSER_WIDTH_DP:I = 0x168

.field public static final POP_OVER_HORIZONTAL_MASK:I = 0x70

.field public static final POP_OVER_VERTICAL_MASK:I = 0x7

.field public static final PORT:I = 0x1

.field public static final SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER:I = 0x40

.field public static final SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT:I = 0x10

.field public static final SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT:I = 0x20

.field public static final SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM:I = 0x2

.field public static final SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER:I = 0x4

.field public static final SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP:I = 0x1

.field public static final SEM_POP_OVER_POSITION_HORIZONTAL_CENTER:I = 0x40

.field public static final SEM_POP_OVER_POSITION_HORIZONTAL_LEFT:I = 0x10

.field public static final SEM_POP_OVER_POSITION_HORIZONTAL_RIGHT:I = 0x20

.field public static final SEM_POP_OVER_POSITION_VERTICAL_BOTTOM:I = 0x2

.field public static final SEM_POP_OVER_POSITION_VERTICAL_CENTER:I = 0x4

.field public static final SEM_POP_OVER_POSITION_VERTICAL_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private mAllowEnterPipWhileLaunching:Z

.field private mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mAppVerificationBundle:Landroid/os/Bundle;

.field private mApplyActivityFlagsForBubbles:Z

.field private mApplyBigFreeformSize:Z

.field private mApplyMultipleTaskFlagForShortcut:Z

.field private mApplyNoUserActionFlagForShortcut:Z

.field private mAvoidMoveToFront:Z

.field private mCallerDisplayId:I

.field private mCustomBackgroundColor:I

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mCustomInPlaceResId:I

.field private mCustomizedCoverDensity:I

.field private mDisableStartingWindow:Z

.field private mDisallowEnterPictureInPictureWhileLaunching:Z

.field private mDismissKeyguard:Z

.field private mDismissSplitBeforeLaunch:Z

.field private mEnterSplitSideWithAdjacentFlag:I

.field private mExitCoordinatorIndex:I

.field private mForceLaunchWindowingMode:I

.field private mFreezeRecentTasksReordering:Z

.field private mHeight:I

.field private mIsActiveApplaunch:Z

.field private mIsActivityEmbeddedPlaceholder:Z

.field private mIsEligibleForLegacyPermissionPrompt:Z

.field private mIsMlLaunch:I

.field private mIsPopOver:Z

.field private mIsReturning:Z

.field private mIsStartedFromWindowTypeLauncher:Z

.field private mLateTransientLaunch:Z

.field private mLaunchActivityType:I

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchCookie:Landroid/os/IBinder;

.field private mLaunchDisplayId:I

.field private mLaunchInFocusedStageRoot:Z

.field private mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private mLaunchTaskDisplayAreaFeatureId:I

.field private mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private mLaunchTaskId:I

.field private mLaunchWindowingMode:I

.field private mLaunchedFromBubble:Z

.field private mLaunchedFromDnD:Z

.field private mLockTaskMode:Z

.field private mOverrideTaskTransition:Z

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentCreatorBackgroundActivityStartMode:I

.field private mPendingIntentLaunchFlags:I

.field public mPopOverAnchorMarginDp:[Landroid/graphics/Point;

.field public mPopOverAnchorPosition:[I

.field public mPopOverHeightDp:[I

.field public mPopOverInheritOptions:Z

.field public mPopOverRemoveOutlineEffect:Z

.field public mPopOverWidthDp:[I

.field private mPreseveTaskWindowingMode:Z

.field private mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private mRemoteTransition:Landroid/window/RemoteTransition;

.field private mRemoveWithTaskOrganizer:Z

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mResumedAffordanceAnimationRequested:Z

.field private mRotationAnimationHint:I

.field private mShareIdentity:Z

.field private mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

.field private mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mSplashScreenStyle:I

.field private mSplashScreenThemeResName:Ljava/lang/String;

.field private mSplitPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mStartedByMDMAdmin:Z

.field private mTaskAlwaysOnTop:Z

.field private mTaskOverlay:Z

.field private mTaskOverlayCanResume:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransientLaunch:Z

.field private mTransitionReceiver:Landroid/os/ResultReceiver;

.field private mUsageTimeReport:Landroid/app/PendingIntent;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1380
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 578
    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 585
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 586
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 588
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 591
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 593
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 595
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 597
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 598
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 610
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 618
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 626
    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 632
    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 637
    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 638
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    .line 650
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 654
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 662
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    .line 3325
    const/4 v0, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 3327
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 3329
    new-array v2, v0, [Landroid/graphics/Point;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 3331
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 3333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 3455
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    .line 1381
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 1385
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 578
    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 585
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 586
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 588
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 591
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 593
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 595
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 597
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 598
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 610
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 618
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 626
    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 632
    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 637
    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 638
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    .line 650
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 654
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 662
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    .line 3325
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 3327
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 3329
    new-array v3, v2, [Landroid/graphics/Point;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 3331
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 3333
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 3455
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    .line 1387
    const-string v3, "android:activity.packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1389
    :try_start_49
    const-string v3, "android:activity.usageTimeReport"

    const-class v4, Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_55} :catch_56

    .line 1392
    goto :goto_5c

    .line 1390
    :catch_56
    move-exception v3

    .line 1391
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityOptions"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_5c
    const-string v3, "android:activity.launchBounds"

    const-class v4, Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1394
    const-string v3, "android:activity.animType"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1395
    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v3, :pswitch_data_3f2

    :pswitch_7d
    goto/16 :goto_136

    .line 1405
    :pswitch_7f
    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1406
    goto/16 :goto_136

    .line 1434
    :pswitch_89
    const-string v3, "android:activity.transitionCompleteListener"

    const-class v4, Landroid/os/ResultReceiver;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1435
    const-string v3, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1436
    const-string v3, "android:activity.sharedElementNames"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1437
    const-string v3, "android:activity.resultData"

    const-class v4, Landroid/content/Intent;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1438
    const-string v3, "android:activity.resultCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1439
    const-string v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_136

    .line 1421
    :pswitch_c2
    const-string v3, "android:activity.animThumbnail"

    const-class v9, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    .line 1422
    .local v3, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v3, :cond_d5

    .line 1423
    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1425
    :cond_d5
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1426
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1427
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1428
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1429
    nop

    .line 1430
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1429
    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1431
    goto :goto_136

    .line 1410
    .end local v3    # "buffer":Landroid/hardware/HardwareBuffer;
    :pswitch_f9
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1411
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1412
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1413
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1414
    goto :goto_136

    .line 1397
    :pswitch_112
    const-string v3, "android:activity.animEnterRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1398
    const-string v3, "android:activity.animExitRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1399
    const-string v3, "android:activity.backgroundColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1400
    nop

    .line 1401
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1400
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1402
    nop

    .line 1442
    :goto_136
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1443
    const-string v3, "android:activity.shareIdentity"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 1444
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1445
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1446
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    const-class v4, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1447
    const-string v3, "android.activity.launchTaskDisplayAreaFeatureId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 1449
    const-string v3, "android.activity.launchRootTaskToken"

    const-class v4, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1450
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1451
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1452
    const-string v3, "android.activity.activityType"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1453
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1454
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1455
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1456
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1457
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1458
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1459
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1460
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1462
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1464
    const-string v3, "android:activity.applyMultipleTaskFlagForShortcut"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    .line 1466
    const-string v3, "android:activity.applyNoUserActionFlagForShortcut"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    .line 1468
    const-string v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_206

    .line 1469
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 1470
    .local v3, "specs":[Landroid/os/Parcelable;
    array-length v4, v3

    new-array v4, v4, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1471
    array-length v4, v3

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_1f9
    if-ltz v4, :cond_206

    .line 1472
    iget-object v5, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v6, v3, v4

    check-cast v6, Landroid/view/AppTransitionAnimationSpec;

    aput-object v6, v5, v4

    .line 1471
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f9

    .line 1475
    .end local v3    # "specs":[Landroid/os/Parcelable;
    .end local v4    # "i":I
    :cond_206
    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_219

    .line 1476
    nop

    .line 1477
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1476
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1479
    :cond_219
    const-string v3, "android.activity.sourceInfo"

    const-class v4, Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 1480
    const-string v3, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1481
    const-string v3, "android:instantapps.installerbundle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 1482
    const-string v3, "android:activity.specsFuture"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_247

    .line 1483
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1489
    :cond_247
    const-string v3, "android:activity.isActiveLaunch"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    .line 1490
    const-string v3, "android:activity.isMlLaunch"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 1496
    const-string v0, "edm:activity.startedByMDMAdmin"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    .line 1499
    const-string v0, "android:activity.remoteAnimationAdapter"

    const-class v3, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1500
    const-string v0, "android.activity.launchCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1501
    const-string v0, "android:activity.remoteTransition"

    const-class v3, Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1502
    const-string v0, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 1503
    const-string v0, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    .line 1504
    const-string v0, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1505
    const-string v0, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1506
    const-string v0, "android.activity.transientLaunch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1507
    const-string v0, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1508
    const-string v0, "android.activity.launchIntoPipParams"

    const-class v3, Landroid/app/PictureInPictureParams;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1509
    nop

    .line 1510
    const-string v0, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1511
    const-string v0, "android.activity.dismissKeyguard"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguard:Z

    .line 1512
    const-string v0, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 1515
    const-string v0, "android.activity.disableStarting"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    .line 1519
    const-string v0, "android:activity.popOverWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32a

    .line 1520
    const-string v3, "android:activity.popOverHeight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32a

    .line 1521
    const-string v4, "android:activity.popOverAnchor"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32a

    .line 1522
    const-string v5, "android:activity.popOverAnchorPosition"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32a

    .line 1523
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 1524
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 1525
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 1526
    .local v0, "parcelables":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30d
    array-length v4, v0

    if-ge v3, v4, :cond_31b

    .line 1527
    iget-object v4, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v6, v0, v3

    check-cast v6, Landroid/graphics/Point;

    aput-object v6, v4, v3

    .line 1526
    add-int/lit8 v3, v3, 0x1

    goto :goto_30d

    .line 1529
    .end local v3    # "i":I
    :cond_31b
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 1530
    const-string v3, "android:activity.popOver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .end local v0    # "parcelables":[Landroid/os/Parcelable;
    goto :goto_339

    .line 1531
    :cond_32a
    const-string v0, "android:activity.popOverInheritOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_339

    .line 1532
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    goto :goto_33a

    .line 1531
    :cond_339
    :goto_339
    nop

    .line 1535
    :goto_33a
    const-string v0, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_348

    .line 1537
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    .line 1541
    :cond_348
    nop

    .line 1542
    const-string v0, "android.activity.forceWindowingMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_358

    .line 1543
    nop

    .line 1544
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 1547
    :cond_358
    const-string v0, "android.activity.splitPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_366

    .line 1548
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 1550
    :cond_366
    const-string v0, "android:activity.launchInFocusedStageRoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_374

    .line 1551
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    .line 1555
    :cond_374
    const-string v0, "android:activity.dismissSplitBeforeLaunch"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    .line 1557
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v0, :cond_390

    const-string v0, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_390

    .line 1559
    const-string v0, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPreseveTaskWindowingMode:Z

    .line 1561
    :cond_390
    const-string v0, "android:activity.applyBigFreeformSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39f

    .line 1562
    nop

    .line 1563
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    .line 1565
    :cond_39f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_3ab

    .line 1566
    const-string v0, "android:activity.activityEmbeddedPlaceholder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 1569
    :cond_3ab
    const-string v0, "android.activity.launchTypeDnD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3bb

    .line 1570
    const-string v0, "android.activity.launchTypeDnD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 1573
    :cond_3bb
    const-string v0, "android:activity.enterSplitSideWithAdjacentFlag"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    .line 1575
    const-string v0, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d4

    .line 1576
    nop

    .line 1577
    const-string v0, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    .line 1579
    :cond_3d4
    const-string v0, "android.activity.enterPipWhileLaunching"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e4

    .line 1581
    const-string v0, "android.activity.enterPipWhileLaunching"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    .line 1584
    :cond_3e4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH:Z

    if-eqz v0, :cond_3f0

    .line 1585
    const-string v0, "android.activity.lateTransientLaunch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLateTransientLaunch:Z

    .line 1591
    :cond_3f0
    return-void

    nop

    :pswitch_data_3f2
    .packed-switch 0x1
        :pswitch_112
        :pswitch_f9
        :pswitch_c2
        :pswitch_c2
        :pswitch_89
        :pswitch_7d
        :pswitch_7d
        :pswitch_c2
        :pswitch_c2
        :pswitch_7f
        :pswitch_f9
    .end packed-switch
.end method

.method public static abort(Landroid/app/ActivityOptions;)V
    .registers 1
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 1793
    if-eqz p0, :cond_5

    .line 1794
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1796
    :cond_5
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 1788
    if-eqz p0, :cond_8

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 12
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .line 1067
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1068
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1069
    if-eqz p8, :cond_14

    const/16 v1, 0x8

    goto :goto_16

    .line 1070
    :cond_14
    const/16 v1, 0x9

    :goto_16
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1071
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1072
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1073
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1074
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1075
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1076
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1077
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1078
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1079
    return-object v0
.end method

.method public static makeBasic()Landroid/app/ActivityOptions;
    .registers 1

    .line 1292
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1293
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 934
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 935
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 936
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 937
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 938
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 939
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 940
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 941
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 942
    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 680
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I

    .line 700
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 726
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 727
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 728
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 729
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 730
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 731
    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 732
    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 733
    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 762
    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 764
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-direct {v0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 765
    return-object v0
.end method

.method public static makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .line 815
    if-eqz p1, :cond_14

    .line 819
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 820
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 821
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 822
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 823
    return-object v0

    .line 816
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify a valid animation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 796
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 798
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 799
    return-object v0
.end method

.method public static makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "pictureInPictureParams"    # Landroid/app/PictureInPictureParams;

    .line 1367
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1368
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    .line 1369
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 1370
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1371
    return-object v0
.end method

.method public static makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p3, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "scaleUp"    # Z

    .line 1028
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1029
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1030
    if-eqz p4, :cond_10

    .line 1031
    const/16 v1, 0x8

    goto :goto_12

    .line 1032
    :cond_10
    const/16 v1, 0x9

    :goto_12
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1033
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1034
    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1035
    return-object v0
.end method

.method public static makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .registers 2

    .line 953
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 954
    .local v0, "options":Landroid/app/ActivityOptions;
    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 955
    return-object v0
.end method

.method public static makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1305
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1306
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1307
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteAnimation, adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1311
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1310
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-object v0
.end method

.method public static makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1325
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1326
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1327
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1328
    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteAnimation, adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1333
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1331
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-object v0
.end method

.method public static makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1346
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1347
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteTransition, remoteTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1350
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 906
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 907
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 908
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 909
    new-array v1, v1, [I

    .line 910
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 911
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 912
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 913
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 914
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 915
    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .line 1249
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1250
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1251
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1252
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1253
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1254
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1255
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1256
    if-nez p0, :cond_19

    .line 1257
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_21

    .line 1259
    :cond_19
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1260
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1264
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeSceneTransitionAnimation is called, activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1265
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 1117
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    filled-new-array {v0}, [Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1142
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1143
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1143
    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1146
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1147
    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1148
    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .registers 16
    .param p0, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "opts"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 1201
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1202
    const/4 v0, 0x6

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1203
    const/4 v0, 0x0

    return-object v0

    .line 1205
    :cond_d
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 1210
    .local v9, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_4c

    .line 1211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v2, p4

    if-ge v1, v2, :cond_4c

    .line 1212
    aget-object v2, p4, v1

    .line 1213
    .local v2, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1214
    .local v3, "sharedElementName":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 1217
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 1219
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3c

    .line 1222
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1220
    .restart local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .restart local v3    # "sharedElementName":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shared element must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1215
    .end local v4    # "view":Landroid/view/View;
    :cond_44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Shared element name must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1226
    .end local v1    # "i":I
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    :cond_4c
    new-instance v10, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1228
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v1, p3, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1229
    iput-object v0, p3, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1230
    const/4 v2, 0x0

    iput-boolean v2, p3, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1231
    return-object v1
.end method

.method public static makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .registers 2

    .line 1282
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1283
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1284
    return-object v0
.end method

.method private static makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .line 1007
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1008
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1009
    if-eqz p5, :cond_13

    const/4 v1, 0x3

    goto :goto_14

    :cond_13
    const/4 v1, 0x4

    :goto_14
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1010
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1011
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1012
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1013
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1014
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1015
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1016
    return-object v0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 17
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 1060
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 1087
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1088
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1089
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1090
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1091
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1092
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 1093
    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 979
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 11
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 1001
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static setExitTransitionTimeout(J)V
    .registers 2
    .param p0, "timeoutMillis"    # J

    .line 1242
    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    .line 1243
    return-void
.end method

.method private setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 857
    if-eqz p2, :cond_9

    .line 858
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 871
    :cond_9
    return-void
.end method

.method private setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 828
    if-eqz p2, :cond_9

    .line 829
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 841
    :cond_9
    return-void
.end method

.method public static varargs startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .registers 7
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "callback"    # Landroid/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1166
    .local p3, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1167
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1169
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    const/4 v2, -0x1

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1170
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static stopSharedElementAnimation(Landroid/view/Window;)V
    .registers 5
    .param p0, "window"    # Landroid/view/Window;

    .line 1182
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1183
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_7

    .line 1184
    return-void

    .line 1186
    :cond_7
    nop

    .line 1187
    const v1, 0x102029a

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    .line 1188
    .local v2, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v2, :cond_2a

    .line 1189
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 1190
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1191
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1192
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1193
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 1194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    :cond_2a
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 3

    .line 1694
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_a

    .line 1696
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 1698
    goto :goto_a

    .line 1697
    :catch_9
    move-exception v0

    .line 1700
    :cond_a
    :goto_a
    return-void
.end method

.method public allowEnterPipWhileLaunching()Z
    .registers 2

    .line 2981
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    return v0
.end method

.method public canTaskOverlayResume()Z
    .registers 2

    .line 2172
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public disallowEnterPictureInPictureWhileLaunching()Z
    .registers 2

    .line 2240
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public forTargetActivity()Landroid/app/ActivityOptions;
    .registers 3

    .line 2851
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 2852
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2853
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 2854
    return-object v0

    .line 2857
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public freezeRecentTasksReordering()Z
    .registers 2

    .line 2216
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .registers 2

    .line 1759
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1686
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1681
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getAnimationType()I
    .registers 2

    .line 1626
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public getAvoidMoveToFront()Z
    .registers 2

    .line 2198
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public getCallerDisplayId()I
    .registers 2

    .line 1949
    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public getCustomBackgroundColor()I
    .registers 2

    .line 1646
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public getCustomEnterResId()I
    .registers 2

    .line 1631
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public getCustomExitResId()I
    .registers 2

    .line 1636
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public getCustomInPlaceResId()I
    .registers 2

    .line 1641
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public getCustomizedCoverDensity()I
    .registers 2

    .line 3459
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    return v0
.end method

.method public getDisableStartingWindow()Z
    .registers 2

    .line 2112
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    return v0
.end method

.method public getDismissKeyguard()Z
    .registers 2

    .line 2372
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguard:Z

    return v0
.end method

.method public getExitCoordinatorKey()I
    .registers 2

    .line 1690
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public getForceLaunchWindowingMode()I
    .registers 2

    .line 2038
    iget v0, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1676
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public getLateTransientLaunch()Z
    .registers 2

    .line 3448
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLateTransientLaunch:Z

    return v0
.end method

.method public getLaunchActivityType()I
    .registers 2

    .line 2072
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1621
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLaunchCookie()Landroid/os/IBinder;
    .registers 2

    .line 2290
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public getLaunchDisplayId()I
    .registers 2

    .line 1928
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public getLaunchInFocusedStageRoot()Z
    .registers 2

    .line 2426
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    return v0
.end method

.method public getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 2058
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public getLaunchRootTask()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1989
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public getLaunchTaskBehind()Z
    .registers 3

    .line 1376
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1960
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public getLaunchTaskDisplayAreaFeatureId()I
    .registers 2

    .line 1972
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    return v0
.end method

.method public getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 2000
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getLaunchTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2096
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public getLaunchWindowingMode()I
    .registers 2

    .line 2011
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public getLaunchedFromBubble()Z
    .registers 2

    .line 2329
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public getLaunchedFromDnD()Z
    .registers 2

    .line 2438
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    return v0
.end method

.method public getLockTaskMode()Z
    .registers 2

    .line 1805
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public getOverrideTaskTransition()Z
    .registers 2

    .line 2296
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1611
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntentBackgroundActivityStartMode()I
    .registers 2

    .line 3008
    invoke-super {p0}, Landroid/app/ComponentOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    return v0
.end method

.method public getPendingIntentCreatorBackgroundActivityStartMode()I
    .registers 2

    .line 2410
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    return v0
.end method

.method public getPendingIntentLaunchFlags()I
    .registers 3

    .line 2129
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    return v0
.end method

.method public getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .registers 2

    .line 1768
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 1778
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public getRemoveWithTaskOranizer()Z
    .registers 2

    .line 2312
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .line 1748
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .registers 2

    .line 1751
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .line 1745
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getRotationAnimationHint()I
    .registers 2

    .line 2866
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public getSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1741
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .registers 2

    .line 2829
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .registers 2

    .line 1763
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public getSplashScreenStyle()I
    .registers 2

    .line 1836
    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public getSplashScreenThemeResName()Ljava/lang/String;
    .registers 2

    .line 1828
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitPosition()I
    .registers 2

    .line 2416
    iget v0, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    return v0
.end method

.method public getStartX()I
    .registers 2

    .line 1661
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .registers 2

    .line 1666
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public getStartedByMDMAdmin()Z
    .registers 2

    .line 2234
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    return v0
.end method

.method public getTaskAlwaysOnTop()Z
    .registers 2

    .line 2146
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public getTaskOverlay()Z
    .registers 2

    .line 2165
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public getThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1656
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getTransientLaunch()Z
    .registers 2

    .line 2351
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public getUsageTimeReport()Landroid/app/PendingIntent;
    .registers 2

    .line 1755
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1671
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public hasValidHorizontalSplitLayoutWithAdjacentFlag()Z
    .registers 4

    .line 3406
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public hasValidLaunchAdjacentExt()Z
    .registers 2

    .line 3400
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hasValidVerticalSplitLayoutWithAdjacentFlag()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3401
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 3400
    :goto_10
    return v0
.end method

.method public hasValidVerticalSplitLayoutWithAdjacentFlag()Z
    .registers 3

    .line 3412
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

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

.method public isActiveApplaunch()Z
    .registers 2

    .line 1710
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    return v0
.end method

.method public isActivityEmbeddedPlaceholder()Z
    .registers 2

    .line 2935
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    return v0
.end method

.method public isApplyActivityFlagsForBubbles()Z
    .registers 2

    .line 2250
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method public isApplyBigFreeformSize()Z
    .registers 2

    .line 2928
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    return v0
.end method

.method public isApplyMultipleTaskFlagForShortcut()Z
    .registers 2

    .line 2260
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    return v0
.end method

.method public isApplyNoUserActionFlagForShortcut()Z
    .registers 2

    .line 2270
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    return v0
.end method

.method isCrossTask()Z
    .registers 2

    .line 1736
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDismissSplitBeforeLaunch()Z
    .registers 2

    .line 2916
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    return v0
.end method

.method public isEligibleForLegacyPermissionPrompt()Z
    .registers 2

    .line 1860
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public isLaunchIntoPip()Z
    .registers 2

    .line 2066
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_c

    .line 2067
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 2066
    :goto_d
    return v0
.end method

.method public isMlLaunch()I
    .registers 2

    .line 1720
    iget v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    return v0
.end method

.method public isPendingIntentBackgroundActivityLaunchAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3032
    invoke-super {p0}, Landroid/app/ComponentOptions;->isPendingIntentBackgroundActivityLaunchAllowed()Z

    move-result v0

    return v0
.end method

.method public isPopOver()Z
    .registers 2

    .line 3341
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    return v0
.end method

.method public isResumedAffordanceAnimationRequested()Z
    .registers 2

    .line 2964
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    return v0
.end method

.method public isReturning()Z
    .registers 2

    .line 1704
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public isShareIdentityEnabled()Z
    .registers 2

    .line 1819
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    return v0
.end method

.method public isStartedFromWindowTypeLauncher()Z
    .registers 2

    .line 2952
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    return v0
.end method

.method public launchToRightSideWithAdjacentFlag()Z
    .registers 3

    .line 3423
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public launchToTopSideWithAdjacentFlag()Z
    .registers 3

    .line 3418
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public popAppVerificationBundle()Landroid/os/Bundle;
    .registers 3

    .line 2888
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2889
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2890
    return-object v0
.end method

.method public preserveTaskWindowingMode()V
    .registers 2

    .line 2026
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPreseveTaskWindowingMode:Z

    .line 2027
    return-void
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 2821
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2822
    return-void
.end method

.method public semSetChooserPopOverPosition(I)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "position"    # I

    .line 3262
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_3f

    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_9

    goto :goto_3f

    .line 3267
    :cond_9
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const/4 v1, 0x1

    const/16 v2, 0x168

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 3268
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aput v2, v0, v1

    aput v2, v0, v3

    .line 3269
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    .line 3270
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aput p1, v0, v1

    aput p1, v0, v3

    .line 3272
    and-int/lit8 v0, p1, 0x7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_31

    move v0, v1

    goto :goto_32

    :cond_31
    move v0, v3

    .line 3274
    .local v0, "hasBottom":Z
    :goto_32
    if-eqz v0, :cond_3c

    .line 3275
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    const/16 v3, 0x2c

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 3277
    :cond_3c
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3278
    return-object p0

    .line 3264
    .end local v0    # "hasBottom":Z
    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "widthDp"    # [I
    .param p2, "heightDp"    # [I
    .param p3, "marginDp"    # [Landroid/graphics/Point;
    .param p4, "position"    # [I

    .line 3235
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->setPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public setActiveApplaunch(Z)V
    .registers 2
    .param p1, "activeApplaunch"    # Z

    .line 1715
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    .line 1716
    return-void
.end method

.method public setActivityEmbeddedPlaceholder()V
    .registers 2

    .line 2940
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 2941
    return-void
.end method

.method public setAllowEnterPipWhileLaunching(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .line 2976
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    .line 2977
    return-void
.end method

.method public setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2900
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2901
    return-object p0
.end method

.method public setApplyActivityFlagsForBubbles(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2245
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 2246
    return-void
.end method

.method public setApplyBigFreeformSize(Z)V
    .registers 2
    .param p1, "applyBigFreeformSize"    # Z

    .line 2923
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    .line 2924
    return-void
.end method

.method public setApplyMultipleTaskFlagForShortcut(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2255
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    .line 2256
    return-void
.end method

.method public setApplyNoUserActionFlagForShortcut(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2265
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    .line 2266
    return-void
.end method

.method public setAvoidMoveToFront()V
    .registers 3

    .line 2182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAvoidMoveToFront is called, package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2186
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2185
    const-string v1, "ActivityOptions"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    return-void
.end method

.method public setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "callerDisplayId"    # I

    .line 1954
    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1955
    return-object p0
.end method

.method public setCustomizedCoverDensity(I)V
    .registers 2
    .param p1, "density"    # I

    .line 3467
    iput p1, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    .line 3468
    return-void
.end method

.method public setDisableStartingWindow(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .line 2105
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    .line 2106
    return-void
.end method

.method public setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .registers 2
    .param p1, "disallow"    # Z

    .line 2227
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 2228
    return-void
.end method

.method public setDismissKeyguard()V
    .registers 2

    .line 2363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguard:Z

    .line 2364
    return-void
.end method

.method public setDismissSplitBeforeLaunch(Z)V
    .registers 2
    .param p1, "dismiss"    # Z

    .line 2911
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    .line 2912
    return-void
.end method

.method public setEligibleForLegacyPermissionPrompt(Z)V
    .registers 2
    .param p1, "eligible"    # Z

    .line 1869
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1870
    return-void
.end method

.method public setForceLaunchWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 2049
    iput p1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 2050
    return-void
.end method

.method public setFreezeRecentTasksReordering()V
    .registers 2

    .line 2208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 2209
    return-void
.end method

.method public setIgnorePendingIntentCreatorForegroundState(Z)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "ignore"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2383
    if-eqz p1, :cond_4

    .line 2384
    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 2385
    return-object p0
.end method

.method public setLateTransientLaunch()Landroid/app/ActivityOptions;
    .registers 2

    .line 3440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLateTransientLaunch:Z

    .line 3441
    return-object p0
.end method

.method public setLaunchActivityType(I)V
    .registers 2
    .param p1, "activityType"    # I

    .line 2078
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 2079
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 1605
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1606
    return-object p0
.end method

.method public setLaunchCookie(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 2281
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 2282
    return-void
.end method

.method public setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "launchDisplayId"    # I

    .line 1943
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1944
    return-object p0
.end method

.method public setLaunchInFocusedStageRoot(Z)V
    .registers 2
    .param p1, "launchInFocusedStageRoot"    # Z

    .line 2431
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    .line 2432
    return-void
.end method

.method public setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1994
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1995
    return-object p0
.end method

.method public setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1966
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1967
    return-object p0
.end method

.method public setLaunchTaskDisplayAreaFeatureId(I)V
    .registers 2
    .param p1, "launchTaskDisplayAreaFeatureId"    # I

    .line 1984
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 1985
    return-void
.end method

.method public setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 2005
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 2006
    return-object p0
.end method

.method public setLaunchTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2088
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 2089
    return-void
.end method

.method public setLaunchWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 2020
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 2021
    return-void
.end method

.method public setLaunchedFromBubble(Z)V
    .registers 2
    .param p1, "fromBubble"    # Z

    .line 2321
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 2322
    return-void
.end method

.method public setLaunchedFromDnD(Z)V
    .registers 2
    .param p1, "launchedFromDnd"    # Z

    .line 2443
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 2444
    return-void
.end method

.method public setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "lockTaskMode"    # Z

    .line 1890
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1891
    return-object p0
.end method

.method public setMlLaunch(I)V
    .registers 2
    .param p1, "mlLaunch"    # I

    .line 1725
    iput p1, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 1726
    return-void
.end method

.method public setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3020
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 3021
    return-void
.end method

.method public setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "state"    # I

    .line 2997
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;

    .line 2998
    return-object p0
.end method

.method public bridge synthetic setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "mode"    # I

    .line 2399
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 2400
    return-object p0
.end method

.method public setPendingIntentLaunchFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 2121
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 2122
    return-void
.end method

.method public setPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    .registers 10
    .param p1, "widthDp"    # [I
    .param p2, "heightDp"    # [I
    .param p3, "marginDp"    # [Landroid/graphics/Point;
    .param p4, "position"    # [I

    .line 3352
    if-nez p1, :cond_e

    if-nez p2, :cond_e

    if-nez p3, :cond_e

    if-nez p4, :cond_e

    .line 3353
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 3354
    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3355
    return-object p0

    .line 3358
    :cond_e
    if-eqz p1, :cond_6d

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6d

    if-eqz p2, :cond_6d

    array-length v0, p2

    if-ne v0, v1, :cond_6d

    if-eqz p3, :cond_6d

    array-length v0, p3

    if-ne v0, v1, :cond_6d

    if-eqz p4, :cond_6d

    array-length v0, p4

    if-eq v0, v1, :cond_24

    goto :goto_6d

    .line 3365
    :cond_24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_46

    .line 3366
    aget v2, p4, v0

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_45

    aget v2, p4, v0

    and-int/lit8 v2, v2, 0x70

    if-nez v2, :cond_34

    goto :goto_45

    .line 3371
    :cond_34
    aget v2, p1, v0

    if-lez v2, :cond_44

    aget v2, p2, v0

    if-lez v2, :cond_44

    aget-object v2, p3, v0

    if-nez v2, :cond_41

    goto :goto_44

    .line 3365
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 3372
    :cond_44
    :goto_44
    return-object p0

    .line 3368
    :cond_45
    :goto_45
    return-object p0

    .line 3376
    .end local v0    # "i":I
    :cond_46
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_47
    if-ge v0, v1, :cond_69

    .line 3377
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3378
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget v3, p2, v0

    aput v3, v2, v0

    .line 3379
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    aget-object v4, p3, v0

    invoke-direct {v3, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v3, v2, v0

    .line 3380
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v3, p4, v0

    aput v3, v2, v0

    .line 3376
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 3382
    .end local v0    # "i":I
    :cond_69
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3384
    return-object p0

    .line 3362
    :cond_6d
    :goto_6d
    return-object p0
.end method

.method public setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .registers 2
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1773
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1774
    return-void
.end method

.method public setRemoteTransition(Landroid/window/RemoteTransition;)V
    .registers 2
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1783
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1784
    return-void
.end method

.method public setRemoveWithTaskOrganizer(Z)V
    .registers 2
    .param p1, "remove"    # Z

    .line 2304
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 2305
    return-void
.end method

.method public setResumedAffordanceAnimation()V
    .registers 2

    .line 2969
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    .line 2970
    return-void
.end method

.method public setRotationAnimationHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .line 2878
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 2879
    return-void
.end method

.method public setShareIdentityEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "shareIdentity"    # Z

    .line 1917
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 1918
    return-object p0
.end method

.method public setSourceInfo(IJ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "uptimeMillis"    # J

    .line 2843
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 2844
    return-void
.end method

.method public setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "style"    # I

    .line 1847
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_7

    .line 1849
    :cond_5
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1851
    :cond_7
    return-object p0
.end method

.method public setSplitPosition(I)V
    .registers 2
    .param p1, "splitPosition"    # I

    .line 2421
    iput p1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 2422
    return-void
.end method

.method public setSplitScreenCreateMode(I)V
    .registers 2
    .param p1, "splitScreenCreateMode"    # I

    .line 2223
    return-void
.end method

.method public setStartedFromWindowTypeLauncher(Z)V
    .registers 2
    .param p1, "isWindowTypeLauncher"    # Z

    .line 2947
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    .line 2948
    return-void
.end method

.method public setTaskAlwaysOnTop(Z)V
    .registers 2
    .param p1, "alwaysOnTop"    # Z

    .line 2139
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 2140
    return-void
.end method

.method public setTaskOverlay(ZZ)V
    .registers 3
    .param p1, "taskOverlay"    # Z
    .param p2, "canResume"    # Z

    .line 2157
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 2158
    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 2159
    return-void
.end method

.method public setTransientLaunch()Landroid/app/ActivityOptions;
    .registers 2

    .line 2341
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 2342
    return-object p0
.end method

.method public shouldPreserveTaskWindowingMode()Z
    .registers 2

    .line 2031
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mPreseveTaskWindowingMode:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 12

    .line 2542
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2543
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 2544
    const-string v2, "android:activity.packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_16

    .line 2547
    const-string v2, "android:activity.launchBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2549
    :cond_16
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 2550
    const-string v3, "android:activity.animType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2552
    :cond_20
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_29

    .line 2553
    const-string v3, "android:activity.usageTimeReport"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2555
    :cond_29
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v3, 0x0

    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v1, :pswitch_data_318

    :pswitch_39
    goto/16 :goto_e8

    .line 2564
    :pswitch_3b
    const-string v1, "android:activity.animInPlaceRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2565
    goto/16 :goto_e8

    .line 2595
    :pswitch_44
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_4d

    .line 2596
    const-string v3, "android:activity.transitionCompleteListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2598
    :cond_4d
    const-string v1, "android:activity.transitionIsReturning"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2599
    const-string v1, "android:activity.sharedElementNames"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2600
    const-string v1, "android:activity.resultData"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2601
    const-string v1, "android:activity.resultCode"

    iget v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2602
    const-string v1, "android:activity.exitCoordinatorIndex"

    iget v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_e8

    .line 2579
    :pswitch_72
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_90

    .line 2580
    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2581
    .local v1, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_89

    .line 2582
    const-string v9, "android:activity.animThumbnail"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_90

    .line 2584
    :cond_89
    const-string v9, "ActivityOptions"

    const-string v10, "Failed to copy thumbnail"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    .end local v1    # "hwBitmap":Landroid/graphics/Bitmap;
    :cond_90
    :goto_90
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2588
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2589
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2590
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2591
    nop

    .line 2592
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_ad

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2591
    :cond_ad
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2593
    goto :goto_e8

    .line 2568
    :pswitch_b1
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2569
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2570
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2571
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2572
    goto :goto_e8

    .line 2557
    :pswitch_c6
    const-string v1, "android:activity.animEnterRes"

    iget v4, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2558
    const-string v1, "android:activity.animExitRes"

    iget v4, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2559
    const-string v1, "android:activity.backgroundColor"

    iget v4, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2560
    nop

    .line 2561
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_e4

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2560
    :cond_e4
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2562
    nop

    .line 2605
    :goto_e8
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_f1

    .line 2606
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2608
    :cond_f1
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    if-eqz v1, :cond_fa

    .line 2609
    const-string v3, "android:activity.shareIdentity"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2611
    :cond_fa
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_103

    .line 2612
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2614
    :cond_103
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_10c

    .line 2615
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2617
    :cond_10c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_115

    .line 2618
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2620
    :cond_115
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    if-eq v1, v2, :cond_11e

    .line 2621
    const-string v3, "android.activity.launchTaskDisplayAreaFeatureId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2623
    :cond_11e
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_127

    .line 2624
    const-string v3, "android.activity.launchRootTaskToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2626
    :cond_127
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_130

    .line 2627
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2629
    :cond_130
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_139

    .line 2630
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2632
    :cond_139
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_142

    .line 2633
    const-string v3, "android.activity.activityType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2635
    :cond_142
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_14b

    .line 2636
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2638
    :cond_14b
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_154

    .line 2639
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2641
    :cond_154
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_15d

    .line 2642
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2644
    :cond_15d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_166

    .line 2645
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2647
    :cond_166
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_16f

    .line 2648
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2650
    :cond_16f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_178

    .line 2651
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2653
    :cond_178
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_181

    .line 2654
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2656
    :cond_181
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_18a

    .line 2657
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2660
    :cond_18a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_193

    .line 2661
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2663
    :cond_193
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    if-eqz v1, :cond_19c

    .line 2664
    const-string v3, "android:activity.applyMultipleTaskFlagForShortcut"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2667
    :cond_19c
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1a6

    .line 2668
    const-string v1, "android:activity.applyNoUserActionFlagForShortcut"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2670
    :cond_1a6
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_1af

    .line 2671
    const-string v4, "android:activity.animSpecs"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2673
    :cond_1af
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1bc

    .line 2674
    const-string v4, "android:activity.animationFinishedListener"

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2676
    :cond_1bc
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_1c9

    .line 2677
    const-string v4, "android:activity.specsFuture"

    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2679
    :cond_1c9
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_1d2

    .line 2680
    const-string v4, "android.activity.sourceInfo"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2682
    :cond_1d2
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_1db

    .line 2683
    const-string v2, "android:activity.rotationAnimationHint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2687
    :cond_1db
    const-string v1, "android:activity.isActiveLaunch"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2688
    const-string v1, "android:activity.isMlLaunch"

    iget v2, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2691
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1f2

    .line 2692
    const-string v2, "android:instantapps.installerbundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2694
    :cond_1f2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_1fb

    .line 2695
    const-string v2, "android:activity.remoteAnimationAdapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2697
    :cond_1fb
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_204

    .line 2698
    const-string v2, "android.activity.launchCookie"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2700
    :cond_204
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_20d

    .line 2701
    const-string v2, "android:activity.remoteTransition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2703
    :cond_20d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_216

    .line 2704
    const-string v2, "android:activity.overrideTaskTransition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2706
    :cond_216
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_227

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_227

    .line 2707
    const-string v1, "android.activity.splashScreenTheme"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    :cond_227
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_230

    .line 2710
    const-string v2, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2712
    :cond_230
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_239

    .line 2713
    const-string v2, "android.activity.launchTypeBubble"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2715
    :cond_239
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_242

    .line 2716
    const-string v2, "android.activity.transientLaunch"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2718
    :cond_242
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_24b

    .line 2719
    const-string v2, "android.activity.splashScreenStyle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2721
    :cond_24b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_254

    .line 2722
    const-string v2, "android.activity.launchIntoPipParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2724
    :cond_254
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_25d

    .line 2725
    const-string v2, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2728
    :cond_25d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguard:Z

    if-eqz v1, :cond_266

    .line 2729
    const-string v2, "android.activity.dismissKeyguard"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2731
    :cond_266
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    if-eqz v1, :cond_26f

    .line 2733
    const-string v2, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2736
    :cond_26f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    if-eqz v1, :cond_278

    .line 2737
    const-string v2, "android.activity.disableStarting"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2741
    :cond_278
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    if-eqz v1, :cond_2a0

    .line 2742
    const-string v1, "android:activity.popOverWidth"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2743
    const-string v1, "android:activity.popOverHeight"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2744
    const-string v1, "android:activity.popOverAnchor"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2745
    const-string v1, "android:activity.popOverAnchorPosition"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2746
    const-string v1, "android:activity.popOver"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2a9

    .line 2747
    :cond_2a0
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    if-nez v1, :cond_2a9

    .line 2748
    const-string v2, "android:activity.popOverInheritOptions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2751
    :cond_2a9
    :goto_2a9
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    if-eqz v1, :cond_2b2

    .line 2752
    const-string v1, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2754
    :cond_2b2
    iget v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    if-eqz v1, :cond_2bb

    .line 2756
    const-string v2, "android.activity.forceWindowingMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2759
    :cond_2bb
    const-string v1, "android.activity.splitPosition"

    iget v2, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2760
    const-string v1, "android:activity.launchInFocusedStageRoot"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2763
    const-string v1, "android.activity.launchTypeDnD"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2766
    const-string v1, "android:activity.dismissSplitBeforeLaunch"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2769
    const-string v1, "android:activity.applyBigFreeformSize"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2771
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_2e9

    .line 2772
    const-string v1, "android:activity.activityEmbeddedPlaceholder"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2775
    :cond_2e9
    const-string v1, "android:activity.enterSplitSideWithAdjacentFlag"

    iget v2, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2778
    const-string v1, "android:activity.startedFromWindowTypeLauncher"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2780
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v1, :cond_302

    .line 2781
    const-string v1, "android.activity.preserveTaskWindowingMode"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mPreseveTaskWindowingMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2784
    :cond_302
    const-string v1, "android.activity.enterPipWhileLaunching"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2786
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH:Z

    if-eqz v1, :cond_316

    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLateTransientLaunch:Z

    if-eqz v1, :cond_316

    .line 2787
    const-string v2, "android.activity.lateTransientLaunch"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2793
    :cond_316
    return-object v0

    nop

    :pswitch_data_318
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_b1
        :pswitch_72
        :pswitch_72
        :pswitch_44
        :pswitch_39
        :pswitch_39
        :pswitch_72
        :pswitch_72
        :pswitch_3b
        :pswitch_b1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLaunchDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/app/ActivityOptions;)V
    .registers 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .line 2453
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2454
    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 2456
    :cond_6
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2457
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2458
    iput-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2459
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2460
    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2461
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2462
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 2463
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 2464
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_c2

    :pswitch_21
    goto/16 :goto_a0

    .line 2479
    :pswitch_23
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 2480
    goto/16 :goto_a0

    .line 2512
    :pswitch_29
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2513
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2514
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2515
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2516
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2517
    iget-object v0, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2518
    iget v0, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2519
    iget v0, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_a0

    .line 2498
    :pswitch_46
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2499
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2500
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2501
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2502
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2503
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_63

    .line 2505
    :try_start_5e
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62

    .line 2507
    goto :goto_63

    .line 2506
    :catch_62
    move-exception v0

    .line 2509
    :cond_63
    :goto_63
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2510
    goto :goto_a0

    .line 2482
    :pswitch_68
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2483
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2484
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2485
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2486
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_81

    .line 2488
    :try_start_7c
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 2490
    goto :goto_81

    .line 2489
    :catch_80
    move-exception v1

    .line 2492
    :cond_81
    :goto_81
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2493
    goto :goto_a0

    .line 2466
    :pswitch_84
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 2467
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 2468
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 2469
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2470
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_9b

    .line 2472
    :try_start_96
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 2474
    goto :goto_9b

    .line 2473
    :catch_9a
    move-exception v0

    .line 2476
    :cond_9b
    :goto_9b
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2477
    nop

    .line 2522
    :goto_a0
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2523
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mShareIdentity:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 2524
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 2525
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 2526
    iget-object v0, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2527
    iget-object v0, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2528
    iget-object v0, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 2529
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2530
    return-void

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_84
        :pswitch_68
        :pswitch_46
        :pswitch_46
        :pswitch_29
        :pswitch_21
        :pswitch_21
        :pswitch_46
        :pswitch_46
        :pswitch_23
    .end packed-switch
.end method
