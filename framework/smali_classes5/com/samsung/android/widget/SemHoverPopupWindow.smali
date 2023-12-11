.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final ANCHOR_VIEW_COORDINATES_TYPE_SCREEN:I = 0x2

.field private static final ANCHOR_VIEW_COORDINATES_TYPE_WINDOW:I = 0x1

.field private static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final HOVER_DETECT_TIME_MS_DEX:I = 0x2ee

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8

.field private static final localLOGV:Z

.field private static final sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;


# instance fields
.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDeviceRotation:I

.field private mDismissHandler:Landroid/os/Handler;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mEnabled:Z

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsCheckedRealDisplayMetricsInDexMode:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsPopupTouchable:Z

.field private mIsSPenPointChanged:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mIsUspFeature:Z

.field private mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private mNavigationBarHeight:I

.field private mNeedNotWindowOffset:Z

.field private mNeedToMeasureContentView:Z

.field protected final mParentView:Landroid/view/View;

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I


# direct methods
.method public static synthetic $r8$lambda$UAFI_05ZEzR8uLAj5IiY-J6VYxc(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDismissTouchableHPWOnActionUp(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopup(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToolType(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 8
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 153
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    .line 154
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    .line 156
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 158
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 162
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 164
    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 165
    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 178
    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 192
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 194
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 211
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 213
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 214
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 215
    iget v0, v2, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_45

    .line 216
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    goto :goto_47

    .line 218
    :cond_45
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    .line 221
    :goto_47
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    .line 222
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    .line 225
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 228
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 232
    :cond_61
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 244
    return-void
.end method

.method private computePopupPosition(Landroid/view/View;III)V
    .registers 33
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .line 894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_7

    .line 895
    return-void

    .line 897
    :cond_7
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v1, :cond_11

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getDeviceRotation()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    .line 902
    :cond_11
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 903
    .local v2, "anchorLocOnScr":[I
    new-array v3, v1, [I

    .line 904
    .local v3, "anchorLocInWindow":[I
    iget-object v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 906
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_21

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_23

    :cond_21
    move-object/from16 v5, p1

    :goto_23
    iput-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 907
    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 908
    .local v5, "anchorView":Landroid/view/View;
    move/from16 v6, p2

    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 909
    move/from16 v7, p3

    iput v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 910
    move/from16 v8, p4

    iput v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 911
    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 912
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 915
    sget-boolean v9, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    const-string v10, "computePopupPosition :anchorLocInWindow y:"

    const-string v11, "computePopupPosition :anchorLocInWindow x:"

    const-string v12, "computePopupPosition :anchorLocOnScr y:"

    const-string v13, "computePopupPosition :anchorLocOnScr x:"

    const-string v14, "SemHoverPopupWindow"

    const/4 v1, 0x0

    if-eqz v9, :cond_a3

    .line 916
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v15, v2, v1

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v15, 0x1

    aget v1, v2, v15

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v9, 0x0

    aget v15, v3, v9

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v9, 0x1

    aget v15, v3, v9

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_a3
    const/4 v1, 0x1

    .line 924
    .local v1, "isHasIdentityMatrix":Z
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 926
    .local v9, "realRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v15

    if-nez v15, :cond_b5

    .line 927
    const/4 v1, 0x0

    goto :goto_d7

    .line 929
    :cond_b5
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 930
    .local v15, "viewParent":Landroid/view/ViewParent;
    :goto_b9
    move/from16 v19, v1

    .end local v1    # "isHasIdentityMatrix":Z
    .local v19, "isHasIdentityMatrix":Z
    instance-of v1, v15, Landroid/view/View;

    if-eqz v1, :cond_d5

    .line 931
    move-object v1, v15

    check-cast v1, Landroid/view/View;

    .line 933
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v20

    if-nez v20, :cond_ce

    .line 934
    const/16 v19, 0x0

    .line 936
    :cond_ce
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 937
    .end local v1    # "view":Landroid/view/View;
    move/from16 v1, v19

    goto :goto_b9

    .line 930
    :cond_d5
    move/from16 v1, v19

    .line 939
    .end local v15    # "viewParent":Landroid/view/ViewParent;
    .end local v19    # "isHasIdentityMatrix":Z
    .local v1, "isHasIdentityMatrix":Z
    :goto_d7
    if-nez v1, :cond_100

    .line 940
    invoke-virtual {v5, v9}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 941
    const/4 v15, 0x0

    aget v18, v3, v15

    iget v6, v9, Landroid/graphics/Rect;->left:I

    aget v19, v2, v15

    sub-int v6, v6, v19

    add-int v18, v18, v6

    aput v18, v3, v15

    .line 942
    const/4 v6, 0x1

    aget v17, v3, v6

    iget v15, v9, Landroid/graphics/Rect;->top:I

    aget v19, v2, v6

    sub-int v15, v15, v19

    add-int v17, v17, v15

    aput v17, v3, v6

    .line 943
    iget v15, v9, Landroid/graphics/Rect;->left:I

    const/16 v17, 0x0

    aput v15, v2, v17

    .line 944
    iget v15, v9, Landroid/graphics/Rect;->top:I

    aput v15, v2, v6

    .line 948
    :cond_100
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 949
    .local v6, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 952
    sget-boolean v15, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v15, :cond_16c

    .line 953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame left:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame right:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame bottom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_16c
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 961
    .local v7, "rootViewDisplayRect":Landroid/graphics/Rect;
    iget-object v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 962
    .local v8, "rootView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 963
    .local v19, "rootViewWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 964
    .local v20, "rootViewHeight":I
    const/16 v18, 0x0

    aget v21, v2, v18

    aget v22, v3, v18

    move-object/from16 v23, v8

    .end local v8    # "rootView":Landroid/view/View;
    .local v23, "rootView":Landroid/view/View;
    sub-int v8, v21, v22

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 965
    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int v8, v8, v19

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 966
    const/4 v8, 0x1

    aget v21, v2, v8

    aget v22, v3, v8

    sub-int v8, v21, v22

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 967
    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int v8, v8, v20

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 968
    iget v8, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v21, v10

    iget v10, v7, Landroid/graphics/Rect;->left:I

    if-ne v8, v10, :cond_1c1

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    if-ne v8, v10, :cond_1c1

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    if-ne v8, v10, :cond_1c1

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v8, v10, :cond_1bb

    goto :goto_1c1

    :cond_1bb
    move-object/from16 v25, v11

    move-object/from16 v26, v12

    goto/16 :goto_245

    .line 972
    :cond_1c1
    :goto_1c1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 973
    .local v8, "tempDisplayFrame":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 974
    .local v10, "tempAnchorView":Landroid/view/View;
    invoke-virtual {v10, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 975
    move-object/from16 v22, v10

    .end local v10    # "tempAnchorView":Landroid/view/View;
    .local v22, "tempAnchorView":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 976
    .local v10, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFreeFormMode()Z

    move-result v24

    .line 977
    .local v24, "isFreeForm":Z
    if-nez v24, :cond_22f

    if-nez v24, :cond_1f6

    move-object/from16 v25, v11

    iget v11, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v26, v12

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_1fa

    iget v11, v8, Landroid/graphics/Rect;->right:I

    const/16 v12, 0x2710

    if-ne v11, v12, :cond_1fa

    iget v11, v8, Landroid/graphics/Rect;->top:I

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_1fa

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v12, 0x2710

    if-eq v11, v12, :cond_20f

    goto :goto_1fa

    :cond_1f6
    move-object/from16 v25, v11

    move-object/from16 v26, v12

    :cond_1fa
    :goto_1fa
    if-nez v24, :cond_212

    iget v11, v8, Landroid/graphics/Rect;->right:I

    iget v12, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v11, v12, :cond_20f

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    iget v12, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v11, v12, :cond_20f

    goto :goto_212

    :cond_20f
    move-object/from16 v27, v8

    goto :goto_235

    :cond_212
    :goto_212
    if-nez v24, :cond_22c

    iget v11, v6, Landroid/graphics/Rect;->left:I

    const/4 v12, 0x0

    aget v18, v3, v12

    add-int v11, v11, v18

    move-object/from16 v27, v8

    .end local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    .local v27, "tempDisplayFrame":Landroid/graphics/Rect;
    aget v8, v2, v12

    if-ne v11, v8, :cond_235

    iget v8, v6, Landroid/graphics/Rect;->top:I

    const/4 v11, 0x1

    aget v12, v3, v11

    add-int/2addr v8, v12

    aget v12, v2, v11

    if-eq v8, v12, :cond_245

    goto :goto_235

    .end local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_22c
    move-object/from16 v27, v8

    .end local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    goto :goto_245

    .end local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_22f
    move-object/from16 v27, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    .line 986
    .end local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_235
    :goto_235
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iput v8, v6, Landroid/graphics/Rect;->left:I

    .line 987
    iget v8, v7, Landroid/graphics/Rect;->right:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 988
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 989
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 993
    .end local v10    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v22    # "tempAnchorView":Landroid/view/View;
    .end local v24    # "isFreeForm":Z
    .end local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_245
    :goto_245
    invoke-virtual {v5}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v8, v10, :cond_299

    .line 995
    const/4 v8, 0x0

    aget v10, v2, v8

    aget v11, v3, v8

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 996
    const/4 v10, 0x1

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 998
    if-eqz v1, :cond_27b

    .line 999
    new-instance v11, Landroid/graphics/Rect;

    aget v12, v3, v8

    move-object/from16 v22, v7

    .end local v7    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .local v22, "rootViewDisplayRect":Landroid/graphics/Rect;
    aget v7, v3, v10

    aget v16, v3, v8

    .line 1000
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v8, v16, v8

    aget v16, v3, v10

    .line 1001
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v10, v16, v10

    invoke-direct {v11, v12, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v11

    move-object/from16 v24, v3

    .local v7, "anchorRect":Landroid/graphics/Rect;
    goto :goto_2e5

    .line 1003
    .end local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .local v7, "rootViewDisplayRect":Landroid/graphics/Rect;
    :cond_27b
    move-object/from16 v22, v7

    .end local v7    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .restart local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v12, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v24, v3

    .end local v3    # "anchorLocInWindow":[I
    .local v24, "anchorLocInWindow":[I
    iget v3, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v3

    invoke-direct {v7, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v7, "anchorRect":Landroid/graphics/Rect;
    goto :goto_2e5

    .line 1009
    .end local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .end local v24    # "anchorLocInWindow":[I
    .restart local v3    # "anchorLocInWindow":[I
    .local v7, "rootViewDisplayRect":Landroid/graphics/Rect;
    :cond_299
    move-object/from16 v24, v3

    move-object/from16 v22, v7

    .end local v3    # "anchorLocInWindow":[I
    .end local v7    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .restart local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .restart local v24    # "anchorLocInWindow":[I
    const/4 v3, 0x2

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1010
    const/4 v3, 0x0

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 1012
    if-eqz v1, :cond_2c0

    .line 1013
    new-instance v7, Landroid/graphics/Rect;

    aget v8, v2, v3

    const/4 v10, 0x1

    aget v11, v2, v10

    aget v12, v2, v3

    .line 1014
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v12, v3

    aget v3, v2, v10

    .line 1015
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v3, v3, v16

    invoke-direct {v7, v8, v11, v12, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v7

    .local v3, "anchorRect":Landroid/graphics/Rect;
    goto :goto_2d0

    .line 1017
    .end local v3    # "anchorRect":Landroid/graphics/Rect;
    :cond_2c0
    const/4 v10, 0x1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget v8, v2, v7

    aget v7, v2, v10

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v8, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v3

    .line 1024
    .local v7, "anchorRect":Landroid/graphics/Rect;
    :goto_2d0
    iget v3, v6, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2e5

    iget v3, v6, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_2e5

    .line 1025
    const/4 v3, 0x0

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 1026
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 1027
    iput v3, v6, Landroid/graphics/Rect;->top:I

    .line 1028
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 1032
    :cond_2e5
    :goto_2e5
    iget v3, v6, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_334

    iget v3, v6, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_334

    .line 1033
    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 1034
    .local v3, "root":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1036
    .local v8, "rootLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v8, Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_32f

    .line 1037
    move-object v10, v8

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    .line 1038
    .local v10, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v12, v10, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v11, v12

    and-int/lit16 v11, v11, 0x404

    if-nez v11, :cond_309

    const/4 v11, 0x1

    goto :goto_30a

    :cond_309
    const/4 v11, 0x0

    .line 1041
    .local v11, "isSystemUiVisible":Z
    :goto_30a
    const/4 v12, 0x0

    .line 1042
    .local v12, "statusBarHeight":I
    move/from16 v16, v1

    .end local v1    # "isHasIdentityMatrix":Z
    .local v16, "isHasIdentityMatrix":Z
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    move-object/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "root":Landroid/view/View;
    .local v27, "root":Landroid/view/View;
    if-ne v1, v3, :cond_321

    if-eqz v11, :cond_321

    .line 1043
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x10504f4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1045
    :cond_321
    const/4 v1, 0x0

    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 1046
    iput v12, v6, Landroid/graphics/Rect;->top:I

    .line 1047
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 1048
    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_336

    .line 1036
    .end local v10    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "isSystemUiVisible":Z
    .end local v12    # "statusBarHeight":I
    .end local v16    # "isHasIdentityMatrix":Z
    .end local v27    # "root":Landroid/view/View;
    .restart local v1    # "isHasIdentityMatrix":Z
    .restart local v3    # "root":Landroid/view/View;
    :cond_32f
    move/from16 v16, v1

    move-object/from16 v27, v3

    .end local v1    # "isHasIdentityMatrix":Z
    .end local v3    # "root":Landroid/view/View;
    .restart local v16    # "isHasIdentityMatrix":Z
    .restart local v27    # "root":Landroid/view/View;
    goto :goto_336

    .line 1032
    .end local v8    # "rootLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "isHasIdentityMatrix":Z
    .end local v27    # "root":Landroid/view/View;
    .restart local v1    # "isHasIdentityMatrix":Z
    :cond_334
    move/from16 v16, v1

    .line 1052
    .end local v1    # "isHasIdentityMatrix":Z
    .restart local v16    # "isHasIdentityMatrix":Z
    :goto_336
    if-eqz v15, :cond_3c6

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computePopupPosition: displayMetrics"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v8, v2, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v8, v2, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v8, v24, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v3, v24, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computePopupPosition :displayFrame:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_3c6
    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->measureContentView(Landroid/util/DisplayMetrics;)V

    .line 1064
    invoke-direct {v0, v7, v6}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1067
    iget-boolean v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_417

    .line 1068
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-nez v1, :cond_3dd

    .line 1069
    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 1071
    :cond_3dd
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3ed

    .line 1072
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_408

    .line 1073
    :cond_3ed
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_408

    .line 1074
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    .line 1075
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    .line 1079
    :cond_408
    :goto_408
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_417

    .line 1080
    const-string v1, "computePopupPosition: Call resetTimeout()"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    .line 1085
    :cond_417
    return-void
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 27
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;

    .line 1094
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1095
    iput-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1097
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1098
    .local v3, "posX":I
    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 1102
    .local v4, "posY":I
    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v6, v5, 0xf0f

    .line 1103
    .local v6, "hGravity":I
    const v7, 0xf0f0

    and-int/2addr v5, v7

    .line 1104
    .local v5, "vGravity":I
    const/4 v7, 0x0

    .line 1106
    .local v7, "tooltipTopMargin":I
    iget-object v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 1107
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 1108
    .local v9, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    iget-object v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1109
    .local v10, "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1110
    .local v11, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .line 1111
    .local v12, "isSystemUiVisible":Z
    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v14, 0x10503fd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1113
    .local v13, "fullTextXShift":I
    iget-object v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v15, 0x10504f4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1114
    .local v14, "statusBarHeight":I
    const/4 v15, 0x0

    .line 1116
    .local v15, "realStatusBarHeight":I
    move/from16 v16, v3

    .end local v3    # "posX":I
    .local v16, "posX":I
    instance-of v3, v11, Landroid/view/WindowManager$LayoutParams;

    move/from16 v17, v4

    .end local v4    # "posY":I
    .local v17, "posY":I
    if-eqz v3, :cond_60

    .line 1117
    move-object v3, v11

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 1118
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v20, v10

    .end local v10    # "root":Landroid/view/View;
    .local v20, "root":Landroid/view/View;
    iget v10, v3, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v10

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_57

    const/4 v4, 0x1

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    move v12, v4

    .line 1121
    if-eqz v12, :cond_5d

    move v4, v14

    goto :goto_5e

    :cond_5d
    const/4 v4, 0x0

    :goto_5e
    move v15, v4

    goto :goto_62

    .line 1116
    .end local v3    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "root":Landroid/view/View;
    .restart local v10    # "root":Landroid/view/View;
    :cond_60
    move-object/from16 v20, v10

    .line 1124
    .end local v10    # "root":Landroid/view/View;
    .restart local v20    # "root":Landroid/view/View;
    :goto_62
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 1125
    .local v3, "displayFrameWidth":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v10

    .line 1127
    .local v4, "displayFrameHeight":I
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move-object/from16 v21, v11

    .end local v11    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .local v21, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x2

    if-nez v10, :cond_a0

    .line 1129
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-ne v10, v11, :cond_8c

    .line 1130
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    .line 1131
    .end local v16    # "posX":I
    .local v10, "posX":I
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v16, v10

    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    move/from16 v23, v16

    move/from16 v16, v6

    move v6, v10

    move/from16 v10, v23

    .end local v17    # "posY":I
    .local v10, "posY":I
    goto/16 :goto_144

    .line 1132
    .end local v10    # "posY":I
    .restart local v17    # "posY":I
    :cond_8c
    const/4 v11, 0x1

    if-ne v10, v11, :cond_98

    .line 1133
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1134
    .end local v16    # "posX":I
    .local v10, "posX":I
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v16, v6

    move v6, v11

    .end local v17    # "posY":I
    .local v11, "posY":I
    goto/16 :goto_144

    .line 1132
    .end local v10    # "posX":I
    .end local v11    # "posY":I
    .restart local v16    # "posX":I
    .restart local v17    # "posY":I
    :cond_98
    move/from16 v10, v16

    move/from16 v16, v6

    move/from16 v6, v17

    goto/16 :goto_144

    .line 1138
    :cond_a0
    sparse-switch v6, :sswitch_data_3cc

    .line 1175
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1158
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_a6
    iget v10, v1, Landroid/graphics/Rect;->right:I

    .line 1159
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1140
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_a9
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    .line 1141
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1164
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_af
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v10

    if-eqz v10, :cond_c5

    .line 1165
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v22, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1166
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    const/4 v11, 0x0

    iput v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    goto :goto_ce

    .line 1168
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :cond_c5
    const/16 v22, 0x2

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1170
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    :goto_ce
    iget-boolean v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    if-eqz v11, :cond_d8

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v11

    if-nez v11, :cond_10a

    .line 1171
    :cond_d8
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    goto :goto_10a

    .line 1152
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_dc
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 1153
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1146
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_e1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    .line 1147
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1161
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_e9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1162
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1155
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_f5
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    .line 1156
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1143
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_fb
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 1144
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_10a

    .line 1149
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_fe
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1150
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    nop

    .line 1179
    :cond_10a
    :goto_10a
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    add-int/2addr v10, v11

    .line 1182
    sparse-switch v5, :sswitch_data_3f2

    .line 1199
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .local v16, "hGravity":I
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_141

    .line 1196
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_115
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v7

    .line 1197
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    move/from16 v16, v6

    goto :goto_141

    .line 1184
    .end local v11    # "posY":I
    .restart local v17    # "posY":I
    :sswitch_11b
    iget v11, v1, Landroid/graphics/Rect;->top:I

    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v11, v6

    sub-int/2addr v11, v7

    .line 1185
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_141

    .line 1193
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_124
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v11, v6, v11

    .line 1194
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_141

    .line 1187
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_12d
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    iget v11, v1, Landroid/graphics/Rect;->top:I

    .line 1188
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_141

    .line 1190
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_132
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v6, v11

    .line 1191
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    nop

    .line 1203
    :goto_141
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v6, v11

    .line 1206
    .end local v11    # "posY":I
    .local v6, "posY":I
    :goto_144
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v17, v12

    .end local v12    # "isSystemUiVisible":Z
    .local v17, "isSystemUiVisible":Z
    const/4 v12, 0x2

    if-ne v11, v12, :cond_207

    .line 1207
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v11, v6

    iget v12, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v11, v12, :cond_16c

    .line 1211
    const/16 v11, 0x5050

    if-ne v5, v11, :cond_166

    .line 1212
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v11, v12, :cond_16c

    .line 1213
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v6, v11, v12

    goto :goto_16c

    .line 1216
    :cond_166
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v6, v11, v12

    .line 1221
    :cond_16c
    :goto_16c
    if-gez v10, :cond_173

    .line 1222
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_184

    .line 1223
    :cond_173
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v10

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v11, v12, :cond_184

    .line 1224
    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1228
    :cond_184
    :goto_184
    sget-boolean v11, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v11, :cond_1bd

    .line 1229
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "computePopupPositionInternal :realDisplayMetrics width:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SemHoverPopupWindow"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v10

    .end local v10    # "posX":I
    .local v18, "posX":I
    const-string v10, "computePopupPositionInternal :realDisplayMetrics height:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bf

    .line 1228
    .end local v18    # "posX":I
    .restart local v10    # "posX":I
    :cond_1bd
    move/from16 v18, v10

    .line 1236
    .end local v10    # "posX":I
    .restart local v18    # "posX":I
    :goto_1bf
    if-ge v6, v15, :cond_201

    .line 1239
    const/16 v10, 0x3030

    if-ne v5, v10, :cond_1f5

    .line 1240
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v10, v11, :cond_1da

    .line 1241
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int v6, v10, v11

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_3c7

    .line 1242
    :cond_1da
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v15

    if-le v10, v11, :cond_1ee

    .line 1244
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v7

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_3c7

    .line 1246
    :cond_1ee
    move v6, v15

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_3c7

    .line 1249
    :cond_1f5
    iget v10, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_3c7

    .line 1236
    :cond_201
    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_3c7

    .line 1252
    .end local v18    # "posX":I
    .restart local v10    # "posX":I
    :cond_207
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3c5

    .line 1254
    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    const/4 v12, 0x3

    if-gtz v11, :cond_24c

    .line 1255
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1256
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-ne v11, v12, :cond_22e

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v11, :cond_22e

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v11, v12, :cond_22e

    .line 1258
    add-int/2addr v12, v13

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_2c8

    .line 1259
    :cond_22e
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_242

    if-eqz v14, :cond_242

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    if-ge v11, v14, :cond_242

    .line 1261
    add-int v11, v14, v13

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_2c8

    .line 1263
    :cond_242
    iget v11, v2, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    add-int/2addr v11, v13

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_2c8

    .line 1265
    :cond_24c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v11

    if-nez v11, :cond_27e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isEmbeddedMode()Z

    move-result v11

    if-nez v11, :cond_27e

    iget-object v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isAnchorViewInAppBounds(II)Z

    move-result v11

    if-eqz v11, :cond_27e

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v11, v12, :cond_27e

    .line 1266
    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_2c8

    .line 1268
    :cond_27e
    iget v11, v2, Landroid/graphics/Rect;->left:I

    if-ltz v11, :cond_2c8

    .line 1269
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-ge v3, v11, :cond_295

    .line 1270
    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v3

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    if-ltz v11, :cond_2c8

    .line 1271
    sub-int v11, v3, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_2c8

    .line 1273
    :cond_295
    add-int v12, v10, v11

    if-le v12, v3, :cond_2ae

    .line 1274
    add-int v12, v11, v13

    if-lt v3, v12, :cond_2a5

    .line 1275
    sub-int v11, v3, v11

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_2c8

    .line 1276
    :cond_2a5
    if-lt v3, v11, :cond_2c8

    .line 1277
    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_2c8

    .line 1280
    :cond_2ae
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2c4

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v11, :cond_2c4

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v11, v12, :cond_2c4

    .line 1282
    add-int/2addr v12, v13

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2c8

    .line 1284
    :cond_2c4
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1293
    :cond_2c8
    :goto_2c8
    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v6

    if-ge v11, v14, :cond_318

    .line 1296
    const/16 v11, 0x3030

    if-ne v5, v11, :cond_30e

    .line 1297
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v4, v11

    sub-int/2addr v11, v14

    .line 1298
    .local v11, "comparingHeight":I
    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v11, v12, :cond_2ee

    .line 1299
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    .line 1300
    .end local v6    # "posY":I
    .local v12, "posY":I
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v19, v3

    .end local v3    # "displayFrameWidth":I
    .local v19, "displayFrameWidth":I
    sub-int v3, v11, v6

    move/from16 v22, v10

    .end local v10    # "posX":I
    .local v22, "posX":I
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v3, v10, :cond_2ec

    .line 1301
    add-int/2addr v12, v6

    move v6, v12

    goto :goto_30a

    .line 1300
    :cond_2ec
    move v6, v12

    goto :goto_30a

    .line 1303
    .end local v12    # "posY":I
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .restart local v3    # "displayFrameWidth":I
    .restart local v6    # "posY":I
    .restart local v10    # "posX":I
    :cond_2ee
    move/from16 v19, v3

    move/from16 v22, v10

    .end local v3    # "displayFrameWidth":I
    .end local v10    # "posX":I
    .restart local v19    # "displayFrameWidth":I
    .restart local v22    # "posX":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v11, v3, :cond_306

    iget v3, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v10

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-le v3, v10, :cond_303

    goto :goto_306

    .line 1307
    :cond_303
    move v3, v14

    move v6, v3

    .end local v6    # "posY":I
    .local v3, "posY":I
    goto :goto_30a

    .line 1305
    .end local v3    # "posY":I
    .restart local v6    # "posY":I
    :cond_306
    :goto_306
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    move v6, v3

    .line 1309
    .end local v11    # "comparingHeight":I
    :goto_30a
    move/from16 v10, v22

    goto/16 :goto_3c7

    .line 1310
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .local v3, "displayFrameWidth":I
    .restart local v10    # "posX":I
    :cond_30e
    move/from16 v19, v3

    move/from16 v22, v10

    .end local v3    # "displayFrameWidth":I
    .end local v10    # "posX":I
    .restart local v19    # "displayFrameWidth":I
    .restart local v22    # "posX":I
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_3c7

    .line 1312
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .restart local v3    # "displayFrameWidth":I
    .restart local v10    # "posX":I
    :cond_318
    move/from16 v19, v3

    move/from16 v22, v10

    .end local v3    # "displayFrameWidth":I
    .end local v10    # "posX":I
    .restart local v19    # "displayFrameWidth":I
    .restart local v22    # "posX":I
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int v10, v6, v3

    if-le v10, v4, :cond_381

    .line 1313
    const/16 v3, 0x5050

    if-ne v5, v3, :cond_352

    .line 1314
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v3, v10, :cond_34e

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_337

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v6

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v10, :cond_34e

    :cond_337
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v10

    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v10, :cond_34e

    .line 1317
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v10

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v6, v3, v10

    move/from16 v10, v22

    goto/16 :goto_3c7

    .line 1356
    :cond_34e
    move/from16 v10, v22

    goto/16 :goto_3c7

    .line 1320
    :cond_352
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v3, v15, :cond_375

    .line 1321
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-nez v3, :cond_36a

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v3, :cond_36a

    .line 1322
    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v10

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v10, v22

    goto :goto_3c7

    .line 1324
    :cond_36a
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v3, v4, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v10, v22

    goto :goto_3c7

    .line 1327
    :cond_375
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v10

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v10, v22

    goto :goto_3c7

    .line 1331
    :cond_381
    const/16 v10, 0x3030

    if-ne v5, v10, :cond_39b

    .line 1332
    if-ge v6, v14, :cond_3a2

    .line 1333
    add-int/2addr v3, v6

    add-int/2addr v3, v14

    iget v10, v1, Landroid/graphics/Rect;->top:I

    if-le v3, v10, :cond_3a2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v10

    iget v10, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v10, :cond_3a2

    .line 1335
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v6, v3, v7

    goto :goto_3a2

    .line 1339
    :cond_39b
    if-ge v6, v14, :cond_3a2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_3a2

    .line 1340
    move v6, v14

    .line 1345
    :cond_3a2
    :goto_3a2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v3

    if-eqz v3, :cond_3ab

    .line 1346
    const/16 v3, 0x28

    .local v3, "bottomBarHeight":I
    goto :goto_3ad

    .line 1348
    .end local v3    # "bottomBarHeight":I
    :cond_3ab
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    .line 1350
    .restart local v3    # "bottomBarHeight":I
    :goto_3ad
    if-eqz v3, :cond_34e

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v10, v11, :cond_34e

    .line 1351
    iget v10, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v6, v10, v11

    move/from16 v10, v22

    goto :goto_3c7

    .line 1252
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .local v3, "displayFrameWidth":I
    .restart local v10    # "posX":I
    :cond_3c5
    move/from16 v19, v3

    .line 1356
    .end local v3    # "displayFrameWidth":I
    .restart local v19    # "displayFrameWidth":I
    :goto_3c7
    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 1357
    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 1358
    return-void

    :sswitch_data_3cc
    .sparse-switch
        0x1 -> :sswitch_fe
        0x3 -> :sswitch_fb
        0x5 -> :sswitch_f5
        0x101 -> :sswitch_e9
        0x103 -> :sswitch_e1
        0x105 -> :sswitch_dc
        0x201 -> :sswitch_af
        0x303 -> :sswitch_a9
        0x505 -> :sswitch_a6
    .end sparse-switch

    :sswitch_data_3f2
    .sparse-switch
        0x10 -> :sswitch_132
        0x30 -> :sswitch_12d
        0x50 -> :sswitch_124
        0x3030 -> :sswitch_11b
        0x5050 -> :sswitch_115
    .end sparse-switch
.end method

.method private dismissPopup()V
    .registers 5

    .line 1581
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 1586
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1587
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1588
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 1591
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_20

    .line 1596
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1597
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1598
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    .line 1600
    :cond_20
    return-void
.end method

.method private getDeviceRotation()I
    .registers 3

    .line 1671
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1672
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private getNavigationBarHeight()I
    .registers 5

    .line 1661
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v1, 0x11101f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1662
    .local v0, "hasNavigationBar":Z
    const/4 v1, 0x0

    .line 1664
    .local v1, "navigationBarHeight":I
    if-eqz v0, :cond_15

    .line 1665
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050253

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1667
    :cond_15
    return v1
.end method

.method private getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 7

    .line 352
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 353
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 354
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_19

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 358
    :cond_19
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 359
    .local v2, "displaySize":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "SemHoverPopupWindow"

    if-nez v3, :cond_40

    .line 360
    const-string v3, "getApplicationContext() is null"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 362
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 363
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    goto :goto_4e

    .line 365
    :cond_40
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 368
    :goto_4e
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 369
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    if-nez v3, :cond_9b

    .line 370
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    .line 373
    sget-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v3, :cond_91

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRealDisplayMetrics :sRealDisplayMetricsInDexMode width:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRealDisplayMetrics :sRealDisplayMetricsInDexMode height:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_91
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 382
    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 384
    :cond_9b
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object v3

    .line 388
    :cond_9e
    sget-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v3, :cond_d4

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRealDisplayMetrics :displaySize width:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRealDisplayMetrics :displaySize height:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_d4
    return-object v2
.end method

.method private getStateHashCode()I
    .registers 6

    .line 1629
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 1630
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_4c

    .line 1632
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1633
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x2

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1634
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1635
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1636
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1637
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 1639
    new-array v1, v4, [I

    .line 1640
    .local v1, "location":[I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1641
    const/4 v3, 0x0

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x14

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1643
    .end local v1    # "location":[I
    :cond_4c
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .line 679
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 680
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    .line 681
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 682
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 684
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final hidden_TYPE_NONE()I
    .registers 1

    .line 1932
    const/4 v0, 0x0

    return v0
.end method

.method private static final hidden_TYPE_TOOLTIP()I
    .registers 1

    .line 1941
    const/4 v0, 0x1

    return v0
.end method

.method private static final hidden_TYPE_USER_CUSTOM()I
    .registers 1

    .line 1950
    const/4 v0, 0x3

    return v0
.end method

.method private hidden_setGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .line 1959
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 1960
    return-void
.end method

.method private hidden_setHoverDetectTime(I)V
    .registers 2
    .param p1, "ms"    # I

    .line 1968
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    .line 1969
    return-void
.end method

.method private hidden_setOffset(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1977
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    .line 1978
    return-void
.end method

.method private hidden_update()V
    .registers 1

    .line 1986
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    .line 1987
    return-void
.end method

.method private initCoverManager()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1a

    .line 289
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 290
    if-nez v0, :cond_1a

    .line 291
    const-string v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1a
    return-void
.end method

.method private initInstance()V
    .registers 4

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    .line 252
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 254
    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 255
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 256
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 257
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 258
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 259
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 260
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 261
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 262
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 263
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 264
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 265
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getNavigationBarHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    .line 268
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 269
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 270
    const v2, 0x10302fe

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 272
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 274
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 275
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 276
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 277
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 278
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 279
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 280
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    .line 283
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 284
    return-void
.end method

.method private isAnchorViewInAppBounds(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1701
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1702
    .local v0, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isEmbeddedMode()Z
    .registers 3

    .line 1691
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v0

    .line 1692
    .local v0, "isActivityInEmbeddingState":I
    if-eqz v0, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private isFreeFormMode()Z
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 342
    .local v0, "windowMode":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private isHoveringSettingEnabled()Z
    .registers 2

    .line 401
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    packed-switch v0, :pswitch_data_12

    .line 407
    const/4 v0, 0x0

    return v0

    .line 405
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    return v0

    .line 403
    :pswitch_c
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method private isLockScreenMode()Z
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 455
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private isMouseHoveringSettingsEnabled()Z
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->semIsDesktopMode()Z

    move-result v0

    return v0

    .line 420
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private isPopOver()Z
    .registers 2

    .line 1681
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    .line 1682
    .local v0, "isPopOver":Z
    return v0
.end method

.method private isSPenHoveringSettingsEnabled()Z
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x3

    const-string/jumbo v2, "pen_hovering"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v3, v1

    :cond_13
    return v3
.end method

.method private isTalkBackEnabledForDeX()Z
    .registers 4

    .line 439
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 440
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 441
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 442
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 441
    :goto_1e
    return v1

    .line 444
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1f
    return v1
.end method

.method private isViewCoverClose()Z
    .registers 5

    .line 465
    const/4 v0, 0x1

    .line 468
    .local v0, "isCoverOpen":Z
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_11

    .line 469
    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    move-object v2, v1

    .local v2, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_11

    .line 470
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move v0, v1

    .line 475
    .end local v2    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_11
    goto :goto_1a

    .line 473
    :catch_12
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemHoverPopupWindow"

    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1a
    if-nez v0, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private measureContentView(Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 854
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_18

    .line 857
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 858
    .local v0, "widthMeasureSpec":I
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "heightMeasureSpec":I
    goto :goto_42

    .line 860
    .end local v0    # "widthMeasureSpec":I
    .end local v1    # "heightMeasureSpec":I
    :cond_18
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_25

    .line 861
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "widthMeasureSpec":I
    goto :goto_2d

    .line 865
    .end local v0    # "widthMeasureSpec":I
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 868
    .restart local v0    # "widthMeasureSpec":I
    :goto_2d
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_3a

    .line 869
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightMeasureSpec":I
    goto :goto_42

    .line 872
    .end local v1    # "heightMeasureSpec":I
    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 875
    .restart local v1    # "heightMeasureSpec":I
    :goto_42
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 876
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 877
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 878
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 879
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_71

    .line 880
    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 881
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 882
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 884
    :cond_71
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .registers 5
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .line 1622
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1623
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3a

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1625
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 1622
    :goto_3b
    return v0
.end method

.method private resetTimeout()V
    .registers 5

    .line 1647
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 1648
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1649
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1656
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1658
    :cond_1b
    return-void
.end method

.method private setPopupContent()V
    .registers 3

    .line 820
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1e

    .line 834
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_14

    .line 832
    :pswitch_9
    goto :goto_14

    .line 828
    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    .line 829
    goto :goto_14

    .line 825
    :pswitch_e
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 826
    goto :goto_14

    .line 822
    :pswitch_11
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 823
    nop

    .line 838
    :goto_14
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v0, :cond_1d

    .line 839
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    .line 841
    :cond_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private showPopup()V
    .registers 5

    .line 749
    const-string v0, "SemHoverPopupWindow"

    :try_start_2
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v2

    if-eq v1, v2, :cond_50

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPopup() is cancelled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 754
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4c

    .line 755
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 756
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    goto :goto_4f

    .line 758
    :cond_4c
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 760
    :goto_4f
    return-void

    .line 765
    :cond_50
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v1, :cond_58

    .line 766
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 769
    :cond_58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 771
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_62

    .line 772
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 775
    :cond_62
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 776
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    .line 777
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6b} :catch_6c

    .line 781
    goto :goto_83

    .line 779
    :catch_6c
    move-exception v1

    .line 780
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail show hover popup :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_83
    return-void
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .registers 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_24

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHoverPopup(), returned due to mPopup == null  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHoverPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-void

    .line 1383
    :cond_24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 1385
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_30

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v0, :cond_30

    .line 1389
    return-void

    .line 1393
    :cond_30
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_3e

    .line 1394
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_45

    .line 1396
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1399
    :goto_45
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 1404
    return-void

    .line 1407
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1408
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_84

    .line 1412
    :cond_64
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1413
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_7b

    .line 1418
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_84

    .line 1420
    :cond_7b
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1423
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_84
    return-void
.end method


# virtual methods
.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .registers 4

    .line 797
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_52

    .line 798
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 799
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 800
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 801
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 802
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 803
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 805
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 806
    .local v0, "anchorView":Landroid/view/View;
    :goto_3b
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_4b

    .line 807
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setIsLaidOutInScreen(Z)V

    .line 809
    :cond_4b
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 811
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_52
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .registers 2

    .line 1570
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_8

    .line 1571
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 1573
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    .line 1574
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public isHoverPopupPossible()Z
    .registers 3

    .line 313
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1a

    goto :goto_18

    .line 322
    :pswitch_7
    return v1

    .line 317
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 318
    :cond_16
    return v1

    .line 315
    :pswitch_17
    return v1

    .line 325
    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public isShowing()Z
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected isUspFeature()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected makeDefaultContentView()V
    .registers 1

    .line 850
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1460
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1461
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1462
    .local v2, "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1468
    .local v3, "timeDelay":J
    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_8a

    :pswitch_1c
    goto :goto_88

    .line 1533
    :pswitch_1d
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v5, :cond_88

    .line 1540
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v5, :cond_30

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1541
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1543
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 1544
    return v8

    .line 1470
    :pswitch_37
    cmp-long v5, v3, v5

    if-lez v5, :cond_3c

    .line 1474
    return v8

    .line 1477
    :cond_3c
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_88

    .line 1478
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_88

    .line 1482
    :pswitch_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    .line 1484
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v9, :cond_7f

    .line 1485
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v9

    .line 1487
    .local v9, "isPointInValidHoverArea":Z
    if-eqz v9, :cond_6f

    iget-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v10, :cond_6f

    .line 1492
    cmp-long v5, v3, v5

    if-lez v5, :cond_69

    .line 1497
    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1498
    return v8

    .line 1501
    :cond_69
    iput-boolean v8, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1502
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    .line 1503
    return v8

    .line 1504
    :cond_6f
    if-nez v9, :cond_7f

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v5, :cond_7f

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v5, :cond_7f

    .line 1510
    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1511
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1512
    return v8

    .line 1520
    .end local v9    # "isPointInValidHoverArea":Z
    :cond_7f
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_87

    .line 1521
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    .line 1527
    :cond_87
    return v8

    .line 1555
    :cond_88
    :goto_88
    return v7

    nop

    :pswitch_data_8a
    .packed-switch 0x7
        :pswitch_47
        :pswitch_1c
        :pswitch_37
        :pswitch_1d
    .end packed-switch
.end method

.method protected postDismiss(I)V
    .registers 6
    .param p1, "ms"    # I

    .line 1562
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1563
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 3
    .param p1, "aniStyle"    # I

    .line 1433
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 1435
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1437
    :cond_9
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 543
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 560
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 561
    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 563
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 576
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 578
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .registers 2
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .line 489
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 490
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .line 637
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 638
    return-void
.end method

.method public setHoverDetectTime(I)V
    .registers 2
    .param p1, "ms"    # I

    .line 605
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 606
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 618
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 619
    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 620
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 621
    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 623
    if-nez p1, :cond_10

    if-nez p3, :cond_10

    if-nez p2, :cond_10

    if-eqz p4, :cond_13

    .line 625
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 627
    :cond_13
    return-void
.end method

.method public setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .line 532
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .line 533
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 430
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 431
    return-void
.end method

.method public setHoveringPoint(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 659
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 660
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 661
    return-void
.end method

.method protected setInstanceByType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 303
    return-void
.end method

.method public setNeedNotWindowOffset(Z)V
    .registers 2
    .param p1, "needNotWindowOffset"    # Z

    .line 670
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    .line 671
    return-void
.end method

.method public setOffset(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 647
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 648
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 649
    return-void
.end method

.method public setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 521
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 522
    return-void
.end method

.method public setTouchable(Z)V
    .registers 3
    .param p1, "isTouchable"    # Z

    .line 1446
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 1447
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 1448
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1450
    :cond_9
    return-void
.end method

.method public show()V
    .registers 8

    .line 696
    sget-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v0, :cond_23

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHoverPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 706
    .local v0, "anchorView":Landroid/view/View;
    :goto_2a
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v1

    .line 708
    .local v1, "type":I
    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v1, v2, :cond_37

    .line 709
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 710
    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 714
    :cond_37
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v2, :cond_42

    invoke-interface {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v2

    if-nez v2, :cond_42

    .line 715
    return-void

    .line 719
    :cond_42
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v2, :cond_a3

    if-eqz v1, :cond_a3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a3

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v3, :cond_a3

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v3, :cond_57

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v3, :cond_a3

    .line 721
    :cond_57
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 722
    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_a3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_a3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_a3

    .line 723
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isTalkBackEnabledForDeX()Z

    move-result v3

    if-eqz v3, :cond_84

    goto :goto_a3

    .line 728
    :cond_84
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    .line 731
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v3, :cond_91

    .line 732
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 737
    :cond_91
    new-instance v3, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 738
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 739
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 741
    return-void

    .line 724
    :cond_a3
    :goto_a3
    return-void
.end method

.method protected showPenPointEffect(Z)V
    .registers 4
    .param p1, "show"    # Z

    .line 1606
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 1611
    if-eqz p1, :cond_14

    .line 1612
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_24

    .line 1614
    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_24

    .line 1615
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 1616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 1619
    :cond_24
    :goto_24
    return-void
.end method

.method public update()V
    .registers 5

    .line 1364
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1366
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_30

    .line 1368
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_27
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 1371
    :goto_30
    return-void
.end method
