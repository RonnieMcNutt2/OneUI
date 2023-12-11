.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$StagePosition;,
        Landroid/app/WindowConfiguration$StageType;,
        Landroid/app/WindowConfiguration$WindowConfig;,
        Landroid/app/WindowConfiguration$DexTaskDocking;,
        Landroid/app/WindowConfiguration$EmbedActivityMode;,
        Landroid/app/WindowConfiguration$FreeformTaskPinning;,
        Landroid/app/WindowConfiguration$FlexPanelMode;,
        Landroid/app/WindowConfiguration$AlwaysOnTop;,
        Landroid/app/WindowConfiguration$ActivityType;,
        Landroid/app/WindowConfiguration$WindowingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/app/WindowConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final ACTIVITY_TYPE_DREAM:I = 0x5

.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field private static final ALWAYS_ON_TOP_OFF:I = 0x2

.field private static final ALWAYS_ON_TOP_ON:I = 0x1

.field private static final ALWAYS_ON_TOP_UNDEFINED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WindowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEX_TASK_DOCKING_LEFT:I = 0x1

.field public static final DEX_TASK_DOCKING_NONE:I = 0x0

.field public static final DEX_TASK_DOCKING_RIGHT:I = 0x2

.field public static final DEX_TASK_DOCKING_UNDEFINED:I = -0x1

.field public static final EMBED_ACTIVITY_MODE_BOTTOM:I = 0x5

.field public static final EMBED_ACTIVITY_MODE_FULL:I = 0x1

.field public static final EMBED_ACTIVITY_MODE_LEFT:I = 0x2

.field public static final EMBED_ACTIVITY_MODE_RIGHT:I = 0x3

.field public static final EMBED_ACTIVITY_MODE_TOP:I = 0x4

.field public static final EMBED_ACTIVITY_MODE_UNDEFINED:I = 0x0

.field public static final FLEX_PANEL_MODE_OFF:I = 0x2

.field public static final FLEX_PANEL_MODE_ON:I = 0x1

.field public static final FLEX_PANEL_MODE_UNDEFINED:I = 0x0

.field public static final FREEFORM_TASK_PINNING_DISABLE:I = 0x3

.field public static final FREEFORM_TASK_PINNING_PINNED:I = 0x2

.field public static final FREEFORM_TASK_PINNING_UNDEFINED:I = 0x0

.field public static final FREEFORM_TASK_PINNING_UNPINNED:I = 0x1

.field public static final POP_OVER_OFF:I = 0x2

.field public static final POP_OVER_ON:I = 0x1

.field public static final POP_OVER_ON_WITHOUT_OUTLINE_EFFECT:I = 0x3

.field private static final POP_OVER_UNDEFINED:I = 0x0

.field public static final ROTATION_UNDEFINED:I = -0x1

.field static final STAGE_CONFIG_POSITION_MASK:I = 0x78

.field static final STAGE_CONFIG_TYPE_MASK:I = 0x7

.field public static final STAGE_POSITION_BOTTOM:I = 0x40

.field public static final STAGE_POSITION_LEFT:I = 0x8

.field public static final STAGE_POSITION_RIGHT:I = 0x20

.field public static final STAGE_POSITION_TOP:I = 0x10

.field public static final STAGE_TYPE_CELL:I = 0x4

.field public static final STAGE_TYPE_MAIN:I = 0x1

.field public static final STAGE_TYPE_SIDE:I = 0x2

.field public static final STAGE_UNDEFINED:I = 0x0

.field public static final WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final WINDOWING_MODE_PINNED:I = 0x2

.field public static final WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x10

.field public static final WINDOW_CONFIG_ALWAYS_ON_TOP:I = 0x20

.field public static final WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final WINDOW_CONFIG_COMPAT_SANDBOX:I = 0x2000000

.field public static final WINDOW_CONFIG_DEX_TASK_DOCKING:I = 0x1000000

.field public static final WINDOW_CONFIG_DISPLAY_ROTATION:I = 0x100

.field public static final WINDOW_CONFIG_DISPLAY_WINDOWING_MODE:I = 0x80

.field public static final WINDOW_CONFIG_EMBED_ACTIVITY_MODE:I = 0x800000

.field public static final WINDOW_CONFIG_FLEX_PANEL_MODE:I = 0x80000

.field public static final WINDOW_CONFIG_FREEFORM_TASK_PINNING:I = 0x400000

.field public static final WINDOW_CONFIG_MAX_BOUNDS:I = 0x4

.field public static final WINDOW_CONFIG_ROTATION:I = 0x40

.field public static final WINDOW_CONFIG_STAGE_POSITION:I = 0x200000

