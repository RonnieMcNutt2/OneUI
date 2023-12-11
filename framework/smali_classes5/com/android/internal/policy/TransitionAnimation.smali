.class public Lcom/android/internal/policy/TransitionAnimation;
.super Ljava/lang/Object;
.source "TransitionAnimation.java"


# static fields
.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field public static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final WALLPAPER_TRANSITION_CLOSE:I = 0x2

.field public static final WALLPAPER_TRANSITION_INTRA_CLOSE:I = 0x4

.field public static final WALLPAPER_TRANSITION_INTRA_OPEN:I = 0x3

.field public static final WALLPAPER_TRANSITION_NONE:I = 0x0

.field public static final WALLPAPER_TRANSITION_OPEN:I = 0x1


# instance fields
.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private final mDebug:Z

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultWindowAnimationStyleResId:I

.field private mDisplayId:I

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field private final mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLowRamRecentsEnabled:Z

.field private final mTag:Ljava/lang/String;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpToClipRect:Landroid/graphics/Rect;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public static synthetic $r8$lambda$__G9Yc5pATyIoYv_Gx1HUFy9fRk(Lcom/android/internal/policy/TransitionAnimation;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$1(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$d1edpJ9ve8u5CeJUVnJI8kenkmg(Lcom/android/internal/policy/TransitionAnimation;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$0(F)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 111
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debug"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 121
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 123
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDisplayId:I

    .line 146
    iput-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 147
    iput-boolean p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    .line 148
    iput-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    .line 150
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 152
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 165
    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 174
    nop

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 179
    const-string/jumbo v0, "ro.recents.grid"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    .line 180
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void
.end method

.method private static calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 7
    .param p0, "cutOff"    # Z
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "displayFrame"    # Landroid/graphics/Rect;

    .line 1177
    if-nez p0, :cond_5

    .line 1178
    const-wide/16 v0, 0x150

    return-wide v0

    .line 1180
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1181
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1180
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1182
    .local v0, "fraction":F
    const/high16 v1, 0x42a80000    # 84.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x43a80000    # 336.0f

    add-float/2addr v1, v2

    float-to-long v1, v1

    return-wide v1
.end method

.method public static computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .line 1296
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 1297
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 1298
    int-to-float v1, p0

    return v1

    .line 1300
    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 4
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "layer"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 1353
    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 1354
    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1356
    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsHdrLayers()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1359
    :cond_1c
    return-void
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 31
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .line 1087
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 1088
    .local v3, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 1089
    .local v4, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1090
    .local v5, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1091
    .local v6, "destHeight":F
    if-eqz p4, :cond_1f

    div-float v7, v3, v5

    goto :goto_21

    :cond_1f
    div-float v7, v5, v3

    :goto_21
    move v9, v7

    .line 1092
    .local v9, "scaleH":F
    if-eqz p4, :cond_27

    div-float v7, v4, v6

    goto :goto_29

    :cond_27
    div-float v7, v6, v4

    :goto_29
    move v11, v7

    .line 1093
    .local v11, "scaleV":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1094
    .local v7, "set":Landroid/view/animation/AnimationSet;
    const/4 v8, 0x0

    if-nez v2, :cond_35

    .line 1095
    move v10, v8

    goto :goto_3a

    :cond_35
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    :goto_3a
    move v15, v10

    .line 1096
    .local v15, "surfaceInsetsH":I
    if-nez v2, :cond_3e

    .line 1097
    goto :goto_43

    :cond_3e
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    :goto_43
    move v14, v8

    .line 1100
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_48

    move v8, v5

    goto :goto_49

    :cond_48
    move v8, v3

    :goto_49
    int-to-float v10, v15

    add-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v23, v8, v10

    .line 1101
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_53

    move v8, v6

    goto :goto_54

    :cond_53
    move v8, v4

    :goto_54
    int-to-float v12, v14

    add-float/2addr v8, v12

    div-float v24, v8, v10

    .line 1102
    .local v24, "scaleVCenter":F
    if-eqz p4, :cond_6c

    .line 1103
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v8, v16

    move/from16 v13, v23

    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .local v25, "surfaceInsetsV":I
    move/from16 v14, v24

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_81

    .line 1104
    .end local v25    # "surfaceInsetsV":I
    .restart local v14    # "surfaceInsetsV":I
    :cond_6c
    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .restart local v25    # "surfaceInsetsV":I
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v8

    move/from16 v18, v9

    move/from16 v20, v11

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_81
    move-object/from16 v8, v16

    .line 1105
    .local v8, "scale":Landroid/view/animation/ScaleAnimation;
    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    .line 1106
    .local v10, "sourceHCenter":I
    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 1107
    .local v12, "sourceVCenter":I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1108
    .local v13, "destHCenter":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v14, v16

    .line 1109
    .local v14, "destVCenter":I
    if-eqz p4, :cond_ad

    sub-int v16, v10, v13

    goto :goto_af

    :cond_ad
    sub-int v16, v13, v10

    :goto_af
    move/from16 v17, v16

    .line 1110
    .local v17, "fromX":I
    if-eqz p4, :cond_b6

    sub-int v16, v12, v14

    goto :goto_b8

    :cond_b6
    sub-int v16, v14, v12

    :goto_b8
    move/from16 v18, v16

    .line 1111
    .local v18, "fromY":I
    if-eqz p4, :cond_cf

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move/from16 v1, v17

    .end local v17    # "fromX":I
    .local v1, "fromX":I
    int-to-float v2, v1

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    int-to-float v4, v3

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "destWidth":F
    .local v19, "destWidth":F
    invoke-direct {v0, v2, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_e1

    .line 1112
    .end local v1    # "fromX":I
    .end local v19    # "destWidth":F
    .local v3, "sourceWidth":F
    .restart local v4    # "sourceHeight":F
    .restart local v5    # "destWidth":F
    .local v17, "fromX":I
    .local v18, "fromY":I
    :cond_cf
    move/from16 v19, v5

    move/from16 v1, v17

    const/4 v5, 0x0

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .end local v5    # "destWidth":F
    .restart local v1    # "fromX":I
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    .restart local v19    # "destWidth":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v1

    int-to-float v4, v3

    invoke-direct {v0, v5, v2, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_e1
    nop

    .line 1113
    .local v0, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1114
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1115
    return-object v7
.end method

.method private static createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "fromX"    # F
    .param p1, "toX"    # F
    .param p2, "fromY"    # F
    .param p3, "toY"    # F

    .line 1226
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public static createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interpolator"    # Lcom/android/internal/policy/LogDecelerateInterpolator;
    .param p2, "onWallpaper"    # Z
    .param p3, "goingToNotificationShade"    # Z
    .param p4, "subtleAnimation"    # Z

    .line 1321
    if-eqz p3, :cond_a

    .line 1322
    const v0, 0x10a0084

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1327
    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_KEYGUARD_BASIC_ANIM:Z

    if-eqz v0, :cond_13

    .line 1328
    invoke-static {p2, p4}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomKeyguardAnim(ZZ)I

    move-result v0

    .local v0, "resource":I
    goto :goto_22

    .line 1331
    .end local v0    # "resource":I
    :cond_13
    if-eqz p4, :cond_19

    .line 1332
    const v0, 0x10a0085

    .restart local v0    # "resource":I
    goto :goto_22

    .line 1333
    .end local v0    # "resource":I
    :cond_19
    if-eqz p2, :cond_1f

    .line 1334
    const v0, 0x10a0086

    .restart local v0    # "resource":I
    goto :goto_22

    .line 1336
    .end local v0    # "resource":I
    :cond_1f
    const v0, 0x10a0083

    .line 1339
    .restart local v0    # "resource":I
    :goto_22
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 1342
    .local v1, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    .line 1343
    .local v2, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_32
    if-ltz v3, :cond_40

    .line 1344
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1343
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 1347
    .end local v3    # "i":I
    :cond_40
    return-object v1
.end method

.method public static getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F
    .registers 24
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1384
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1385
    return v1

    .line 1387
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    .line 1389
    .local v2, "format":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_d8

    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v6, p1

    move/from16 v16, v2

    goto/16 :goto_dc

    .line 1393
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v5

    invoke-static {v4, v5, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    .line 1395
    .local v4, "ir":Landroid/media/ImageReader;
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-virtual {v5, v0, v6}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 1396
    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v5

    .line 1397
    .local v5, "image":Landroid/media/Image;
    if-eqz v5, :cond_d5

    invoke-virtual {v5}, Landroid/media/Image;->getPlaneCount()I

    move-result v7

    if-ge v7, v3, :cond_3e

    move/from16 v16, v2

    goto/16 :goto_d7

    .line 1401
    :cond_3e
    invoke-virtual {v5}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v7, 0x0

    aget-object v1, v1, v7

    .line 1402
    .local v1, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1403
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v9

    .line 1404
    .local v9, "width":I
    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v10

    .line 1405
    .local v10, "height":I
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    .line 1406
    .local v11, "pixelStride":I
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 1407
    .local v12, "rowStride":I
    const/16 v13, 0xa

    .line 1408
    .local v13, "sampling":I
    add-int v14, v9, v10

    mul-int/lit8 v14, v14, 0x2

    div-int/lit8 v14, v14, 0xa

    new-array v14, v14, [I

    .line 1411
    .local v14, "borderLumas":[I
    const/4 v15, 0x0

    .line 1412
    .local v15, "i":I
    const/16 v16, 0x0

    .local v16, "x":I
    add-int/lit8 v3, v9, -0xa

    move/from16 v7, v16

    .end local v16    # "x":I
    .local v3, "size":I
    .local v7, "x":I
    :goto_6a
    if-ge v7, v3, :cond_84

    .line 1413
    add-int/lit8 v18, v15, 0x1

    const/4 v0, 0x0

    .end local v15    # "i":I
    .local v18, "i":I
    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v19

    aput v19, v14, v15

    .line 1414
    add-int/lit8 v15, v18, 0x1

    .end local v18    # "i":I
    .restart local v15    # "i":I
    add-int/lit8 v0, v10, -0x1

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v0

    aput v0, v14, v18

    .line 1412
    add-int/lit8 v7, v7, 0xa

    move-object/from16 v0, p0

    goto :goto_6a

    .line 1418
    .end local v3    # "size":I
    .end local v7    # "x":I
    :cond_84
    const/4 v0, 0x0

    .local v0, "y":I
    add-int/lit8 v3, v10, -0xa

    .restart local v3    # "size":I
    :goto_87
    if-ge v0, v3, :cond_a3

    .line 1419
    add-int/lit8 v7, v15, 0x1

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "plane":Landroid/media/Image$Plane;
    .end local v15    # "i":I
    .local v7, "i":I
    .local v18, "plane":Landroid/media/Image$Plane;
    invoke-static {v8, v1, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v16

    aput v16, v14, v15

    .line 1420
    add-int/lit8 v15, v7, 0x1

    .end local v7    # "i":I
    .restart local v15    # "i":I
    add-int/lit8 v1, v9, -0x1

    invoke-static {v8, v1, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v1

    aput v1, v14, v7

    .line 1418
    add-int/lit8 v0, v0, 0xa

    move-object/from16 v1, v18

    goto :goto_87

    .end local v18    # "plane":Landroid/media/Image$Plane;
    .restart local v1    # "plane":Landroid/media/Image$Plane;
    :cond_a3
    move-object/from16 v18, v1

    .line 1423
    .end local v0    # "y":I
    .end local v1    # "plane":Landroid/media/Image$Plane;
    .end local v3    # "size":I
    .restart local v18    # "plane":Landroid/media/Image$Plane;
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 1426
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 1427
    .local v0, "histogram":[I
    const/4 v1, 0x0

    .line 1428
    .local v1, "maxCount":I
    const/4 v3, 0x0

    .line 1429
    .local v3, "mostLuma":I
    array-length v7, v14

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "format":I
    .local v16, "format":I
    :goto_b2
    if-ge v2, v7, :cond_ce

    aget v19, v14, v2

    .line 1430
    .local v19, "luma":I
    aget v20, v0, v19

    const/16 v17, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v0, v19

    move/from16 v21, v20

    .line 1431
    .local v21, "count":I
    move-object/from16 v20, v0

    move/from16 v0, v21

    .end local v21    # "count":I
    .local v0, "count":I
    .local v20, "histogram":[I
    if-le v0, v1, :cond_c9

    .line 1432
    move v1, v0

    .line 1433
    move/from16 v3, v19

    .line 1429
    .end local v0    # "count":I
    .end local v19    # "luma":I
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    goto :goto_b2

    .line 1436
    .end local v20    # "histogram":[I
    .local v0, "histogram":[I
    :cond_ce
    move-object/from16 v20, v0

    .end local v0    # "histogram":[I
    .restart local v20    # "histogram":[I
    int-to-float v0, v3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    return v0

    .line 1397
    .end local v1    # "maxCount":I
    .end local v3    # "mostLuma":I
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "pixelStride":I
    .end local v12    # "rowStride":I
    .end local v13    # "sampling":I
    .end local v14    # "borderLumas":[I
    .end local v15    # "i":I
    .end local v16    # "format":I
    .end local v18    # "plane":Landroid/media/Image$Plane;
    .end local v20    # "histogram":[I
    .restart local v2    # "format":I
    :cond_d5
    move/from16 v16, v2

    .line 1398
    .end local v2    # "format":I
    .restart local v16    # "format":I
    :goto_d7
    return v1

    .line 1389
    .end local v4    # "ir":Landroid/media/ImageReader;
    .end local v5    # "image":Landroid/media/Image;
    .end local v16    # "format":I
    .restart local v2    # "format":I
    :cond_d8
    move-object/from16 v6, p1

    move/from16 v16, v2

    .line 1390
    .end local v2    # "format":I
    .restart local v16    # "format":I
    :goto_dc
    return v1
.end method

.method public static getBorderLuma(Landroid/view/SurfaceControl;II)F
    .registers 6
    .param p0, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1369
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1370
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 1371
    .local v0, "buffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-nez v0, :cond_10

    .line 1372
    const/4 v1, 0x0

    return v1

    .line 1374
    :cond_10
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 1375
    .local v1, "hwBuffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v2

    .line 1376
    .local v2, "luma":F
    if-eqz v1, :cond_21

    .line 1377
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1379
    :cond_21
    return v2
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 396
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 398
    if-eqz p1, :cond_17

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_18

    :cond_17
    move-object v3, v1

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    if-eqz p1, :cond_2b

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_2b
    move-object v3, v1

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_37
    if-eqz p1, :cond_7a

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_7a

    .line 405
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_46

    :cond_44
    const-string v0, "android"

    .line 406
    .local v0, "packageName":Ljava/lang/String;
    :goto_46
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 407
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_53

    .line 408
    const-string v0, "android"

    .line 410
    :cond_53
    iget-boolean v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v2, :cond_6f

    .line 411
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_6f
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 416
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_7a
    return-object v1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 421
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_2a

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_2a
    if-eqz p1, :cond_5c

    .line 426
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_35

    .line 427
    const-string p1, "android"

    .line 429
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_51

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_51
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 436
    :cond_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "defaultStartRect"    # Landroid/graphics/Rect;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 1077
    if-nez p1, :cond_14

    if-nez p2, :cond_14

    .line 1078
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for container not available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1c

    .line 1081
    :cond_14
    if-eqz p1, :cond_18

    move-object v0, p1

    goto :goto_19

    :cond_18
    move-object v0, p2

    :goto_19
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1083
    :goto_1c
    return-void
.end method

.method private static getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I
    .registers 11
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pixelStride"    # I
    .param p4, "rowStride"    # I

    .line 1442
    mul-int v0, p2, p4

    mul-int v1, p1, p3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 1445
    .local v0, "color":I
    and-int/lit16 v1, v0, 0xff

    .line 1446
    .local v1, "r":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1447
    .local v2, "g":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 1449
    .local v3, "b":I
    mul-int/lit8 v4, v1, 0x8

    mul-int/lit8 v5, v2, 0x16

    add-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x5

    return v4
.end method

.method private getThumbnailTransitionState(ZZ)I
    .registers 4
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z

    .line 1190
    if-eqz p1, :cond_8

    .line 1191
    if-eqz p2, :cond_6

    .line 1192
    const/4 v0, 0x0

    return v0

    .line 1194
    :cond_6
    const/4 v0, 0x2

    return v0

    .line 1197
    :cond_8
    if-eqz p2, :cond_c

    .line 1198
    const/4 v0, 0x1

    return v0

    .line 1200
    :cond_c
    const/4 v0, 0x3

    return v0
.end method

.method private static getTransitCompatType(II)I
    .registers 3
    .param p0, "transit"    # I
    .param p1, "wallpaperTransit"    # I

    .line 1150
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1151
    const/16 v0, 0xe

    return v0

    .line 1152
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 1153
    const/16 v0, 0xf

    return v0

    .line 1154
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 1155
    const/4 v0, 0x6

    return v0

    .line 1156
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    .line 1157
    const/4 v0, 0x7

    return v0

    .line 1161
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z
    .registers 5
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 1363
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static isDefaultPackageAnimRes(I)Z
    .registers 3
    .param p0, "resId"    # I

    .line 1510
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private synthetic lambda$new$0(F)F
    .registers 4
    .param p1, "input"    # F

    .line 158
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_8

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_8
    sub-float v1, p1, v0

    div-float/2addr v1, v0

    .line 163
    .local v1, "t":F
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$1(F)F
    .registers 4
    .param p1, "input"    # F

    .line 167
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_f

    .line 168
    div-float v0, p1, v0

    .line 169
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    return v1

    .line 171
    .end local v0    # "t":F
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "animStyleResId"    # I
    .param p3, "animAttr"    # I
    .param p4, "translucent"    # Z
    .param p5, "transit"    # I

    .line 336
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 337
    return-object v0

    .line 339
    :cond_4
    const/4 v1, 0x0

    .line 340
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 341
    .local v2, "context":Landroid/content/Context;
    if-ltz p3, :cond_1f

    .line 342
    if-eqz p1, :cond_d

    move-object v3, p1

    goto :goto_f

    :cond_d
    const-string v3, "android"

    :goto_f
    move-object p1, v3

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v3

    .line 344
    .local v3, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v3, :cond_1f

    .line 345
    iget-object v2, v3, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 346
    iget-object v4, v3, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 349
    .end local v3    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_1f
    if-eqz p4, :cond_26

    .line 350
    invoke-static {v1}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(I)I

    move-result v1

    goto :goto_2d

    .line 351
    :cond_26
    const/4 v3, -0x1

    if-eq p5, v3, :cond_2d

    .line 352
    invoke-static {v1, p5}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v1

    .line 360
    :cond_2d
    :goto_2d
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM:Z

    if-eqz v3, :cond_35

    .line 361
    invoke-direct {p0, v1}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomAnimIfNeeded(I)I

    move-result v1

    .line 365
    :cond_35
    invoke-static {v1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 368
    :cond_42
    return-object v0
.end method

.method public static loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 1306
    const-string v0, "Unable to load animation resource"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_7} :catch_d
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_7} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    .line 1311
    :catch_8
    move-exception v2

    .line 1312
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-static {p2, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1313
    return-object v1

    .line 1307
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_d
    move-exception v2

    .line 1308
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    invoke-static {p2, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    return-object v1
.end method

.method private prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 12
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 1046
    packed-switch p4, :pswitch_data_14

    .line 1052
    const/16 v0, 0x150

    .local v0, "duration":I
    goto :goto_9

    .line 1049
    .end local v0    # "duration":I
    :pswitch_6
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 1050
    .restart local v0    # "duration":I
    nop

    .line 1055
    :goto_9
    int-to-long v4, v0

    iget-object v6, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 8
    .param p0, "a"    # Landroid/view/animation/Animation;
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1210
    if-nez p0, :cond_4

    .line 1211
    const/4 v0, 0x0

    return-object v0

    .line 1214
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_d

    .line 1215
    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1217
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1218
    if-eqz p5, :cond_16

    .line 1219
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1221
    :cond_16
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1222
    return-object p0
.end method

.method private setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 496
    if-nez p1, :cond_12

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_15

    .line 500
    :cond_12
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 502
    :goto_15
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(I)Z
    .registers 4
    .param p1, "orientation"    # I

    .line 1122
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    if-ne p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method private updateToCustomAnimIfNeeded(I)I
    .registers 3
    .param p1, "anim"    # I

    .line 1467
    sparse-switch p1, :sswitch_data_3c

    .line 1503
    return p1

    .line 1491
    :sswitch_4
    const v0, 0x10a00ca

    return v0

    .line 1489
    :sswitch_8
    const v0, 0x10a00c9

    return v0

    .line 1496
    :sswitch_c
    const v0, 0x10a00c8

    return v0

    .line 1494
    :sswitch_10
    const v0, 0x10a00c7

    return v0

    .line 1476
    :sswitch_14
    const v0, 0x10a00c4

    return v0

    .line 1474
    :sswitch_18
    const v0, 0x10a00c3

    return v0

    .line 1486
    :sswitch_1c
    const v0, 0x10a00c2

    return v0

    .line 1484
    :sswitch_20
    const v0, 0x10a00c1

    return v0

    .line 1499
    :sswitch_24
    const v0, 0x10a00b3

    return v0

    .line 1501
    :sswitch_28
    const v0, 0x10a00b2

    return v0

    .line 1471
    :sswitch_2c
    const v0, 0x10a00b1

    return v0

    .line 1469
    :sswitch_30
    const v0, 0x10a00b0

    return v0

    .line 1481
    :sswitch_34
    const v0, 0x10a00ae

    return v0

    .line 1479
    :sswitch_38
    const v0, 0x10a00ad

    return v0

    :sswitch_data_3c
    .sparse-switch
        0x10a000d -> :sswitch_38
        0x10a000e -> :sswitch_34
        0x10a000f -> :sswitch_30
        0x10a0010 -> :sswitch_2c
        0x10a0011 -> :sswitch_28
        0x10a0012 -> :sswitch_24
        0x10a0165 -> :sswitch_20
        0x10a0166 -> :sswitch_1c
        0x10a016f -> :sswitch_18
        0x10a0171 -> :sswitch_14
        0x10a017e -> :sswitch_10
        0x10a017f -> :sswitch_c
        0x10a0186 -> :sswitch_8
        0x10a0187 -> :sswitch_4
    .end sparse-switch
.end method

.method private static updateToCustomKeyguardAnim(ZZ)I
    .registers 3
    .param p0, "onWallpaper"    # Z
    .param p1, "subtleAnimation"    # Z

    .line 1454
    if-eqz p1, :cond_c

    .line 1455
    if-eqz p0, :cond_8

    .line 1456
    const v0, 0x10a00bb

    goto :goto_b

    .line 1457
    :cond_8
    const v0, 0x10a00b9

    .line 1455
    :goto_b
    return v0

    .line 1459
    :cond_c
    if-eqz p0, :cond_12

    .line 1460
    const v0, 0x10a00ba

    goto :goto_15

    .line 1461
    :cond_12
    const v0, 0x10a00b8

    .line 1459
    :goto_15
    return v0
.end method

.method private static updateToTranslucentAnimIfNeeded(I)I
    .registers 2
    .param p0, "anim"    # I

    .line 1139
    const v0, 0x10a000f

    if-ne p0, v0, :cond_9

    .line 1140
    const v0, 0x10a0012

    return v0

    .line 1142
    :cond_9
    const v0, 0x10a000e

    if-ne p0, v0, :cond_12

    .line 1143
    const v0, 0x10a0011

    return v0

    .line 1145
    :cond_12
    return p0
.end method

.method private static updateToTranslucentAnimIfNeeded(II)I
    .registers 3
    .param p0, "anim"    # I
    .param p1, "transit"    # I

    .line 1127
    const/16 v0, 0x18

    if-ne p1, v0, :cond_d

    const v0, 0x10a000f

    if-ne p0, v0, :cond_d

    .line 1129
    const v0, 0x10a0012

    return v0

    .line 1131
    :cond_d
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1a

    const v0, 0x10a000e

    if-ne p0, v0, :cond_1a

    .line 1133
    const v0, 0x10a0011

    return v0

    .line 1135
    :cond_1a
    return p0
.end method


# virtual methods
.method public createAspectScaledThumbnailEnterExitAnimationLocked(ZZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 40
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "stableInsets"    # Landroid/graphics/Rect;
    .param p9, "freeform"    # Z
    .param p10, "startRect"    # Landroid/graphics/Rect;
    .param p11, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 770
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 771
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 772
    .local v15, "appHeight":I
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v8}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 773
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 774
    .local v13, "thumbWidthI":I
    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v13, :cond_29

    int-to-float v9, v13

    goto :goto_2a

    :cond_29
    move v9, v8

    :goto_2a
    move/from16 v16, v9

    .line 775
    .local v16, "thumbWidth":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 776
    .local v11, "thumbHeightI":I
    if-lez v11, :cond_36

    int-to-float v9, v11

    goto :goto_37

    :cond_36
    move v9, v8

    :goto_37
    move/from16 v17, v9

    .line 777
    .local v17, "thumbHeight":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget v10, v3, Landroid/graphics/Rect;->left:I

    sub-int v12, v9, v10

    .line 778
    .local v12, "thumbStartX":I
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int v18, v9, v10

    .line 779
    .local v18, "thumbStartY":I
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v19

    .line 781
    .local v19, "thumbTransitState":I
    const/16 v9, 0xe

    const/4 v10, 0x0

    packed-switch v19, :pswitch_data_210

    .line 890
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid thumbnail transition state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :pswitch_5e
    if-ne v1, v9, :cond_6b

    .line 883
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v10, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v21, v15

    .local v8, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1fd

    .line 885
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_6b
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    .line 887
    .restart local v8    # "a":Landroid/view/animation/Animation;
    move-object v1, v8

    move/from16 v21, v15

    goto/16 :goto_1fd

    .line 869
    .end local v8    # "a":Landroid/view/animation/Animation;
    :pswitch_76
    if-ne v1, v9, :cond_83

    .line 872
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v21, v15

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1fd

    .line 874
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_83
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    .line 876
    .restart local v8    # "a":Landroid/view/animation/Animation;
    move-object v1, v8

    move/from16 v21, v15

    goto/16 :goto_1fd

    .line 784
    .end local v8    # "a":Landroid/view/animation/Animation;
    :pswitch_8e
    if-eqz p9, :cond_9b

    if-eqz p2, :cond_9b

    .line 785
    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v1, v8

    move/from16 v21, v15

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1fd

    .line 787
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_9b
    if-eqz p9, :cond_a6

    .line 788
    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v1, v8

    move/from16 v21, v15

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1fd

    .line 791
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_a6
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v9, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 794
    .local v9, "set":Landroid/view/animation/AnimationSet;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 795
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 799
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 800
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 803
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 805
    move/from16 v10, p3

    invoke-direct {v0, v10}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v8

    if-eqz v8, :cond_1b1

    .line 807
    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int v8, v14, v8

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v1

    int-to-float v1, v8

    div-float v1, v16, v1

    .line 809
    .local v1, "scale":F
    iget-boolean v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-nez v8, :cond_e6

    .line 810
    div-float v8, v17, v1

    float-to-int v8, v8

    .line 811
    .local v8, "unscaledThumbHeight":I
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 814
    .end local v8    # "unscaledThumbHeight":I
    :cond_e6
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 815
    if-eqz p2, :cond_ed

    move/from16 v22, v1

    goto :goto_ef

    :cond_ed
    const/high16 v22, 0x3f800000    # 1.0f

    :goto_ef
    if-eqz p2, :cond_f4

    const/high16 v23, 0x3f800000    # 1.0f

    goto :goto_f6

    :cond_f4
    move/from16 v23, v1

    .line 816
    :goto_f6
    if-eqz p2, :cond_fb

    move/from16 v24, v1

    goto :goto_fd

    :cond_fb
    const/high16 v24, 0x3f800000    # 1.0f

    :goto_fd
    if-eqz p2, :cond_102

    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_104

    :cond_102
    move/from16 v25, v1

    .line 817
    :goto_104
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v26, v6, v8

    .line 818
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v27, v6, v8

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 819
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    .line 820
    .local v6, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v20, 0x40000000    # 2.0f

    div-float v8, v8, v20

    .line 821
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v20

    mul-float/2addr v7, v1

    sub-float/2addr v8, v7

    .line 822
    .local v8, "x":F
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    .line 823
    .local v7, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v20, 0x40000000    # 2.0f

    div-float v10, v10, v20

    .line 824
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v20

    mul-float/2addr v2, v1

    sub-float/2addr v10, v2

    .line 828
    .local v10, "y":F
    iget-boolean v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    if-eqz v2, :cond_16d

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_16d

    if-eqz p2, :cond_16d

    .line 829
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v20, v1

    .end local v1    # "scale":F
    .local v20, "scale":F
    iget v1, v2, Landroid/graphics/Rect;->top:I

    move/from16 v21, v15

    .end local v15    # "appHeight":I
    .local v21, "appHeight":I
    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v15

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 830
    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v10, v1

    goto :goto_171

    .line 828
    .end local v20    # "scale":F
    .end local v21    # "appHeight":I
    .restart local v1    # "scale":F
    .restart local v15    # "appHeight":I
    :cond_16d
    move/from16 v20, v1

    move/from16 v21, v15

    .line 832
    .end local v1    # "scale":F
    .end local v15    # "appHeight":I
    .restart local v20    # "scale":F
    .restart local v21    # "appHeight":I
    :goto_171
    sub-float v1, v6, v8

    .line 833
    .local v1, "startX":F
    sub-float v2, v7, v10

    .line 834
    .local v2, "startY":F
    if-eqz p2, :cond_183

    .line 835
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v22, v6

    .end local v6    # "targetX":F
    .local v22, "targetX":F
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_18e

    .line 836
    .end local v22    # "targetX":F
    .restart local v6    # "targetX":F
    :cond_183
    move/from16 v22, v6

    .end local v6    # "targetX":F
    .restart local v22    # "targetX":F
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_18e
    move-object v5, v15

    .line 837
    .local v5, "clipAnim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_19c

    .line 838
    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    const/4 v15, 0x0

    invoke-static {v1, v15, v6, v15}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_1a6

    .line 839
    :cond_19c
    const/4 v15, 0x0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-static {v15, v1, v15, v6}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v6

    :goto_1a6
    nop

    .line 841
    .local v6, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 842
    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 843
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 845
    .end local v1    # "startX":F
    .end local v2    # "startY":F
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v5    # "clipAnim":Landroid/view/animation/Animation;
    .end local v6    # "translateAnim":Landroid/view/animation/Animation;
    .end local v7    # "targetY":F
    .end local v8    # "x":F
    .end local v10    # "y":F
    .end local v20    # "scale":F
    .end local v22    # "targetX":F
    goto :goto_1f7

    .line 847
    .end local v21    # "appHeight":I
    .restart local v15    # "appHeight":I
    :cond_1b1
    move/from16 v21, v15

    .end local v15    # "appHeight":I
    .restart local v21    # "appHeight":I
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 848
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 850
    if-eqz p2, :cond_1cd

    .line 851
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1d6

    .line 852
    :cond_1cd
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1d6
    nop

    .line 853
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1e5

    .line 854
    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_1f0

    .line 856
    :cond_1e5
    const/4 v5, 0x0

    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    invoke-static {v5, v2, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    :goto_1f0
    nop

    .line 859
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 860
    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 862
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_1f7
    move-object v8, v9

    .line 863
    .local v8, "a":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 865
    .end local v9    # "set":Landroid/view/animation/AnimationSet;
    move-object v1, v8

    .line 893
    .end local v8    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    :goto_1fd
    const-wide/16 v4, 0x150

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object v8, v1

    move v9, v14

    move/from16 v10, v21

    move v6, v11

    move v7, v12

    .end local v11    # "thumbHeightI":I
    .end local v12    # "thumbStartX":I
    .local v6, "thumbHeightI":I
    .local v7, "thumbStartX":I
    move-wide v11, v4

    move v4, v13

    .end local v13    # "thumbWidthI":I
    .local v4, "thumbWidthI":I
    move-object v13, v2

    invoke-static/range {v8 .. v13}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_76
        :pswitch_5e
        :pswitch_8e
    .end packed-switch
.end method

.method public createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "transit"    # I
    .param p2, "wallpaperTransit"    # I
    .param p3, "enter"    # Z
    .param p4, "appFrame"    # Landroid/graphics/Rect;
    .param p5, "displayFrame"    # Landroid/graphics/Rect;
    .param p6, "startRect"    # Landroid/graphics/Rect;

    .line 506
    nop

    .line 507
    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v1

    .line 506
    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 37
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;
    .param p5, "startRect"    # Landroid/graphics/Rect;

    .line 514
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v4, 0x0

    if-eqz p2, :cond_143

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 516
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 520
    .local v15, "appHeight":I
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v14, p5

    invoke-direct {v0, v14, v7}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 522
    const/4 v7, 0x0

    .line 523
    .local v7, "t":F
    if-lez v15, :cond_2a

    .line 524
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_2c

    .line 523
    :cond_2a
    move/from16 v16, v7

    .line 526
    .end local v7    # "t":F
    .local v16, "t":F
    :goto_2c
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float v8, v8, v16

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 527
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 528
    .local v8, "translationX":I
    move v9, v7

    .line 529
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 530
    .local v17, "centerX":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 531
    .local v18, "centerY":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 532
    .local v19, "halfWidth":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    .line 533
    .local v20, "halfHeight":I
    sub-int v10, v17, v19

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 534
    .local v10, "clipStartX":I
    sub-int v11, v18, v20

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 535
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 540
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v18, v20

    if-le v13, v3, :cond_78

    .line 541
    sub-int v3, v18, v20

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v13

    .line 542
    const/4 v9, 0x0

    .line 543
    const/4 v11, 0x0

    .line 544
    const/4 v12, 0x1

    move v3, v7

    move/from16 v21, v9

    move/from16 v22, v11

    goto :goto_7d

    .line 540
    :cond_78
    move v3, v7

    move/from16 v21, v9

    move/from16 v22, v11

    .line 546
    .end local v7    # "translationY":I
    .end local v9    # "translationYCorrection":I
    .end local v11    # "clipStartY":I
    .local v3, "translationY":I
    .local v21, "translationYCorrection":I
    .local v22, "clipStartY":I
    :goto_7d
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v17, v19

    if-le v7, v9, :cond_8b

    .line 547
    sub-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 548
    const/4 v10, 0x0

    .line 549
    const/4 v12, 0x1

    .line 551
    :cond_8b
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v17, v19

    if-ge v7, v9, :cond_a4

    .line 552
    add-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 553
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 554
    const/4 v12, 0x1

    move v13, v8

    move v11, v12

    move v12, v10

    goto :goto_a7

    .line 551
    :cond_a4
    move v13, v8

    move v11, v12

    move v12, v10

    .line 556
    .end local v8    # "translationX":I
    .end local v10    # "clipStartX":I
    .local v11, "cutOff":Z
    .local v12, "clipStartX":I
    .local v13, "translationX":I
    :goto_a7
    int-to-float v7, v13

    int-to-float v8, v3

    move-object/from16 v10, p4

    invoke-static {v11, v7, v8, v10}, Lcom/android/internal/policy/TransitionAnimation;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    .line 560
    .local v8, "duration":J
    new-instance v7, Lcom/android/internal/policy/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 561
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v12

    const/4 v10, 0x0

    invoke-direct {v7, v12, v5, v10, v6}, Lcom/android/internal/policy/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    .line 562
    .local v5, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 563
    long-to-float v7, v8

    const/high16 v23, 0x40200000    # 2.5f

    div-float v7, v7, v23

    move/from16 v23, v11

    .end local v11    # "cutOff":Z
    .local v23, "cutOff":Z
    float-to-long v10, v7

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 565
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v13

    int-to-float v11, v3

    invoke-direct {v7, v10, v4, v11, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v4, v7

    .line 566
    .local v4, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v23, :cond_da

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_dc

    .line 567
    :cond_da
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 566
    :goto_dc
    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 568
    invoke-virtual {v4, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 570
    new-instance v25, Lcom/android/internal/policy/ClipRectTBAnimation;

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 571
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v10, v22, v7

    const/4 v11, 0x0

    const/16 v26, 0x0

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v7

    move-object/from16 v7, v25

    move-wide/from16 v28, v8

    .end local v8    # "duration":J
    .local v28, "duration":J
    move/from16 v8, v22

    move v9, v10

    move v10, v11

    move v11, v15

    move/from16 v24, v12

    .end local v12    # "clipStartX":I
    .local v24, "clipStartX":I
    move/from16 v12, v21

    move/from16 v30, v13

    .end local v13    # "translationX":I
    .local v30, "translationX":I
    move/from16 v13, v26

    move-object/from16 v14, v27

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/policy/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 575
    .local v7, "clipAnimTB":Landroid/view/animation/Animation;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 576
    move-wide/from16 v8, v28

    .end local v28    # "duration":J
    .restart local v8    # "duration":J
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 579
    const-wide/16 v10, 0x4

    div-long v10, v8, v10

    .line 580
    .local v10, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 581
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 582
    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 584
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 585
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 586
    invoke-virtual {v13, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 587
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 588
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 589
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 590
    invoke-virtual {v13, v6, v15, v6, v15}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 591
    move-object v3, v13

    .line 592
    .end local v4    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v5    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v6    # "appWidth":I
    .end local v7    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v8    # "duration":J
    .end local v10    # "alphaDuration":J
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .end local v15    # "appHeight":I
    .end local v16    # "t":F
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "halfWidth":I
    .end local v20    # "halfHeight":I
    .end local v21    # "translationYCorrection":I
    .end local v22    # "clipStartY":I
    .end local v23    # "cutOff":Z
    .end local v24    # "clipStartX":I
    .end local v30    # "translationX":I
    .local v3, "anim":Landroid/view/animation/Animation;
    goto :goto_177

    .line 594
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_143
    packed-switch v1, :pswitch_data_178

    .line 600
    const-wide/16 v5, 0x150

    .local v5, "duration":J
    goto :goto_14d

    .line 597
    .end local v5    # "duration":J
    :pswitch_149
    iget v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v5, v3

    .line 598
    .restart local v5    # "duration":J
    nop

    .line 603
    :goto_14d
    const/16 v3, 0xe

    if-eq v1, v3, :cond_161

    const/16 v3, 0xf

    if-ne v1, v3, :cond_158

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_163

    .line 613
    :cond_158
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v4, 0x1

    .restart local v3    # "anim":Landroid/view/animation/Animation;
    goto :goto_16c

    .line 603
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_161
    const/high16 v7, 0x3f800000    # 1.0f

    .line 609
    :goto_163
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 610
    .restart local v3    # "anim":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 615
    :goto_16c
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 616
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 617
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 619
    .end local v5    # "duration":J
    :goto_177
    return-object v3

    :pswitch_data_178
    .packed-switch 0x6
        :pswitch_149
        :pswitch_149
    .end packed-switch
.end method

.method public createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;
    .registers 12
    .param p1, "thumbnailDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 1017
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1018
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1020
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 1021
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1022
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1023
    iget-object v4, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050115

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1025
    .local v4, "thumbnailSize":I
    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v0, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v1, v4

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1030
    iget-object v5, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1031
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1032
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1034
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    return-object v5
.end method

.method public createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 246
    .local v6, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 246
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 20
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v4, p3

    invoke-direct {v0, v4, v3}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 455
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 456
    .local v3, "left":I
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 457
    .local v5, "top":I
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v7, v3

    neg-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 459
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 460
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 461
    .local v6, "set":Landroid/view/animation/AnimationSet;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 462
    .local v8, "fromWidth":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    .line 463
    .local v9, "toWidth":F
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    .line 467
    .local v10, "fromHeight":F
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    .line 468
    .local v11, "toHeight":F
    const/4 v12, 0x0

    .line 469
    .local v12, "translateAdjustment":I
    cmpg-float v13, v8, v9

    if-gtz v13, :cond_68

    cmpg-float v13, v10, v11

    if-gtz v13, :cond_68

    .line 473
    new-instance v13, Landroid/view/animation/ClipRectAnimation;

    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v13, v14, v15}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7c

    .line 477
    :cond_68
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    div-float v14, v8, v9

    div-float v15, v10, v11

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v13, v14, v7, v15, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 481
    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v10

    div-float/2addr v7, v11

    float-to-int v12, v7

    .line 487
    :goto_7c
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    int-to-float v13, v13

    iget v14, v1, Landroid/graphics/Rect;->top:I

    sub-int v14, v5, v14

    sub-int/2addr v14, v12

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v7, v13, v15, v14, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 489
    .local v7, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 490
    const-wide/16 v13, 0x150

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 491
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 492
    return-object v6
.end method

.method public createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "transit"    # I
    .param p2, "wallpaperTransit"    # I
    .param p3, "enter"    # Z
    .param p4, "containingFrame"    # Landroid/graphics/Rect;
    .param p5, "startRect"    # Landroid/graphics/Rect;

    .line 624
    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 23
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "startRect"    # Landroid/graphics/Rect;

    .line 631
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-direct {v0, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 633
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 634
    .local v4, "appHeight":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_69

    .line 636
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    .line 637
    .local v8, "scaleW":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    .line 638
    .local v9, "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 639
    invoke-static {v10, v8}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v15

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 640
    invoke-static {v10, v9}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    move-object/from16 v10, v17

    move v11, v8

    move v13, v9

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 641
    .local v10, "scale":Landroid/view/animation/Animation;
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 643
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v11

    .line 644
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 646
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 647
    .local v7, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 648
    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 649
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 650
    move-object v5, v7

    .line 651
    .end local v7    # "set":Landroid/view/animation/AnimationSet;
    .end local v8    # "scaleW":F
    .end local v9    # "scaleH":F
    .end local v10    # "scale":Landroid/view/animation/Animation;
    .local v5, "a":Landroid/view/animation/Animation;
    goto :goto_81

    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_69
    const/16 v8, 0xe

    if-eq v1, v8, :cond_78

    const/16 v8, 0xf

    if-ne v1, v8, :cond_72

    goto :goto_78

    .line 661
    :cond_72
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_81

    .line 657
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_78
    :goto_78
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v7, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v8

    .line 658
    .restart local v5    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 668
    :goto_81
    packed-switch v1, :pswitch_data_9a

    .line 674
    const-wide/16 v7, 0x150

    .local v7, "duration":J
    goto :goto_8b

    .line 671
    .end local v7    # "duration":J
    :pswitch_87
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v7, v7

    .line 672
    .restart local v7    # "duration":J
    nop

    .line 677
    :goto_8b
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 678
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 679
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 680
    invoke-virtual {v5, v2, v4, v2, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 681
    return-object v5

    :pswitch_data_9a
    .packed-switch 0x6
        :pswitch_87
        :pswitch_87
    .end packed-switch
.end method

.method public createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 36
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p4, "orientation"    # I
    .param p5, "startRect"    # Landroid/graphics/Rect;
    .param p6, "defaultStartRect"    # Landroid/graphics/Rect;
    .param p7, "scaleUp"    # Z

    .line 905
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    .line 906
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_10

    int-to-float v5, v3

    goto :goto_11

    :cond_10
    move v5, v4

    .line 907
    .local v5, "thumbWidth":F
    :goto_11
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    .line 908
    .local v6, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 910
    .local v13, "appWidth":I
    int-to-float v7, v13

    div-float v21, v7, v5

    .line 911
    .local v21, "scaleW":F
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v12, p5

    move-object/from16 v10, p6

    invoke-direct {v0, v12, v10, v7}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 918
    move/from16 v11, p4

    invoke-direct {v0, v11}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 919
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    .line 920
    .local v7, "fromX":F
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 924
    .local v8, "fromY":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v14, v21, v4

    mul-float/2addr v9, v14

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v9, v14

    .line 925
    .local v9, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v4, v21

    sub-float v15, v4, v15

    mul-float/2addr v14, v15

    iget v15, v1, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 926
    .local v14, "toY":F
    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 927
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-float v4, v4, v21

    .line 928
    .local v4, "pivotY":F
    move/from16 v16, v4

    .end local v4    # "pivotY":F
    .local v16, "pivotY":F
    iget-boolean v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-eqz v4, :cond_80

    .line 931
    int-to-float v4, v6

    sub-float/2addr v8, v4

    .line 932
    int-to-float v4, v6

    mul-float v4, v4, v21

    sub-float/2addr v14, v4

    move/from16 v22, v15

    move/from16 v4, v16

    move v15, v14

    move/from16 v27, v9

    move v9, v7

    move/from16 v7, v27

    goto :goto_a5

    .line 928
    :cond_80
    move/from16 v22, v15

    move/from16 v4, v16

    move v15, v14

    move/from16 v27, v9

    move v9, v7

    move/from16 v7, v27

    goto :goto_a5

    .line 935
    .end local v7    # "fromX":F
    .end local v8    # "fromY":F
    .end local v9    # "toX":F
    .end local v14    # "toY":F
    .end local v15    # "pivotX":F
    .end local v16    # "pivotY":F
    :cond_8b
    const/4 v15, 0x0

    .line 936
    .restart local v15    # "pivotX":F
    const/4 v4, 0x0

    .line 937
    .restart local v4    # "pivotY":F
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    .line 938
    .restart local v7    # "fromX":F
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 939
    .restart local v8    # "fromY":F
    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    .line 940
    .restart local v9    # "toX":F
    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v22, v15

    move v15, v14

    move/from16 v27, v9

    move v9, v7

    move/from16 v7, v27

    .line 942
    .local v7, "toX":F
    .local v9, "fromX":F
    .local v15, "toY":F
    .local v22, "pivotX":F
    :goto_a5
    const/4 v14, 0x0

    move/from16 v16, v15

    .end local v15    # "toY":F
    .local v16, "toY":F
    const/4 v15, 0x0

    const-wide/16 v10, 0x150

    if-eqz p7, :cond_16c

    .line 944
    new-instance v23, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v14, v23

    move/from16 v12, v16

    .end local v16    # "toY":F
    .local v12, "toY":F
    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v18

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 945
    .local v14, "scale":Landroid/view/animation/Animation;
    sget-object v15, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 946
    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 947
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    move/from16 v23, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .end local v5    # "thumbWidth":F
    .local v23, "thumbWidth":F
    invoke-direct {v10, v5, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v10

    .line 948
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 949
    const-wide/16 v10, 0x150

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 950
    invoke-static {v9, v7, v8, v12}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v10

    .line 951
    .local v10, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v10, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 952
    move/from16 v25, v7

    move/from16 v24, v8

    const-wide/16 v7, 0x150

    .end local v7    # "toX":F
    .end local v8    # "fromY":F
    .local v24, "fromY":F
    .local v25, "toX":F
    invoke-virtual {v10, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 954
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 955
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 959
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 960
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v7, Landroid/graphics/Rect;->right:I

    .line 961
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 963
    if-eqz v2, :cond_13d

    .line 964
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    int-to-float v11, v11

    mul-float v11, v11, v21

    float-to-int v11, v11

    iget v8, v2, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    mul-float v8, v8, v21

    float-to-int v8, v8

    iget v1, v2, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v21

    float-to-int v1, v1

    move/from16 v26, v3

    .end local v3    # "thumbWidthI":I
    .local v26, "thumbWidthI":I
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v7, v11, v8, v1, v3}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_13f

    .line 963
    .end local v26    # "thumbWidthI":I
    .restart local v3    # "thumbWidthI":I
    :cond_13d
    move/from16 v26, v3

    .line 970
    .end local v3    # "thumbWidthI":I
    .restart local v26    # "thumbWidthI":I
    :goto_13f
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3, v7}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 971
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 972
    const-wide/16 v7, 0x150

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 975
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 976
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 977
    iget-boolean v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_160

    .line 979
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 981
    :cond_160
    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 982
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 983
    move-object v1, v3

    .line 984
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v10    # "translate":Landroid/view/animation/Animation;
    .end local v14    # "scale":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    move/from16 v11, v24

    move/from16 v10, v25

    goto :goto_1c5

    .line 986
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v12    # "toY":F
    .end local v23    # "thumbWidth":F
    .end local v24    # "fromY":F
    .end local v25    # "toX":F
    .end local v26    # "thumbWidthI":I
    .local v3, "thumbWidthI":I
    .local v5, "thumbWidth":F
    .restart local v7    # "toX":F
    .restart local v8    # "fromY":F
    .restart local v16    # "toY":F
    :cond_16c
    move/from16 v26, v3

    move/from16 v23, v5

    move/from16 v25, v7

    move/from16 v24, v8

    move v11, v14

    move/from16 v12, v16

    .end local v3    # "thumbWidthI":I
    .end local v5    # "thumbWidth":F
    .end local v7    # "toX":F
    .end local v8    # "fromY":F
    .end local v16    # "toY":F
    .restart local v12    # "toY":F
    .restart local v23    # "thumbWidth":F
    .restart local v24    # "fromY":F
    .restart local v25    # "toX":F
    .restart local v26    # "thumbWidthI":I
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v14, v1

    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 987
    .local v1, "scale":Landroid/view/animation/Animation;
    sget-object v3, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 988
    const-wide/16 v7, 0x150

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 989
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v5, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 990
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 991
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 992
    move/from16 v11, v24

    move/from16 v10, v25

    .end local v24    # "fromY":F
    .end local v25    # "toX":F
    .local v10, "toX":F
    .local v11, "fromY":F
    invoke-static {v10, v9, v12, v11}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v14

    .line 993
    .local v14, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v14, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 994
    invoke-virtual {v14, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 997
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 998
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 999
    iget-boolean v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_1c0

    .line 1001
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1003
    :cond_1c0
    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1004
    move-object v7, v3

    move-object v1, v7

    .line 1007
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v14    # "translate":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    :goto_1c5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    move/from16 v16, v10

    .end local v10    # "toX":F
    .local v16, "toX":F
    move-object v7, v1

    move/from16 v17, v11

    .end local v11    # "fromY":F
    .local v17, "fromY":F
    move v8, v13

    move/from16 v18, v9

    .end local v9    # "fromX":F
    .local v18, "fromX":F
    move v9, v3

    move-wide v10, v14

    move v14, v12

    .end local v12    # "toY":F
    .local v14, "toY":F
    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3
.end method

.method public createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "transit"    # I
    .param p5, "wallpaperTransit"    # I
    .param p6, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p7, "startRect"    # Landroid/graphics/Rect;

    .line 687
    nop

    .line 688
    invoke-static {p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v4

    .line 687
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 29
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "transit"    # I
    .param p5, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p6, "startRect"    # Landroid/graphics/Rect;

    .line 698
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 699
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 701
    .local v3, "appHeight":I
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v5, p6

    invoke-direct {v0, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 702
    if-eqz p5, :cond_1a

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    goto :goto_1b

    :cond_1a
    move v4, v2

    .line 703
    .local v4, "thumbWidthI":I
    :goto_1b
    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v4, :cond_21

    int-to-float v7, v4

    goto :goto_22

    :cond_21
    move v7, v6

    .line 704
    .local v7, "thumbWidth":F
    :goto_22
    if-eqz p5, :cond_29

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v8

    goto :goto_2a

    :cond_29
    move v8, v3

    .line 705
    .local v8, "thumbHeightI":I
    :goto_2a
    if-lez v8, :cond_2e

    int-to-float v9, v8

    goto :goto_2f

    :cond_2e
    move v9, v6

    .line 706
    .local v9, "thumbHeight":F
    :goto_2f
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v10

    .line 708
    .local v10, "thumbTransitState":I
    const/4 v11, 0x0

    packed-switch v10, :pswitch_data_c8

    .line 755
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v11, "Invalid thumbnail transition state"

    invoke-direct {v6, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 739
    :pswitch_3f
    int-to-float v12, v2

    div-float v12, v7, v12

    .line 740
    .local v12, "scaleW":F
    int-to-float v13, v3

    div-float v15, v9, v13

    .line 741
    .local v15, "scaleH":F
    new-instance v20, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 742
    invoke-static {v13, v12}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v18

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 743
    invoke-static {v13, v15}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v19

    move-object/from16 v13, v20

    move/from16 v21, v15

    .end local v15    # "scaleH":F
    .local v21, "scaleH":F
    move v15, v12

    move/from16 v17, v21

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 745
    .local v13, "scale":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v6, v14

    .line 747
    .local v6, "alpha":Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 748
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 749
    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 750
    invoke-virtual {v11, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 751
    move-object v14, v11

    .line 752
    .local v14, "a":Landroid/view/animation/Animation;
    goto :goto_c3

    .line 734
    .end local v6    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .end local v12    # "scaleW":F
    .end local v13    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v21    # "scaleH":F
    :pswitch_7c
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 735
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_c3

    .line 720
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_83
    const/16 v12, 0xe

    if-ne v1, v12, :cond_8e

    .line 724
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v12

    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_c3

    .line 727
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_8e
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 729
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_c3

    .line 711
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_95
    int-to-float v6, v2

    div-float v6, v7, v6

    .line 712
    .local v6, "scaleW":F
    int-to-float v11, v3

    div-float v15, v9, v11

    .line 713
    .restart local v15    # "scaleH":F
    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 714
    invoke-static {v11, v6}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v17

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 715
    invoke-static {v11, v15}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v19

    move-object/from16 v11, v18

    move v12, v6

    move v14, v15

    move/from16 v20, v15

    .end local v15    # "scaleH":F
    .local v20, "scaleH":F
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v14, v18

    .line 716
    .restart local v14    # "a":Landroid/view/animation/Animation;
    nop

    .line 758
    .end local v6    # "scaleW":F
    .end local v20    # "scaleH":F
    :goto_c3
    invoke-direct {v0, v14, v2, v3, v1}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_95
        :pswitch_83
        :pswitch_7c
        :pswitch_3f
    .end packed-switch
.end method

.method public getAnimationResId(Landroid/view/WindowManager$LayoutParams;II)I
    .registers 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "resId":I
    if-ltz p2, :cond_10

    .line 302
    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    .line 303
    .local v1, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v1, :cond_10

    .line 304
    iget-object v2, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 307
    .end local v1    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_10
    invoke-static {v0, p3}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 308
    return v0
.end method

.method public getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 441
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 442
    .local v0, "resId":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 447
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 449
    :cond_9
    return v0
.end method

.method public getDefaultAnimationResId(II)I
    .registers 7
    .param p1, "animAttr"    # I
    .param p2, "transit"    # I

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "resId":I
    if-ltz p1, :cond_14

    .line 315
    const-string v1, "android"

    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    .line 317
    .local v1, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v1, :cond_14

    .line 318
    iget-object v2, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 321
    .end local v1    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_14
    invoke-static {v0, p2}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 322
    return v0
.end method

.method public loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 273
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    .line 275
    .local v2, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 276
    iget-object v1, v2, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 277
    iget-object v3, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 280
    .end local v2    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_14
    invoke-static {v0, p3}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 287
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM:Z

    if-eqz v2, :cond_20

    .line 288
    invoke-direct {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomAnimIfNeeded(I)I

    move-result v0

    .line 292
    :cond_20
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 295
    :cond_2d
    const/4 v2, 0x0

    return-object v2
.end method

.method public loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "animStyleResId"    # I
    .param p3, "animAttr"    # I
    .param p4, "translucent"    # Z

    .line 376
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 253
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    .line 255
    .local v0, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v0, :cond_15

    .line 256
    iget-object v1, v0, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 259
    .end local v0    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 233
    const-string v0, "android"

    const v1, 0x10a0170

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 239
    const-string v0, "android"

    const v1, 0x10a0027

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultAnimationAttr(II)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "animAttr"    # I
    .param p2, "transit"    # I

    .line 390
    const-string v1, "android"

    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;
    .registers 5
    .param p1, "animAttr"    # I
    .param p2, "translucent"    # Z

    .line 383
    const-string v0, "android"

    iget v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultAnimationRes(I)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "resId"    # I

    .line 265
    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadDimAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 1515
    const-string v0, "android"

    const v1, 0x10a00af

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "transitionFlags"    # I
    .param p2, "onWallpaper"    # Z

    .line 191
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_6
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 196
    .local v0, "toShade":Z
    :goto_f
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_14

    move v1, v2

    .line 198
    .local v1, "subtle":Z
    :cond_14
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2
.end method

.method public loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 204
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_OCCLUDE_BASIC_ANIM:Z

    if-eqz v0, :cond_c

    .line 205
    const v0, 0x10a00bc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 209
    :cond_c
    const v0, 0x10a0187

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "enter"    # Z

    .line 221
    if-eqz p1, :cond_6

    .line 222
    const v0, 0x10a0178

    goto :goto_9

    .line 223
    :cond_6
    const v0, 0x10a0179

    .line 221
    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "enter"    # Z

    .line 214
    if-eqz p1, :cond_6

    .line 215
    const v0, 0x10a017a

    goto :goto_9

    .line 216
    :cond_6
    const v0, 0x10a017b

    .line 214
    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public overrideDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1546
    iput p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDisplayId:I

    .line 1547
    return-void
.end method

.method public updateToCustomCoverAnimIfNeeded(I)I
    .registers 3
    .param p1, "anim"    # I

    .line 1521
    sparse-switch p1, :sswitch_data_14

    .line 1542
    return p1

    .line 1530
    :sswitch_4
    const v0, 0x10a00b7

    return v0

    .line 1525
    :sswitch_8
    const v0, 0x10a00b6

    return v0

    .line 1540
    :sswitch_c
    const v0, 0x10a00b5

    return v0

    .line 1535
    :sswitch_10
    const v0, 0x10a00b4

    return v0

    :sswitch_data_14
    .sparse-switch
        0x10a000d -> :sswitch_10
        0x10a000e -> :sswitch_c
        0x10a000f -> :sswitch_8
        0x10a0010 -> :sswitch_4
        0x10a0165 -> :sswitch_10
        0x10a0166 -> :sswitch_c
        0x10a016f -> :sswitch_8
        0x10a0171 -> :sswitch_4
        0x10a017e -> :sswitch_8
        0x10a017f -> :sswitch_4
        0x10a0186 -> :sswitch_10
        0x10a0187 -> :sswitch_c
    .end sparse-switch
.end method
