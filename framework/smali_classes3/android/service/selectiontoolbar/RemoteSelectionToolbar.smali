.class final Landroid/service/selectiontoolbar/RemoteSelectionToolbar;
.super Ljava/lang/Object;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;,
        Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;,
        Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    }
.end annotation


# static fields
.field private static final MAX_OVERFLOW_SIZE:I = 0x4

.field private static final MIN_OVERFLOW_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RemoteSelectionToolbar"


# instance fields
.field private final mArrow:Landroid/graphics/drawable/Drawable;

.field private final mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

.field private final mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private mHostInputToken:Landroid/os/IBinder;

.field private final mIconTextSpacing:I

.field private mIsOverflowOpen:Z

.field private final mLineHeight:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mMainPanel:Landroid/view/ViewGroup;

.field private mMainPanelSize:Landroid/util/Size;

.field private final mMarginHorizontal:I

.field private final mMarginVertical:I

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mOpenOverflowUpwards:Z

.field private final mOverflow:Landroid/graphics/drawable/Drawable;

.field private final mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mOverflowButton:Landroid/widget/ImageButton;

.field private final mOverflowButtonSize:Landroid/util/Size;

.field private final mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

.field private mOverflowPanelSize:Landroid/util/Size;

.field private final mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

.field private mPopupHeight:I

.field private mPopupWidth:I

.field private final mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private final mRelativeCoordsForToolbar:Landroid/graphics/Point;

.field private final mSelectionToolbarToken:J

.field private final mShowAnimation:Landroid/animation/AnimatorSet;

.field private mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final mTempContentRect:Landroid/graphics/Rect;

.field private final mTempContentRectForRoot:Landroid/graphics/Rect;