.field public static final WINDOW_CONFIG_STAGE_TYPE:I = 0x100000

.field public static final WINDOW_CONFIG_WINDOWING_MODE:I = 0x8


# instance fields
.field private mActivityType:I

.field private mAlwaysOnTop:I

.field private mAppBounds:Landroid/graphics/Rect;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCompatSandboxFlags:I

.field private mCompatSandboxScale:F

.field private mDexTaskDockingState:I

.field private mDisplayRotation:I

.field private mDisplayWindowingMode:I

.field private mEmbedActivityMode:I

.field private mFlexPanelMode:I

.field private mFreeformTaskPinningState:I

.field private final mMaxBounds:Landroid/graphics/Rect;

.field private mOverlappingWithCutout:Z

.field private mPopOverState:I

.field private mRotation:I

.field private mStage:I

.field private mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 601
    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 99
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 210
    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    .line 222
    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 327
    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 366
    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    .line 368
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    .line 503
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    .line 504
    return-void
.end method

.method public constructor <init>(Landroid/app/WindowConfiguration;)V
    .registers 4
    .param p1, "configuration"    # Landroid/app/WindowConfiguration;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 99
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 210
    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    .line 222
    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 327
    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 366
    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    .line 368
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    .line 508
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 509
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 99
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 210
    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    .line 222
    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 327
    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 366
    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    .line 368
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    .line 512
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 513
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static activityTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "applicationType"    # I

    .line 1542
    packed-switch p0, :pswitch_data_1e

    .line 1550
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1548
    :pswitch_8
    const-string v0, "dream"

    return-object v0

    .line 1547
    :pswitch_b
    const-string v0, "assistant"

    return-object v0

    .line 1546
    :pswitch_e
    const-string/jumbo v0, "recents"

    return-object v0

    .line 1545
    :pswitch_12
    const-string v0, "home"

    return-object v0

    .line 1544
    :pswitch_15
    const-string/jumbo v0, "standard"

    return-object v0

    .line 1543
    :pswitch_19
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static alwaysOnTopToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "alwaysOnTop"    # I

    .line 1555
    packed-switch p0, :pswitch_data_14

    .line 1560
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1558
    :pswitch_8
    const-string/jumbo v0, "off"

    return-object v0

    .line 1557
    :pswitch_c
    const-string/jumbo v0, "on"

    return-object v0

    .line 1556
    :pswitch_10
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private compatSandboxInfoToString()Ljava/lang/String;
    .registers 5

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const-string v2, ""

    if-eqz v1, :cond_21

    .line 1702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCompatSandboxFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_21
    move-object v1, v2

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1703
    iget v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_45

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCompatSandboxScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_45
    nop

    :goto_46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1701
    return-object v0
.end method

