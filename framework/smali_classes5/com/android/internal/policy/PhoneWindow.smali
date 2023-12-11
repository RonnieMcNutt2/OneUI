.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

.field static final sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field mActivityCurrentConfig:Landroid/content/res/Configuration;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mBackgroundBlurRadius:I

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field mContentParent:Landroid/view/ViewGroup;

.field private mContentParentExplicitlySet:Z

.field private mContentScene:Landroid/transition/Scene;

.field mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private mDecor:Lcom/android/internal/policy/DecorView;

.field private mDecorCaptionShade:I

.field mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field mDecorFitsSystemWindows:Z

.field private mDefaultNavigationBarColor:I

.field private mDeviceDefaultNavigationBarColor:I

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field mEnsureNavigationBarContrastWhenTransparent:Z

.field mEnsureStatusBarContrastWhenTransparent:Z

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForceDecorInstall:Z

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsFloating:Z

.field mIsStartingWindow:Z

.field private mIsTranslucent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field private mLoadElevation:Z

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field mNavigationBarColor:I

.field mNavigationBarDividerColor:I

.field private mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

.field mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private final mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

.field private mReenterTransition:Landroid/transition/Transition;

.field public final mRenderShadowsInCompositor:Z

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSettingsNavigationBarColor:I

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field mStatusBarColor:I

.field private mSupportsPictureInPicture:Z

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTextColor:I

.field private mTheme:I

.field private mThemeApplied:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mUseDecorContext:Z

.field private mVolumeControlStreamType:I


