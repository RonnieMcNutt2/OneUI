.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode;,
        Landroid/view/Display$HdrCapabilities;,
        Landroid/view/Display$HdrSdrRatioListenerWrapper;,
        Landroid/view/Display$ColorMode;
    }
.end annotation


# static fields
.field private static final CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field public static final CARLIFE_DISPLAY_GROUP:I = 0x4

.field public static final COLOR_MODE_ADOBE_RGB:I = 0x8

.field public static final COLOR_MODE_BT601_525:I = 0x3

.field public static final COLOR_MODE_BT601_525_UNADJUSTED:I = 0x4

.field public static final COLOR_MODE_BT601_625:I = 0x1

.field public static final COLOR_MODE_BT601_625_UNADJUSTED:I = 0x2

.field public static final COLOR_MODE_BT709:I = 0x5

.field public static final COLOR_MODE_DCI_P3:I = 0x6

.field public static final COLOR_MODE_DEFAULT:I = 0x0

.field public static final COLOR_MODE_DISPLAY_P3:I = 0x9

.field public static final COLOR_MODE_INVALID:I = -0x1

.field public static final COLOR_MODE_SRGB:I = 0x7

.field private static final DEBUG:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field public static final DEFAULT_DISPLAY_GROUP:I = 0x0

.field public static final DEX_DISPLAY:I = 0x2

.field public static final DEX_DISPLAY_GROUP:I = 0x2

.field public static final DISPLAY_MODE_ID_FOR_FRAME_RATE_OVERRIDE:I = 0xff

.field public static final EXTRA_BUILT_IN_DISPLAY:I = 0x1

.field public static final FLAG_ALWAYS_UNLOCKED:I = 0x200

.field public static final FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final FLAG_CARLIFE_DISPLAY:I = 0x100000

.field public static final FLAG_HIDDEN_SPACE_DISPLAY:I = 0x4000

.field public static final FLAG_NO_LOCK_PRESENTATION:I = 0x20000000

.field public static final FLAG_OWN_DISPLAY_GROUP:I = 0x100

.field public static final FLAG_OWN_FOCUS:I = 0x800

.field public static final FLAG_PC_DEX_DISPLAY:I = 0x8000000

.field public static final FLAG_PRESENTATION:I = 0x8

.field public static final FLAG_PRIVATE:I = 0x4

.field public static final FLAG_REAR:I = 0x2000

.field public static final FLAG_REMOTE_APP_DISPLAY:I = 0x2000000

.field public static final FLAG_ROUND:I = 0x10

.field public static final FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x40

.field public static final FLAG_SPEG_DISPLAY:I = 0x8000

.field public static final FLAG_STEAL_TOP_FOCUS_DISABLED:I = 0x1000

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final FLAG_TOUCH_FEEDBACK_DISABLED:I = 0x400

.field public static final FLAG_TRUSTED:I = 0x80

.field public static final FLAG_VIEW_COVER_DISPLAY:I = 0x80000

.field public static final FLAG_WIFI_DISPLAY:I = 0x10000000

.field public static final FLAG_WIRELESS_DEX_DISPLAY:I = 0x4000000

.field public static final INVALID_DISPLAY:I = -0x1

.field public static final INVALID_DISPLAY_GROUP:I = -0x1

.field public static final INVALID_DISPLAY_HEIGHT:I = -0x1

.field public static final INVALID_DISPLAY_REFRESH_RATE:F = 0.0f

.field public static final INVALID_DISPLAY_WIDTH:I = -0x1

.field public static final MAX_STATIC_DISPLAY:I = 0x4

.field public static final MAX_STATIC_DISPLAY_GROUP:I = 0x4

.field public static final REMOVE_MODE_DESTROY_CONTENT:I = 0x1

.field public static final REMOVE_MODE_MOVE_CONTENT_TO_PRIMARY:I = 0x0

.field public static final SEM_TYPE_EXTERNAL:I = 0x2

.field public static final STATE_DOZE:I = 0x3

.field public static final STATE_DOZE_SUSPEND:I = 0x4

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x2

.field public static final STATE_ON_SUSPEND:I = 0x6

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_VR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Display"