.method public static dexTaskDockingStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "dexTaskDockingState"    # I

    .line 1711
    packed-switch p0, :pswitch_data_18

    .line 1717
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1715
    :pswitch_8
    const-string/jumbo v0, "right"

    return-object v0

    .line 1714
    :pswitch_c
    const-string/jumbo v0, "left"

    return-object v0

    .line 1713
    :pswitch_10
    const-string/jumbo v0, "none"

    return-object v0

    .line 1712
    :pswitch_14
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static embedActivityModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1624
    packed-switch p0, :pswitch_data_1e

    .line 1632
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1630
    :pswitch_8
    const-string v0, "bottom"

    return-object v0

    .line 1629
    :pswitch_b
    const-string/jumbo v0, "top"

    return-object v0

    .line 1628
    :pswitch_f
    const-string/jumbo v0, "right"

    return-object v0

    .line 1627
    :pswitch_13
    const-string/jumbo v0, "left"

    return-object v0

    .line 1626
    :pswitch_17
    const-string v0, "full"

    return-object v0

    .line 1625
    :pswitch_1a
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static flexPanelModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flexPanelMode"    # I

    .line 1639
    packed-switch p0, :pswitch_data_14

    .line 1644
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1642
    :pswitch_8
    const-string/jumbo v0, "off"

    return-object v0

    .line 1641
    :pswitch_c
    const-string/jumbo v0, "on"

    return-object v0

    .line 1640
    :pswitch_10
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static freeformTaskPinningToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1661
    packed-switch p0, :pswitch_data_18

    .line 1667
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1665
    :pswitch_8
    const-string v0, "disable"

    return-object v0

    .line 1664
    :pswitch_b
    const-string/jumbo v0, "pinned"

    return-object v0

    .line 1663
    :pswitch_f
    const-string/jumbo v0, "unpinned"

    return-object v0

    .line 1662
    :pswitch_13
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static inMultiWindowMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1472
    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    if-eqz p0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isDexTaskDocking(I)Z
    .registers 3
    .param p0, "dexTaskDockingState"    # I

    .line 360
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static isFloating(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1463
    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

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

.method public static isSplitScreenWindowingMode(I)Z
    .registers 2
    .param p0, "stage"    # I

    .line 820
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z
    .registers 2
    .param p0, "winConfig"    # Landroid/app/WindowConfiguration;

    .line 815
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static popOverStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "popOverState"    # I

    .line 199
    packed-switch p0, :pswitch_data_18

    .line 205
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :pswitch_8
    const-string/jumbo v0, "on-without-outline-effect"

    return-object v0

    .line 202
    :pswitch_c
    const-string/jumbo v0, "off"

    return-object v0

    .line 201
    :pswitch_10
    const-string/jumbo v0, "on"

    return-object v0

    .line 200
    :pswitch_14
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static scaleBounds(FLandroid/graphics/Rect;)V
    .registers 7
    .param p0, "scale"    # F
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 919
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 920
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 921
    .local v1, "h":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 922
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 923
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    mul-float/2addr v4, p0

    add-float/2addr v4, v3

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 924
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    mul-float/2addr v4, p0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 925
    return-void
.end method

.method private setAlwaysOnTop(I)V
    .registers 2
    .param p1, "alwaysOnTop"    # I

    .line 687
    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 688
    return-void
.end method

.method public static stageConfigToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "stageConfig"    # I

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1567
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x7

    packed-switch v1, :pswitch_data_66

    :pswitch_c
    goto :goto_25

    .line 1570
    :pswitch_d
    const-string v1, "cell/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1569
    :pswitch_13
    const-string/jumbo v1, "side/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1568
    :pswitch_1a
    const-string/jumbo v1, "main/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1571
    :pswitch_21
    const-string/jumbo v1, "undefined"

    return-object v1

    .line 1573
    :goto_25
    and-int/lit8 v1, p0, 0x78

    sparse-switch v1, :sswitch_data_74

    goto :goto_61

    .line 1581
    :sswitch_2b
    const-string/jumbo v1, "right-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1579
    :sswitch_32
    const-string/jumbo v1, "left-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1577
    :sswitch_39
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1580
    :sswitch_3f
    const-string/jumbo v1, "right-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1576
    :sswitch_46
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1578
    :sswitch_4d
    const-string/jumbo v1, "left-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1575
    :sswitch_54
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 1574
    :sswitch_5b
    const-string/jumbo v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    :goto_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :sswitch_data_74
    .sparse-switch
        0x8 -> :sswitch_5b
        0x10 -> :sswitch_54
        0x18 -> :sswitch_4d
        0x20 -> :sswitch_46
        0x30 -> :sswitch_3f
        0x40 -> :sswitch_39
        0x48 -> :sswitch_32
        0x60 -> :sswitch_2b
    .end sparse-switch
.end method

.method public static stagePositionToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "position"    # I

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1606
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x78

    sparse-switch v1, :sswitch_data_4e

    goto :goto_48

    .line 1614
    :sswitch_d
    const-string/jumbo v1, "right-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1612
    :sswitch_14
    const-string/jumbo v1, "left-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1610
    :sswitch_1b
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1613
    :sswitch_21
    const-string/jumbo v1, "right-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1609
    :sswitch_28
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1611
    :sswitch_2f
    const-string/jumbo v1, "left-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1608
    :sswitch_36
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1607
    :sswitch_3d
    const-string/jumbo v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1615
    :sswitch_44
    const-string/jumbo v1, "undefined"

    return-object v1

    .line 1617
    :goto_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_44
        0x8 -> :sswitch_3d
        0x10 -> :sswitch_36
        0x18 -> :sswitch_2f
        0x20 -> :sswitch_28
        0x30 -> :sswitch_21
        0x40 -> :sswitch_1b
        0x48 -> :sswitch_14
        0x60 -> :sswitch_d
    .end sparse-switch
.end method

.method public static supportSplitScreenWindowingMode(I)Z
    .registers 2
    .param p0, "activityType"    # I

    .line 1525
    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static windowingModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1530
    packed-switch p0, :pswitch_data_1a

    .line 1537
    :pswitch_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1533
    :pswitch_8
    const-string/jumbo v0, "multi-window"

    return-object v0

    .line 1535
    :pswitch_c
    const-string v0, "freeform"

    return-object v0

    .line 1534
    :pswitch_f
    const-string/jumbo v0, "pinned"

    return-object v0

    .line 1532
    :pswitch_13
    const-string v0, "fullscreen"

    return-object v0

    .line 1531
    :pswitch_16
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public canReceiveKeys()Z
    .registers 3

    .line 1481
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public canResizeTask()Z
    .registers 3

    .line 1441
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

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

.method public compareTo(Landroid/app/WindowConfiguration;)I
    .registers 5
    .param p1, "that"    # Landroid/app/WindowConfiguration;

    .line 1211
    const/4 v0, 0x0

    .line 1212
    .local v0, "n":I
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_b

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_b

    .line 1213
    const/4 v1, 0x1

    return v1

    .line 1214
    :cond_b
    if-eqz v1, :cond_13

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_13

    .line 1215
    const/4 v1, -0x1

    return v1

    .line 1216
    :cond_13
    if-eqz v1, :cond_47

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_47

    .line 1217
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1218
    .end local v0    # "n":I
    .local v1, "n":I
    if-eqz v1, :cond_23

    return v1

    .line 1219
    :cond_23
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1220
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_2f

    return v0

    .line 1221
    :cond_2f
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1222
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_3b

    return v1

    .line 1223
    :cond_3b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 1224
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_47

    return v0

    .line 1227
    :cond_47
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1228
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_53

    return v1

    .line 1229
    :cond_53
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1230
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_5f

    return v0

    .line 1231
    :cond_5f
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1232
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_6b

    return v1

    .line 1233
    :cond_6b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 1234
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_77

    return v0

    .line 1236
    :cond_77
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1237
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_83

    return v1

    .line 1238
    :cond_83
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1239
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_8f

    return v0

    .line 1240
    :cond_8f
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1241
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_9b

    return v1

    .line 1242
    :cond_9b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 1243
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_a7

    return v0

    .line 1245
    :cond_a7
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v1, v2

    .line 1246
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_af

    return v1

    .line 1247
    :cond_af
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v2

    .line 1248
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_b7

    return v0

    .line 1249
    :cond_b7
    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    sub-int/2addr v1, v2

    .line 1250
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_bf

    return v1

    .line 1251
    :cond_bf
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mRotation:I

    sub-int/2addr v0, v2

    .line 1252
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_c7

    return v0

    .line 1254
    :cond_c7
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    sub-int/2addr v1, v2

    .line 1255
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_cf

    return v1

    .line 1256
    :cond_cf
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    sub-int/2addr v0, v2

    .line 1257
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_d7

    return v0

    .line 1261
    :cond_d7
    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mStage:I

    sub-int/2addr v1, v2

    .line 1262
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_df

    return v1

    .line 1264
    :cond_df
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_ec

    .line 1265
    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    sub-int v1, v0, v2

    .line 1266
    if-eqz v1, :cond_ec

    return v1

    .line 1273
    :cond_ec
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    sub-int/2addr v0, v2

    .line 1274
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_f4

    return v0

    .line 1277
    :cond_f4
    iget v1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    sub-int/2addr v1, v2

    .line 1278
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_fc

    return v1

    .line 1281
    :cond_fc
    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    sub-int/2addr v0, v2

    .line 1282
    .end local v1    # "n":I
    .restart local v0    # "n":I
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 62
    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/app/WindowConfiguration;Z)J
    .registers 12
    .param p1, "other"    # Landroid/app/WindowConfiguration;
    .param p2, "compareUndefined"    # Z

    .line 1113
    const-wide/16 v0, 0x0

    .line 1115
    .local v0, "changes":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1116
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 1120
    :cond_f
    if-nez p2, :cond_15

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_26

    :cond_15
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_26

    if-eqz v2, :cond_23

    .line 1122
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1123
    :cond_23
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 1126
    :cond_26
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1127
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 1130
    :cond_33
    if-nez p2, :cond_39

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v2, :cond_42

    :cond_39
    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v3, :cond_42

    .line 1132
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 1135
    :cond_42
    if-nez p2, :cond_48

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v2, :cond_51

    :cond_48
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v3, :cond_51

    .line 1137
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 1140
    :cond_51
    if-nez p2, :cond_57

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v2, :cond_60

    :cond_57
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v3, :cond_60

    .line 1142
    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    .line 1145
    :cond_60
    const/4 v2, -0x1

    if-nez p2, :cond_67

    iget v3, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v2, :cond_70

    :cond_67
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v4, :cond_70

    .line 1147
    const-wide/16 v3, 0x40

    or-long/2addr v0, v3

    .line 1150
    :cond_70
    const-wide/16 v3, 0x80

    if-nez p2, :cond_78

    iget v5, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v5, :cond_7f

    :cond_78
    iget v5, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v5, v6, :cond_7f

    .line 1152
    or-long/2addr v0, v3

    .line 1155
    :cond_7f
    if-nez p2, :cond_85

    iget v5, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v5, v2, :cond_8e

    :cond_85
    iget v5, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v5, v6, :cond_8e

    .line 1157
    const-wide/16 v5, 0x100

    or-long/2addr v0, v5

    .line 1162
    :cond_8e
    if-nez p2, :cond_94

    iget v5, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-eqz v5, :cond_b0

    .line 1163
    :cond_94
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v5

    .line 1164
    .local v5, "deltaStageType":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v6

    if-eq v6, v5, :cond_a2

    .line 1165
    const-wide/32 v6, 0x100000

    or-long/2addr v0, v6

    .line 1167
    :cond_a2
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v6

    .line 1168
    .local v6, "deltaStagePosition":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v7

    if-eq v7, v6, :cond_b0

    .line 1169
    const-wide/32 v7, 0x200000

    or-long/2addr v0, v7

    .line 1173
    .end local v5    # "deltaStageType":I
    .end local v6    # "deltaStagePosition":I
    :cond_b0
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v5, :cond_c4

    if-nez p2, :cond_ba

    iget v5, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v5, :cond_c4

    :cond_ba
    iget v5, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v5, v6, :cond_c4

    .line 1177
    const-wide/32 v5, 0x800000

    or-long/2addr v0, v5

    .line 1184
    :cond_c4
    if-nez p2, :cond_ca

    iget v5, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eqz v5, :cond_d1

    :cond_ca
    iget v5, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eq v5, v6, :cond_d1

    .line 1188
    or-long/2addr v0, v3

    .line 1190
    :cond_d1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_COMPAT_SANDBOX:Z

    if-eqz v3, :cond_f9

    .line 1191
    const-wide/32 v3, 0x2000000

    if-nez p2, :cond_de

    iget v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eqz v5, :cond_e6

    :cond_de
    iget v5, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eq v5, v6, :cond_e6

    .line 1193
    or-long/2addr v0, v3

    goto :goto_f9

    .line 1194
    :cond_e6
    if-nez p2, :cond_f0

    iget v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_f9

    :cond_f0
    iget v5, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget v6, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_f9

    .line 1196
    or-long/2addr v0, v3

    .line 1199
    :cond_f9
    :goto_f9
    if-nez p2, :cond_ff

    iget v3, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v3, v2, :cond_109

    :cond_ff
    iget v2, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v2, v3, :cond_109

    .line 1202
    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    .line 1206
    :cond_109
    return-wide v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1367
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1368
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_10

    .line 1369
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1371
    :cond_10
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1372
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1373
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1374
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1375
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1376
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "that"    # Ljava/lang/Object;

    .line 1293
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1294
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 1295
    :cond_8
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_d

    .line 1296
    return v0

    .line 1298
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, v2}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    :cond_17
    return v0