# direct methods
.method public static synthetic $r8$lambda$HgjHl70Jm98LGnDzhpFWUSeWx2Q(Lcom/android/internal/policy/PhoneWindow;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->lambda$setMediaController$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInvalidatePanelMenuPosted(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallOnPanelClosed(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissContextMenu(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    .line 192
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 406
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 414
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 200
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 201
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 219
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 287
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 295
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 297
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 298
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 299
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 300
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 301
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 302
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 334
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 337
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 339
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 345
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 346
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    .line 353
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 357
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 371
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 372
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 373
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 374
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 375
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 376
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 377
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 378
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 381
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 388
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 390
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 392
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 397
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 409
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    .line 415
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "render_shadows_in_compositor"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7f

    move v0, v2

    :cond_7f
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 418
    new-instance v0, Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-direct {v0, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->updateDeviceDefaultNavigationBarColor()V

    .line 423
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 424
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;
    .param p3, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 434
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 438
    const/4 v1, 0x0

    if-eqz p2, :cond_39

    .line 439
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/DecorView;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 440
    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 441
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 442
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 447
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 448
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_39

    .line 450
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    .line 451
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 456
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_resizable_activities"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_47

    move v2, v0

    goto :goto_48

    :cond_47
    move v2, v1

    .line 458
    .local v2, "forceResizable":Z
    :goto_48
    if-nez v2, :cond_58

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.picture_in_picture"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    goto :goto_58

    :cond_57
    move v0, v1

    :cond_58
    :goto_58
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    .line 460
    iput-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 461
    return-void
.end method

.method private applyDecorFitsSystemWindows()V
    .registers 3

    .line 4181
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4182
    .local v0, "impl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_11

    .line 4183
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    if-eqz v1, :cond_d

    .line 4184
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    goto :goto_e

    .line 4185
    :cond_d
    const/4 v1, 0x0

    .line 4183
    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setOnContentApplyWindowInsetsListener(Landroid/view/Window$OnContentApplyWindowInsetsListener;)V

    .line 4187
    :cond_11
    return-void
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 3307
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3308
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_7

    .line 3309
    return-void

    .line 3312
    :cond_7
    if-nez p3, :cond_18

    .line 3314
    if-nez p2, :cond_14

    .line 3315
    if-ltz p1, :cond_14

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v2, v1

    if-ge p1, v2, :cond_14

    .line 3316
    aget-object p2, v1, p1

    .line 3320
    :cond_14
    if-eqz p2, :cond_18

    .line 3322
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3327
    :cond_18
    if-eqz p2, :cond_1f

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_1f

    .line 3328
    return-void

    .line 3330
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_28

    .line 3331
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3333
    :cond_28
    return-void
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .registers 2
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 869
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .registers 2

    monitor-enter p0

    .line 1264
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_b

    .line 1265
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1266
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1268
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_b
    monitor-exit p0

    return-void

    .line 1263
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .registers 3

    monitor-enter p0

    .line 1275
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1277
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v1, :cond_d

    .line 1278
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1279
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 1281
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_d
    monitor-exit p0

    return-void

    .line 1274
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .line 3258
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 3259
    return-object v0

    .line 3261
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 3262
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3264
    :cond_e
    const v0, 0x10204bf

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3265
    if-eqz v0, :cond_1f

    .line 3266
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3268
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getDefaultNavigationBarColor()I
    .registers 4

    .line 4276
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    if-eqz v0, :cond_2a

    .line 4277
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_use_theme_default"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    move v0, v2

    .line 4279
    .local v0, "useThemeDefault":Z
    if-eqz v0, :cond_2a

    .line 4280
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060483

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 4284
    .end local v0    # "useThemeDefault":Z
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4285
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    return v0

    .line 4287
    :cond_33
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    return v0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 3090
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 3091
    if-nez p2, :cond_d

    .line 3092
    const/4 v0, 0x0

    return-object v0

    .line 3094
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3098
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_1d

    array-length v0, v1

    if-gt v0, p1, :cond_2b

    .line 3099
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3100
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v1, :cond_28

    .line 3101
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3103
    :cond_28
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3106
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_2b
    aget-object v0, v1, p1

    .line 3107
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v0, :cond_37

    .line 3108
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    move-object v0, v2

    aput-object v2, v1, p1

    .line 3110
    :cond_37
    return-object v0
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .line 3272
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 3273
    return-object v0

    .line 3275
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 3276
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3278
    :cond_e
    const v0, 0x10204c1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3279
    if-eqz v0, :cond_1f

    .line 3280
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3282
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 2070
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_13

    .line 2071
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2074
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .registers 2

    .line 3240
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 3241
    return-object v0

    .line 3243
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    .line 3244
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3246
    :cond_c
    const v0, 0x10203b3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 3

    .line 2085
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_13

    .line 2086
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2089
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method private getOptionsPanelGravity()I
    .registers 4

    .line 1498
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    .line 1499
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1498
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 1500
    :catch_f
    move-exception v0

    .line 1501
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    const/16 v1, 0x51

    return v1
.end method

.method private getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3137
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 3138
    if-nez p2, :cond_d

    .line 3139
    const/4 v0, 0x0

    return-object v0

    .line 3141
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3145
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_1d

    array-length v0, v1

    if-gt v0, p1, :cond_2b

    .line 3146
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3147
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_28

    .line 3148
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3150
    :cond_28
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3153
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2b
    aget-object v0, v1, p1

    .line 3154
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_3b

    .line 3155
    if-eqz p3, :cond_33

    .line 3156
    move-object v2, p3

    goto :goto_38

    .line 3157
    :cond_33
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    :goto_38
    move-object v0, v2

    aput-object v2, v1, p1

    .line 3159
    :cond_3b
    return-object v0
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .registers 2

    .line 3286
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 3287
    return-object v0

    .line 3289
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    .line 3290
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3292
    :cond_c
    const v0, 0x10204f9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .registers 8
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .line 3063
    if-eq p1, p2, :cond_3

    .line 3064
    return-object p1

    .line 3066
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3067
    .local v0, "transitionId":I
    move-object v2, p2

    .line 3068
    .local v2, "transition":Landroid/transition/Transition;
    if-eq v0, v1, :cond_2d

    const/high16 v1, 0x10f0000

    if-eq v0, v1, :cond_2d

    .line 3069
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 3070
    .local v1, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 3071
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_2d

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    .line 3072
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_2d

    .line 3073
    const/4 v2, 0x0

    .line 3076
    .end local v1    # "inflater":Landroid/transition/TransitionInflater;
    :cond_2d
    return-object v2
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 4

    .line 1931
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1932
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_7

    .line 1933
    return-object v0

    .line 1935
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getViewRootImplOrNull()Landroid/view/ViewRootImpl;
    .registers 2

    .line 1939
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_6

    .line 1940
    const/4 v0, 0x0

    return-object v0

    .line 1942
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1853
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1854
    .local v0, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1855
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1856
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x4

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 1858
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    .line 1859
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1860
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1862
    :cond_27
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_39

    if-eqz p1, :cond_39

    .line 1863
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_39

    .line 1864
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1865
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1867
    :cond_39
    return-void
.end method

.method private installDecor()V
    .registers 10

    .line 2927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 2928
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    if-nez v1, :cond_29

    .line 2929
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2930
    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    .line 2931
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    .line 2932
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v1, :cond_2c

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v1, :cond_2c

    .line 2933
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 2936
    :cond_29
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2938
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_20d

    .line 2939
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2942
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->makeFrameworkOptionalFitsSystemWindows()V

    .line 2944
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const v3, 0x10202af

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorContentParent;

    .line 2947
    .local v1, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    const/16 v3, 0xd

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_f5

    .line 2948
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2949
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 2950
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_67

    .line 2951
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 2954
    :cond_67
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    .line 2955
    .local v6, "localFeatures":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6c
    if-ge v7, v3, :cond_7b

    .line 2956
    shl-int v8, v2, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_78

    .line 2957
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v8, v7}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 2955
    :cond_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 2961
    .end local v7    # "i":I
    :cond_7b
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 2963
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_bd

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-eqz v7, :cond_94

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2964
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_94

    goto :goto_bd

    .line 2966
    :cond_94
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_c4

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-nez v7, :cond_c4

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2967
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_c4

    .line 2968
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2969
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2968
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2970
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_c4

    .line 2965
    :cond_bd
    :goto_bd
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 2972
    :cond_c4
    :goto_c4
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_d6

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    if-eqz v7, :cond_dd

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2973
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v7

    if-nez v7, :cond_dd

    .line 2974
    :cond_d6
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 2982
    :cond_dd
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    .line 2983
    .local v7, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_f4

    if-eqz v7, :cond_ed

    iget-object v8, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v8, :cond_f4

    :cond_ed
    iget-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v8, :cond_f4

    .line 2984
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2986
    .end local v6    # "localFeatures":I
    .end local v7    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_f4
    goto :goto_129

    .line 2987
    :cond_f5
    const v6, 0x1020016

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 2988
    if-eqz v6, :cond_129

    .line 2989
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_122

    .line 2990
    const v6, 0x1020645

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2991
    .local v6, "titleContainer":Landroid/view/View;
    if-eqz v6, :cond_117

    .line 2992
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11c

    .line 2994
    :cond_117
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2996
    :goto_11c
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2997
    .end local v6    # "titleContainer":Landroid/view/View;
    goto :goto_129

    .line 2998
    :cond_122
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3003
    :cond_129
    :goto_129
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_13a

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_13a

    .line 3004
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 3009
    :cond_13a
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_20d

    .line 3010
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v3, :cond_168

    .line 3011
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3014
    .local v0, "transitionRes":I
    if-eqz v0, :cond_161

    .line 3015
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v3

    .line 3016
    .local v3, "inflater":Landroid/transition/TransitionInflater;
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3018
    .end local v3    # "inflater":Landroid/transition/TransitionInflater;
    goto :goto_168

    .line 3019
    :cond_161
    new-instance v3, Landroid/transition/TransitionManager;

    invoke-direct {v3}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3023
    .end local v0    # "transitionRes":I
    :cond_168
    :goto_168
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v3, 0x1b

    invoke-direct {p0, v0, v5, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3025
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x27

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3027
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1c

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3029
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    const/16 v4, 0x28

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3031
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v4, 0x1d

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3033
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    const/16 v4, 0x29

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3036
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1e

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3038
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    const/16 v4, 0x2a

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3041
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1ce

    .line 3042
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3045
    :cond_1ce
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1e2

    .line 3046
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3049
    :cond_1e2
    iget-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1f9

    .line 3050
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x24

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3054
    :cond_1f9
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_20d

    .line 3055
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3060
    .end local v1    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_20d
    return-void
.end method

.method private isActivePhoneCallOngoing()Z
    .registers 3

    .line 2065
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

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

.method private isNightMode()Z
    .registers 3

    .line 4291
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private isNotInstantAppAndKeyguardRestricted()Z
    .registers 2

    .line 2206
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2207
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2206
    :goto_1b
    return v0
.end method

.method private isTvUserSetupComplete()Z
    .registers 6

    .line 3340
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 3342
    .local v0, "isTvSetupComplete":Z
    :goto_16
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tv_user_setup_complete"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_28

    move v2, v1

    :cond_28
    and-int/2addr v0, v2

    .line 3344
    return v0
.end method

.method private synthetic lambda$setMediaController$1(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 3405
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-eqz v0, :cond_10

    .line 170
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 172
    :cond_10
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 173
    .local v0, "insetsToApply":Landroid/graphics/Insets;
    new-instance v1, Landroid/util/Pair;

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    return-object v1
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3354
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3355
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isTvUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3357
    const/4 v0, 0x0

    return v0

    .line 3360
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3361
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_68

    .line 3364
    :cond_25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 3365
    .local v1, "deviceId":I
    const/4 v2, 0x0

    .line 3366
    .local v2, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v1, :cond_36

    .line 3367
    new-instance v3, Landroid/view/SearchEvent;

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    move-object v2, v3

    .line 3370
    :cond_36
    :try_start_36
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v3
    :try_end_3a
    .catch Ljava/lang/AbstractMethodError; {:try_start_36 .. :try_end_3a} :catch_3b

    .line 3375
    .local v3, "result":Z
    goto :goto_69

    .line 3371
    .end local v3    # "result":Z
    :catch_3b
    move-exception v3

    .line 3372
    .local v3, "e":Ljava/lang/AbstractMethodError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WindowCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not implement method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneWindow"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3374
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    move v3, v4

    .local v4, "result":Z
    goto :goto_69

    .line 3362
    .end local v1    # "deviceId":I
    .end local v2    # "searchEvent":Landroid/view/SearchEvent;
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    .end local v4    # "result":Z
    :cond_68
    :goto_68
    const/4 v3, 0x0

    .line 3377
    .local v3, "result":Z
    :goto_69
    if-nez v3, :cond_a7

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a7

    .line 3380
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3381
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3382
    const-string v2, "android.intent.extra.TIME"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3383
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "search"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 3384
    invoke-virtual {v2, v1}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 3385
    const/4 v2, 0x1

    return v2

    .line 3387
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_a7
    return v3
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3081
    nop

    .line 3082
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3081
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-object v0

    .line 3083
    :catch_13
    move-exception v1

    .line 3084
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private needLightNavigationBar(I)Z
    .registers 7
    .param p1, "color"    # I

    .line 4316
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 4317
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "navigationbar_use_theme_default"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 4319
    .local v0, "useThemeDefault":Z
    :goto_1a
    if-eqz v0, :cond_3f

    .line 4320
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 4322
    .local v1, "needLight":Z
    if-nez v1, :cond_3e

    .line 4325
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 4326
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, -0x11

    .line 4325
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4329
    :cond_3e
    return v1

    .line 4336
    .end local v0    # "useThemeDefault":Z
    .end local v1    # "needLight":Z
    :cond_3f
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 4337
    .local v0, "pixelHSV":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 4341
    aget v3, v0, v2

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_59

    const/4 v3, 0x2

    aget v3, v0, v3

    const v4, 0x3f6147ae    # 0.88f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_59

    move v1, v2

    :cond_59
    return v1
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 22
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 886
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_144

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_144

    .line 892
    :cond_10
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3e

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 894
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 895
    .local v5, "config":Landroid/content/res/Configuration;
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2b

    move v6, v4

    goto :goto_2c

    :cond_2b
    move v6, v3

    .line 897
    .local v6, "isXLarge":Z
    :goto_2c
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_38

    move v7, v4

    goto :goto_39

    :cond_38
    move v7, v3

    .line 900
    .local v7, "isHoneycombApp":Z
    :goto_39
    if-eqz v6, :cond_3e

    if-eqz v7, :cond_3e

    .line 901
    return-void

    .line 905
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "isXLarge":Z
    .end local v7    # "isHoneycombApp":Z
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 906
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_52

    iget v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 908
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 909
    return-void

    .line 912
    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 913
    .local v5, "wm":Landroid/view/WindowManager;
    if-nez v5, :cond_59

    .line 914
    return-void

    .line 918
    :cond_59
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 919
    return-void

    .line 922
    :cond_60
    const/4 v6, -0x2

    .line 923
    .local v6, "width":I
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    const/4 v8, -0x1

    if-eqz v7, :cond_87

    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_6b

    goto :goto_87

    .line 969
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v7

    if-nez v7, :cond_74

    .line 970
    const/4 v6, -0x1

    goto/16 :goto_104

    .line 971
    :cond_74
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v7, :cond_104

    .line 974
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 975
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_104

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_104

    .line 976
    const/4 v6, -0x1

    goto/16 :goto_104

    .line 924
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_87
    :goto_87
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_96

    .line 926
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_95

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_a7

    .line 927
    :cond_95
    return-void

    .line 928
    :cond_96
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_a7

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_a7

    .line 930
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    .line 934
    :cond_a7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_143

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_b5

    goto/16 :goto_143

    .line 938
    :cond_b5
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 939
    .restart local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_c4

    .line 940
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v7, v9

    .line 944
    :cond_c4
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_cc

    .line 947
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 948
    .local v8, "backgroundResId":I
    const/4 v6, -0x1

    goto :goto_ce

    .line 951
    .end local v8    # "backgroundResId":I
    :cond_cc
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .line 953
    .restart local v8    # "backgroundResId":I
    :goto_ce
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 956
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 957
    .local v9, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v9, :cond_ef

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_ef

    .line 958
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 960
    :cond_ef
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_103

    .line 967
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 969
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "backgroundResId":I
    .end local v9    # "shownPanelParent":Landroid/view/ViewParent;
    :cond_103
    nop

    .line 980
    :cond_104
    :goto_104
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_10b

    .line 983
    return-void

    .line 986
    :cond_10b
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 988
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x2

    iget v14, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    iget v15, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    const/16 v16, 0x3eb

    const/high16 v17, 0x820000

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget v7, v7, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    move-object v11, v3

    move v12, v6

    move/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 995
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v7, :cond_133

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 997
    sget-object v7, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v7, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    goto :goto_137

    .line 999
    :cond_133
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1002
    :goto_137
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1004
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v5, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1007
    return-void

    .line 935
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_143
    :goto_143
    return-void

    .line 887
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v6    # "width":I
    :cond_144
    :goto_144
    return-void
.end method

.method private reopenMenu(Z)V
    .registers 8
    .param p1, "toggleMenuMode"    # Z

    .line 1365
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8d

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1366
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1367
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1368
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1369
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_4c

    if-nez p1, :cond_33

    goto :goto_4c

    .line 1389
    :cond_33
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1390
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1391
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_8c

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 1392
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_8c

    .line 1370
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_8c

    .line 1372
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_69

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_69

    .line 1374
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1375
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1378
    :cond_69
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1382
    .restart local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_8b

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_8b

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_8b

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1383
    invoke-interface {v0, v2, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1384
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1385
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1387
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_8b
    nop

    .line 1395
    :cond_8c
    :goto_8c
    return-void

    .line 1398
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_8d
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1400
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_94

    .line 1401
    return-void

    .line 1405
    :cond_94
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz p1, :cond_9d

    if-nez v3, :cond_9c

    move v3, v1

    goto :goto_9d

    :cond_9c
    move v3, v2

    .line 1407
    .local v3, "newExpandedMode":Z
    :cond_9d
    :goto_9d
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1408
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1411
    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1413
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1414
    return-void
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2347
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_23

    .line 2348
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2349
    .local v1, "curFeatureId":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2350
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_14

    .line 2352
    goto :goto_20

    .line 2355
    :cond_14
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2356
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2347
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2363
    .end local v0    # "i":I
    .end local v1    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_23
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2327
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2328
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_5

    .line 2329
    return-void

    .line 2332
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "curFeatureId":I
    :goto_8
    if-ltz v1, :cond_1a

    .line 2333
    aget-object v2, v0, v1

    if-eqz v2, :cond_17

    .line 2334
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2332
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2337
    .end local v1    # "curFeatureId":I
    :cond_1a
    return-void
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 4010
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4012
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 4014
    goto :goto_f

    .line 4013
    :catch_e
    move-exception v0

    .line 4016
    :cond_f
    :goto_f
    return-void
.end method

.method public static sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V
    .registers 3
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "displayId"    # I

    .line 4020
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4022
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 4023
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->closeSystemDialogsInDisplay(Ljava/lang/String;I)V

    goto :goto_18

    .line 4025
    :cond_11
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_19

    .line 4028
    :goto_18
    goto :goto_1a

    .line 4027
    :catch_19
    move-exception v0

    .line 4030
    :cond_1a
    :goto_1a
    return-void
.end method

.method private setForceLightNavigationBar(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 4345
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4346
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 4347
    .local v1, "oldValue":I
    if-eqz p1, :cond_10

    .line 4348
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_18

    .line 4350
    :cond_10
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 4352
    :goto_18
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eq v1, v2, :cond_67

    .line 4353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceLight changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4354
    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4353
    const-string v3, "PhoneWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4356
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_67

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 4357
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestRecomputeViewAttributes()V

    .line 4360
    :cond_67
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1840
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1841
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    if-eqz p2, :cond_15

    .line 1842
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    .line 1843
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1846
    :cond_15
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_26

    if-eqz p1, :cond_26

    .line 1847
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_26

    .line 1848
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1850
    :cond_26
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .registers 3
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_8

    .line 605
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    goto :goto_d

    .line 607
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 609
    :goto_d
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 610
    return-void
.end method

.method private updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .line 3183
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 3184
    return-void

    .line 3187
    :cond_5
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3189
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-nez p3, :cond_11

    .line 3190
    return-void

    .line 3193
    :cond_11
    const/4 v1, 0x0

    .line 3194
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1e

    .line 3195
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3196
    if-nez v1, :cond_1a

    .line 3197
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3198
    :cond_1a
    if-nez v1, :cond_1e

    .line 3199
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3201
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v0

    if-nez v2, :cond_3b

    .line 3202
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 3203
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p3, :cond_52

    .line 3204
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_52

    .line 3207
    :cond_3b
    if-eqz p2, :cond_52

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v1, :cond_47

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_52

    .line 3210
    :cond_47
    iput-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3211
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3212
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    .line 3214
    :cond_52
    :goto_52
    return-void
.end method

.method private updateInt(IIZ)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .line 3220
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 3221
    return-void

    .line 3224
    :cond_5
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3226
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-nez p3, :cond_11

    .line 3227
    return-void

    .line 3230
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_26

    .line 3231
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 3232
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_29

    .line 3235
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    .line 3237
    :cond_29
    :goto_29
    return-void
.end method

.method private updateProgressBars(I)V
    .registers 12
    .param p1, "value"    # I

    .line 1763
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1764
    .local v1, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1766
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 1767
    .local v3, "features":I
    const/4 v4, -0x1

    const-string v5, "Circular progress bar not located in current window decor"

    const/16 v6, 0x2710

    const/4 v7, 0x0

    const-string v8, "Horizontal progress bar not located in current window decor"

    const-string v9, "PhoneWindow"

    if-ne p1, v4, :cond_46

    .line 1768
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_36

    .line 1769
    if-eqz v2, :cond_33

    .line 1770
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1771
    .local v0, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_2e

    if-ge v0, v6, :cond_2c

    goto :goto_2e

    .line 1772
    :cond_2c
    const/4 v4, 0x4

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v4, v7

    .line 1773
    .local v4, "visibility":I
    :goto_2f
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1774
    .end local v0    # "level":I
    .end local v4    # "visibility":I
    goto :goto_36

    .line 1775
    :cond_33
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_36
    :goto_36
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_af

    .line 1779
    if-eqz v1, :cond_41

    .line 1780
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_af

    .line 1782
    :cond_41
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    .line 1785
    :cond_46
    const/4 v4, -0x2

    if-ne p1, v4, :cond_66

    .line 1786
    and-int/lit8 v0, v3, 0x4

    const/16 v4, 0x8

    if-eqz v0, :cond_58

    .line 1787
    if-eqz v2, :cond_55

    .line 1788
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_58

    .line 1790
    :cond_55
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_58
    :goto_58
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_af

    .line 1794
    if-eqz v1, :cond_62

    .line 1795
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_af

    .line 1797
    :cond_62
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1800
    :cond_66
    const/4 v4, -0x3

    if-ne p1, v4, :cond_73

    .line 1801
    if-eqz v2, :cond_6f

    .line 1802
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_af

    .line 1804
    :cond_6f
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1806
    :cond_73
    const/4 v0, -0x4

    if-ne p1, v0, :cond_80

    .line 1807
    if-eqz v2, :cond_7c

    .line 1808
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_af

    .line 1810
    :cond_7c
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1812
    :cond_80
    if-ltz p1, :cond_99

    if-gt p1, v6, :cond_99

    .line 1816
    if-eqz v2, :cond_8c

    .line 1817
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8f

    .line 1819
    :cond_8c
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :goto_8f
    if-ge p1, v6, :cond_95

    .line 1823
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_af

    .line 1825
    :cond_95
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_af

    .line 1827
    :cond_99
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_af

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_af

    .line 1828
    if-eqz v2, :cond_a9

    .line 1829
    add-int/lit16 v0, p1, -0x4e20

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_ac

    .line 1831
    :cond_a9
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :goto_ac
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 1837
    :cond_af
    :goto_af
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 582
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 584
    :cond_7
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 586
    const-string v0, "PhoneWindow"

    const-string v1, "addContentView does not support content transitions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 591
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 592
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 594
    :cond_2f
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .registers 2

    .line 2923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 2924
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1077
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v0, :cond_5

    .line 1078
    return-void

    .line 1081
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1084
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1085
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1087
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1088
    return-void
.end method

.method public clearContentView()V
    .registers 2

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_7

    .line 599
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    .line 601
    :cond_7
    return-void
.end method

.method public final closeAllPanels()V
    .registers 7

    .line 1242
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1243
    .local v0, "wm":Landroid/view/ViewManager;
    if-nez v0, :cond_7

    .line 1244
    return-void

    .line 1247
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1248
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_d

    array-length v2, v1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 1249
    .local v2, "N":I
    :goto_e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1c

    .line 1250
    aget-object v4, v1, v3

    .line 1251
    .local v4, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v4, :cond_19

    .line 1252
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1249
    .end local v4    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1256
    .end local v3    # "i":I
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 1257
    return-void
.end method

.method public final closePanel(I)V
    .registers 4
    .param p1, "featureId"    # I

    .line 1011
    if-nez p1, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_20

    .line 1012
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1013
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_2f

    .line 1015
    :cond_20
    const/4 v0, 0x6

    if-ne p1, v0, :cond_27

    .line 1016
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_2f

    .line 1018
    :cond_27
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1020
    :goto_2f
    return-void
.end method

.method public final closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .registers 7
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .line 1035
    if-eqz p2, :cond_16

    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_16

    .line 1036
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1037
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 1038
    return-void

    .line 1041
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1042
    .local v0, "wm":Landroid/view/ViewManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_3a

    .line 1043
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_33

    .line 1044
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 1046
    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v2, :cond_33

    .line 1047
    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 1051
    :cond_33
    if-eqz p2, :cond_3a

    .line 1052
    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v2, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 1056
    :cond_3a
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1057
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1058
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1061
    iput-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1063
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_4c

    .line 1066
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1067
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1070
    :cond_4c
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v3, p1, :cond_54

    .line 1071
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1072
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1074
    :cond_54
    return-void
.end method

.method public decorFitsSystemWindows()Z
    .registers 2

    .line 4177
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    return v0
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 3251
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 3252
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_c

    .line 3253
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3255
    :cond_c
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .registers 6
    .param p1, "featureId"    # I

    .line 1118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1119
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_8

    .line 1120
    return-void

    .line 1122
    :cond_8
    const/4 v2, 0x0

    .line 1123
    .local v2, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_2a

    .line 1124
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1125
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1126
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_20

    .line 1127
    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1130
    :cond_20
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1131
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1133
    :cond_2a
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1134
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1137
    const/16 v3, 0x8

    if-eq p1, v3, :cond_35

    if-nez p1, :cond_45

    :cond_35
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_45

    .line 1139
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1140
    if-eqz v1, :cond_45

    .line 1141
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1142
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1145
    :cond_45
    return-void
.end method

.method doPendingInvalidatePanelMenu()V
    .registers 3

    .line 1111
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_10

    .line 1112
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1115
    :cond_10
    return-void
.end method

.method public dumpColors(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4297
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "PhoneWindow:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4298
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStatusBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4299
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4300
    const-string v1, " mForcedStatusBarColor="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4301
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4302
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4303
    const-string v1, " mForcedNavigationBarColor="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4304
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDeviceDefaultNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4305
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4306
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDefaultNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4307
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4308
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSettingsNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4309
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4310
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mThemeApplied="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4311
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1338
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1339
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_6

    array-length v1, v0

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 1340
    .local v1, "N":I
    :goto_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_16

    .line 1341
    aget-object v3, v0, v2

    .line 1342
    .local v3, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_13

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    .line 1343
    return-object v3

    .line 1340
    .end local v3    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1346
    .end local v2    # "i":I
    :cond_16
    const/4 v2, 0x0

    return-object v2
.end method

.method protected generateDecor(I)Lcom/android/internal/policy/DecorView;
    .registers 6
    .param p1, "featureId"    # I

    .line 2454
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    if-eqz v0, :cond_21

    .line 2455
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2456
    .local v0, "applicationContext":Landroid/content/Context;
    if-nez v0, :cond_13

    .line 2457
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_20

    .line 2459
    .end local v1    # "context":Landroid/content/Context;
    :cond_13
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;)V

    .line 2460
    .restart local v1    # "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 2461
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 2464
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_20
    :goto_20
    goto :goto_25

    .line 2465
    .end local v1    # "context":Landroid/content/Context;
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2467
    .restart local v1    # "context":Landroid/content/Context;
    :goto_25
    new-instance v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .registers 21
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;

    .line 2473
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2485
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 2486
    nop

    .line 2487
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v0

    not-int v0, v0

    const v6, 0x10100

    and-int v7, v0, v6

    .line 2488
    .local v7, "flagsToUpdate":I
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v0, :cond_27

    .line 2489
    const/4 v0, -0x2

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2490
    invoke-virtual {v1, v5, v7}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto :goto_38

    .line 2492
    :cond_27
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2493
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 2494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 2497
    :goto_38
    const/4 v6, 0x3

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v0, :cond_46

    .line 2498
    invoke-virtual {v1, v9}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto :goto_51

    .line 2499
    :cond_46
    const/16 v0, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2501
    invoke-virtual {v1, v8}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2504
    :cond_51
    :goto_51
    const/16 v0, 0x11

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v10, 0x9

    if-eqz v0, :cond_5e

    .line 2505
    invoke-virtual {v1, v10}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2508
    :cond_5e
    const/16 v0, 0x10

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 2509
    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2512
    :cond_6b
    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 2513
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/16 v11, 0x400

    and-int/2addr v10, v11

    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2516
    :cond_7c
    const/16 v10, 0x17

    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_90

    .line 2518
    nop

    .line 2519
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v11, 0x4000000

    and-int/2addr v10, v11

    .line 2518
    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2522
    :cond_90
    const/16 v10, 0x18

    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 2524
    nop

    .line 2525
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v11, 0x8000000

    and-int/2addr v10, v11

    .line 2524
    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2528
    :cond_a4
    const/16 v10, 0xe

    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/high16 v11, 0x100000

    if-eqz v10, :cond_b7

    .line 2529
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    and-int/2addr v10, v11

    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2532
    :cond_b7
    nop

    .line 2533
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0xb

    if-lt v10, v12, :cond_c8

    move v10, v9

    goto :goto_c9

    :cond_c8
    move v10, v5

    .line 2532
    :goto_c9
    const/16 v13, 0x12

    invoke-virtual {v3, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_dc

    .line 2535
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v13, 0x800000

    and-int/2addr v10, v13

    invoke-virtual {v1, v13, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2538
    :cond_dc
    const/16 v10, 0x13

    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2539
    const/16 v10, 0x14

    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2542
    const/16 v10, 0x42

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_102

    .line 2543
    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v13, :cond_fd

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    iput-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2544
    :cond_fd
    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2547
    :cond_102
    const/16 v10, 0x43

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_11a

    .line 2548
    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v13, :cond_115

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    iput-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2549
    :cond_115
    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2552
    :cond_11a
    const/16 v10, 0x40

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_132

    .line 2553
    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v13, :cond_12d

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    iput-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2554
    :cond_12d
    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2557
    :cond_132
    const/16 v13, 0x41

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_14c

    .line 2558
    iget-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v13, :cond_145

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    iput-object v13, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2559
    :cond_145
    const/16 v13, 0x41

    iget-object v14, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2562
    :cond_14c
    const/16 v13, 0x19

    invoke-virtual {v3, v13, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_159

    .line 2563
    const/16 v13, 0xc

    invoke-virtual {v1, v13}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2565
    :cond_159
    const/16 v13, 0x2c

    invoke-virtual {v3, v13, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_166

    .line 2566
    const/16 v13, 0xd

    invoke-virtual {v1, v13}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2569
    :cond_166
    const/4 v13, 0x5

    invoke-virtual {v3, v13, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 2572
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2573
    .local v14, "targetSdk":I
    const/16 v15, 0x15

    if-ge v14, v15, :cond_17d

    move v15, v9

    goto :goto_17e

    :cond_17d
    move v15, v5

    .line 2574
    .local v15, "targetPreL":Z
    :goto_17e
    const/16 v0, 0x1d

    if-ge v14, v0, :cond_184

    move v0, v9

    goto :goto_185

    :cond_184
    move v0, v5

    :goto_185
    move/from16 v17, v0

    .line 2576
    .local v17, "targetPreQ":Z
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    if-nez v0, :cond_195

    .line 2577
    const/16 v0, 0x22

    const/high16 v8, -0x1000000

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 2579
    :cond_195
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v0, :cond_1ca

    .line 2580
    const v0, 0x10602c1

    invoke-virtual {v13, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 2581
    .local v0, "navBarCompatibleColor":I
    const v8, 0x10602c2

    invoke-virtual {v13, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 2582
    .local v8, "navBarDefaultColor":I
    const/16 v4, 0x23

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 2585
    .local v4, "navBarColor":I
    nop

    .line 2587
    if-ne v4, v8, :cond_1bf

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v6, 0x11101c0

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1bf

    .line 2589
    move v6, v0

    goto :goto_1c0

    .line 2590
    :cond_1bf
    move v6, v4

    :goto_1c0
    iput v6, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2592
    const/16 v6, 0x31

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 2595
    .end local v0    # "navBarCompatibleColor":I
    .end local v4    # "navBarColor":I
    .end local v8    # "navBarDefaultColor":I
    :cond_1ca
    if-nez v17, :cond_1dc

    .line 2596
    const/16 v0, 0x33

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2598
    const/16 v0, 0x34

    invoke-virtual {v3, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2602
    :cond_1dc
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2606
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x23

    iget v6, v1, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 2608
    .local v0, "appColor":I
    iget v6, v1, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    if-eq v6, v0, :cond_1f8

    .line 2610
    const v6, 0x10602c2

    invoke-virtual {v13, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    if-ne v6, v0, :cond_1f6

    goto :goto_1f8

    :cond_1f6
    move v6, v5

    goto :goto_1f9

    :cond_1f8
    :goto_1f8
    move v6, v9

    .line 2611
    .local v6, "appUseDeviceDefault":Z
    :goto_1f9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getDefaultNavigationBarColor()I

    move-result v8

    iput v8, v1, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 2613
    iget-boolean v12, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v12, :cond_20a

    .line 2614
    if-eqz v6, :cond_207

    move v12, v8

    goto :goto_208

    :cond_207
    move v12, v0

    :goto_208
    iput v12, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2617
    :cond_20a
    iget v12, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    if-ne v12, v8, :cond_219

    .line 2619
    invoke-direct {v1, v12}, Lcom/android/internal/policy/PhoneWindow;->needLightNavigationBar(I)Z

    move-result v8

    if-eqz v8, :cond_219

    .line 2620
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v8, v11

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2627
    .end local v0    # "appColor":I
    .end local v6    # "appUseDeviceDefault":Z
    :cond_219
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_258

    .line 2628
    if-nez v15, :cond_233

    const/16 v0, 0x21

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_233

    .line 2631
    nop

    .line 2632
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v0

    not-int v0, v0

    const/high16 v6, -0x80000000

    and-int/2addr v0, v6

    .line 2631
    invoke-virtual {v1, v6, v0}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2634
    :cond_233
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v0, :cond_241

    .line 2635
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v6, 0x8000

    or-int/2addr v0, v6

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2638
    :cond_241
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v0, :cond_253

    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_253

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2639
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_253

    goto :goto_258

    .line 2644
    :cond_253
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v10

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2647
    :cond_258
    :goto_258
    const/16 v0, 0x3e

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_265

    .line 2650
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v10

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2652
    :cond_265
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v6

    .line 2653
    .local v6, "sysUiVis":I
    const/16 v8, 0x2000

    .line 2654
    .local v8, "statusLightFlag":I
    const/16 v0, 0x2d

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_276

    .line 2655
    const/16 v0, 0x2000

    goto :goto_277

    :cond_276
    move v0, v5

    :goto_277
    move v10, v0

    .line 2656
    .local v10, "statusFlag":I
    const/16 v11, 0x10

    .line 2657
    .local v11, "navLightFlag":I
    const/16 v0, 0x30

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_285

    .line 2658
    const/16 v0, 0x10

    goto :goto_286

    :cond_285
    move v0, v5

    :goto_286
    move v12, v0

    .line 2659
    .local v12, "navFlag":I
    and-int/lit16 v0, v6, -0x2011

    or-int v16, v10, v12

    or-int v0, v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2669
    :try_start_290
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f4

    .line 2671
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2672
    .local v0, "isDeviceDefault":Landroid/util/TypedValue;
    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_2ab} :catch_338

    move/from16 v18, v6

    .end local v6    # "sysUiVis":I
    .local v18, "sysUiVis":I
    const v6, 0x11200d7

    :try_start_2b0
    invoke-virtual {v9, v6, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2678
    iget v6, v0, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2f6

    .line 2679
    const/16 v6, 0x2d

    const/4 v9, 0x1

    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_2f6

    .line 2680
    iget v6, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    if-eqz v6, :cond_2f6

    .line 2681
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110271

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2dc

    .line 2683
    nop

    .line 2684
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v6

    or-int/lit16 v6, v6, 0x2000

    .line 2683
    invoke-virtual {v2, v6}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    goto :goto_2e6

    .line 2687
    :cond_2dc
    nop

    .line 2688
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v6

    and-int/lit16 v6, v6, -0x2001

    .line 2687
    invoke-virtual {v2, v6}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2691
    :goto_2e6
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x10604b1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    goto :goto_2f6

    .line 2669
    .end local v0    # "isDeviceDefault":Landroid/util/TypedValue;
    .end local v18    # "sysUiVis":I
    .restart local v6    # "sysUiVis":I
    :cond_2f4
    move/from16 v18, v6

    .line 2698
    .end local v6    # "sysUiVis":I
    .restart local v18    # "sysUiVis":I
    :cond_2f6
    :goto_2f6
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_30e

    .line 2699
    invoke-static {v13}, Landroid/content/om/WallpaperThemeUtils;->hasWallpaperThemeOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_335

    .line 2700
    :cond_30e
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    .line 2701
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getDefaultNavigationBarColor()I

    move-result v0

    .line 2702
    .local v0, "themeColor":I
    iget v6, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget v9, v1, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    if-ne v6, v9, :cond_321

    iget-boolean v6, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v6, :cond_321

    .line 2704
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2706
    :cond_321
    iget v6, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    if-ne v6, v0, :cond_333

    .line 2708
    invoke-direct {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->needLightNavigationBar(I)Z

    move-result v6

    if-nez v6, :cond_333

    .line 2709
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v9, -0x100001

    and-int/2addr v6, v9

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2711
    :cond_333
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I
    :try_end_335
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_335} :catch_336

    .line 2717
    .end local v0    # "themeColor":I
    :cond_335
    goto :goto_33e

    .line 2715
    :catch_336
    move-exception v0

    goto :goto_33b

    .end local v18    # "sysUiVis":I
    .restart local v6    # "sysUiVis":I
    :catch_338
    move-exception v0

    move/from16 v18, v6

    .line 2716
    .end local v6    # "sysUiVis":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "sysUiVis":I
    :goto_33b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2721
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33e
    const/16 v0, 0x32

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_372

    .line 2722
    const/4 v6, -0x1

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 2723
    .local v6, "mode":I
    if-ltz v6, :cond_353

    const/4 v9, 0x3

    if-gt v6, v9, :cond_353

    .line 2728
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_372

    .line 2725
    :cond_353
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown windowLayoutInDisplayCutoutMode: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2726
    const/16 v9, 0x32

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2731
    .end local v6    # "mode":I
    :cond_372
    :goto_372
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    if-nez v0, :cond_384

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v0, v6, :cond_390

    .line 2733
    :cond_384
    const/16 v0, 0x15

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_390

    .line 2736
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 2740
    :cond_390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v0

    if-nez v0, :cond_3a0

    .line 2741
    const/16 v0, 0xd

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2746
    :cond_3a0
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/16 v6, 0xb

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_3c5

    .line 2749
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v0

    and-int/2addr v0, v6

    if-nez v0, :cond_3b7

    .line 2750
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v6

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2752
    :cond_3b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v0

    if-nez v0, :cond_3c5

    .line 2753
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2758
    :cond_3c5
    const/16 v0, 0x36

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3e3

    .line 2759
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v0

    const/4 v9, 0x4

    and-int/2addr v0, v9

    if-nez v0, :cond_3da

    .line 2760
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v9

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2763
    :cond_3da
    const/16 v0, 0x35

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    .line 2767
    :cond_3e3
    const/16 v0, 0x37

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundBlurRadius(I)V

    .line 2771
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v0, :cond_3f8

    .line 2772
    const/16 v9, 0x8

    invoke-virtual {v3, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2778
    :cond_3f8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_469

    .line 2779
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_422

    .line 2781
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-nez v0, :cond_40c

    .line 2782
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 2785
    :cond_40c
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_422

    .line 2786
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2789
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2790
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 2789
    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DecorView;->setLastBackgroundResource(I)V

    .line 2795
    :cond_422
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_433

    .line 2796
    nop

    .line 2797
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2799
    :cond_433
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    if-eqz v0, :cond_45a

    .line 2801
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDialogInPopOver()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_443

    .line 2802
    iput v6, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    goto :goto_45a

    .line 2803
    :cond_443
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_SHADOW_WITH_VIEW_ELEVATION:Z

    if-eqz v0, :cond_452

    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2804
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isNonFullscreenWindowInFreeform()Z

    move-result v0

    if-eqz v0, :cond_452

    .line 2805
    iput v6, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    goto :goto_45a

    .line 2808
    :cond_452
    const/16 v0, 0x25

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 2811
    :cond_45a
    :goto_45a
    const/16 v0, 0x26

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 2812
    const/4 v0, 0x7

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 2818
    :cond_469
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 2820
    .local v0, "features":I
    and-int/lit8 v6, v0, 0x18

    if-eqz v6, :cond_496

    .line 2821
    iget-boolean v6, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v6, :cond_48c

    .line 2822
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 2823
    .local v6, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v5, 0x112003b

    const/4 v2, 0x1

    invoke-virtual {v9, v5, v6, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2825
    iget v2, v6, Landroid/util/TypedValue;->resourceId:I

    .line 2826
    .end local v6    # "res":Landroid/util/TypedValue;
    .local v2, "layoutResource":I
    goto :goto_48f

    .line 2827
    .end local v2    # "layoutResource":I
    :cond_48c
    const v2, 0x1090127

    .line 2830
    .restart local v2    # "layoutResource":I
    :goto_48f
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_506

    .line 2832
    .end local v2    # "layoutResource":I
    :cond_496
    and-int/lit8 v2, v0, 0x24

    if-eqz v2, :cond_4a2

    and-int/lit16 v2, v0, 0x100

    if-nez v2, :cond_4a2

    .line 2836
    const v2, 0x1090123

    .restart local v2    # "layoutResource":I
    goto :goto_506

    .line 2838
    .end local v2    # "layoutResource":I
    :cond_4a2
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4ca

    .line 2841
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v2, :cond_4c1

    .line 2842
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2843
    .local v2, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1120038

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2845
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2846
    .local v2, "layoutResource":I
    goto :goto_4c4

    .line 2847
    .end local v2    # "layoutResource":I
    :cond_4c1
    const v2, 0x1090122

    .line 2850
    .restart local v2    # "layoutResource":I
    :goto_4c4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto :goto_506

    .line 2851
    .end local v2    # "layoutResource":I
    :cond_4ca
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_4fb

    .line 2854
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v2, :cond_4e9

    .line 2855
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2856
    .local v2, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x112003a

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2858
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2859
    .local v2, "layoutResource":I
    goto :goto_506

    .end local v2    # "layoutResource":I
    :cond_4e9
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4f7

    .line 2860
    const/16 v2, 0x3f

    const v5, 0x1090121

    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .restart local v2    # "layoutResource":I
    goto :goto_506

    .line 2864
    .end local v2    # "layoutResource":I
    :cond_4f7
    const v2, 0x1090126

    .restart local v2    # "layoutResource":I
    goto :goto_506

    .line 2867
    .end local v2    # "layoutResource":I
    :cond_4fb
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_503

    .line 2868
    const v2, 0x1090125

    .restart local v2    # "layoutResource":I
    goto :goto_506

    .line 2871
    .end local v2    # "layoutResource":I
    :cond_503
    const v2, 0x1090124

    .line 2875
    .restart local v2    # "layoutResource":I
    :goto_506
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 2876
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    .line 2878
    const v5, 0x1020002

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2879
    .local v5, "contentParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_57b

    .line 2883
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_52c

    .line 2884
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v6

    .line 2885
    .local v6, "progress":Landroid/widget/ProgressBar;
    if-eqz v6, :cond_52c

    .line 2886
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2892
    .end local v6    # "progress":Landroid/widget/ProgressBar;
    :cond_52c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v6

    if-nez v6, :cond_573

    .line 2893
    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2896
    iget v6, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-eqz v6, :cond_548

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v9, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_549

    .line 2899
    .end local v6    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_548
    const/4 v6, 0x0

    .line 2901
    .restart local v6    # "frame":Landroid/graphics/drawable/Drawable;
    :goto_549
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9, v6}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 2903
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move/from16 v16, v0

    .end local v0    # "features":I
    .local v16, "features":I
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    invoke-virtual {v9, v0}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 2904
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v9, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 2906
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_565

    .line 2907
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2910
    :cond_565
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    if-nez v0, :cond_56d

    .line 2911
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 2913
    :cond_56d
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    goto :goto_575

    .line 2892
    .end local v6    # "frame":Landroid/graphics/drawable/Drawable;
    .end local v16    # "features":I
    .restart local v0    # "features":I
    :cond_573
    move/from16 v16, v0

    .line 2916
    .end local v0    # "features":I
    .restart local v16    # "features":I
    :goto_575
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 2918
    return-object v5

    .line 2880
    .end local v16    # "features":I
    .restart local v0    # "features":I
    :cond_57b
    move/from16 v16, v0

    .end local v0    # "features":I
    .restart local v16    # "features":I
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v6, "Window couldn\'t find content container view"

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 3510
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 3520
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 2078
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 2079
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 2081
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method getDecorCaptionShade()I
    .registers 2

    .line 4142
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    return v0
.end method

.method public final getDecorView()Landroid/view/View;
    .registers 2

    .line 2216
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    if-eqz v0, :cond_b

    .line 2217
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2219
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public getDeviceDefaultNavigationBarColor()I
    .registers 2

    .line 4249
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    return v0
.end method

.method public getElevation()F
    .registers 2

    .line 1579
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 3461
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 3472
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 4155
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method getLocalFeaturesPrivate()I
    .registers 2

    .line 3994
    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 3416
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 4229
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getNavigationBarColor()I
    .registers 2

    .line 4053
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public getNavigationBarDividerColor()I
    .registers 2

    .line 4084
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    return v0
.end method

.method public getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 2

    .line 4240
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    return-object v0
.end method

.method getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 3122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .registers 3

    .line 3477
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_c

    .line 3478
    :cond_b
    nop

    .line 3477
    :goto_c
    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 3466
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_c

    .line 3467
    :cond_b
    nop

    .line 3466
    :goto_c
    return-object v0
.end method

.method public getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 4234
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 3483
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 3494
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .registers 3

    .line 3499
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    .line 3500
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_c

    :cond_b
    nop

    .line 3499
    :goto_c
    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 3488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    .line 3489
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_c

    :cond_b
    nop

    .line 3488
    :goto_c
    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .registers 2

    .line 3544
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0
.end method

.method public getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 4223
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getStatusBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getStatusBarColor()I
    .registers 2

    .line 4035
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public getSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 4166
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getRootSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .registers 5

    .line 3525
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    const-wide/16 v0, 0x12c

    goto :goto_c

    .line 3526
    :cond_b
    nop

    .line 3525
    :goto_c
    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .registers 2

    .line 3397
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 6
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1530
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1531
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1532
    return v1

    .line 1535
    :cond_a
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 1536
    return v2

    .line 1539
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v0, :cond_1c

    .line 1540
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback-IA;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1543
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1544
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_37

    .line 1545
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    :goto_37
    nop

    .line 1547
    .local v0, "menuView":Lcom/android/internal/view/menu/MenuView;
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1549
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_4a

    .line 1551
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v2

    .line 1552
    .local v2, "defaultAnimations":I
    if-eqz v2, :cond_49

    .line 1553
    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 1555
    :cond_49
    return v1

    .line 1557
    .end local v2    # "defaultAnimations":I
    :cond_4a
    return v2
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 7
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1476
    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 1477
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1478
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1479
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1481
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1482
    .local v1, "elevation":F
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_31

    .line 1483
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1485
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1487
    const/4 v2, 0x1

    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 9
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1426
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1429
    .local v0, "context":Landroid/content/Context;
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_67

    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_67

    .line 1431
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1432
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1433
    .local v3, "baseTheme":Landroid/content/res/Resources$Theme;
    const v4, 0x1010431

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1435
    const/4 v4, 0x0

    .line 1436
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    const v6, 0x1010397

    if-eqz v5, :cond_3e

    .line 1437
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1438
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1439
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1440
    invoke-virtual {v4, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_41

    .line 1443
    :cond_3e
    invoke-virtual {v3, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1447
    :goto_41
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_57

    .line 1448
    if-nez v4, :cond_52

    .line 1449
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1450
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1452
    :cond_52
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1455
    :cond_57
    if-eqz v4, :cond_67

    .line 1456
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v5

    .line 1457
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1461
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_67
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1462
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1463
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1465
    return v2
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1927
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1928
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .registers 5
    .param p1, "featureId"    # I

    .line 1102
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 1104
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_17

    .line 1105
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1106
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 1108
    :cond_17
    return-void
.end method

.method public isFloating()Z
    .registers 2

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isNavigationBarContrastEnforced()Z
    .registers 2

    .line 4110
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3177
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method isShowingWallpaper()Z
    .registers 3

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isStatusBarContrastEnforced()Z
    .registers 2

    .line 4097
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public isTranslucent()Z
    .registers 2

    .line 632
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    return v0
.end method

.method protected onActive()V
    .registers 1

    .line 2212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v0, :cond_46

    .line 808
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 809
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_46

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_46

    .line 810
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_43

    .line 812
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 813
    .local v2, "state":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v3, :cond_21

    .line 814
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 816
    :cond_21
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v3, :cond_2a

    .line 817
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 822
    :cond_2a
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 825
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 828
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_39

    .line 829
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 831
    :cond_39
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_42

    .line 832
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 835
    .end local v2    # "state":Landroid/os/Bundle;
    :cond_42
    goto :goto_46

    .line 838
    :cond_43
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 842
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_46
    :goto_46
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 2395
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-eqz v0, :cond_10

    .line 2396
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 2397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 2399
    :cond_10
    return-void
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .line 1708
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 1709
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .local v0, "view":Landroid/widget/ImageView;
    goto :goto_f

    .line 1710
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    .line 1711
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1716
    .restart local v0    # "view":Landroid/widget/ImageView;
    :goto_f
    if-eqz p2, :cond_1c

    .line 1717
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1718
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1719
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_21

    .line 1721
    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1723
    :goto_21
    return-void

    .line 1713
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_22
    return-void
.end method

.method protected onIntChanged(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1733
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    goto :goto_1b

    .line 1735
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1e

    .line 1736
    const v0, 0x1020645

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1737
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1e

    .line 1738
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1e

    .line 1734
    .end local v0    # "titleContainer":Landroid/widget/FrameLayout;
    :cond_1b
    :goto_1b
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1741
    :cond_1e
    :goto_1e
    return-void
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2003
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2007
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_62

    goto :goto_60

    .line 2045
    :sswitch_10
    if-gez p1, :cond_13

    goto :goto_14

    :cond_13
    move v1, p1

    :goto_14
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 2046
    return v2

    .line 2035
    :sswitch_18
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2d

    .line 2036
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2037
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 2036
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2038
    return v2

    .line 2041
    :cond_2d
    return v1

    .line 2013
    :sswitch_2e
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_46

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isActivePhoneCallOngoing()Z

    move-result v1

    if-nez v1, :cond_46

    .line 2014
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2015
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2014
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_4f

    .line 2017
    :cond_46
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2020
    :goto_4f
    return v2

    .line 2050
    :sswitch_50
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_57

    goto :goto_60

    .line 2051
    :cond_57
    if-gez p1, :cond_5a

    goto :goto_60

    .line 2053
    :cond_5a
    if-eqz v0, :cond_5f

    .line 2054
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2056
    :cond_5f
    return v2

    .line 2061
    :goto_60
    return v1

    nop

    :sswitch_data_62
    .sparse-switch
        0x4 -> :sswitch_50
        0x18 -> :sswitch_2e
        0x19 -> :sswitch_2e
        0x4f -> :sswitch_18
        0x52 -> :sswitch_10
        0x55 -> :sswitch_18
        0x56 -> :sswitch_18
        0x57 -> :sswitch_18
        0x58 -> :sswitch_18
        0x59 -> :sswitch_18
        0x5a -> :sswitch_18
        0x5b -> :sswitch_18
        0x7e -> :sswitch_18
        0x7f -> :sswitch_18
        0x82 -> :sswitch_18
        0xa4 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1154
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1156
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 1158
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1160
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1161
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1c

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1c

    .line 1162
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1166
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1c
    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2100
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2101
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_a
    if-eqz v0, :cond_f

    .line 2102
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2107
    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_be

    goto/16 :goto_bc

    .line 2195
    :sswitch_16
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_27

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 2196
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    .line 2198
    :cond_27
    return v2

    .line 2126
    :sswitch_28
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2128
    return v2

    .line 2181
    :sswitch_32
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNotInstantAppAndKeyguardRestricted()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2182
    goto/16 :goto_bc

    .line 2184
    :cond_3a
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4f

    .line 2186
    goto/16 :goto_bc

    .line 2188
    :cond_4f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 2189
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    .line 2191
    :cond_5e
    return v2

    .line 2153
    :sswitch_5f
    if-gez p1, :cond_62

    goto :goto_63

    :cond_62
    move v1, p1

    :goto_63
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    .line 2155
    return v2

    .line 2143
    :sswitch_67
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_7c

    .line 2144
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2145
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 2144
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 2146
    return v2

    .line 2149
    :cond_7c
    return v1

    .line 2112
    :sswitch_7d
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_8f

    .line 2113
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2114
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2113
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_98

    .line 2116
    :cond_8f
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2119
    :goto_98
    return v2

    .line 2159
    :sswitch_99
    if-gez p1, :cond_9c

    goto :goto_bc

    .line 2160
    :cond_9c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_bc

    .line 2161
    if-nez p1, :cond_b8

    .line 2162
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 2163
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_b8

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_b8

    .line 2166
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 2167
    return v2

    .line 2170
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_b8
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2171
    return v2

    .line 2202
    :cond_bc
    :goto_bc
    return v1

    nop

    :sswitch_data_be
    .sparse-switch
        0x4 -> :sswitch_99
        0x18 -> :sswitch_7d
        0x19 -> :sswitch_7d
        0x4f -> :sswitch_67
        0x52 -> :sswitch_5f
        0x54 -> :sswitch_32
        0x55 -> :sswitch_67
        0x56 -> :sswitch_67
        0x57 -> :sswitch_67
        0x58 -> :sswitch_67
        0x59 -> :sswitch_67
        0x5a -> :sswitch_67
        0x5b -> :sswitch_67
        0x7e -> :sswitch_67
        0x7f -> :sswitch_67
        0x82 -> :sswitch_67
        0xa4 -> :sswitch_28
        0xab -> :sswitch_16
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1176
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_a2

    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1179
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1181
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_a1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_19

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_a1

    :cond_19
    if-nez v1, :cond_1d

    goto/16 :goto_a1

    .line 1186
    :cond_1d
    const/4 v2, 0x0

    .line 1187
    .local v2, "playSoundEffect":Z
    if-nez p1, :cond_5a

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5a

    .line 1188
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1189
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1190
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_53

    .line 1191
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_85

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1192
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    goto :goto_85

    .line 1195
    :cond_53
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_85

    .line 1198
    :cond_5a
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_7f

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v3, :cond_63

    goto :goto_7f

    .line 1207
    :cond_63
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_85

    .line 1208
    const/4 v3, 0x1

    .line 1209
    .local v3, "show":Z
    iget-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_72

    .line 1212
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1213
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 1216
    :cond_72
    if-eqz v3, :cond_85

    .line 1218
    const v4, 0xc351

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1221
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1223
    const/4 v2, 0x1

    goto :goto_85

    .line 1202
    .end local v3    # "show":Z
    :cond_7f
    :goto_7f
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1205
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1228
    :cond_85
    :goto_85
    if-eqz v2, :cond_a2

    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1231
    .local v3, "audioManager":Landroid/media/AudioManager;
    if-eqz v3, :cond_99

    .line 1232
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_a2

    .line 1234
    :cond_99
    const-string v0, "PhoneWindow"

    const-string v4, "Couldn\'t get audio manager"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    .line 1183
    .end local v2    # "playSoundEffect":Z
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_a1
    :goto_a1
    return-void

    .line 1238
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_a2
    :goto_a2
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1350
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1351
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1352
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1353
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1d

    .line 1354
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 1357
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 1361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1362
    return-void
.end method

.method public onMultiWindowModeChanged()V
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_13

    .line 847
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 849
    :cond_13
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .registers 5

    .line 1507
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1508
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_8

    return-void

    .line 1510
    :cond_8
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_15

    .line 1511
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1512
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_16
    if-eqz v1, :cond_29

    .line 1513
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1514
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1515
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_29

    .line 1516
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_29
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z

    .line 853
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_7

    .line 854
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updatePictureInPictureOutlineProvider(Z)V

    .line 856
    :cond_7
    return-void
.end method

.method onViewRootImplSet(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 2229
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 2230
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->updateContext(Landroid/content/Context;)V

    .line 2231
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ProxyOnBackInvokedDispatcher;->setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2232
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 2233
    return-void
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 873
    if-nez p1, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_20

    .line 874
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 875
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_20

    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_28

    .line 878
    :cond_20
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 880
    :goto_28
    return-void
.end method

.method openPanelsAfterRestore()V
    .registers 5

    .line 2371
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2373
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_5

    .line 2374
    return-void

    .line 2378
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_24

    .line 2379
    aget-object v2, v0, v1

    .line 2383
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_21

    .line 2384
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2385
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_21

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_21

    .line 2386
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2387
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2378
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2391
    .end local v1    # "i":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_24
    return-void
.end method

.method public final peekDecorView()Landroid/view/View;
    .registers 2

    .line 2224
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 1563
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 1319
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1320
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1321
    return v4

    .line 1323
    :cond_14
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_19

    .line 1324
    return v4

    .line 1327
    :cond_19
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v2

    .line 1330
    .local v2, "res":Z
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v3, :cond_26

    .line 1331
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1334
    :cond_26
    return v2
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1290
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_2f

    if-nez p1, :cond_9

    goto :goto_2f

    .line 1294
    :cond_9
    const/4 v0, 0x0

    .line 1298
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_14

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_14
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1e

    .line 1300
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1303
    :cond_1e
    if-eqz v0, :cond_2e

    .line 1305
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1308
    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_2e

    .line 1309
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1313
    :cond_2e
    return v0

    .line 1291
    .end local v0    # "handled":Z
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 700
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 701
    return v1

    .line 705
    :cond_8
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 706
    return v2

    .line 709
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v0, :cond_17

    if-eq v0, p1, :cond_17

    .line 711
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 714
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 716
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_25

    .line 717
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 720
    :cond_25
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_32

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_30

    goto :goto_32

    :cond_30
    move v3, v1

    goto :goto_33

    :cond_32
    :goto_32
    move v3, v2

    .line 723
    .local v3, "isActionBarMenu":Z
    :goto_33
    if-eqz v3, :cond_3c

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_3c

    .line 726
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 729
    :cond_3c
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_e8

    .line 731
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_49

    iget-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_86

    .line 732
    :cond_49
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_58

    .line 733
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_57

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_58

    .line 734
    :cond_57
    return v1

    .line 738
    :cond_58
    if-eqz v3, :cond_72

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_72

    .line 739
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v4, :cond_69

    .line 740
    new-instance v4, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback-IA;)V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 742
    :cond_69
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 749
    :cond_72
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 750
    if-eqz v0, :cond_d9

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_84

    goto :goto_d9

    .line 762
    :cond_84
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 769
    :cond_86
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 773
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_98

    .line 774
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 775
    iput-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 778
    :cond_98
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_b5

    .line 779
    if-eqz v3, :cond_af

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_af

    .line 782
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 784
    :cond_af
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 785
    return v1

    .line 790
    :cond_b5
    if-eqz p2, :cond_bc

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    goto :goto_bd

    :cond_bc
    const/4 v4, -0x1

    .line 789
    :goto_bd
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 791
    .local v4, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v2, :cond_c9

    move v5, v2

    goto :goto_ca

    :cond_c9
    move v5, v1

    :goto_ca
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 792
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 793
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_e8

    .line 752
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_d9
    :goto_d9
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 754
    if-eqz v3, :cond_e7

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_e7

    .line 756
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 759
    :cond_e7
    return v1

    .line 797
    :cond_e8
    :goto_e8
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 798
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 799
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 801
    return v2
.end method

.method public registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4207
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4208
    return-void
.end method

.method public requestFeature(I)Z
    .registers 7
    .param p1, "featureId"    # I

    .line 470
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    if-nez v0, :cond_51

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 474
    .local v0, "features":I
    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v2, v0

    .line 475
    .local v2, "newFeatures":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1d

    and-int/lit16 v3, v2, -0x34c2

    if-nez v3, :cond_15

    goto :goto_1d

    .line 479
    :cond_15
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_1d
    :goto_1d
    and-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    if-eqz v3, :cond_27

    if-ne p1, v4, :cond_27

    .line 483
    const/4 v1, 0x0

    return v1

    .line 485
    :cond_27
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_30

    if-ne p1, v1, :cond_30

    .line 487
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 490
    :cond_30
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4c

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_4c

    .line 492
    :cond_44
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_4c
    :goto_4c
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    return v1

    .line 471
    .end local v0    # "features":I
    .end local v2    # "newFeatures":I
    :cond_51
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "requestFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 4197
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 4198
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2277
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 2278
    return-void

    .line 2281
    :cond_5
    nop

    .line 2282
    const-string v0, "android:views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2283
    .local v0, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_13

    .line 2284
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2288
    :cond_13
    const-string v1, "android:focusedViewId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2289
    .local v1, "focusedViewId":I
    const-string v3, "PhoneWindow"

    if-eq v1, v2, :cond_46

    .line 2290
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2291
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_2a

    .line 2292
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_46

    .line 2294
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previously focused view reported id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " during save, but can\'t be found during restore."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_46
    :goto_46
    const-string v2, "android:Panels"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 2302
    .local v2, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v2, :cond_51

    .line 2303
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2306
    :cond_51
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6c

    .line 2307
    nop

    .line 2308
    const-string v4, "android:ActionBar"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2309
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_67

    .line 2310
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2311
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_6c

    .line 2313
    :cond_67
    const-string v5, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6c
    :goto_6c
    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .registers 7

    .line 2243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2244
    .local v0, "outState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_a

    .line 2245
    return-object v0

    .line 2248
    :cond_a
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2249
    .local v1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2250
    const-string v2, "android:views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2253
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2254
    .local v2, "focusedView":Landroid/view/View;
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 2255
    const-string v3, "android:focusedViewId"

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2259
    :cond_31
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2260
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2261
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_44

    .line 2262
    const-string v4, "android:Panels"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2265
    :cond_44
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_57

    .line 2266
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2267
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2268
    const-string v5, "android:ActionBar"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2271
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_57
    return-object v0
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .line 4002
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4003
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 4006
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4007
    return-void
.end method

.method public setActivityCurrentConfig(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4380
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4381
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    goto :goto_d

    .line 4382
    :cond_c
    move v0, v1

    :goto_d
    nop

    .line 4383
    .local v0, "oldWindowingMode":I
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    .line 4384
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_3b

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4385
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_3b

    .line 4386
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4387
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2f

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4388
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 4390
    .local v1, "split":Z
    :goto_30
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/policy/DecorView;->onWindowingModeChanged(IZ)V

    .line 4393
    .end local v0    # "oldWindowingMode":I
    .end local v1    # "split":Z
    :cond_3b
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .line 3505
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3506
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 3
    .param p1, "allowExitTransitionOverlap"    # Z

    .line 3515
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3516
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4147
    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4148
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_a

    .line 4149
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 4151
    :cond_a
    return-void
.end method

.method public final setBackgroundBlurRadius(I)V
    .registers 5
    .param p1, "blurRadius"    # I

    .line 1608
    invoke-super {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 1609
    sget-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_1b

    .line 1610
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v0, v2, :cond_1b

    .line 1611
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 1612
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundBlurRadius(I)V

    .line 1615
    :cond_1b
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1592
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_25

    .line 1593
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1594
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_25

    .line 1595
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 1596
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 1598
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    goto :goto_1d

    .line 1599
    :cond_1c
    nop

    .line 1598
    :goto_1d
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 1601
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 1604
    :cond_25
    return-void
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 3164
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3165
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3166
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 3167
    return-void
.end method

.method public final setChildInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 3171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 3172
    return-void
.end method

.method public final setClipToOutline(Z)V
    .registers 3
    .param p1, "clipToOutline"    # Z

    .line 1584
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1585
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    .line 1586
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 1588
    :cond_9
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .registers 2
    .param p1, "container"    # Landroid/view/Window;

    .line 465
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 466
    return-void
.end method

.method public setContentView(I)V
    .registers 4
    .param p1, "layoutResID"    # I

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 528
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_15

    .line 529
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 533
    :cond_15
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 534
    invoke-static {v0, p1, v1}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v0

    .line 536
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 537
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_30

    .line 538
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 540
    :goto_30
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 542
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_44

    .line 543
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 545
    :cond_44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 546
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 550
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 559
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_15

    .line 560
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 564
    :cond_15
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 565
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    new-instance v0, Landroid/transition/Scene;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 567
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 568
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_2e

    .line 569
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    :goto_2e
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 573
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_42

    .line 574
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 576
    :cond_42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 577
    return-void
.end method

.method public setDecorCaptionShade(I)V
    .registers 3
    .param p1, "decorCaptionShade"    # I

    .line 4135
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 4136
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    .line 4137
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    .line 4139
    :cond_9
    return-void
.end method

.method public setDecorFitsSystemWindows(Z)V
    .registers 2
    .param p1, "decorFitsSystemWindows"    # Z

    .line 4171
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 4172
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 4173
    return-void
.end method

.method public setDefaultIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 1881
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 1882
    return-void

    .line 1884
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1885
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3e

    .line 1887
    :cond_19
    if-eqz p1, :cond_27

    .line 1888
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1889
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_3e

    .line 1891
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1892
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1891
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1893
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1896
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setDefaultLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1909
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1910
    return-void

    .line 1912
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1913
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1914
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1916
    :cond_18
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .registers 2
    .param p1, "format"    # I

    .line 3998
    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    .line 3999
    return-void
.end method

.method public final setElevation(F)V
    .registers 6
    .param p1, "elevation"    # F

    .line 1568
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1569
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1570
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_14

    .line 1571
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1572
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1574
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1575
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 3421
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3422
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 3431
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3432
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1668
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1669
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_f

    .line 1670
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1671
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1673
    :cond_f
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1649
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1650
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1651
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1652
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v2, p2, :cond_14

    .line 1653
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1654
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1656
    :cond_14
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1660
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1661
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_f

    .line 1662
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1663
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1665
    :cond_f
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1619
    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    .line 1620
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v1

    .line 1621
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v2, p2, :cond_1e

    .line 1622
    iput p2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1623
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1624
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1625
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1627
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1e
    goto :goto_22

    .line 1628
    :cond_1f
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1630
    :goto_22
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1634
    if-eqz p2, :cond_22

    .line 1635
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1636
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1637
    :cond_13
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1638
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1639
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1640
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1642
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_21
    goto :goto_26

    .line 1643
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1645
    :goto_26
    return-void
.end method

.method public final setFeatureInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1679
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1680
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1871
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1872
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1873
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1874
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_13

    .line 1875
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1877
    :cond_13
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .registers 2
    .param p1, "isStartingWindow"    # Z

    .line 4114
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 4115
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .registers 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 1920
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1921
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 1922
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 1923
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1900
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1901
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1902
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_f

    .line 1903
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1905
    :cond_f
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 3402
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 3403
    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-nez v0, :cond_2b

    .line 3404
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    .line 3405
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 3406
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    goto :goto_3b

    .line 3408
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-eqz v0, :cond_3b

    .line 3409
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 3410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 3412
    :cond_3b
    :goto_3b
    return-void
.end method

.method public setNavigationBarColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 4058
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 4060
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_11

    .line 4061
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4064
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->updateForceLightNavigationBar()V

    .line 4068
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4069
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1e

    .line 4070
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateNavigationBarColor(I)V

    .line 4072
    :cond_1e
    return-void
.end method

.method public setNavigationBarContrastEnforced(Z)V
    .registers 5
    .param p1, "enforceContrast"    # Z

    .line 4102
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 4103
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    .line 4104
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4106
    :cond_b
    return-void
.end method

.method public setNavigationBarDividerColor(I)V
    .registers 5
    .param p1, "navigationBarDividerColor"    # I

    .line 4076
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 4077
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    .line 4078
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4080
    :cond_b
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3436
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3437
    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 4130
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4131
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3426
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3427
    return-void
.end method

.method public setSettingsNavigationBarColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 4245
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    .line 4246
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .line 3441
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3442
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .line 3451
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3452
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3456
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3457
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3446
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3447
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .registers 3
    .param p1, "sharedElementsUseOverlay"    # Z

    .line 3539
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3540
    return-void
.end method

.method public setStatusBarColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 4040
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 4041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 4042
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_e

    .line 4043
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4045
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4046
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1b

    .line 4047
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateStatusBarColor(I)V

    .line 4049
    :cond_1b
    return-void
.end method

.method public setStatusBarContrastEnforced(Z)V
    .registers 5
    .param p1, "ensureContrast"    # Z

    .line 4089
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 4090
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    .line 4091
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4093
    :cond_b
    return-void
.end method

.method public setSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 4160
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setRootSystemGestureExclusionRects(Ljava/util/List;)V

    .line 4161
    return-void
.end method

.method public setTheme(I)V
    .registers 4
    .param p1, "resid"    # I

    .line 4119
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 4120
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_11

    .line 4121
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4122
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_11

    .line 4123
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 4126
    .end local v0    # "context":Landroid/content/Context;
    :cond_11
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 656
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "updateAccessibilityTitle"    # Z

    .line 659
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 660
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 661
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_f

    .line 662
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 664
    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 665
    if-eqz p2, :cond_39

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 667
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 669
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_32

    .line 671
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 672
    .local v1, "vr":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_32

    .line 673
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->onWindowTitleChanged()V

    .line 676
    .end local v1    # "vr":Landroid/view/ViewRootImpl;
    :cond_32
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 679
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_39
    return-void
.end method

.method public setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 685
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 687
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 688
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .registers 5
    .param p1, "fadeDurationMillis"    # J

    .line 3531
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 3534
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3535
    return-void

    .line 3532
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 2
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 514
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 515
    return-void
.end method

.method public setUiOptions(I)V
    .registers 2
    .param p1, "uiOptions"    # I

    .line 499
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 500
    return-void
.end method

.method public setUiOptions(II)V
    .registers 5
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .line 504
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 505
    return-void
.end method

.method public setVolumeControlStream(I)V
    .registers 2
    .param p1, "streamType"    # I

    .line 3392
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 3393
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1977
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1957
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1962
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1967
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1972
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .line 623
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 624
    return-void
.end method

.method public takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .line 1952
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    .line 1953
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .line 619
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 620
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1092
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1093
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_d

    .line 1094
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_10

    .line 1096
    :cond_d
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1098
    :goto_10
    return-void
.end method

.method public unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4217
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4218
    return-void
.end method

.method public updateDefaultNavigationBarColor()V
    .registers 6

    .line 4259
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getDefaultNavigationBarColor()I

    move-result v0

    .line 4260
    .local v0, "defaultColor":I
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    if-eq v1, v0, :cond_13

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    move v1, v3

    .line 4263
    .local v1, "needUpdate":Z
    :goto_14
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 4264
    if-eqz v1, :cond_22

    .line 4265
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4266
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_22

    .line 4267
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4271
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->updateForceLightNavigationBar()V

    .line 4273
    return-void
.end method

.method updateDeviceDefaultNavigationBarColor()V
    .registers 4

    .line 4253
    nop

    .line 4254
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10602c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    .line 4256
    return-void
.end method

.method protected final updateDrawable(IZ)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .line 1692
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1693
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_a

    .line 1694
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1696
    :cond_a
    return-void
.end method

.method updateForceLightNavigationBar()V
    .registers 3

    .line 4364
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDrawLegacyNavigationBarBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4365
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNightMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "enable":Z
    goto :goto_28

    .line 4366
    .end local v0    # "enable":Z
    :cond_11
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    if-ne v0, v1, :cond_1e

    .line 4367
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNightMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .restart local v0    # "enable":Z
    goto :goto_28

    .line 4368
    .end local v0    # "enable":Z
    :cond_1e
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    if-ne v0, v1, :cond_27

    .line 4369
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->needLightNavigationBar(I)Z

    move-result v0

    .restart local v0    # "enable":Z
    goto :goto_28

    .line 4371
    .end local v0    # "enable":Z
    :cond_27
    const/4 v0, 0x0

    .line 4373
    .restart local v0    # "enable":Z
    :goto_28
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->setForceLightNavigationBar(Z)V

    .line 4374
    return-void
.end method