.field public static final TYPE_EXTERNAL:I = 0x2

.field public static final TYPE_INTERNAL:I = 0x1

.field public static final TYPE_OVERLAY:I = 0x4

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x5

.field public static final TYPE_WIFI:I = 0x3

.field public static final VIEW_COVER_DISPLAY:I = 0x4


# instance fields
.field private mCachedAppHeightCompat:I

.field private mCachedAppWidthCompat:I

.field private mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayId:I

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mFlags:I

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mHdrSdrRatioListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Display$HdrSdrRatioListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mIsValid:Z

.field private mLastCachedAppSizeUpdate:J

.field private final mLock:Ljava/lang/Object;

.field private final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private final mResources:Landroid/content/res/Resources;

.field private final mTempMetrics:Landroid/util/DisplayMetrics;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V
    .registers 11
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "res"    # Landroid/content/res/Resources;

    .line 750
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 751
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .registers 11
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .line 738
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 739
    return-void
.end method

.method private constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;
    .param p5, "res"    # Landroid/content/res/Resources;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    .line 755
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 756
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    .line 757
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 758
    iput-object p5, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 759
    if-eqz p5, :cond_2c

    .line 760
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_37

    .line 761
    :cond_2c
    new-instance v0, Landroid/view/DisplayAdjustments;

    if-eqz p4, :cond_34

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_37

    :cond_34
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    :goto_37
    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    .line 765
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/Display;->mFlags:I

    .line 766
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/Display;->mType:I

    .line 767
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    .line 768
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    .line 769
    return-void
.end method

.method private adjustMetrics(Landroid/util/DisplayMetrics;II)V
    .registers 6
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 2145
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2146
    :cond_7
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2147
    .local v0, "w":I
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2148
    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2150
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2151
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2152
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 2153
    return-void
.end method

.method private adjustSize(Landroid/graphics/Point;II)V
    .registers 6
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 2133
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2134
    :cond_7
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 2135
    .local v0, "w":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 2136
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 2137
    return-void
.end method

.method private contains([II)Z
    .registers 8
    .param p1, "disabledHdrTypes"    # [I
    .param p2, "hdrType"    # I

    .line 1470
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1471
    .local v3, "disabledHdrFormat":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_13

    .line 1472
    const/4 v0, 0x1

    return v0

    .line 1470
    .end local v3    # "disabledHdrFormat":Ljava/lang/Integer;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1475
    :cond_16
    return v1
.end method

.method private findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)I"
        }
    .end annotation

    .line 1536
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1537
    iget-object v1, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    .line 1538
    .local v1, "wrapper":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    iget-object v2, v1, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    if-ne v2, p1, :cond_16

    .line 1539
    return v0

    .line 1536
    .end local v1    # "wrapper":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1542
    .end local v0    # "i":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method private getLocalRotation()I
    .registers 3

    .line 2156
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    return v0

    .line 2157
    :cond_9
    nop

    .line 2158
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 2159
    .local v0, "localRotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    return v0

    .line 2160
    :cond_18
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method public static hasAccess(IIII)Z
    .registers 5
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I
    .param p3, "displayId"    # I

    .line 2043
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_19

    if-eq p0, p2, :cond_19

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_19

    .line 2048
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/hardware/display/DisplayManagerGlobal;->isUidPresentOnDisplay(II)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 2043
    :goto_1a
    return v0
.end method

.method public static isActiveState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2245
    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static isDozeState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2236
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static isHeightValid(I)Z
    .registers 2
    .param p0, "height"    # I

    .line 2278
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static isOffState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2253
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static isOnState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2262
    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_a

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