.end method

.method public getActivityType()I
    .registers 2

    .line 774
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return v0
.end method

.method public getAppBounds()Landroid/graphics/Rect;
    .registers 2

    .line 705
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 710
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCompatSandboxFlags()I
    .registers 3

    .line 1679
    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    .line 1680
    :cond_8
    nop

    .line 1679
    :goto_9
    return v0
.end method

.method public getCompatSandboxInvScale()F
    .registers 4

    .line 1690
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_18

    .line 1691
    div-float v0, v1, v0

    .line 1692
    .local v0, "scale":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_18

    .line 1693
    return v0

    .line 1696
    .end local v0    # "scale":F
    :cond_18
    return v1
.end method

.method public getDexTaskDockingState()I
    .registers 2

    .line 355
    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    return v0
.end method

.method public getDisplayRotation()I
    .registers 2

    .line 724
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return v0
.end method

.method public getDisplayWindowingMode()I
    .registers 2

    .line 752
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    return v0
.end method

.method public getEmbedActivityMode()I
    .registers 2

    .line 306
    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    return v0
.end method

.method public getFreeformTaskPinningState()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    return v0
.end method

.method public getMaxBounds()Landroid/graphics/Rect;
    .registers 2

    .line 716
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRotation()I
    .registers 2

    .line 728
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return v0
.end method