.field private final mTempCoords:[I

.field private final mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mTransferTouchListener:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;

.field private mTransitionDurationScale:I

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$3gLPv_QmHm8NrmSmzeHVmT5g3Hg(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RayKAD26cj6tQJFlZGrxlp0Eig4(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->lambda$createOverflowPanel$2(Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ta_X8908eAFLqvebezBZ1CEhfl4(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/widget/ImageButton;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->lambda$createOverflowButton$1(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenOverflowUpwards(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverflowButton(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverflowButtonSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverflowPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverflowPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverflowPanelViewHelper(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceControlViewHost(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/SurfaceControlViewHost;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceControlViewHost(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/SurfaceControlViewHost;)V
    .registers 2

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfacePackage(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic -$$Nest$misInRTLMode(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRTLMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOverflowAnimating(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isOverflowAnimating()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpositionContentYCoordinatesIfOpeningOverflowUpwards(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPanelsStatesAtRestingPosition(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFloatingToolbarRootContentRect(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateFloatingToolbarRootContentRect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsetHeight(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetWidth(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JLandroid/view/selectiontoolbar/ShowInfo;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectionToolbarToken"    # J
    .param p4, "showInfo"    # Landroid/view/selectiontoolbar/ShowInfo;
    .param p5, "callbackWrapper"    # Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;
    .param p6, "transferTouchListener"    # Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    .line 134
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$1;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$1;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissed:Z

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 160
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRect:Landroid/graphics/Rect;

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRectForRoot:Landroid/graphics/Rect;

    .line 162
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempCoords:[I

    .line 167
    invoke-virtual {p4}, Landroid/view/selectiontoolbar/ShowInfo;->isIsLightTheme()Z

    move-result v1

    invoke-static {p1, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->applyDefaultTheme(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 168
    iput-wide p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSelectionToolbarToken:J

    .line 169
    iput-object p5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    .line 170
    iput-object p6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransferTouchListener:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;

    .line 171
    invoke-virtual {p4}, Landroid/view/selectiontoolbar/ShowInfo;->getHostInputToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHostInputToken:Landroid/os/IBinder;

    .line 172
    invoke-static {v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 173
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    const v4, 0x1050165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    .line 175
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 176
    const v4, 0x1050172

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 178
    const v4, 0x1050164

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 180
    const v4, 0x1050166

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIconTextSpacing:I

    .line 183
    new-instance v4, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator-IA;)V

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 184
    const v4, 0x10c000d

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    const v4, 0x10c000e

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 188
    const v4, 0x10c000f

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 192
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 193
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1080329

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mArrow:Landroid/graphics/drawable/Drawable;

    .line 194
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 195
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 196
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1080327

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflow:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1080328

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 200
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 202
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x108032a

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 203
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 206
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 207
    invoke-static {v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 208
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    .line 209
    new-instance v4, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    invoke-direct {v4, v1, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    .line 210
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowPanel()Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    move-result-object v1

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 213
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 214
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 215
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 217
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$2;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$2;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    invoke-static {v2, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createEnterAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 225
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    const/16 v1, 0x96

    invoke-static {v2, v1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 238
    const/4 v0, 0x0

    invoke-static {v2, v0, v5}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 242
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda1;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 249
    return-void
.end method

.method private static applyDefaultTheme(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 4
    .param p0, "originalContext"    # Landroid/content/Context;
    .param p1, "isLightTheme"    # Z

    .line 1361
    if-eqz p1, :cond_6

    const v0, 0x103012b

    goto :goto_9

    :cond_6
    const v0, 0x1030128

    .line 1362
    .local v0, "themeId":I
    :goto_9
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method private calculateOverflowHeight(I)I
    .registers 6
    .param p1, "maxItemSize"    # I

    .line 978
    nop

    .line 981
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 982
    invoke-virtual {v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getCount()I

    move-result v1

    .line 980
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 978
    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 983
    .local v0, "actualSize":I
    const/4 v1, 0x0

    .line 984
    .local v1, "extension":I
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 987
    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 989
    :cond_25
    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 990
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 989
    return v2
.end method

.method private cancelDismissAndHideAnimations()V
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 473
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 474
    return-void
.end method

.method private cancelOverflowAnimations()V
    .registers 2

    .line 477
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 478
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 479
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 480
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 481
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 482
    return-void
.end method

.method private clearPanels()V
    .registers 3

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    .line 948
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 949
    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 950
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 951
    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 952
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/selectiontoolbar/ToolbarMenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 953
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 954
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 955
    return-void
.end method

.method private closeOverflow()V
    .registers 16

    .line 562
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 563
    .local v0, "targetWidth":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 564
    .local v7, "startWidth":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    .line 565
    .local v8, "left":F
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v8, v1

    .line 566
    .local v9, "right":F
    new-instance v10, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$7;

    move-object v1, v10

    move-object v2, p0

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$7;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIFF)V

    .line 587
    .local v1, "widthAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 588
    .local v2, "targetHeight":I
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 589
    .local v3, "startHeight":I
    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 590
    .local v4, "bottom":F
    new-instance v5, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$8;

    invoke-direct {v5, p0, v2, v3, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$8;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIF)V

    .line 601
    .local v5, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getX()F

    move-result v6

    .line 603
    .local v6, "overflowButtonStartX":F
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRTLMode()Z

    move-result v10

    if-eqz v10, :cond_5d

    int-to-float v10, v7

    sub-float v10, v6, v10

    iget-object v11, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_67

    .line 604
    :cond_5d
    int-to-float v10, v7

    add-float/2addr v10, v6

    iget-object v11, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_67
    nop

    .line 605
    .local v10, "overflowButtonTargetX":F
    new-instance v11, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$9;

    invoke-direct {v11, p0, v6, v10, v7}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$9;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;FFI)V

    .line 617
    .local v11, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 618
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v1, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 619
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 620
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 621
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 622
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 623
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 624
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 625
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 626
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 627
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v13, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 628
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    .line 629
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 630
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v13, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 631
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 632
    const-wide/16 v13, 0x64

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 633
    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 634
    iget-object v12, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v12}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 635
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v13, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 636
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 637
    const-wide/16 v13, 0x96

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 638
    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 639
    return-void
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1315
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1316
    const v1, 0x109008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1317
    .local v0, "contentContainer":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    const-string v1, "floating_toolbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1320
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 1321
    return-object v0
.end method

.method private static createEnterAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1330
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1331
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_24

    .line 1332
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1331
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1333
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1334
    return-object v0

    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1346
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1347
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2a

    .line 1348
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1347
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1349
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1350
    if-eqz p2, :cond_29

    .line 1351
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1353
    :cond_29
    return-object v0

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createMainPanel()Landroid/view/ViewGroup;
    .registers 3

    .line 1024
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/content/Context;)V

    return-object v0
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/selectiontoolbar/ToolbarMenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 1273
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1274
    const v1, 0x109008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1275
    .local v0, "menuItemButton":Landroid/view/View;
    if-eqz p1, :cond_11

    .line 1276
    invoke-static {v0, p1, p2, p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V

    .line 1278
    :cond_11
    return-object v0
.end method

.method private createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .line 1102
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    return-object v0
.end method

.method private createOverflowButton()Landroid/widget/ImageButton;
    .registers 4

    .line 1046
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1047
    const v1, 0x109008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1048
    .local v0, "overflowButton":Landroid/widget/ImageButton;
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    new-instance v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda2;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    return-object v0
.end method

.method private createOverflowPanel()Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    .registers 5

    .line 1070
    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    .line 1071
    .local v0, "overflowPanel":Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setDividerHeight(I)V

    .line 1076
    new-instance v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/content/Context;I)V

    move-object v1, v2

    .line 1084
    .local v1, "adapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1085
    new-instance v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$$ExternalSyntheticLambda0;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;)V

    invoke-virtual {v0, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1090
    return-object v0
.end method

.method private createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;
    .registers 7

    .line 266
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 269
    new-instance v0, Landroid/view/selectiontoolbar/WidgetInfo;

    iget-wide v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSelectionToolbarToken:J

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/selectiontoolbar/WidgetInfo;-><init>(JLandroid/graphics/Rect;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-object v0
.end method

.method private static debugLog(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1366
    const-string v0, "floating_toolbar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1367
    const-string v0, "RemoteSelectionToolbar"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_e
    return-void
.end method

.method private getAdjustedToolbarWidth(I)I
    .registers 6
    .param p1, "suggestedWidth"    # I

    .line 787
    move v0, p1

    .line 788
    .local v0, "width":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 789
    const v3, 0x1050165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 790
    .local v1, "maximumWidth":I
    if-gtz v0, :cond_26

    .line 791
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 792
    const v3, 0x1050170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 794
    :cond_26
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getAnimationDuration()I
    .registers 3

    .line 999
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_9

    .line 1001
    const/16 v0, 0xc8

    return v0

    .line 1002
    :cond_9
    const/16 v1, 0x12c

    if-le v0, v1, :cond_e

    .line 1004
    return v1

    .line 1011
    :cond_e
    const/high16 v0, 0x437a0000    # 250.0f

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private getOverflowWidth()I
    .registers 6

    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "overflowWidth":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 968
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_27

    .line 969
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 970
    .local v3, "menuItem":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelViewHelper:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    .line 971
    invoke-virtual {v4, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->calculateWidth(Landroid/view/selectiontoolbar/ToolbarMenuItem;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 968
    .end local v3    # "menuItem":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 973
    .end local v2    # "i":I
    :cond_27
    return v0
.end method

.method private getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 7

    .line 273
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_2c

    .line 274
    new-instance v0, Landroid/service/selectiontoolbar/FloatingToolbarRoot;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHostInputToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransferTouchListener:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;

    invoke-direct {v0, v1, v2, v3}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;-><init>(Landroid/content/Context;Landroid/os/IBinder;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;)V

    .line 276
    .local v0, "contentHolder":Landroid/service/selectiontoolbar/FloatingToolbarRoot;
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;->addView(Landroid/view/View;)V

    .line 277
    new-instance v1, Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHostInputToken:Landroid/os/IBinder;

    const-string v5, "RemoteSelectionToolbar"

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 279
    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    .line 281
    .end local v0    # "contentHolder":Landroid/service/selectiontoolbar/FloatingToolbarRoot;
    :cond_2c
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_38

    .line 282
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 284
    :cond_38
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method private hasOverflow()Z
    .registers 2

    .line 804
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isInRTLMode()Z
    .registers 3

    .line 798
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    .line 799
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 798
    :goto_1f
    return v1
.end method

.method private isOverflowAnimating()Z
    .registers 5

    .line 1094
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1095
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 1096
    .local v0, "overflowOpening":Z
    :goto_15
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1097
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    .line 1098
    .local v3, "overflowClosing":Z
    :goto_28
    if-nez v0, :cond_2e

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :cond_2e
    :goto_2e
    return v1
.end method

.method private synthetic lambda$createOverflowButton$1(Landroid/widget/ImageButton;Landroid/view/View;)V
    .registers 7
    .param p1, "overflowButton"    # Landroid/widget/ImageButton;
    .param p2, "v"    # Landroid/view/View;

    .line 1050
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1051
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->preparePopupContent()V

    .line 1052
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object v0

    .line 1053
    .local v0, "widgetInfo":Landroid/view/selectiontoolbar/WidgetInfo;
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 1054
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-virtual {v1, v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 1056
    .end local v0    # "widgetInfo":Landroid/view/selectiontoolbar/WidgetInfo;
    :cond_1b
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    if-eqz v0, :cond_2d

    .line 1057
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1059
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->closeOverflow()V

    goto :goto_3a

    .line 1061
    :cond_2d
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1063
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->openOverflow()V

    .line 1065
    :goto_3a
    return-void
.end method

.method private synthetic lambda$createOverflowPanel$2(Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "overflowPanel"    # Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 1086
    nop

    .line 1087
    invoke-virtual {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 1088
    .local v0, "menuItem":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-virtual {v1, v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onMenuItemClicked(Landroid/view/selectiontoolbar/ToolbarMenuItem;)V

    .line 1089
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    if-nez v1, :cond_9

    .line 245
    return-void

    .line 247
    :cond_9
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    move-object v2, v0

    check-cast v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onMenuItemClicked(Landroid/view/selectiontoolbar/ToolbarMenuItem;)V

    .line 248
    return-void
.end method

.method private layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .registers 21
    .param p2, "toolbarWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation

    .line 815
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/selectiontoolbar/ToolbarMenuItem;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 817
    .local v1, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/selectiontoolbar/ToolbarMenuItem;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 818
    .local v2, "overflowMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/selectiontoolbar/ToolbarMenuItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const v6, 0x1020041

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 819
    .local v4, "menuItem":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    invoke-virtual {v4}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getItemId()I

    move-result v7

    if-eq v7, v6, :cond_30

    .line 820
    invoke-virtual {v4}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getPriority()I

    move-result v6

    if-ne v6, v5, :cond_30

    .line 821
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 823
    :cond_30
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 825
    .end local v4    # "menuItem":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    :goto_33
    goto :goto_10

    .line 826
    :cond_34
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 828
    iget-object v3, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 829
    iget-object v3, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 831
    move/from16 v3, p2

    .line 832
    .local v3, "availableWidth":I
    const/4 v7, 0x1

    .line 833
    .local v7, "isFirstItem":Z
    :goto_45
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_113

    .line 834
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 838
    .local v8, "menuItem":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    if-nez v7, :cond_5d

    invoke-virtual {v8}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getPriority()I

    move-result v9

    if-ne v9, v5, :cond_5d

    .line 839
    move/from16 v9, p2

    goto/16 :goto_115

    .line 841
    :cond_5d
    const/4 v9, 0x1

    if-eqz v7, :cond_68

    invoke-virtual {v8}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getItemId()I

    move-result v10

    if-ne v10, v6, :cond_68

    move v10, v9

    goto :goto_69

    :cond_68
    move v10, v4

    .line 842
    .local v10, "showIcon":Z
    :goto_69
    iget-object v11, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    iget v12, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIconTextSpacing:I

    invoke-static {v11, v8, v12, v10}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;

    move-result-object v11

    .line 844
    .local v11, "menuItemButton":Landroid/view/View;
    if-nez v10, :cond_7f

    instance-of v12, v11, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_7f

    .line 845
    move-object v12, v11

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 848
    :cond_7f
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    if-eqz v7, :cond_9a

    .line 849
    nop

    .line 850
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v12

    double-to-int v14, v14

    .line 851
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 852
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    .line 853
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 849
    invoke-virtual {v11, v14, v15, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 856
    :cond_9a
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ne v5, v9, :cond_a2

    move v5, v9

    goto :goto_a3

    :cond_a2
    move v5, v4

    .line 857
    .local v5, "isLastItem":Z
    :goto_a3
    if-eqz v5, :cond_bf

    .line 858
    nop

    .line 859
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    .line 860
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    .line 861
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v15

    move/from16 v17, v10

    .end local v10    # "showIcon":Z
    .local v17, "showIcon":Z
    int-to-double v9, v15

    mul-double/2addr v9, v12

    double-to-int v9, v9

    .line 862
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 858
    invoke-virtual {v11, v6, v14, v9, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_c1

    .line 857
    .end local v17    # "showIcon":Z
    .restart local v10    # "showIcon":Z
    :cond_bf
    move/from16 v17, v10

    .line 864
    .end local v10    # "showIcon":Z
    .restart local v17    # "showIcon":Z
    :goto_c1
    invoke-virtual {v11, v4, v4}, Landroid/view/View;->measure(II)V

    .line 865
    nop

    .line 866
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 865
    move/from16 v9, p2

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 868
    .local v6, "menuItemButtonWidth":I
    iget-object v10, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 869
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    sub-int v10, v3, v10

    if-gt v6, v10, :cond_db

    const/4 v10, 0x1

    goto :goto_dc

    :cond_db
    move v10, v4

    .line 870
    .local v10, "canFitWithOverflow":Z
    :goto_dc
    if-eqz v5, :cond_e3

    if-gt v6, v3, :cond_e3

    const/16 v16, 0x1

    goto :goto_e5

    :cond_e3
    move/from16 v16, v4

    :goto_e5
    move/from16 v12, v16

    .line 872
    .local v12, "canFitNoOverflow":Z
    if-nez v10, :cond_eb

    if-eqz v12, :cond_115

    .line 873
    :cond_eb
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 874
    iget-object v13, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    invoke-virtual {v8}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v13, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 878
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 879
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 880
    invoke-virtual {v11, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    sub-int/2addr v3, v6

    .line 882
    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 886
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, 0x0

    .line 887
    .end local v5    # "isLastItem":Z
    .end local v6    # "menuItemButtonWidth":I
    .end local v8    # "menuItem":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    .end local v10    # "canFitWithOverflow":Z
    .end local v11    # "menuItemButton":Landroid/view/View;
    .end local v12    # "canFitNoOverflow":Z
    .end local v17    # "showIcon":Z
    const/4 v5, 0x2

    const v6, 0x1020041

    goto/16 :goto_45

    .line 833
    :cond_113
    move/from16 v9, p2

    .line 888
    :cond_115
    :goto_115
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_126

    .line 890
    iget-object v5, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v6, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v4, v4, v6, v4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 892
    :cond_126
    iget-object v4, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    .line 894
    return-object v1
.end method

.method private layoutMenuItems(Ljava/util/List;I)V
    .registers 4
    .param p2, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;I)V"
        }
    .end annotation

    .line 290
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/selectiontoolbar/ToolbarMenuItem;>;"
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelOverflowAnimations()V

    .line 291
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->clearPanels()V

    .line 293
    invoke-direct {p0, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAdjustedToolbarWidth(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 296
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->layoutOverflowPanelItems(Ljava/util/List;)V

    .line 298
    :cond_17
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updatePopupSize()V

    .line 299
    return-void
.end method

.method private layoutOverflowPanelItems(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 898
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/selectiontoolbar/ToolbarMenuItem;>;"
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 899
    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 900
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/selectiontoolbar/ToolbarMenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 901
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 902
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_1e

    .line 903
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 902
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 905
    .end local v2    # "i":I
    :cond_1e
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v2, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 906
    iget-boolean v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_2e

    .line 907
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_3a

    .line 909
    :cond_2e
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    .line 911
    :goto_3a
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getOverflowWidth()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 912
    .local v2, "width":I
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->calculateOverflowHeight(I)I

    move-result v3

    .line 913
    .local v3, "height":I
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 914
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-static {v5, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 915
    return-void
.end method

.method private maybeComputeTransitionDurationScale()V
    .registers 7

    .line 1015
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v1, :cond_3f

    .line 1016
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1017
    .local v0, "w":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1018
    .local v1, "h":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 1019
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTransitionDurationScale:I

    .line 1021
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_3f
    return-void
.end method

.method private static measure(Landroid/view/View;)Landroid/util/Size;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 1130
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1131
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1132
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private openOverflow()V
    .registers 16

    .line 485
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 486
    .local v0, "targetWidth":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 487
    .local v7, "targetHeight":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 488
    .local v8, "startWidth":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    .line 489
    .local v9, "startHeight":I
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    .line 490
    .local v10, "startY":F
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v11

    .line 491
    .local v11, "left":F
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v12, v11, v1

    .line 492
    .local v12, "right":F
    new-instance v13, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;

    move-object v1, v13

    move-object v2, p0

    move v3, v0

    move v4, v8

    move v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIFF)V

    .line 513
    .local v1, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v2, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;

    invoke-direct {v2, p0, v7, v9, v10}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIF)V

    .line 525
    .local v2, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    move-result v3

    .line 527
    .local v3, "overflowButtonStartX":F
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRTLMode()Z

    move-result v4

    if-eqz v4, :cond_54

    int-to-float v4, v0

    add-float/2addr v4, v3

    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_5f

    .line 528
    :cond_54
    int-to-float v4, v0

    sub-float v4, v3, v4

    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    :goto_5f
    nop

    .line 529
    .local v4, "overflowButtonTargetX":F
    new-instance v5, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;

    invoke-direct {v5, p0, v3, v4, v8}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;FFI)V

    .line 541
    .local v5, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 542
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v6

    int-to-long v13, v6

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 543
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 544
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v6

    int-to-long v13, v6

    invoke-virtual {v2, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 545
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 546
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->getAnimationDuration()I

    move-result v6

    int-to-long v13, v6

    invoke-virtual {v5, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 547
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 548
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 549
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 550
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 551
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v13, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 552
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    .line 553
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 554
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v13, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 555
    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 556
    const-wide/16 v13, 0xfa

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 557
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 558
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v6, v13}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAlpha(F)V

    .line 559
    return-void
.end method

.method private positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .registers 4

    .line 958
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_3d

    .line 959
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 960
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 961
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    .line 963
    :cond_3d
    return-void
.end method

.method private preparePopupContent()V
    .registers 3

    .line 921
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 924
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 925
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 927
    :cond_12
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 928
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 929
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 931
    :cond_26
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setPanelsStatesAtRestingPosition()V

    .line 936
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRTLMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 937
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 938
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 940
    :cond_3c
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 390
    nop

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    sub-int/2addr v1, v3

    .line 390
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 396
    .local v0, "x":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    .line 398
    .local v1, "availableHeightAboveContent":I
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 401
    .local v3, "availableHeightBelowContent":I
    iget v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    mul-int/2addr v4, v2

    .line 402
    .local v4, "margin":I
    iget v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    add-int/2addr v5, v4

    .line 404
    .local v5, "toolbarHeightWithVerticalMargin":I
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v6

    if-nez v6, :cond_54

    .line 405
    if-lt v1, v5, :cond_36

    .line 407
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    .local v2, "y":I
    goto/16 :goto_c3

    .line 408
    .end local v2    # "y":I
    :cond_36
    if-lt v3, v5, :cond_3c

    .line 410
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .restart local v2    # "y":I
    goto/16 :goto_c3

    .line 411
    .end local v2    # "y":I
    :cond_3c
    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    if-lt v3, v2, :cond_47

    .line 413
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    sub-int/2addr v2, v6

    .restart local v2    # "y":I
    goto/16 :goto_c3

    .line 416
    .end local v2    # "y":I
    :cond_47
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "y":I
    goto/16 :goto_c3

    .line 422
    .end local v2    # "y":I
    :cond_54
    nop

    .line 423
    invoke-direct {p0, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->calculateOverflowHeight(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 424
    .local v2, "minimumOverflowHeightWithMargin":I
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 427
    .local v6, "availableHeightThroughContentDown":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    .line 431
    .local v7, "availableHeightThroughContentUp":I
    const/4 v8, 0x1

    if-lt v1, v2, :cond_7b

    .line 434
    sub-int v9, v1, v4

    invoke-direct {p0, v9}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 435
    iget v9, p1, Landroid/graphics/Rect;->top:I

    iget v10, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    sub-int/2addr v9, v10

    .line 436
    .local v9, "y":I
    iput-boolean v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    move v2, v9

    goto :goto_c3

    .line 437
    .end local v9    # "y":I
    :cond_7b
    const/4 v9, 0x0

    if-lt v1, v5, :cond_8c

    if-lt v6, v2, :cond_8c

    .line 442
    sub-int v8, v6, v4

    invoke-direct {p0, v8}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 443
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    .line 444
    .local v8, "y":I
    iput-boolean v9, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    move v2, v8

    goto :goto_c3

    .line 445
    .end local v8    # "y":I
    :cond_8c
    if-lt v3, v2, :cond_99

    .line 448
    sub-int v8, v3, v4

    invoke-direct {p0, v8}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 449
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 450
    .restart local v8    # "y":I
    iput-boolean v9, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    move v2, v8

    goto :goto_c3

    .line 451
    .end local v8    # "y":I
    :cond_99
    if-lt v3, v5, :cond_b2

    iget-object v10, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 452
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lt v10, v2, :cond_b2

    .line 456
    sub-int v9, v7, v4

    invoke-direct {p0, v9}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 457
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    sub-int/2addr v9, v10

    .line 459
    .restart local v9    # "y":I
    iput-boolean v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    move v2, v9

    goto :goto_c3

    .line 463
    .end local v9    # "y":I
    :cond_b2
    iget-object v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-direct {p0, v8}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateOverflowHeight(I)V

    .line 464
    iget-object v8, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 465
    .restart local v8    # "y":I
    iput-boolean v9, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    move v2, v8

    .line 468
    .end local v6    # "availableHeightThroughContentDown":I
    .end local v7    # "availableHeightThroughContentUp":I
    .end local v8    # "y":I
    .local v2, "y":I
    :goto_c3
    iget-object v6, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Point;->set(II)V

    .line 469
    return-void
.end method

.method private static setHeight(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 1155
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1156
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v1, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;II)V

    .line 1157
    return-void
.end method

.method private setPanelsStatesAtRestingPosition()V
    .registers 7

    .line 646
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->awakenScrollBars()Z

    .line 649
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_e8

    .line 651
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 652
    .local v0, "containerSize":Landroid/util/Size;
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 653
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 654
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 655
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAlpha(F)V

    .line 656
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setVisibility(I)V

    .line 657
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    const v3, 0x1040547

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 662
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 663
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 664
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 665
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 666
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 665
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 667
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    goto :goto_94

    .line 669
    :cond_6e
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    .line 670
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 669
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 671
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 672
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 673
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    .line 677
    :goto_94
    iget-boolean v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_c8

    .line 678
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 679
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    .line 680
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 679
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 681
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 682
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 681
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setY(F)V

    .line 683
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_e6

    .line 686
    :cond_c8
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 687
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 688
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 689
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    .line 691
    .end local v0    # "containerSize":Landroid/util/Size;
    :goto_e6
    goto/16 :goto_1e0

    .line 693
    :cond_e8
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    .line 694
    .restart local v0    # "containerSize":Landroid/util/Size;
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 695
    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 696
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 697
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v2, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setAlpha(F)V

    .line 698
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v2, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setVisibility(I)V

    .line 699
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContext:Landroid/content/Context;

    const v3, 0x1040548

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 703
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 705
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 706
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 707
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 708
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 709
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    invoke-virtual {v1, v4}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    goto :goto_173

    .line 711
    :cond_13c
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    .line 712
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 711
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 713
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 714
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    .line 715
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 714
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 716
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 717
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 716
    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    .line 721
    :goto_173
    iget-boolean v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_1a7

    .line 722
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 723
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 724
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 722
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 725
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 726
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 727
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    .line 728
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 727
    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_1e0

    .line 731
    :cond_1a7
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 732
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 733
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 734
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setY(F)V

    goto :goto_1e0

    .line 738
    :cond_1c6
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 739
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 740
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 741
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 744
    .end local v0    # "containerSize":Landroid/util/Size;
    :goto_1e0
    return-void
.end method

.method private static setSize(Landroid/view/View;II)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1136
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1137
    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1138
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1139
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_13

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    move-object v0, v1

    .line 1140
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1141
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1142
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    return-void
.end method

.method private static setSize(Landroid/view/View;Landroid/util/Size;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "size"    # Landroid/util/Size;

    .line 1146
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;II)V

    .line 1147
    return-void
.end method

.method private static setWidth(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1151
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;II)V

    .line 1152
    return-void
.end method

.method private show(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHidden:Z

    .line 331
    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissed:Z

    .line 332
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelDismissAndHideAnimations()V

    .line 333
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelOverflowAnimations()V

    .line 334
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 335
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->preparePopupContent()V

    .line 336
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 338
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 339
    return-void
.end method

.method private updateCoordinates(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 377
    return-void

    .line 379
    :cond_a
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->cancelOverflowAnimations()V

    .line 380
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 381
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->preparePopupContent()V

    .line 382
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createWidgetInfo()Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object v0

    .line 383
    .local v0, "widgetInfo":Landroid/view/selectiontoolbar/WidgetInfo;
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    iget v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 384
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-virtual {v1, v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 385
    return-void
.end method

.method private updateFloatingToolbarRootContentRect()V
    .registers 7

    .line 252
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_5

    .line 253
    return-void

    .line 255
    :cond_5
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/service/selectiontoolbar/FloatingToolbarRoot;

    .line 256
    .local v0, "root":Landroid/service/selectiontoolbar/FloatingToolbarRoot;
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 257
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempCoords:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 258
    .local v2, "contentLeft":I
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 259
    .local v1, "contentTop":I
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRectForRoot:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 260
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    .line 261
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    .line 259
    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mTempContentRectForRoot:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;->setContentRect(Landroid/graphics/Rect;)V

    .line 263
    return-void
.end method

.method private static updateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V
    .registers 9
    .param p0, "menuItemButton"    # Landroid/view/View;
    .param p1, "menuItem"    # Landroid/view/selectiontoolbar/ToolbarMenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 1286
    const v0, 0x102031d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1288
    .local v0, "buttonText":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1289
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 1290
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 1292
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1293
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    :goto_28
    const v1, 0x102031b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1297
    .local v1, "buttonIcon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_51

    if-nez p3, :cond_3a

    goto :goto_51

    .line 1301
    :cond_3a
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1302
    nop

    .line 1303
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1302
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1304
    invoke-virtual {v0, p2, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_57

    .line 1298
    :cond_51
    :goto_51
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1299
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 1306
    :goto_57
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1307
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1308
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 1310
    :cond_69
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1312
    :goto_6c
    return-void
.end method

.method private updateOverflowHeight(I)V
    .registers 8
    .param p1, "suggestedHeight"    # I

    .line 747
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 748
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButtonSize:Landroid/util/Size;

    .line 749
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mLineHeight:I

    div-int/2addr v0, v1

    .line 750
    .local v0, "maxItemSize":I
    invoke-direct {p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->calculateOverflowHeight(I)I

    move-result v1

    .line 751
    .local v1, "newHeight":I
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2a

    .line 752
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    .line 754
    :cond_2a
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanel:Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 755
    iget-boolean v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    if-eqz v2, :cond_5e

    .line 756
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 757
    iget-boolean v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_65

    .line 758
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    .line 759
    .local v2, "deltaHeight":I
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 760
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getY()F

    move-result v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 761
    .end local v2    # "deltaHeight":I
    goto :goto_65

    .line 763
    :cond_5e
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 765
    :cond_65
    :goto_65
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updatePopupSize()V

    .line 767
    .end local v0    # "maxItemSize":I
    .end local v1    # "newHeight":I
    :cond_68
    return-void
.end method

.method private updatePopupSize()V
    .registers 4

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "width":I
    const/4 v1, 0x0

    .line 772
    .local v1, "height":I
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_18

    .line 773
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 774
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 776
    :cond_18
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_2e

    .line 777
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 778
    iget-object v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 781
    :cond_2e
    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginHorizontal:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    .line 782
    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMarginVertical:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    .line 783
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->maybeComputeTransitionDurationScale()V

    .line 784
    return-void
.end method


# virtual methods
.method public dismiss(J)V
    .registers 5
    .param p1, "floatingToolbarToken"    # J

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissed:Z

    if-eqz v0, :cond_1b

    .line 347
    return-void

    .line 349
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHidden:Z

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissed:Z

    .line 352
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 353
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 354
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1372
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "toolbar token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSelectionToolbarToken:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1373
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dismissed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1374
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hidden: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHidden:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1375
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "popup width: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1376
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "popup height: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPopupHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1377
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "relative coords: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mRelativeCoordsForToolbar:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1378
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "main panel size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1379
    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->hasOverflow()Z

    move-result v0

    .line 1380
    .local v0, "hasOverflow":Z
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "has overflow: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1381
    if-eqz v0, :cond_8f

    .line 1382
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "overflow open: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mIsOverflowOpen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1383
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "overflow size: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1385
    :cond_8f
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v1, :cond_9c

    .line 1386
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/service/selectiontoolbar/FloatingToolbarRoot;

    .line 1387
    .local v1, "root":Landroid/service/selectiontoolbar/FloatingToolbarRoot;
    invoke-virtual {v1, p1, p2}, Landroid/service/selectiontoolbar/FloatingToolbarRoot;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1389
    .end local v1    # "root":Landroid/service/selectiontoolbar/FloatingToolbarRoot;
    :cond_9c
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    if-eqz v1, :cond_e0

    .line 1390
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1391
    .local v1, "menuItemSize":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "number menu items: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1392
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b1
    if-ge v2, v1, :cond_e0

    .line 1393
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1392
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 1397
    .end local v1    # "menuItemSize":I
    .end local v2    # "i":I
    :cond_e0
    return-void
.end method

.method public hide(J)V
    .registers 5
    .param p1, "floatingToolbarToken"    # J

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hide for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 362
    return-void

    .line 365
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHidden:Z

    .line 366
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 367
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 370
    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mDismissed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onToolbarShowTimeout()V
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mCallbackWrapper:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-virtual {v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->onToolbarShowTimeout()V

    .line 303
    return-void
.end method

.method public show(Landroid/view/selectiontoolbar/ShowInfo;)V
    .registers 4
    .param p1, "showInfo"    # Landroid/view/selectiontoolbar/ShowInfo;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ShowInfo;->getMenuItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    .line 312
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ShowInfo;->getViewPortOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show(): layoutRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ShowInfo;->isLayoutRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->debugLog(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ShowInfo;->isLayoutRequired()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 316
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mMenuItems:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ShowInfo;->getSuggestedWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->layoutMenuItems(Ljava/util/List;I)V

    .line 318
    :cond_50
    invoke-virtual {p1}, Landroid/view/selectiontoolbar/ShowInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 319
    .local v0, "contentRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 320
    invoke-direct {p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->show(Landroid/graphics/Rect;)V

    goto :goto_69

    .line 321
    :cond_5e
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 322
    invoke-direct {p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->updateCoordinates(Landroid/graphics/Rect;)V

    .line 324
    :cond_69
    :goto_69
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    return-void
.end method