.method public static isRefreshRateValid(F)Z
    .registers 2
    .param p0, "refreshRate"    # F

    .line 2286
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isSuspendedState(I)Z
    .registers 3
    .param p0, "state"    # I

    .line 2227
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    const/4 v1, 0x6

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public static isWidthValid(I)Z
    .registers 2
    .param p0, "width"    # I

    .line 2270
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic lambda$getSupportedModes$0(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 5
    .param p0, "config"    # Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .param p1, "activeMode"    # Landroid/view/Display$Mode;
    .param p2, "m"    # Landroid/view/Display$Mode;

    .line 1337
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 1338
    invoke-virtual {p2, p1}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1337
    :goto_18
    return v0
.end method

.method static synthetic lambda$getSupportedModes$1(I)[Landroid/view/Display$Mode;
    .registers 2
    .param p0, "x$0"    # I

    .line 1338
    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method static synthetic lambda$getSupportedModes$2(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)Z
    .registers 4
    .param p0, "config"    # Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .param p1, "m"    # Landroid/view/Display$Mode;

    .line 1340
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v1

    if-lt v0, v1, :cond_20

    .line 1341
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-gt v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1340
    :goto_21
    return v0
.end method

.method static synthetic lambda$getSupportedModes$3(I)[Landroid/view/Display$Mode;
    .registers 2
    .param p0, "x$0"    # I

    .line 1342
    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method static synthetic lambda$getSupportedModes$4(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 5
    .param p0, "config"    # Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .param p1, "activeMode"    # Landroid/view/Display$Mode;
    .param p2, "m"    # Landroid/view/Display$Mode;

    .line 1345
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 1346
    invoke-virtual {p2, p1}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1345
    :goto_18
    return v0
.end method

.method static synthetic lambda$getSupportedModes$5(I)[Landroid/view/Display$Mode;
    .registers 2
    .param p0, "x$0"    # I

    .line 1346
    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method static synthetic lambda$getSupportedModes$6(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)Z
    .registers 4
    .param p0, "config"    # Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .param p1, "m"    # Landroid/view/Display$Mode;

    .line 1348
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v1

    if-lt v0, v1, :cond_20

    .line 1349
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-gt v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1348
    :goto_21
    return v0
.end method

.method static synthetic lambda$getSupportedModes$7(I)[Landroid/view/Display$Mode;
    .registers 2
    .param p0, "x$0"    # I

    .line 1349
    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method private static noFlip(II)Z
    .registers 3
    .param p0, "realRotation"    # I
    .param p1, "localRotation"    # I

    .line 2124
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private shouldReportMaxBounds()Z
    .registers 4

    .line 1977
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1978
    return v1

    .line 1983
    :cond_6
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1984
    .local v0, "thread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1985
    return v1

    .line 1999
    .end local v0    # "thread":Landroid/app/ActivityThread;
    :cond_13
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2000
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_28

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 2201
    packed-switch p0, :pswitch_data_1e

    .line 2217
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2215
    :pswitch_8
    const-string v0, "ON_SUSPEND"

    return-object v0

    .line 2213
    :pswitch_b
    const-string v0, "VR"

    return-object v0

    .line 2211
    :pswitch_e
    const-string v0, "DOZE_SUSPEND"

    return-object v0

    .line 2209
    :pswitch_11
    const-string v0, "DOZE"

    return-object v0

    .line 2207
    :pswitch_14
    const-string v0, "ON"

    return-object v0

    .line 2205
    :pswitch_17
    const-string v0, "OFF"

    return-object v0

    .line 2203
    :pswitch_1a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 2179
    packed-switch p0, :pswitch_data_1a

    .line 2193
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2191
    :pswitch_8
    const-string v0, "VIRTUAL"

    return-object v0

    .line 2189
    :pswitch_b
    const-string v0, "OVERLAY"

    return-object v0

    .line 2187
    :pswitch_e
    const-string v0, "WIFI"

    return-object v0

    .line 2185
    :pswitch_11
    const-string v0, "EXTERNAL"

    return-object v0

    .line 2183
    :pswitch_14
    const-string v0, "INTERNAL"

    return-object v0

    .line 2181
    :pswitch_17
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private updateCachedAppSizeIfNeededLocked()V
    .registers 7

    .line 2110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2111
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_29

    .line 2112
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2113
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 2114
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 2115
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    .line 2116
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    .line 2118
    :cond_29
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .registers 3

    .line 2082
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2083
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_12

    .line 2085
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_1b

    .line 2086
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    goto :goto_1b

    .line 2093
    :cond_12
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2094
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-nez v1, :cond_1b

    .line 2095
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 2103
    :cond_1b
    :goto_1b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v1, :cond_2a

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    if-nez v1, :cond_2a

    .line 2104
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->updateSubScreen(Landroid/view/DisplayAddress;)V

    .line 2107
    :cond_2a
    return-void
.end method


# virtual methods
.method public canStealTopFocus()Z
    .registers 2

    .line 2077
    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public clearUserPreferredDisplayMode()V
    .registers 4

    .line 1626
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1627
    return-void
.end method

.method public getAddress()Landroid/view/DisplayAddress;
    .registers 3

    .line 904
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 905
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 906
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    monitor-exit v0

    return-object v1

    .line 907
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getAppVsyncOffsetNanos()J
    .registers 4

    .line 1743
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1744
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1745
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    monitor-exit v0

    return-wide v1

    .line 1746
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getBrightnessDefault()F
    .registers 3

    .line 977
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 979
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    monitor-exit v0

    return v1

    .line 980
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .registers 3

    .line 989
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    return-object v0
.end method

.method public getColorMode()I
    .registers 3

    .line 1398
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1400
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->colorMode:I

    monitor-exit v0

    return v1

    .line 1401
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getCommittedState()I
    .registers 3

    .line 2026
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2027
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2028
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->committedState:I

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2029
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    .line 1088
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1090
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1091
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1092
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 1093
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 1094
    monitor-exit v0

    .line 1095
    return-void

    .line 1094
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getCutout()Landroid/view/DisplayCutout;
    .registers 7

    .line 1204
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1206
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    monitor-exit v0

    return-object v1

    .line 1207
    :cond_10
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1208
    .local v1, "localCutout":Landroid/view/DisplayCutout;
    if-nez v1, :cond_19

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1209
    :cond_19
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1210
    .local v2, "rotation":I
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_35

    .line 1211
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1214
    :cond_35
    monitor-exit v0

    return-object v1

    .line 1215
    .end local v1    # "localCutout":Landroid/view/DisplayCutout;
    .end local v2    # "rotation":I
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getDefaultMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1316
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1317
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1318
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1319
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getDeviceProductInfo()Landroid/hardware/display/DeviceProductInfo;
    .registers 3

    .line 1776
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1778
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    monitor-exit v0

    return-object v1

    .line 1779
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 3

    .line 945
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_17

    .line 946
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 947
    .local v0, "currentAdjustments":Landroid/view/DisplayAdjustments;
    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v0}, Landroid/view/DisplayAdjustments;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 948
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 952
    .end local v0    # "currentAdjustments":Landroid/view/DisplayAdjustments;
    :cond_17
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 3

    .line 2299
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 779
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .registers 4
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 825
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 827
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 828
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 829
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getFlags()I
    .registers 2

    .line 859
    iget v0, p0, Landroid/view/Display;->mFlags:I

    return v0
.end method

.method public getHdrCapabilities()Landroid/view/Display$HdrCapabilities;
    .registers 8

    .line 1438
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1439
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1440
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-nez v1, :cond_f

    .line 1441
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1444
    :cond_f
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v1, v1

    if-nez v1, :cond_25

    .line 1445
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v1

    .line 1446
    .local v1, "modeSupportedHdrTypes":[I
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v1, v2

    .line 1448
    .local v1, "supportedHdrTypes":[I
    goto :goto_6e

    .line 1449
    .end local v1    # "supportedHdrTypes":[I
    :cond_25
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1450
    .local v1, "enabledTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v3, :cond_4c

    aget v5, v2, v4

    .line 1451
    .local v5, "supportedType":I
    iget-object v6, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-direct {p0, v6, v5}, Landroid/view/Display;->contains([II)Z

    move-result v6

    if-nez v6, :cond_49

    .line 1452
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1450
    .end local v5    # "supportedType":I
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 1456
    :cond_4c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1457
    .local v2, "supportedHdrTypes":[I
    const/4 v3, 0x0

    .line 1458
    .local v3, "index":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1459
    .local v5, "enabledType":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    aput v5, v2, v3

    .line 1460
    .end local v5    # "enabledType":I
    move v3, v6

    goto :goto_57

    .line 1458
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_6d
    move-object v1, v2

    .line 1462
    .end local v2    # "supportedHdrTypes":[I
    .end local v3    # "index":I
    .local v1, "supportedHdrTypes":[I
    :goto_6e
    new-instance v2, Landroid/view/Display$HdrCapabilities;

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v3, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v3}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v3

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v4, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v4}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v4

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v5}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/view/Display$HdrCapabilities;-><init>([IFFF)V

    monitor-exit v0

    return-object v2

    .line 1466
    .end local v1    # "supportedHdrTypes":[I
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public getHdrSdrRatio()F
    .registers 3

    .line 1528
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1529
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1530
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1531
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_13
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    :goto_17
    monitor-exit v0

    .line 1530
    return v1

    .line 1532
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getHeight()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1126
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 1128
    iget v1, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    monitor-exit v0

    return v1

    .line 1129
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getInstallOrientation()I
    .registers 3

    .line 1166
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1168
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->installOrientation:I

    monitor-exit v0

    return v1

    .line 1169
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getLayerStack()I
    .registers 3

    .line 842
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 844
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    monitor-exit v0

    return v1

    .line 845
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getMaximumSizeDimension()I
    .registers 4

    .line 1104
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1106
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1107
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1820
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1822
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1823
    monitor-exit v0

    .line 1824
    return-void

    .line 1823
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1304
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1306
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1307
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 964
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 966
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 967
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getOrientation()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1193
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 4

    .line 1678
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1679
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1680
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_15

    .line 1681
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1683
    :cond_15
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1684
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 934
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUid()I
    .registers 2

    .line 920
    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    return v0
.end method

.method public getPixelFormat()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1271
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 1663
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1665
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1666
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1668
    :cond_16
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1669
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getPresentationDeadlineNanos()J
    .registers 4

    .line 1761
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1762
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1763
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    monitor-exit v0

    return-wide v1

    .line 1764
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1944
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1945
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1946
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1947
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 1949
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1947
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1955
    monitor-exit v0

    return-void

    .line 1957
    :cond_1b
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1959
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 1960
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_34

    .line 1961
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustMetrics(Landroid/util/DisplayMetrics;II)V

    .line 1963
    .end local v1    # "rotation":I
    :cond_34
    monitor-exit v0

    .line 1964
    return-void

    .line 1963
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public getRealRotation()I
    .registers 3

    .line 1179
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1181
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit v0

    return v1

    .line 1182
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1873
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1874
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1875
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1876
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1877
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1878
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 1879
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 1885
    monitor-exit v0

    return-void

    .line 1887
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_26
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1888
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1889
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 1890
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_43

    .line 1891
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustSize(Landroid/graphics/Point;II)V

    .line 1893
    .end local v1    # "rotation":I
    :cond_43
    monitor-exit v0

    .line 1894
    return-void

    .line 1893
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1050
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1052
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1053
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1054
    monitor-exit v0

    .line 1055
    return-void

    .line 1054
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getRefreshRate()F
    .registers 3

    .line 1278
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1279
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1280
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    monitor-exit v0

    return v1

    .line 1281
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getRemoveMode()I
    .registers 2

    .line 1416
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->removeMode:I

    return v0
.end method

.method public getReportedHdrTypes()[I
    .registers 3

    .line 1488
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1490
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1491
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getRotation()I
    .registers 3

    .line 1154
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1156
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1157
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getRoundedCorner(I)Landroid/view/RoundedCorner;
    .registers 7
    .param p1, "position"    # I

    .line 1228
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1230
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 1231
    .local v1, "roundedCorners":Landroid/view/RoundedCorners;
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1232
    .local v2, "rotation":I
    if-eqz v1, :cond_21

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_21

    .line 1233
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    .line 1236
    :cond_21
    if-nez v1, :cond_25

    const/4 v3, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v1, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    :goto_29
    monitor-exit v0

    return-object v3

    .line 1237
    .end local v1    # "roundedCorners":Landroid/view/RoundedCorners;
    .end local v2    # "rotation":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public getShape()Landroid/view/DisplayShape;
    .registers 5

    .line 1251
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1252
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1253
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 1254
    .local v1, "displayShape":Landroid/view/DisplayShape;
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1255
    .local v2, "rotation":I
    if-eqz v1, :cond_1c

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_1c

    .line 1256
    invoke-virtual {v1, v2}, Landroid/view/DisplayShape;->setRotation(I)Landroid/view/DisplayShape;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1258
    :cond_1c
    monitor-exit v0

    return-object v1

    .line 1259
    .end local v1    # "displayShape":Landroid/view/DisplayShape;
    .end local v2    # "rotation":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getSize(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1032
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1034
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1035
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1036
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1037
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getState()I
    .registers 3

    .line 2011
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2013
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2014
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getSupportedColorModes()[I
    .registers 4

    .line 1692
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1693
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1694
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 1695
    .local v1, "colorModes":[I
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1696
    .end local v1    # "colorModes":[I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getSupportedModes()[Landroid/view/Display$Mode;
    .registers 8

    .line 1326
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1327
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1330
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_92

    iget v1, p0, Landroid/view/Display;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_92

    .line 1331
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v1

    .line 1332
    .local v1, "config":Lcom/samsung/android/hardware/display/RefreshRateConfig;
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 1333
    .local v3, "activeMode":Landroid/view/Display$Mode;
    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v4, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1335
    .local v4, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/view/Display$Mode;>;"
    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-nez v5, :cond_59

    .line 1336
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1337
    new-instance v2, Landroid/view/Display$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v3}, Landroid/view/Display$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)V

    invoke-interface {v4, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Landroid/view/Display$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/view/Display$$ExternalSyntheticLambda1;-><init>()V

    .line 1338
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    .line 1337
    return-object v2

    .line 1340
    :cond_43
    new-instance v2, Landroid/view/Display$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/view/Display$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;)V

    invoke-interface {v4, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Landroid/view/Display$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Landroid/view/Display$$ExternalSyntheticLambda3;-><init>()V

    .line 1342
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    .line 1340
    return-object v2

    .line 1344
    :cond_59
    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->refreshRateMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_76

    .line 1345
    new-instance v2, Landroid/view/Display$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, v3}, Landroid/view/Display$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)V

    invoke-interface {v4, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Landroid/view/Display$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Landroid/view/Display$$ExternalSyntheticLambda5;-><init>()V

    .line 1346
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    .line 1345
    return-object v2

    .line 1347
    :cond_76
    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-ne v5, v2, :cond_92

    .line 1348
    new-instance v2, Landroid/view/Display$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Landroid/view/Display$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;)V

    invoke-interface {v4, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Landroid/view/Display$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Landroid/view/Display$$ExternalSyntheticLambda7;-><init>()V

    .line 1349
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    .line 1348
    return-object v2

    .line 1354
    .end local v1    # "config":Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .end local v3    # "activeMode":Landroid/view/Display$Mode;
    .end local v4    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/view/Display$Mode;>;"
    :cond_92
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1355
    .local v1, "modes":[Landroid/view/Display$Mode;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v2

    .line 1356
    .end local v1    # "modes":[Landroid/view/Display$Mode;
    :catchall_9f
    move-exception v1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method public getSupportedRefreshRates()[F
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1294
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1295
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1296
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1297
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getSupportedWideColorGamut()[Landroid/graphics/ColorSpace;
    .registers 9

    .line 1709
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    const/4 v1, 0x0

    :try_start_4
    new-array v2, v1, [Landroid/graphics/ColorSpace;

    .line 1711
    .local v2, "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1712
    invoke-virtual {p0}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1713
    monitor-exit v0

    return-object v2

    .line 1716
    :cond_11
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedColorModes()[I

    move-result-object v3

    .line 1717
    .local v3, "colorModes":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    .local v4, "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
    array-length v5, v3

    :goto_1b
    if-ge v1, v5, :cond_3a

    aget v6, v3, v1

    .line 1720
    .local v6, "colorMode":I
    sparse-switch v6, :sswitch_data_46

    goto :goto_37

    .line 1725
    :sswitch_23
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1722
    :sswitch_2d
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1723
    nop

    .line 1718
    .end local v6    # "colorMode":I
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1729
    :cond_3a
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/ColorSpace;

    monitor-exit v0

    return-object v1

    .line 1730
    .end local v2    # "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    .end local v3    # "colorModes":[I
    .end local v4    # "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_42

    throw v1

    nop

    :sswitch_data_46
    .sparse-switch
        0x6 -> :sswitch_2d
        0x9 -> :sswitch_23
    .end sparse-switch
.end method

.method public getSystemPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1429
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 878
    iget v0, p0, Landroid/view/Display;->mType:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 2

    .line 793
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1637
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1115
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 1117
    iget v1, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    monitor-exit v0

    return v1

    .line 1118
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public hasAccess(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 2038
    iget v0, p0, Landroid/view/Display;->mFlags:I

    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-static {p1, v0, v1, v2}, Landroid/view/Display;->hasAccess(IIII)Z

    move-result v0

    return v0
.end method

.method public isHdr()Z
    .registers 5

    .line 1501
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1502
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1503
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v1

    .line 1504
    .local v1, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 1505
    monitor-exit v0

    return v2

    .line 1507
    :cond_f
    invoke-virtual {v1}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_17

    const/4 v2, 0x1

    :cond_17
    monitor-exit v0

    return v2

    .line 1508
    .end local v1    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public isHdrSdrRatioAvailable()Z
    .registers 3

    .line 1516
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1517
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1518
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 1519
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isMinimalPostProcessingSupported()Z
    .registers 3

    .line 1378
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1380
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    monitor-exit v0

    return v1

    .line 1381
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isPublicPresentation()Z
    .registers 3

    .line 2056
    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTrusted()Z
    .registers 3

    .line 2067
    iget v0, p0, Landroid/view/Display;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 810
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 812
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 813
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public isWideColorGamut()Z
    .registers 3

    .line 1648
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1649
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1650
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1651
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public registerHdrSdrRatioChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 1558
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/Display;>;"
    invoke-virtual {p0}, Landroid/view/Display;->isHdrSdrRatioAvailable()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1561
    const/4 v0, 0x0

    .line 1562
    .local v0, "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    iget-object v1, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1563
    :try_start_a
    invoke-direct {p0, p2}, Landroid/view/Display;->findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    .line 1564
    new-instance v2, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Landroid/view/Display$HdrSdrRatioListenerWrapper;-><init>(Landroid/view/Display;Ljava/util/function/Consumer;Landroid/view/Display$HdrSdrRatioListenerWrapper-IA;)V

    move-object v0, v2

    .line 1565
    iget-object v2, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_28

    .line 1568
    if-eqz v0, :cond_27

    .line 1571
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const-wide/16 v2, 0x12

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;J)V

    .line 1576
    :cond_27
    return-void

    .line 1567
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 1559
    .end local v0    # "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HDR/SDR ratio changed not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestColorMode(I)V
    .registers 4
    .param p1, "colorMode"    # I

    .line 1390
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorMode(II)V

    .line 1391
    return-void
.end method

.method public semGetType()I
    .registers 2

    .line 892
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    return v0
.end method

.method public setUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/Display$Mode;

    .line 1613
    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1614
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1615
    .local v0, "preferredMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1616
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 2166
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2167
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2168
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    .line 2169
    .local v1, "adjustments":Landroid/view/DisplayAdjustments;
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 2170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isValid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/Display;->mIsValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2172
    .end local v1    # "adjustments":Landroid/view/DisplayAdjustments;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public unregisterHdrSdrRatioChangedListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 1586
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .line 1587
    .local v0, "toRemove":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    iget-object v1, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1588
    :try_start_4
    invoke-direct {p0, p1}, Landroid/view/Display;->findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I

    move-result v2

    .line 1589
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 1590
    iget-object v3, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    move-object v0, v3

    .line 1592
    .end local v2    # "index":I
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1d

    .line 1593
    if-eqz v0, :cond_1c

    .line 1594
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1596
    :cond_1c
    return-void

    .line 1592
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method