.method public getStage()I
    .registers 2

    .line 783
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    return v0
.end method

.method public getStagePosition()I
    .registers 2

    .line 803
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x78

    return v0
.end method

.method public getStagePositionToString()Ljava/lang/String;
    .registers 2

    .line 1600
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStageType()I
    .registers 2

    .line 793
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getStageTypeToString()Ljava/lang/String;
    .registers 3

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1589
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_2c

    :pswitch_e
    goto :goto_27

    .line 1592
    :pswitch_f
    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 1591
    :pswitch_15
    const-string/jumbo v1, "side"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 1590
    :pswitch_1c
    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 1593
    :pswitch_23
    const-string/jumbo v1, "undefined"

    return-object v1

    .line 1595
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1c
        :pswitch_15
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getWindowingMode()I
    .registers 2

    .line 741
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return v0
.end method

.method public hasMovementAnimations()Z
    .registers 3

    .line 1511
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasWindowDecorCaption()Z
    .registers 4

    .line 1431
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_e

    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-ne v0, v2, :cond_f

    :cond_e
    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public hasWindowShadow()Z
    .registers 3

    .line 1422
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1304
    const/4 v0, 0x0

    .line 1305
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1306
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1307
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1308
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v2

    .line 1309
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v1, v2

    .line 1310
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    add-int/2addr v0, v2

    .line 1311
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mRotation:I

    add-int/2addr v1, v2

    .line 1312
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    add-int/2addr v0, v2

    .line 1313
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    add-int/2addr v1, v2

    .line 1316
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mStage:I

    add-int/2addr v0, v2

    .line 1322
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isAlwaysOnTop()Z
    .registers 6

    .line 1490
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    return v2

    .line 1491
    :cond_7
    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_d

    return v2

    .line 1492
    :cond_d
    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    const/4 v4, 0x0

    if-eq v1, v2, :cond_13

    return v4

    .line 1493
    :cond_13
    if-eq v0, v3, :cond_1a

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v4

    :cond_1a
    :goto_1a
    return v2
.end method

.method public isEmbedded()Z
    .registers 4

    .line 311
    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_12

    .line 322
    return v2

    .line 320
    :pswitch_8
    return v1

    .line 315
    :pswitch_9
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 313
    :pswitch_11
    return v2

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_11
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public isFlexPanelEnabled()Z
    .registers 3

    .line 1654
    iget v0, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isOverlappingWithCutout()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    return v0
.end method

.method public isPopOver()Z
    .registers 4

    .line 190
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public isPopOverWithoutOutlineEffect()Z
    .registers 3

    .line 195
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isSplitScreen()Z
    .registers 2

    .line 807
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public persistTaskBounds()Z
    .registers 3

    .line 1448
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 557
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 558
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 559
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 570
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_48

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    .line 574
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    .line 585
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_COMPAT_SANDBOX:Z

    if-eqz v0, :cond_6a

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    .line 590
    :cond_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 593
    return-void
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 1388
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 1390
    .local v0, "token":J
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    .line 1391
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_5c

    goto :goto_51

    .line 1400
    :pswitch_13
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1401
    goto :goto_51

    .line 1397
    :pswitch_1e
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1398
    goto :goto_51

    .line 1406
    :pswitch_29
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    goto :goto_51

    .line 1403
    :pswitch_35
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 1404
    goto :goto_51

    .line 1393
    :pswitch_41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 1394
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_57

    .line 1395
    nop

    .line 1407
    :goto_51
    goto :goto_4

    .line 1412
    :cond_52
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1412
    :catchall_57
    move-exception v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1413
    throw v2

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_1e
        :pswitch_13
    .end packed-switch
.end method

.method public scale(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 902
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    .line 903
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    .line 904
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_11

    .line 905
    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    .line 907
    :cond_11
    return-void
.end method

.method public setActivityType(I)V
    .registers 5
    .param p1, "activityType"    # I

    .line 756
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_5

    .line 757
    return-void

    .line 763
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_39

    if-nez p1, :cond_12

    goto :goto_39

    .line 766
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 767
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_39
    :goto_39
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 770
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .registers 3
    .param p1, "alwaysOnTop"    # Z

    .line 675
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 676
    return-void
.end method

.method public setAppBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 696
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 697
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 700
    :cond_b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 701
    return-void
.end method

.method public setAppBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 632
    if-nez p1, :cond_6

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 634
    return-void

    .line 637
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 638
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 618
    if-nez p1, :cond_8

    .line 619
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 620
    return-void

    .line 623
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 624
    return-void
.end method

.method public setCompatSandboxFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1674
    iput p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    .line 1675
    return-void
.end method

.method public setCompatSandboxScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 1685
    iput p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    .line 1686
    return-void
.end method

.method public setDexTaskDockingState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 350
    iput p1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 351
    return-void
.end method

.method public setDisplayRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 666
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 667
    return-void
.end method

.method public setDisplayWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 746
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 747
    return-void
.end method

.method public setEmbedActivityMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 301
    iput p1, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    .line 302
    return-void
.end method

.method public setFlexPanelMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1649
    iput p1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 1650
    return-void
.end method

.method public setFreeformTaskPinningState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 263
    iput p1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    .line 264
    return-void
.end method

.method public setMaxBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 658
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 659
    return-void
.end method

.method public setMaxBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 646
    if-nez p1, :cond_8

    .line 647
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 648
    return-void

    .line 650
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 651
    return-void
.end method

.method public setOverlappingWithCutout(Z)V
    .registers 3
    .param p1, "overlappingWithCutout"    # Z

    .line 213
    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    .line 214
    return-void
.end method

.method public setPopOverState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 186
    iput p1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 187
    return-void
.end method

.method public setRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 732
    iput p1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 733
    return-void
.end method

.method public setStage(I)V
    .registers 2
    .param p1, "stage"    # I

    .line 779
    iput p1, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 780
    return-void
.end method

.method public setStagePosition(I)V
    .registers 4
    .param p1, "stagePosition"    # I

    .line 797
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v0, 0x7

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 798
    and-int/lit8 v1, p1, 0x78

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 799
    return-void
.end method

.method public setStageType(I)V
    .registers 4
    .param p1, "stageType"    # I

    .line 787
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v0, 0x78

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 788
    and-int/lit8 v1, p1, 0x7

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 789
    return-void
.end method

.method public setTo(Landroid/app/WindowConfiguration;)V
    .registers 3
    .param p1, "other"    # Landroid/app/WindowConfiguration;

    .line 825
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 826
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 827
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 828
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 829
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 830
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 831
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 832
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 833
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 836
    iget v0, p1, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStage(I)V

    .line 838
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_3b

    .line 839
    iget v0, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 842
    :cond_3b
    iget v0, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 845
    iget-boolean v0, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    .line 851
    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 853
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_COMPAT_SANDBOX:Z

    if-eqz v0, :cond_58

    .line 854
    iget v0, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setCompatSandboxFlags(I)V

    .line 855
    iget v0, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setCompatSandboxScale(F)V

    .line 858
    :cond_58
    iget v0, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 861
    return-void
.end method

.method public setTo(Landroid/app/WindowConfiguration;I)V
    .registers 4
    .param p1, "delta"    # Landroid/app/WindowConfiguration;
    .param p2, "mask"    # I

    .line 1048
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 1049
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1051
    :cond_9
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_12

    .line 1052
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1054
    :cond_12
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1b

    .line 1055
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 1057
    :cond_1b
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_24

    .line 1058
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 1060
    :cond_24
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_2d

    .line 1061
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 1063
    :cond_2d
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_36

    .line 1064
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 1066
    :cond_36
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_3f

    .line 1067
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1069
    :cond_3f
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_48

    .line 1070
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 1072
    :cond_48
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_51

    .line 1073
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 1077
    :cond_51
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_5d

    .line 1078
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStageType(I)V

    .line 1080
    :cond_5d
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    if-eqz v0, :cond_69

    .line 1081
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    .line 1084
    :cond_69
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_77

    const/high16 v0, 0x800000

    and-int/2addr v0, p2

    if-eqz v0, :cond_77

    .line 1086
    iget v0, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 1091
    :cond_77
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_81

    .line 1093
    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 1095
    :cond_81
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_8b

    .line 1096
    iget v0, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 1099
    :cond_8b
    return-void
.end method

.method public setToDefaults()V
    .registers 3

    .line 871
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 872
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 873
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 874
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 875
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 876
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 877
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 878
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 879
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 881
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 884
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 887
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    .line 890
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 893
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setCompatSandboxScale(F)V

    .line 896
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 898
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 736
    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 737
    return-void
.end method

.method public supportSplitScreenWindowingMode()Z
    .registers 2

    .line 1520
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public tasksAreFloating()Z
    .registers 2

    .line 1458
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1331
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const-string/jumbo v2, "undefined"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3a

    .line 1332
    move-object v1, v2

    goto :goto_40

    :cond_3a
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 1333
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 1334
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 1335
    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 1336
    invoke-static {v1}, Landroid/app/WindowConfiguration;->alwaysOnTopToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1337
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-ne v1, v3, :cond_8f

    .line 1338
    goto :goto_93

    :cond_8f
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPopOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 1340
    invoke-static {v1}, Landroid/app/WindowConfiguration;->popOverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOverlappingWithCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 1343
    invoke-static {v1}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1345
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    const-string v2, ""

    if-eqz v1, :cond_e4

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mEmbedActivityMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-static {v3}, Landroid/app/WindowConfiguration;->embedActivityModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e5

    :cond_e4
    move-object v1, v2

    :goto_e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFreeformTaskPinningState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    .line 1348
    invoke-static {v1}, Landroid/app/WindowConfiguration;->freeformTaskPinningToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1351
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_COMPAT_SANDBOX:Z

    if-eqz v1, :cond_105

    invoke-direct {p0}, Landroid/app/WindowConfiguration;->compatSandboxInfoToString()Ljava/lang/String;

    move-result-object v2

    :cond_105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDexTaskDockingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 1353
    invoke-static {v1}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    return-object v0
.end method

.method public unset()V
    .registers 1

    .line 866
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 867
    return-void
.end method

.method public unsetAlwaysOnTop()V
    .registers 2

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 684
    return-void
.end method

.method public updateFrom(Landroid/app/WindowConfiguration;)I
    .registers 7
    .param p1, "delta"    # Landroid/app/WindowConfiguration;

    .line 936
    const/4 v0, 0x0

    .line 938
    .local v0, "changed":I
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 939
    or-int/lit8 v0, v0, 0x1

    .line 940
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 942
    :cond_1a
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2d

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 943
    or-int/lit8 v0, v0, 0x2

    .line 944
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 946
    :cond_2d
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 947
    or-int/lit8 v0, v0, 0x4

    .line 948
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 950
    :cond_46
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v1, :cond_53

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v1, :cond_53

    .line 952
    or-int/lit8 v0, v0, 0x8

    .line 953
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 955
    :cond_53
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v1, :cond_60

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v1, :cond_60

    .line 957
    or-int/lit8 v0, v0, 0x10

    .line 958
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 960
    :cond_60
    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v1, :cond_6d

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v1, :cond_6d

    .line 962
    or-int/lit8 v0, v0, 0x20

    .line 963
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 965
    :cond_6d
    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7b

    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v1, v3, :cond_7b

    .line 966
    or-int/lit8 v0, v0, 0x40

    .line 967
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 969
    :cond_7b
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v1, :cond_88

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v3, v1, :cond_88

    .line 971
    or-int/lit16 v0, v0, 0x80

    .line 972
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 974
    :cond_88
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_95

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v3, :cond_95

    .line 976
    or-int/lit16 v0, v0, 0x100

    .line 977
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 981
    :cond_95
    iget v1, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-nez v1, :cond_9d

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_bd

    .line 983
    :cond_9d
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    .line 984
    .local v1, "deltaStageType":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v3

    if-eq v3, v1, :cond_ad

    .line 985
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 986
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setStageType(I)V

    .line 988
    :cond_ad
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v3

    .line 989
    .local v3, "deltaStagePosition":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v4

    if-eq v4, v3, :cond_bd

    .line 990
    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    .line 991
    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    .line 995
    .end local v1    # "deltaStageType":I
    .end local v3    # "deltaStagePosition":I
    :cond_bd
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v1, :cond_cc

    iget v1, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v1, :cond_cc

    iget v3, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v3, v1, :cond_cc

    .line 998
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 1000
    :cond_cc
    iget v1, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eqz v1, :cond_d7

    iget v3, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eq v3, v1, :cond_d7

    .line 1003
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 1005
    :cond_d7
    iget-boolean v1, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    if-eqz v1, :cond_e2

    iget-boolean v3, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    if-eq v3, v1, :cond_e2

    .line 1008
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    .line 1016
    :cond_e2
    iget v1, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eqz v1, :cond_ed

    iget v3, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eq v3, v1, :cond_ed

    .line 1019
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 1021
    :cond_ed
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_COMPAT_SANDBOX:Z

    if-eqz v1, :cond_111

    .line 1022
    iget v1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const/high16 v3, 0x2000000

    if-eqz v1, :cond_ff

    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eq v4, v1, :cond_ff

    .line 1024
    or-int/2addr v0, v3

    .line 1025
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setCompatSandboxFlags(I)V

    .line 1027
    :cond_ff
    iget v1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_111

    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_111

    .line 1029
    or-int/2addr v0, v3

    .line 1030
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setCompatSandboxScale(F)V

    .line 1033
    :cond_111
    iget v1, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v1, v2, :cond_11f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v2, v1, :cond_11f

    .line 1036
    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 1037
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 1040
    :cond_11f
    return v0
.end method

.method public useWindowFrameForBackdrop()Z
    .registers 3

    .line 1503
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 517
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 518
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 519
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 520
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_3b

    .line 531
    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    :cond_3b
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 543
    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_COMPAT_SANDBOX:Z

    if-eqz v0, :cond_58

    .line 546
    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 550
    :cond_58
    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    return-void
.end method
