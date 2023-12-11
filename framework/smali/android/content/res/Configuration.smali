.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$NativeConfig;,
        Landroid/content/res/Configuration$DexMode;,
        Landroid/content/res/Configuration$Orientation;,
        Landroid/content/res/Configuration$GrammaticalGender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_MASK:I = 0xc

.field public static final COLOR_MODE_HDR_NO:I = 0x4

.field public static final COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_YES:I = 0x8

.field public static final COLOR_MODE_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_ANY:I = 0xfffe

.field public static final DENSITY_DPI_NONE:I = 0xffff

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final DESKTOP_MODE_UNDEFINED:I = -0x1

.field public static final DEX_COMPAT_DISABLED:I = 0x1

.field public static final DEX_COMPAT_ENABLED:I = 0x2

.field public static final DEX_COMPAT_UI_CUSTOM:I = 0x2

.field public static final DEX_COMPAT_UI_DEFAULT:I = 0x1

.field public static final DEX_COMPAT_UI_FULLSCREEN:I = 0x3

.field public static final DEX_COMPAT_UI_UNDEFINED:I = 0x0

.field public static final DEX_COMPAT_UNDEFINED:I = 0x0

.field public static final DEX_MODE_DUAL:I = 0x2

.field public static final DEX_MODE_EXTENSION:I = 0x4

.field public static final DEX_MODE_NEXT_GEN:I = 0x3

.field public static final DEX_MODE_NONE:I = 0x0

.field public static final DEX_MODE_STANDALONE:I = 0x1

.field public static final DEX_MODE_UNDEFINED:I = -0x1

.field public static final DISPLAY_DEVICE_TYPE_HDMI:I = 0x1

.field public static final DISPLAY_DEVICE_TYPE_UNDEFINED:I = -0x1

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final FONT_WEIGHT_ADJUSTMENT_UNDEFINED:I = 0x7fffffff

.field public static final GRAMMATICAL_GENDER_FEMININE:I = 0x2

.field public static final GRAMMATICAL_GENDER_MASCULINE:I = 0x3

.field public static final GRAMMATICAL_GENDER_NEUTRAL:I = 0x1

.field public static final GRAMMATICAL_GENDER_NOT_SPECIFIED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final MOBILEKEYBOARD_COVERED_UNDEFINED:I = -0x1

.field public static final NATIVE_CONFIG_BOLD_TEXT:I = 0x40000

.field public static final NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final NATIVE_CONFIG_CURSOR_THICKNESS:I = 0x200000

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_FLIPFONT:I = 0x8000

.field public static final NATIVE_CONFIG_GRAMMATICAL_GENDER:I = 0x20000

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_NIGHT_DIM:I = 0x100000

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SHOW_BUTTON_SHAPE:I = 0x80000

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_THEMESEQ:I = 0x20000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SEM_BOLD_FONT_DISABLED:I = 0x0

.field public static final SEM_BOLD_FONT_ENABLED:I = 0x1

.field public static final SEM_BOLD_FONT_UNDEFINED:I = -0x1

.field public static final SEM_BUTTON_SHAPE_DISABLED:I = 0x0

.field public static final SEM_BUTTON_SHAPE_ENABLED:I = 0x1

.field public static final SEM_BUTTON_SHAPE_UNDEFINED:I = -0x1

.field public static final SEM_CURSOR_THICKNESS_SCALE_UNDEFINED:F = 0.0f

.field public static final SEM_DESKTOP_MODE_DISABLED:I = 0x0

.field public static final SEM_DESKTOP_MODE_ENABLED:I = 0x1

.field public static final SEM_DISPLAY_DEVICE_TYPE_MAIN:I = 0x0

.field public static final SEM_DISPLAY_DEVICE_TYPE_SUB:I = 0x5

.field public static final SEM_MOBILE_KEYBOARD_COVERED_NO:I = 0x0

.field public static final SEM_MOBILE_KEYBOARD_COVERED_YES:I = 0x1

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Configuration"

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final UI_MODE_TYPE_WATCH:I = 0x6

.field private static final XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final XML_ATTR_FONT_WEIGHT_ADJUSTMENT:Ljava/lang/String; = "fontWeightAdjustment"

.field private static final XML_ATTR_GRAMMATICAL_GENDER:Ljava/lang/String; = "grammaticalGender"

.field private static final XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public FlipFont:I

.field public assetsSeq:I

.field public boldFont:I

.field public colorMode:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public dexCompatEnabled:I

.field public dexCompatUiMode:I

.field public dexMode:I

.field public fontScale:F

.field public fontWeightAdjustment:I

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mGrammaticalGender:I

.field private mLocaleList:Landroid/os/LocaleList;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public nightDim:I

.field public orientation:I

.field public rilSetLocale:Z

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public semButtonShapeEnabled:I

.field public semCursorThicknessScale:F

.field public semDesktopModeEnabled:I

.field public semDisplayDeviceType:I

.field public semMobileKeyboardCovered:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public themeSeq:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z

.field public final windowConfiguration:Landroid/app/WindowConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2870
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1019
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 1055
    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1098
    iput v0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1179
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 1209
    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1237
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1249
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 1360
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 1361
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1019
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 1055
    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1098
    iput v0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1179
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 1209
    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1237
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1249
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 1367
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1368
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1019
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 1055
    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1098
    iput v0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1179
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 1209
    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1237
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1249
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 2885
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2886
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static configurationDiffToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "diff"    # I

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 507
    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 510
    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 513
    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 516
    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 519
    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 522
    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 525
    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 528
    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 531
    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_56
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_5f

    .line 534
    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_5f
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_68

    .line 537
    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_68
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_71

    .line 540
    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_71
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_7a

    .line 543
    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_7a
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_83

    .line 546
    const-string v1, "CONFIG_DENSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_83
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_8c

    .line 549
    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_8c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_96

    .line 552
    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_96
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a0

    .line 555
    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_a0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_aa

    .line 558
    const-string v1, "CONFIG_WINDOW_CONFIGURATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_aa
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b4

    .line 561
    const-string v1, "CONFIG_AUTO_BOLD_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_b4
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_bf

    .line 564
    const-string v1, "CONFIG_GRAMMATICAL_GENDER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_bf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private fixUpLocaleList()V
    .registers 4

    .line 1373
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_c
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_33

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1374
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1375
    :cond_1d
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_26

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_31

    :cond_26
    new-instance v0, Landroid/os/LocaleList;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    filled-new-array {v1}, [Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_31
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1377
    :cond_33
    return-void
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 6
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    .line 3617
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 3618
    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    .line 3619
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 3622
    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_17

    .line 3623
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3626
    :cond_17
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_1f

    .line 3627
    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 3630
    :cond_1f
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 3631
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 3632
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 3633
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3634
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3637
    :cond_37
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v1, v2, :cond_3f

    .line 3638
    iput v2, v0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 3641
    :cond_3f
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_47

    .line 3642
    iput v2, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 3645
    :cond_47
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_4f

    .line 3646
    iput v2, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 3649
    :cond_4f
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_57

    .line 3650
    iput v2, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3653
    :cond_57
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_5f

    .line 3654
    iput v2, v0, Landroid/content/res/Configuration;->navigation:I

    .line 3657
    :cond_5f
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_67

    .line 3658
    iput v2, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3661
    :cond_67
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_6f

    .line 3662
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3665
    :cond_6f
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_80

    .line 3667
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3670
    :cond_80
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_91

    .line 3672
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3675
    :cond_91
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_a2

    .line 3677
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3680
    :cond_a2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eq v1, v3, :cond_b3

    .line 3682
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3685
    :cond_b3
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0x3

    if-eq v1, v3, :cond_c4

    .line 3687
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 3690
    :cond_c4
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0xc

    if-eq v1, v3, :cond_d5

    .line 3692
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 3695
    :cond_d5
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_e6

    .line 3696
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 3699
    :cond_e6
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_f7

    .line 3700
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 3703
    :cond_f7
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_ff

    .line 3704
    iput v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3707
    :cond_ff
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_107

    .line 3708
    iput v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3711
    :cond_107
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_10f

    .line 3712
    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3715
    :cond_10f
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_117

    .line 3716
    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3719
    :cond_117
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_11f

    .line 3720
    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 3723
    :cond_11f
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    .line 3724
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 3727
    :cond_130
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v2, :cond_138

    .line 3728
    iput v2, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3732
    :cond_138
    iget v1, p0, Landroid/content/res/Configuration;->boldFont:I

    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v1, v2, :cond_140

    .line 3733
    iput v2, v0, Landroid/content/res/Configuration;->boldFont:I

    .line 3738
    :cond_140
    iget v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v1, v2, :cond_148

    .line 3739
    iput v2, v0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 3744
    :cond_148
    iget v1, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iget v2, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_152

    .line 3745
    iput v2, v0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 3751
    :cond_152
    iget v1, p0, Landroid/content/res/Configuration;->nightDim:I

    iget v2, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v1, v2, :cond_15a

    .line 3752
    iput v2, v0, Landroid/content/res/Configuration;->nightDim:I

    .line 3761
    :cond_15a
    iget v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v1, v2, :cond_162

    .line 3762
    iput v2, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 3764
    :cond_162
    iget v1, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v2, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v1, v2, :cond_16a

    .line 3765
    iput v2, v0, Landroid/content/res/Configuration;->dexMode:I

    .line 3769
    :cond_16a
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v1, v2, :cond_172

    .line 3770
    iput v2, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 3772
    :cond_172
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v1, v2, :cond_17a

    .line 3773
    iput v2, v0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 3780
    :cond_17a
    iget v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v1, v2, :cond_182

    .line 3781
    iput v2, v0, Landroid/content/res/Configuration;->themeSeq:I

    .line 3786
    :cond_182
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .registers 2
    .param p0, "screenLayout"    # I

    .line 3219
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static getUiModeTypeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "uiModeType"    # I

    .line 3587
    packed-switch p0, :pswitch_data_1a

    .line 3601
    const/4 v0, 0x0

    return-object v0

    .line 3599
    :pswitch_5
    const-string/jumbo v0, "vrheadset"

    return-object v0

    .line 3597
    :pswitch_9
    const-string/jumbo v0, "watch"

    return-object v0

    .line 3589
    :pswitch_d
    const-string v0, "appliance"

    return-object v0

    .line 3593
    :pswitch_10
    const-string/jumbo v0, "television"

    return-object v0

    .line 3595
    :pswitch_14
    const-string v0, "car"

    return-object v0

    .line 3591
    :pswitch_17
    const-string v0, "desk"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private static final hidden_SEM_DESKTOP_MODE_ENABLED()I
    .registers 1

    .line 3902
    const/4 v0, 0x1

    return v0
.end method

.method private hidden_semDesktopModeEnabled()I
    .registers 2

    .line 3894
    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    return v0
.end method

.method public static localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .registers 10
    .param p0, "locs"    # Landroid/os/LocaleList;

    .line 3261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3262
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    .line 3263
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 3264
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 3265
    .local v3, "l":I
    if-nez v3, :cond_1c

    .line 3266
    goto/16 :goto_93

    .line 3268
    :cond_1c
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 3269
    .local v4, "s":I
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 3270
    .local v5, "c":I
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 3273
    .local v6, "v":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3f

    .line 3274
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    :cond_3f
    const/4 v7, 0x2

    if-ne v3, v7, :cond_61

    if-nez v4, :cond_61

    if-eqz v5, :cond_48

    if-ne v5, v7, :cond_61

    :cond_48
    if-nez v6, :cond_61

    .line 3278
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    if-ne v5, v7, :cond_93

    .line 3280
    const-string v7, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 3283
    :cond_61
    const-string v7, "b+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3284
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    const-string v7, "+"

    if-eqz v4, :cond_7b

    .line 3286
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3287
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    :cond_7b
    if-eqz v5, :cond_87

    .line 3290
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3291
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3293
    :cond_87
    if-eqz v6, :cond_93

    .line 3294
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3295
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3262
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "l":I
    .end local v4    # "s":I
    .end local v5    # "c":I
    .end local v6    # "v":I
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 3299
    .end local v1    # "i":I
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static needNewResources(II)Z
    .registers 4
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    .line 2659
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    const/high16 v1, 0x1000000

    or-int p1, v0, v1

    .line 2665
    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    .line 2667
    and-int v0, p0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static needToUpdateOverlays(I)Z
    .registers 2
    .param p0, "configChanges"    # I

    .line 3916
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3822
    nop

    .line 3823
    const-string v0, "fs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 3822
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 3824
    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 3825
    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 3827
    const-string/jumbo v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3828
    .local v0, "localesStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3829
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3831
    const-string/jumbo v2, "touch"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 3833
    const-string/jumbo v2, "key"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 3835
    const-string/jumbo v2, "keyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3837
    nop

    .line 3838
    const-string v2, "hardKeyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3840
    const-string/jumbo v2, "nav"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    .line 3842
    const-string/jumbo v2, "navHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3844
    const-string/jumbo v2, "ori"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3846
    const-string/jumbo v2, "scrLay"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 3848
    const-string v2, "clrMod"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 3850
    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 3851
    const-string/jumbo v2, "width"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3853
    const-string v2, "height"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3855
    nop

    .line 3856
    const-string/jumbo v2, "sw"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3858
    const-string v2, "density"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3860
    const-string v2, "fontWeightAdjustment"

    const v3, 0x7fffffff

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3862
    const-string v2, "grammaticalGender"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 3867
    return-void
.end method

.method public static reduceScreenLayout(III)I
    .registers 8
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    .line 450
    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_8

    .line 453
    const/4 v0, 0x1

    .line 454
    .local v0, "screenLayoutSize":I
    const/4 v1, 0x0

    .line 455
    .local v1, "screenLayoutLong":Z
    const/4 v2, 0x0

    .local v2, "screenLayoutCompatNeeded":Z
    goto :goto_36

    .line 458
    .end local v0    # "screenLayoutSize":I
    .end local v1    # "screenLayoutLong":Z
    .end local v2    # "screenLayoutCompatNeeded":Z
    :cond_8
    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_12

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_12

    .line 461
    const/4 v0, 0x4

    .restart local v0    # "screenLayoutSize":I
    goto :goto_1d

    .line 462
    .end local v0    # "screenLayoutSize":I
    :cond_12
    const/16 v0, 0x280

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_1c

    .line 465
    const/4 v0, 0x3

    .restart local v0    # "screenLayoutSize":I
    goto :goto_1d

    .line 467
    .end local v0    # "screenLayoutSize":I
    :cond_1c
    const/4 v0, 0x2

    .line 473
    .restart local v0    # "screenLayoutSize":I
    :goto_1d
    const/16 v1, 0x141

    if-gt p2, v1, :cond_29

    const/16 v1, 0x23a

    if-le p1, v1, :cond_26

    goto :goto_29

    .line 476
    :cond_26
    const/4 v1, 0x0

    move v2, v1

    .local v1, "screenLayoutCompatNeeded":Z
    goto :goto_2b

    .line 474
    .end local v1    # "screenLayoutCompatNeeded":Z
    :cond_29
    :goto_29
    const/4 v1, 0x1

    move v2, v1

    .line 480
    .restart local v2    # "screenLayoutCompatNeeded":Z
    :goto_2b
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v3, p2, -0x1

    if-lt v1, v3, :cond_35

    .line 482
    const/4 v1, 0x1

    .local v1, "screenLayoutLong":Z
    goto :goto_36

    .line 484
    .end local v1    # "screenLayoutLong":Z
    :cond_35
    const/4 v1, 0x0

    .line 490
    .restart local v1    # "screenLayoutLong":Z
    :goto_36
    if-nez v1, :cond_3c

    .line 491
    and-int/lit8 v3, p0, -0x31

    or-int/lit8 p0, v3, 0x10

    .line 493
    :cond_3c
    if-eqz v2, :cond_41

    .line 494
    const/high16 v3, 0x10000000

    or-int/2addr p0, v3

    .line 496
    :cond_41
    and-int/lit8 v3, p0, 0xf

    .line 497
    .local v3, "curSize":I
    if-ge v0, v3, :cond_49

    .line 498
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v0

    .line 500
    :cond_49
    return p0
.end method

.method public static resetScreenLayout(I)I
    .registers 2
    .param p0, "curLayout"    # I

    .line 435
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 3311
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 8
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 3321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3323
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3f

    .line 3324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3325
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_3f

    .line 3326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3330
    :cond_3f
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 3331
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    .line 3332
    .local v1, "resourceQualifier":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 3333
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3337
    .end local v1    # "resourceQualifier":Ljava/lang/String;
    :cond_56
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    packed-switch v1, :pswitch_data_2c2

    goto :goto_70

    .line 3345
    :pswitch_5c
    const-string/jumbo v1, "masculine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3346
    goto :goto_70

    .line 3342
    :pswitch_63
    const-string v1, "feminine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3343
    goto :goto_70

    .line 3339
    :pswitch_69
    const-string/jumbo v1, "neuter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3340
    nop

    .line 3351
    :goto_70
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    sparse-switch v1, :sswitch_data_2cc

    goto :goto_86

    .line 3356
    :sswitch_78
    const-string/jumbo v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3357
    goto :goto_86

    .line 3353
    :sswitch_7f
    const-string/jumbo v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3354
    nop

    .line 3362
    :goto_86
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    if-eqz v1, :cond_a9

    .line 3363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3366
    :cond_a9
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_ca

    .line 3367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3370
    :cond_ca
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_ea

    .line 3371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3374
    :cond_ea
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_2d6

    goto :goto_10e

    .line 3385
    :pswitch_f2
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3386
    goto :goto_10e

    .line 3382
    :pswitch_f9
    const-string/jumbo v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    goto :goto_10e

    .line 3379
    :pswitch_100
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3380
    goto :goto_10e

    .line 3376
    :pswitch_107
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3377
    nop

    .line 3391
    :goto_10e
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_2e2

    goto :goto_124

    .line 3393
    :sswitch_116
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3394
    goto :goto_124

    .line 3396
    :sswitch_11d
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3397
    nop

    .line 3402
    :goto_124
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_2ec

    goto :goto_13a

    .line 3404
    :sswitch_12c
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3405
    goto :goto_13a

    .line 3407
    :sswitch_133
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3408
    nop

    .line 3413
    :goto_13a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2f6

    goto :goto_150

    .line 3415
    :pswitch_142
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3416
    goto :goto_150

    .line 3418
    :pswitch_149
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3419
    nop

    .line 3424
    :goto_150
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_2fe

    goto :goto_165

    .line 3426
    :sswitch_158
    const-string v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    goto :goto_165

    .line 3429
    :sswitch_15e
    const-string/jumbo v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3430
    nop

    .line 3435
    :goto_165
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_308

    goto :goto_179

    .line 3437
    :pswitch_16b
    const-string/jumbo v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3438
    goto :goto_179

    .line 3440
    :pswitch_172
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3441
    nop

    .line 3446
    :goto_179
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 3447
    invoke-static {v1}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v1

    .line 3448
    .local v1, "uiModeTypeString":Ljava/lang/String;
    if-eqz v1, :cond_186

    .line 3449
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3452
    :cond_186
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_310

    goto :goto_19c

    .line 3454
    :sswitch_18e
    const-string/jumbo v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3455
    goto :goto_19c

    .line 3457
    :sswitch_195
    const-string/jumbo v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3458
    nop

    .line 3463
    :goto_19c
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_31a

    .line 3494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f8

    .line 3491
    :sswitch_1ba
    const-string/jumbo v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3492
    goto :goto_1f8

    .line 3488
    :sswitch_1c1
    const-string v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3489
    goto :goto_1f8

    .line 3485
    :sswitch_1c7
    const-string/jumbo v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3486
    goto :goto_1f8

    .line 3482
    :sswitch_1ce
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3483
    goto :goto_1f8

    .line 3479
    :sswitch_1d5
    const-string/jumbo v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3480
    goto :goto_1f8

    .line 3476
    :sswitch_1dc
    const-string v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3477
    goto :goto_1f8

    .line 3473
    :sswitch_1e2
    const-string/jumbo v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    goto :goto_1f8

    .line 3470
    :sswitch_1e9
    const-string/jumbo v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3471
    goto :goto_1f8

    .line 3467
    :sswitch_1f0
    const-string/jumbo v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3468
    goto :goto_1f8

    .line 3465
    :sswitch_1f7
    nop

    .line 3498
    :goto_1f8
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_344

    :pswitch_1fd
    goto :goto_20b

    .line 3503
    :pswitch_1fe
    const-string v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3504
    goto :goto_20b

    .line 3500
    :pswitch_204
    const-string/jumbo v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3501
    nop

    .line 3509
    :goto_20b
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_34e

    goto :goto_226

    .line 3517
    :pswitch_211
    const-string/jumbo v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3518
    goto :goto_226

    .line 3514
    :pswitch_218
    const-string/jumbo v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3515
    goto :goto_226

    .line 3511
    :pswitch_21f
    const-string/jumbo v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3512
    nop

    .line 3523
    :goto_226
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_358

    goto :goto_240

    .line 3531
    :pswitch_22c
    const-string v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3532
    goto :goto_240

    .line 3528
    :pswitch_232
    const-string/jumbo v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3529
    goto :goto_240

    .line 3525
    :pswitch_239
    const-string/jumbo v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3526
    nop

    .line 3537
    :goto_240
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_362

    goto :goto_254

    .line 3542
    :pswitch_246
    const-string/jumbo v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3543
    goto :goto_254

    .line 3539
    :pswitch_24d
    const-string/jumbo v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3540
    nop

    .line 3548
    :goto_254
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_36a

    goto :goto_275

    .line 3559
    :pswitch_25a
    const-string/jumbo v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3560
    goto :goto_275

    .line 3556
    :pswitch_261
    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3557
    goto :goto_275

    .line 3553
    :pswitch_268
    const-string v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3554
    goto :goto_275

    .line 3550
    :pswitch_26e
    const-string/jumbo v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3551
    nop

    .line 3565
    :goto_275
    if-eqz p1, :cond_2a1

    .line 3567
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_282

    .line 3568
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3569
    .local v2, "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v3, "height":I
    goto :goto_286

    .line 3572
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_282
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3574
    .restart local v2    # "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3576
    .restart local v3    # "height":I
    :goto_286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_2a1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3580
    const-string v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_2c2
    .packed-switch 0x1
        :pswitch_69
        :pswitch_63
        :pswitch_5c
    .end packed-switch

    :sswitch_data_2cc
    .sparse-switch
        0x40 -> :sswitch_7f
        0x80 -> :sswitch_78
    .end sparse-switch

    :pswitch_data_2d6
    .packed-switch 0x1
        :pswitch_107
        :pswitch_100
        :pswitch_f9
        :pswitch_f2
    .end packed-switch

    :sswitch_data_2e2
    .sparse-switch
        0x10 -> :sswitch_11d
        0x20 -> :sswitch_116
    .end sparse-switch

    :sswitch_data_2ec
    .sparse-switch
        0x100 -> :sswitch_133
        0x200 -> :sswitch_12c
    .end sparse-switch

    :pswitch_data_2f6
    .packed-switch 0x1
        :pswitch_149
        :pswitch_142
    .end packed-switch

    :sswitch_data_2fe
    .sparse-switch
        0x4 -> :sswitch_15e
        0x8 -> :sswitch_158
    .end sparse-switch

    :pswitch_data_308
    .packed-switch 0x1
        :pswitch_172
        :pswitch_16b
    .end packed-switch

    :sswitch_data_310
    .sparse-switch
        0x10 -> :sswitch_195
        0x20 -> :sswitch_18e
    .end sparse-switch

    :sswitch_data_31a
    .sparse-switch
        0x0 -> :sswitch_1f7
        0x78 -> :sswitch_1f0
        0xa0 -> :sswitch_1e9
        0xd5 -> :sswitch_1e2
        0xf0 -> :sswitch_1dc
        0x140 -> :sswitch_1d5
        0x1e0 -> :sswitch_1ce
        0x280 -> :sswitch_1c7
        0xfffe -> :sswitch_1c1
        0xffff -> :sswitch_1ba
    .end sparse-switch

    :pswitch_data_344
    .packed-switch 0x1
        :pswitch_204
        :pswitch_1fd
        :pswitch_1fe
    .end packed-switch

    :pswitch_data_34e
    .packed-switch 0x1
        :pswitch_21f
        :pswitch_218
        :pswitch_211
    .end packed-switch

    :pswitch_data_358
    .packed-switch 0x1
        :pswitch_239
        :pswitch_232
        :pswitch_22c
    .end packed-switch

    :pswitch_data_362
    .packed-switch 0x1
        :pswitch_24d
        :pswitch_246
    .end packed-switch

    :pswitch_data_36a
    .packed-switch 0x1
        :pswitch_26e
        :pswitch_268
        :pswitch_261
        :pswitch_25a
    .end packed-switch
.end method

.method public static uiModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "uiMode"    # I

    .line 1962
    packed-switch p0, :pswitch_data_20

    .line 1980
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1978
    :pswitch_8
    const-string v0, "UI_MODE_TYPE_VR_HEADSET"

    return-object v0

    .line 1976
    :pswitch_b
    const-string v0, "UI_MODE_TYPE_WATCH"

    return-object v0

    .line 1974
    :pswitch_e
    const-string v0, "UI_MODE_TYPE_APPLIANCE"

    return-object v0

    .line 1972
    :pswitch_11
    const-string v0, "UI_MODE_TYPE_TELEVISION"

    return-object v0

    .line 1970
    :pswitch_14
    const-string v0, "UI_MODE_TYPE_CAR"

    return-object v0

    .line 1968
    :pswitch_17
    const-string v0, "UI_MODE_TYPE_DESK"

    return-object v0

    .line 1966
    :pswitch_1a
    const-string v0, "UI_MODE_TYPE_NORMAL"

    return-object v0

    .line 1964
    :pswitch_1d
    const-string v0, "UI_MODE_TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private updateFromScreenConfiguration(Landroid/content/res/Configuration;)I
    .registers 7
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 3949
    const/4 v0, 0x0

    .line 3950
    .local v0, "changed":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    .line 3951
    .local v1, "screenLayoutNoDir":I
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    .line 3953
    .local v2, "deltaScreenLayoutNoDir":I
    if-eqz v2, :cond_1a

    if-eq v1, v2, :cond_1a

    .line 3955
    or-int/lit16 v0, v0, 0x100

    .line 3957
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3960
    :cond_1a
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_26

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v3, :cond_26

    .line 3961
    or-int/lit16 v0, v0, 0x80

    .line 3962
    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    .line 3965
    :cond_26
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_32

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v3, :cond_32

    .line 3967
    or-int/lit16 v0, v0, 0x400

    .line 3968
    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3971
    :cond_32
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_3e

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v3, :cond_3e

    .line 3973
    or-int/lit16 v0, v0, 0x400

    .line 3974
    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3977
    :cond_3e
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_4a

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v3, :cond_4a

    .line 3979
    or-int/lit16 v0, v0, 0x800

    .line 3980
    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3982
    :cond_4a
    return v0
.end method


# virtual methods
.method public clearLocales()V
    .registers 2

    .line 3184
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3186
    return-void
.end method

.method public compareTo(Landroid/content/res/Configuration;)I
    .registers 13
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 2899
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2900
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2901
    .local v1, "b":F
    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_a

    return v3

    .line 2902
    :cond_a
    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_10

    return v4

    .line 2903
    :cond_10
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v2, v5

    .line 2904
    .local v2, "n":I
    if-eqz v2, :cond_18

    return v2

    .line 2905
    :cond_18
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v5, v6

    .line 2906
    .end local v2    # "n":I
    .local v5, "n":I
    if-eqz v5, :cond_20

    return v5

    .line 2908
    :cond_20
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2909
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2912
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2913
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_af

    return v4

    .line 2914
    :cond_37
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2915
    return v3

    .line 2917
    :cond_40
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    iget-object v6, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2918
    .local v2, "minSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_51
    if-ge v6, v2, :cond_9e

    .line 2919
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 2920
    .local v7, "thisLocale":Ljava/util/Locale;
    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 2921
    .local v8, "thatLocale":Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2922
    if-eqz v5, :cond_6e

    return v5

    .line 2923
    :cond_6e
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2924
    if-eqz v5, :cond_7d

    return v5

    .line 2925
    :cond_7d
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2926
    if-eqz v5, :cond_8c

    return v5

    .line 2927
    :cond_8c
    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2928
    if-eqz v5, :cond_9b

    return v5

    .line 2918
    .end local v7    # "thisLocale":Ljava/util/Locale;
    .end local v8    # "thatLocale":Ljava/util/Locale;
    :cond_9b
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 2930
    .end local v6    # "i":I
    :cond_9e
    iget-object v6, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    sub-int v5, v6, v7

    .line 2931
    if-eqz v5, :cond_af

    return v5

    .line 2934
    .end local v2    # "minSize":I
    :cond_af
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v6, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    sub-int/2addr v2, v6

    .line 2935
    .end local v5    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_b7

    return v2

    .line 2936
    :cond_b7
    iget v5, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v5, v6

    .line 2937
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_bf

    return v5

    .line 2938
    :cond_bf
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v2, v6

    .line 2939
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_c7

    return v2

    .line 2940
    :cond_c7
    iget v5, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v5, v6

    .line 2941
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_cf

    return v5

    .line 2942
    :cond_cf
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v2, v6

    .line 2943
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_d7

    return v2

    .line 2944
    :cond_d7
    iget v5, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v5, v6

    .line 2945
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_df

    return v5

    .line 2946
    :cond_df
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v2, v6

    .line 2947
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_e7

    return v2

    .line 2948
    :cond_e7
    iget v5, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v5, v6

    .line 2949
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_ef

    return v5

    .line 2950
    :cond_ef
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v6, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v2, v6

    .line 2951
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_f7

    return v2

    .line 2952
    :cond_f7
    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v5, v6

    .line 2953
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_ff

    return v5

    .line 2954
    :cond_ff
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v2, v6

    .line 2955
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_107

    return v2

    .line 2956
    :cond_107
    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v5, v6

    .line 2957
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_10f

    return v5

    .line 2958
    :cond_10f
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v2, v6

    .line 2959
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_117

    return v2

    .line 2960
    :cond_117
    iget v5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v5, v6

    .line 2961
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_11f

    return v5

    .line 2962
    :cond_11f
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v2, v6

    .line 2963
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_127

    return v2

    .line 2964
    :cond_127
    iget v5, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v6, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v5, v6

    .line 2965
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_12f

    return v5

    .line 2966
    :cond_12f
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v6}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    .line 2967
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_13a

    return v2

    .line 2968
    :cond_13a
    iget v5, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v6, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    sub-int/2addr v5, v6

    .line 2969
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_142

    return v5

    .line 2972
    :cond_142
    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v0, v2

    .line 2973
    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v1, v2

    .line 2974
    cmpg-float v2, v0, v1

    if-gez v2, :cond_14d

    return v3

    .line 2975
    :cond_14d
    cmpl-float v2, v0, v1

    if-lez v2, :cond_152

    return v4

    .line 2978
    :cond_152
    iget v2, p0, Landroid/content/res/Configuration;->boldFont:I

    int-to-float v0, v2

    .line 2979
    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    int-to-float v1, v2

    .line 2980
    cmpg-float v2, v0, v1

    if-gez v2, :cond_15d

    return v3

    .line 2981
    :cond_15d
    cmpl-float v2, v0, v1

    if-lez v2, :cond_162

    return v4

    .line 2984
    :cond_162
    iget v2, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    sub-int/2addr v2, v6

    .line 2985
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_16a

    return v2

    .line 2988
    :cond_16a
    iget v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 2989
    iget v1, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 2990
    cmpg-float v5, v0, v1

    if-gez v5, :cond_173

    return v3

    .line 2991
    :cond_173
    cmpl-float v5, v0, v1

    if-lez v5, :cond_178

    return v4

    .line 2996
    :cond_178
    iget v5, p0, Landroid/content/res/Configuration;->nightDim:I

    int-to-float v0, v5

    .line 2997
    iget v5, p1, Landroid/content/res/Configuration;->nightDim:I

    int-to-float v1, v5

    .line 2998
    cmpg-float v5, v0, v1

    if-gez v5, :cond_183

    return v3

    .line 2999
    :cond_183
    cmpl-float v5, v0, v1

    if-lez v5, :cond_188

    return v4

    .line 3006
    :cond_188
    iget v5, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    sub-int/2addr v5, v6

    .line 3007
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_190

    return v5

    .line 3008
    :cond_190
    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v6, p1, Landroid/content/res/Configuration;->dexMode:I

    sub-int/2addr v2, v6

    .line 3009
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_198

    return v2

    .line 3012
    :cond_198
    iget v5, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    sub-int/2addr v5, v6

    .line 3013
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_1a0

    return v5

    .line 3014
    :cond_1a0
    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    sub-int/2addr v2, v6

    .line 3015
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_1a8

    return v2

    .line 3021
    :cond_1a8
    iget v5, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 3022
    .local v5, "x":I
    iget v6, p1, Landroid/content/res/Configuration;->themeSeq:I

    .line 3023
    .local v6, "y":I
    if-ge v5, v6, :cond_1af

    return v3

    .line 3024
    :cond_1af
    if-le v5, v6, :cond_1b2

    return v4

    .line 3028
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1b2
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 104
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    .line 2703
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .registers 3
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 2465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;ZZ)I
    .registers 12
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "compareUndefined"    # Z
    .param p3, "publicOnly"    # Z

    .line 2486
    const/4 v0, 0x0

    .line 2487
    .local v0, "changed":I
    const/4 v1, 0x0

    if-nez p2, :cond_a

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_15

    :cond_a
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    .line 2488
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    .line 2490
    :cond_15
    if-nez p2, :cond_1b

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_23

    :cond_1b
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_23

    .line 2491
    or-int/lit8 v0, v0, 0x1

    .line 2493
    :cond_23
    if-nez p2, :cond_29

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_31

    :cond_29
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_31

    .line 2494
    or-int/lit8 v0, v0, 0x2

    .line 2496
    :cond_31
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2497
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2498
    if-nez p2, :cond_41

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    :cond_41
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2499
    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 2500
    or-int/lit8 v0, v0, 0x4

    .line 2501
    or-int/lit16 v0, v0, 0x2000

    .line 2503
    :cond_4f
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    .line 2504
    .local v3, "deltaScreenLayoutDir":I
    if-nez p2, :cond_57

    if-eqz v3, :cond_5f

    :cond_57
    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    if-eq v3, v4, :cond_5f

    .line 2506
    or-int/lit16 v0, v0, 0x2000

    .line 2508
    :cond_5f
    if-nez p2, :cond_65

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v4, :cond_6d

    :cond_65
    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v5, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v5, :cond_6d

    .line 2510
    or-int/lit8 v0, v0, 0x8

    .line 2512
    :cond_6d
    if-nez p2, :cond_73

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v4, :cond_7b

    :cond_73
    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v5, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v5, :cond_7b

    .line 2514
    or-int/lit8 v0, v0, 0x10

    .line 2516
    :cond_7b
    if-nez p2, :cond_81

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v4, :cond_89

    :cond_81
    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v5, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v5, :cond_89

    .line 2518
    or-int/lit8 v0, v0, 0x20

    .line 2520
    :cond_89
    if-nez p2, :cond_8f

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v4, :cond_97

    :cond_8f
    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v5, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v4, v5, :cond_97

    .line 2522
    or-int/lit8 v0, v0, 0x20

    .line 2524
    :cond_97
    if-nez p2, :cond_9d

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v4, :cond_a5

    :cond_9d
    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    iget v5, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v5, :cond_a5

    .line 2526
    or-int/lit8 v0, v0, 0x40

    .line 2528
    :cond_a5
    if-nez p2, :cond_ab

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v4, :cond_b3

    :cond_ab
    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v5, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v5, :cond_b3

    .line 2530
    or-int/lit8 v0, v0, 0x20

    .line 2532
    :cond_b3
    if-nez p2, :cond_b9

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v4, :cond_c1

    :cond_b9
    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_c1

    .line 2534
    or-int/lit16 v0, v0, 0x80

    .line 2536
    :cond_c1
    if-nez p2, :cond_c9

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_d9

    :cond_c9
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2538
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2539
    invoke-static {v4}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v4

    if-eq v2, v4, :cond_d9

    .line 2540
    or-int/lit16 v0, v0, 0x100

    .line 2542
    :cond_d9
    if-nez p2, :cond_e1

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_ed

    :cond_e1
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    if-eq v2, v4, :cond_ed

    .line 2546
    or-int/lit16 v0, v0, 0x4000

    .line 2548
    :cond_ed
    if-nez p2, :cond_f5

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_101

    :cond_f5
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    if-eq v2, v4, :cond_101

    .line 2553
    or-int/lit16 v0, v0, 0x4000

    .line 2555
    :cond_101
    if-nez p2, :cond_107

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_10f

    :cond_107
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v4, :cond_10f

    .line 2557
    or-int/lit16 v0, v0, 0x200

    .line 2559
    :cond_10f
    if-nez p2, :cond_115

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_11d

    :cond_115
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v4, :cond_11d

    .line 2561
    or-int/lit16 v0, v0, 0x400

    .line 2563
    :cond_11d
    if-nez p2, :cond_123

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_12b

    :cond_123
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v4, :cond_12b

    .line 2565
    or-int/lit16 v0, v0, 0x400

    .line 2567
    :cond_12b
    if-nez p2, :cond_131

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_139

    :cond_131
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v4, :cond_139

    .line 2569
    or-int/lit16 v0, v0, 0x800

    .line 2571
    :cond_139
    if-nez p2, :cond_13f

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_147

    :cond_13f
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_147

    .line 2573
    or-int/lit16 v0, v0, 0x1000

    .line 2575
    :cond_147
    if-nez p2, :cond_14d

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_156

    :cond_14d
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v4, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v4, :cond_156

    .line 2577
    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    .line 2581
    :cond_156
    if-nez p3, :cond_169

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2582
    invoke-virtual {v2, v4, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_169

    .line 2583
    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    .line 2586
    :cond_169
    const/high16 v2, 0x10000000

    if-nez p2, :cond_174

    iget v4, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_17b

    :cond_174
    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v5, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v4, v5, :cond_17b

    .line 2588
    or-int/2addr v0, v2

    .line 2591
    :cond_17b
    iget v4, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v5, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v4, v5, :cond_185

    .line 2592
    const v4, 0x8000

    or-int/2addr v0, v4

    .line 2596
    :cond_185
    iget v4, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v4, :cond_18e

    iget v5, p0, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v5, v4, :cond_18e

    .line 2597
    or-int/2addr v0, v2

    .line 2601
    :cond_18e
    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_19a

    iget v5, p0, Landroid/content/res/Configuration;->boldFont:I

    if-eq v5, v2, :cond_19a

    .line 2602
    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 2606
    :cond_19a
    iget v2, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v2, v4, :cond_1a5

    iget v5, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v5, v2, :cond_1a5

    .line 2608
    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 2612
    :cond_1a5
    iget v2, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1b4

    iget v1, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b4

    .line 2614
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 2626
    :cond_1b4
    iget v1, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v1, v4, :cond_1bf

    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    if-eq v2, v1, :cond_1bf

    .line 2627
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 2634
    :cond_1bf
    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-lez v1, :cond_1ca

    iget v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v2, v1, :cond_1ca

    .line 2635
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 2640
    :cond_1ca
    return v0
.end method

.method public diffPublicOnly(Landroid/content/res/Configuration;)I
    .registers 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 2477
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1762
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1763
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "critical"    # Z

    .line 1775
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1776
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V
    .registers 11
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "persisted"    # Z
    .param p5, "critical"    # Z

    .line 1721
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1722
    .local v0, "token":J
    if-nez p5, :cond_ba

    .line 1723
    const-wide v2, 0x10200000001L

    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1724
    const-wide v2, 0x10d00000002L

    iget v4, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1725
    const-wide v2, 0x10d00000003L

    iget v4, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1726
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_34

    .line 1727
    const-wide v3, 0x10900000014L

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1729
    :cond_34
    const-wide v2, 0x10d00000005L

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1730
    const-wide v2, 0x10d00000006L

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1731
    const-wide v2, 0x10d00000007L

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1732
    const-wide v2, 0x10d00000008L

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1733
    const-wide v2, 0x10d00000009L

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1734
    const-wide v2, 0x10d0000000aL

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1735
    const-wide v2, 0x10d0000000bL

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1736
    const-wide v2, 0x10d0000000cL

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1737
    const-wide v2, 0x10d0000000eL

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1738
    const-wide v2, 0x10d00000011L

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1739
    const-wide v2, 0x10d00000012L

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1741
    if-nez p4, :cond_b0

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v2, :cond_b0

    .line 1742
    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1744
    :cond_b0
    const-wide v2, 0x10d00000015L

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1746
    :cond_ba
    const-wide v2, 0x10d0000000dL

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1747
    const-wide v2, 0x10d0000000fL

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1748
    const-wide v2, 0x10d00000010L

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1749
    const-wide v2, 0x10d00000016L

    iget v4, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1750
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1751
    return-void
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 3032
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 3033
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 3034
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 3039
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 3040
    :catch_8
    move-exception v0

    .line 3042
    const/4 v0, 0x0

    return v0
.end method

.method public getGrammaticalGender()I
    .registers 2

    .line 3119
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    return v0
.end method

.method public getLayoutDirection()I
    .registers 3

    .line 3196
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    .line 3197
    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 3196
    :goto_b
    return v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 3141
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 3142
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 3046
    const/16 v0, 0x11

    .line 3047
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 3048
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v2

    .line 3049
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v2

    .line 3050
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 3051
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v2

    .line 3052
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v2

    .line 3053
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v2

    .line 3054
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v2

    .line 3055
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v2

    .line 3056
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v2

    .line 3057
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v2

    .line 3058
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v2

    .line 3059
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v1, v2

    .line 3060
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v2

    .line 3061
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v2

    .line 3062
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v0, v2

    .line 3063
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v2

    .line 3064
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v0, v2

    .line 3065
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v2

    .line 3066
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, v2

    .line 3067
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    add-int/2addr v1, v2

    .line 3070
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    add-int/2addr v0, v2

    .line 3073
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->boldFont:I

    add-int/2addr v1, v2

    .line 3076
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    add-int/2addr v0, v2

    .line 3079
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 3084
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->nightDim:I

    add-int/2addr v0, v2

    .line 3090
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    add-int/2addr v1, v2

    .line 3091
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    add-int/2addr v0, v2

    .line 3095
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    add-int/2addr v1, v2

    .line 3096
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    add-int/2addr v0, v2

    .line 3102
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    add-int/2addr v1, v2

    .line 3105
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isDesktopModeEnabled()Z
    .registers 3

    .line 3884
    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isDexMode()Z
    .registers 4

    .line 3872
    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_a
    return v2
.end method

.method public isLayoutSizeAtLeast(I)Z
    .registers 4
    .param p1, "size"    # I

    .line 580
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 581
    .local v0, "cur":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 582
    :cond_8
    if-lt v0, p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public isNewDexMode()Z
    .registers 3

    .line 3879
    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isNightModeActive()Z
    .registers 3

    .line 2894
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "other"    # Landroid/content/res/Configuration;

    .line 2676
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2678
    return v0

    .line 2680
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 2683
    return v2

    .line 2685
    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_f

    .line 2688
    return v2

    .line 2690
    :cond_f
    sub-int/2addr v1, v3

    .line 2691
    .local v1, "diff":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/high16 v4, 0x10000000

    if-le v3, v4, :cond_1c

    .line 2694
    if-gez v1, :cond_1b

    move v0, v2

    :cond_1b
    return v0

    .line 2696
    :cond_1c
    if-lez v1, :cond_1f

    move v0, v2

    :cond_1f
    return v0
.end method

.method public isScreenHdr()Z
    .registers 3

    .line 3253
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

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

.method public isScreenRound()Z
    .registers 3

    .line 3229
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isScreenWideColorGamut()Z
    .registers 3

    .line 3244
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public makeDefault()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2068
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2069
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2792
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2796
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2797
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2802
    .local v0, "localeSetFrom":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    move v2, v3

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2803
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_37

    move v2, v3

    goto :goto_38

    :cond_37
    move v2, v1

    :goto_38
    iput-boolean v2, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    .line 2809
    .end local v0    # "localeSetFrom":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_41

    move v1, v3

    :cond_41
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2825
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2826
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2827
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 2830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 2837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 2840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 2843
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 2848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 2854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 2858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 2859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 2865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 2868
    return-void
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 30
    .param p1, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1787
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ") found when trying to add: "

    const-string v4, ";script-"

    const-string v5, "Repeated locale ("

    const-string v6, ";variant-"

    const-string v7, ";country-"

    const-string/jumbo v8, "readFromProto error building locale with: language-"

    const-string v9, ""

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    .line 1788
    .local v10, "token":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1790
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :goto_1d
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_440

    const/4 v13, -0x1

    if-eq v0, v13, :cond_41d

    .line 1791
    :try_start_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_41a

    const-string v14, "Configuration"

    packed-switch v0, :pswitch_data_460

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .local v20, "token":J
    goto/16 :goto_414

    .line 1913
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_33
    const-wide v13, 0x10d00000016L

    :try_start_38
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_414

    .line 1910
    :pswitch_44
    const-wide v13, 0x10d00000015L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_55

    .line 1911
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_414

    .line 1919
    :catchall_55
    move-exception v0

    move-wide v3, v10

    goto/16 :goto_442

    .line 1903
    :pswitch_59
    move-wide v15, v10

    .end local v10    # "token":J
    .local v15, "token":J
    const-wide v10, 0x10900000014L

    :try_start_5f
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6a} :catch_70
    .catchall {:try_start_5f .. :try_end_6a} :catchall_189

    .line 1907
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1905
    :catch_70
    move-exception v0

    .line 1906
    .local v0, "e":Ljava/lang/Exception;
    :try_start_71
    const-string v10, "error parsing locale list in configuration."

    invoke-static {v14, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_414

    .line 1899
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_7c
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v10, 0x10b00000013L

    invoke-virtual {v0, v2, v10, v11}, Landroid/app/WindowConfiguration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1900
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1896
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_8d
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000012L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1897
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1893
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_9f
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000011L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1894
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1890
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_b1
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000010L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1891
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1887
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_c3
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1888
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1884
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_d5
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000eL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 1885
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1881
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_e7
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000dL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1882
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1878
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_f9
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000cL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1879
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1875
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_10b
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000bL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1876
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1872
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_11d
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000aL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1873
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1869
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_12f
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000009L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1870
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1866
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_141
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000008L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 1867
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1863
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_153
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000007L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 1864
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1860
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_165
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000006L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 1861
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1857
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_177
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000005L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_183
    .catchall {:try_start_71 .. :try_end_183} :catchall_189

    .line 1858
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_414

    .line 1919
    :catchall_189
    move-exception v0

    move-wide v3, v15

    goto/16 :goto_442

    .line 1804
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_18d
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x20b00000004L

    :try_start_193
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10
    :try_end_197
    .catchall {:try_start_193 .. :try_end_197} :catchall_3cf

    .line 1805
    .local v10, "localeToken":J
    move-object v0, v9

    .line 1806
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v17, v9

    .line 1807
    .local v17, "country":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 1808
    .local v18, "variant":Ljava/lang/String;
    move-object/from16 v19, v9

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    .line 1810
    .end local v0    # "language":Ljava/lang/String;
    .end local v17    # "country":Ljava/lang/String;
    .end local v18    # "variant":Ljava/lang/String;
    .local v20, "language":Ljava/lang/String;
    .local v21, "country":Ljava/lang/String;
    .local v22, "variant":Ljava/lang/String;
    .local v23, "script":Ljava/lang/String;
    :goto_1a6
    :try_start_1a6
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_1aa
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1a6 .. :try_end_1aa} :catch_32c
    .catchall {:try_start_1a6 .. :try_end_1aa} :catchall_31a

    if-eq v0, v13, :cond_23b

    .line 1812
    :try_start_1ac
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_1b0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1ac .. :try_end_1b0} :catch_229
    .catchall {:try_start_1ac .. :try_end_1b0} :catchall_216

    packed-switch v0, :pswitch_data_490

    move-object/from16 v18, v14

    goto/16 :goto_212

    .line 1824
    :pswitch_1b7
    move-object/from16 v18, v14

    const-wide v13, 0x10900000004L

    :try_start_1be
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .end local v23    # "script":Ljava/lang/String;
    .local v0, "script":Ljava/lang/String;
    goto :goto_212

    .line 1821
    .end local v0    # "script":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :pswitch_1c5
    move-object/from16 v18, v14

    const-wide v13, 0x10900000003L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1822
    .end local v22    # "variant":Ljava/lang/String;
    .local v0, "variant":Ljava/lang/String;
    move-object/from16 v22, v0

    goto :goto_212

    .line 1818
    .end local v0    # "variant":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    :pswitch_1d3
    move-object/from16 v18, v14

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1819
    .end local v21    # "country":Ljava/lang/String;
    .local v0, "country":Ljava/lang/String;
    move-object/from16 v21, v0

    goto :goto_212

    .line 1814
    .end local v0    # "country":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    :pswitch_1e1
    move-object/from16 v18, v14

    const-wide v13, 0x10900000001L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1ec
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1be .. :try_end_1ec} :catch_201
    .catchall {:try_start_1be .. :try_end_1ec} :catchall_1ef

    .line 1816
    .end local v20    # "language":Ljava/lang/String;
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v20, v0

    goto :goto_212

    .line 1832
    .end local v0    # "language":Ljava/lang/String;
    .restart local v20    # "language":Ljava/lang/String;
    :catchall_1ef
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_340

    .line 1828
    :catch_201
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_33c

    .line 1825
    :goto_212
    move-object/from16 v14, v18

    const/4 v13, -0x1

    goto :goto_1a6

    .line 1832
    :catchall_216
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_340

    .line 1828
    :catch_229
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_33c

    .line 1832
    :cond_23b
    move-object/from16 v18, v14

    :try_start_23d
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_240
    .catchall {:try_start_23d .. :try_end_240} :catchall_3cf

    .line 1834
    :try_start_240
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V
    :try_end_245
    .catch Ljava/util/IllformedLocaleException; {:try_start_240 .. :try_end_245} :catch_2d4
    .catchall {:try_start_240 .. :try_end_245} :catchall_3cf

    .line 1835
    move-object/from16 v13, v20

    .end local v20    # "language":Ljava/lang/String;
    .local v13, "language":Ljava/lang/String;
    :try_start_247
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_24b
    .catch Ljava/util/IllformedLocaleException; {:try_start_247 .. :try_end_24b} :catch_2c4
    .catchall {:try_start_247 .. :try_end_24b} :catchall_3cf

    .line 1836
    move-object/from16 v14, v21

    .end local v21    # "country":Ljava/lang/String;
    .local v14, "country":Ljava/lang/String;
    :try_start_24d
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_251
    .catch Ljava/util/IllformedLocaleException; {:try_start_24d .. :try_end_251} :catch_2b6
    .catchall {:try_start_24d .. :try_end_251} :catchall_3cf

    .line 1837
    move-object/from16 v19, v9

    move-object/from16 v9, v22

    .end local v22    # "variant":Ljava/lang/String;
    .local v9, "variant":Ljava/lang/String;
    :try_start_255
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_259
    .catch Ljava/util/IllformedLocaleException; {:try_start_255 .. :try_end_259} :catch_2ac
    .catchall {:try_start_255 .. :try_end_259} :catchall_3cf

    .line 1838
    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :try_start_25d
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1839
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1842
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v22, v16

    .line 1843
    .local v22, "inListIndex":I
    move/from16 v1, v22

    const/4 v2, -0x1

    .end local v22    # "inListIndex":I
    .local v1, "inListIndex":I
    if-eq v1, v2, :cond_29b

    .line 1844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_279
    .catch Ljava/util/IllformedLocaleException; {:try_start_25d .. :try_end_279} :catch_2a6
    .catchall {:try_start_25d .. :try_end_279} :catchall_3c9

    move-object/from16 v16, v5

    :try_start_27b
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1845
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_293
    .catch Ljava/util/IllformedLocaleException; {:try_start_27b .. :try_end_293} :catch_299
    .catchall {:try_start_27b .. :try_end_293} :catchall_3c9

    .line 1844
    move-object/from16 v5, v18

    :try_start_295
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a2

    .line 1849
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :catch_299
    move-exception v0

    goto :goto_2a9

    .line 1847
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "inListIndex":I
    :cond_29b
    move-object/from16 v16, v5

    move-object/from16 v5, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a2
    .catch Ljava/util/IllformedLocaleException; {:try_start_295 .. :try_end_2a2} :catch_2a4
    .catchall {:try_start_295 .. :try_end_2a2} :catchall_3c9

    .line 1853
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :goto_2a2
    goto/16 :goto_312

    .line 1849
    :catch_2a4
    move-exception v0

    goto :goto_2e5

    :catch_2a6
    move-exception v0

    move-object/from16 v16, v5

    :goto_2a9
    move-object/from16 v5, v18

    goto :goto_2e5

    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2ac
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2e5

    .end local v9    # "variant":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .local v22, "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2b6
    move-exception v0

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    move-object/from16 v9, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2e5

    .end local v9    # "variant":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2c4
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2e5

    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2d4
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .line 1850
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_2e5
    :try_start_2e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_311
    .catchall {:try_start_2e5 .. :try_end_311} :catchall_3c9

    .line 1854
    nop

    .line 1855
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_312
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    goto/16 :goto_414

    .line 1832
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catchall_31a
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    move-object v1, v0

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    goto :goto_340

    .line 1828
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_32c
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    .line 1830
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_33c
    nop

    .end local v9    # "variant":Ljava/lang/String;
    .end local v10    # "localeToken":J
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    :try_start_33d
    throw v0
    :try_end_33e
    .catchall {:try_start_33d .. :try_end_33e} :catchall_33e

    .line 1832
    .end local v0    # "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v10    # "localeToken":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .restart local v15    # "script":Ljava/lang/String;
    .restart local v20    # "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_33e
    move-exception v0

    move-object v1, v0

    :goto_340
    move-object/from16 v2, p1

    :try_start_342
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_345
    .catchall {:try_start_342 .. :try_end_345} :catchall_3c9

    .line 1834
    :try_start_345
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 1835
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1836
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1837
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1838
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1839
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1842
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18
    :try_end_362
    .catch Ljava/util/IllformedLocaleException; {:try_start_345 .. :try_end_362} :catch_398
    .catchall {:try_start_345 .. :try_end_362} :catchall_3c9

    move/from16 v19, v18

    .line 1843
    .local v19, "inListIndex":I
    move-wide/from16 v22, v10

    move/from16 v10, v19

    const/4 v11, -0x1

    .end local v19    # "inListIndex":I
    .local v10, "inListIndex":I
    .local v22, "localeToken":J
    if-eq v10, v11, :cond_392

    .line 1844
    :try_start_36b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1845
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1844
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_395

    .line 1847
    :cond_392
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_395
    .catch Ljava/util/IllformedLocaleException; {:try_start_36b .. :try_end_395} :catch_396
    .catchall {:try_start_36b .. :try_end_395} :catchall_3c9

    .line 1853
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v10    # "inListIndex":I
    :goto_395
    goto :goto_3c7

    .line 1849
    :catch_396
    move-exception v0

    goto :goto_39b

    .end local v22    # "localeToken":J
    .local v10, "localeToken":J
    :catch_398
    move-exception v0

    move-wide/from16 v22, v10

    .line 1850
    .end local v10    # "localeToken":J
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v22    # "localeToken":J
    :goto_39b
    :try_start_39b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_3c7
    nop

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    throw v1
    :try_end_3c9
    .catchall {:try_start_39b .. :try_end_3c9} :catchall_3c9

    .line 1919
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    .end local v22    # "localeToken":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v20    # "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_3c9
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_411

    .end local v20    # "token":J
    .local v15, "token":J
    :catchall_3cf
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v15

    .end local v15    # "token":J
    .restart local v20    # "token":J
    goto/16 :goto_442

    .line 1799
    .end local v20    # "token":J
    .local v10, "token":J
    :pswitch_3d7
    move-object v2, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v0, 0x10d00000003L

    move-object/from16 v2, p1

    :try_start_3e3
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_3e7
    .catchall {:try_start_3e3 .. :try_end_3e7} :catchall_3ec

    move-object/from16 v1, p0

    :try_start_3e9
    iput v0, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1800
    goto :goto_414

    .line 1919
    :catchall_3ec
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_411

    .line 1796
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_3f0
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v9, 0x10d00000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1797
    goto :goto_414

    .line 1793
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_400
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v9, 0x10200000001L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_40f
    .catchall {:try_start_3e9 .. :try_end_40f} :catchall_410

    .line 1794
    goto :goto_414

    .line 1919
    :catchall_410
    move-exception v0

    :goto_411
    move-wide/from16 v3, v20

    goto :goto_442

    .line 1914
    :goto_414
    move-object/from16 v9, v19

    move-wide/from16 v10, v20

    goto/16 :goto_1d

    .line 1919
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :catchall_41a
    move-exception v0

    move-wide v3, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    goto :goto_442

    .end local v20    # "token":J
    .restart local v10    # "token":J
    :cond_41d
    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_439

    .line 1921
    new-instance v0, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1923
    :cond_439
    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .local v3, "token":J
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1924
    nop

    .line 1925
    return-void

    .line 1919
    .end local v3    # "token":J
    .restart local v10    # "token":J
    :catchall_440
    move-exception v0

    move-wide v3, v10

    .end local v10    # "token":J
    .restart local v3    # "token":J
    :goto_442
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_45c

    .line 1921
    new-instance v5, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Locale;

    invoke-interface {v12, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v5, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1923
    :cond_45c
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1924
    throw v0

    :pswitch_data_460
    .packed-switch 0x1
        :pswitch_400
        :pswitch_3f0
        :pswitch_3d7
        :pswitch_18d
        :pswitch_177
        :pswitch_165
        :pswitch_153
        :pswitch_141
        :pswitch_12f
        :pswitch_11d
        :pswitch_10b
        :pswitch_f9
        :pswitch_e7
        :pswitch_d5
        :pswitch_c3
        :pswitch_b1
        :pswitch_9f
        :pswitch_8d
        :pswitch_7c
        :pswitch_59
        :pswitch_44
        :pswitch_33
    .end packed-switch

    :pswitch_data_490
    .packed-switch 0x1
        :pswitch_1e1
        :pswitch_1d3
        :pswitch_1c5
        :pswitch_1b7
    .end packed-switch
.end method

.method public semIsPopOver()Z
    .registers 2

    .line 1108
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    return v0
.end method

.method public setGrammaticalGender(I)V
    .registers 2
    .param p1, "grammaticalGender"    # I

    .line 3131
    iput p1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 3132
    return-void
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 3213
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3214
    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3216
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 4
    .param p1, "loc"    # Ljava/util/Locale;

    .line 3175
    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_10

    :cond_7
    new-instance v0, Landroid/os/LocaleList;

    filled-new-array {p1}, [Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_10
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 3176
    return-void
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .registers 4
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 3157
    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3159
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 3160
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1385
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1386
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1387
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1388
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_14

    .line 1389
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_26

    .line 1390
    :cond_14
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1393
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1395
    :cond_26
    :goto_26
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1396
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1397
    iget v0, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1398
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1399
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1400
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1401
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1402
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1403
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1404
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1405
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1406
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1407
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1408
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1409
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1410
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1411
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1412
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1413
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1414
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1415
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1416
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1417
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1418
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 1419
    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1423
    iget-boolean v0, p1, Landroid/content/res/Configuration;->rilSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    .line 1429
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 1432
    iget v0, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 1435
    iget v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 1438
    iget v0, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iput v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 1443
    iget v0, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 1449
    iget v0, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1450
    iget v0, p1, Landroid/content/res/Configuration;->dexMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1453
    iget v0, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 1454
    iget v0, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1460
    iget v0, p1, Landroid/content/res/Configuration;->themeSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 1463
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;II)V
    .registers 6
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "mask"    # I
    .param p3, "windowMask"    # I

    .line 2342
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 2343
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2345
    :cond_9
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 2346
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2348
    :cond_11
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_19

    .line 2349
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2351
    :cond_19
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3b

    .line 2352
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2353
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2354
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2356
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2360
    :cond_3b
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_4a

    .line 2361
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    .line 2362
    .local v0, "deltaScreenLayoutDir":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2364
    .end local v0    # "deltaScreenLayoutDir":I
    :cond_4a
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_52

    .line 2365
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2367
    :cond_52
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5a

    .line 2368
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2370
    :cond_5a
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_62

    .line 2371
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2373
    :cond_62
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_72

    .line 2374
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2375
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2376
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2378
    :cond_72
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7a

    .line 2379
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2381
    :cond_7a
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_82

    .line 2382
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2384
    :cond_82
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_8f

    .line 2386
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2388
    :cond_8f
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_97

    .line 2389
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2391
    :cond_97
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_9f

    .line 2392
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2394
    :cond_9f
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_ab

    .line 2395
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2396
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2398
    :cond_ab
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_b3

    .line 2399
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2401
    :cond_b3
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_bb

    .line 2402
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2404
    :cond_bb
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_c4

    .line 2405
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2407
    :cond_c4
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_d0

    .line 2408
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, p3}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;I)V

    .line 2410
    :cond_d0
    const/high16 v0, 0x10000000

    and-int v1, p2, v0

    if-eqz v1, :cond_da

    .line 2411
    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2413
    :cond_da
    const v1, 0x8000

    and-int/2addr v1, p2

    if-eqz v1, :cond_e4

    .line 2414
    iget v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2418
    :cond_e4
    and-int/2addr v0, p2

    if-eqz v0, :cond_eb

    .line 2419
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 2423
    :cond_eb
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_f4

    .line 2424
    iget v0, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 2428
    :cond_f4
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    if-eqz v0, :cond_fd

    .line 2429
    iget v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 2433
    :cond_fd
    const/high16 v0, 0x800000

    and-int/2addr v0, p2

    if-eqz v0, :cond_106

    .line 2434
    iget v0, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iput v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 2440
    :cond_106
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_10f

    .line 2441
    iget v0, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 2450
    :cond_10f
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_118

    .line 2451
    iget v0, p1, Landroid/content/res/Configuration;->dexMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 2455
    :cond_118
    return-void
.end method

.method public setToDefaults()V
    .registers 4

    .line 1988
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1989
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1990
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1991
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1992
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1993
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1994
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1995
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1996
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1997
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1998
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1999
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2000
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2001
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2002
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2003
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2004
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2005
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2006
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2007
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2008
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 2009
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 2010
    const v1, 0x7fffffff

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2011
    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2015
    iput-boolean v0, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    .line 2020
    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 2023
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 2026
    iput v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 2029
    const/4 v2, 0x0

    iput v2, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 2034
    iput v1, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 2040
    iput v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2041
    iput v1, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 2044
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 2045
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 2051
    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 2054
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1467
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1469
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_25

    .line 1471
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1472
    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 1474
    :cond_25
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :goto_2a
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    const v3, 0xffff

    if-eq v2, v3, :cond_3b

    .line 1477
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1478
    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 1480
    :cond_3b
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    :goto_40
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1483
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    .line 1484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 1487
    :cond_54
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    :goto_59
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eqz v2, :cond_78

    .line 1490
    packed-switch v2, :pswitch_data_3d6

    goto :goto_78

    .line 1493
    :pswitch_61
    const-string v2, " masculine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1492
    :pswitch_67
    const-string v2, " feminine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1491
    :pswitch_6d
    const-string v2, " neuter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1494
    :pswitch_73
    const-string v2, " ?grgend"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    :cond_78
    :goto_78
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    .line 1498
    .local v2, "layoutDir":I
    sparse-switch v2, :sswitch_data_3e2

    .line 1502
    const-string v3, " layoutDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    shr-int/lit8 v3, v2, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 1501
    :sswitch_8a
    const-string v3, " ldrtl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 1500
    :sswitch_90
    const-string v3, " ldltr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 1499
    :sswitch_96
    const-string v3, " ?layoutDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    :goto_9b
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v4, "dp"

    if-eqz v3, :cond_af

    .line 1506
    const-string v3, " sw"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b4

    .line 1508
    :cond_af
    const-string v3, " ?swdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    :goto_b4
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_c6

    .line 1511
    const-string v3, " w"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 1513
    :cond_c6
    const-string v3, " ?wdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    :goto_cb
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_dd

    .line 1516
    const-string v3, " h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e2

    .line 1518
    :cond_dd
    const-string v3, " ?hdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    :goto_e2
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_f4

    .line 1521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 1523
    :cond_f4
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    :goto_f9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_3f0

    .line 1531
    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12a

    .line 1530
    :pswitch_10d
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12a

    .line 1529
    :pswitch_113
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12a

    .line 1528
    :pswitch_119
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12a

    .line 1527
    :pswitch_11f
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12a

    .line 1526
    :pswitch_125
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    :goto_12a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_3fe

    .line 1538
    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14a

    .line 1537
    :sswitch_13e
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14a

    .line 1536
    :sswitch_144
    goto :goto_14a

    .line 1535
    :sswitch_145
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    :goto_14a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_40c

    .line 1545
    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_16a

    .line 1544
    :sswitch_15e
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16a

    .line 1543
    :sswitch_164
    goto :goto_16a

    .line 1542
    :sswitch_165
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :goto_16a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_41a

    .line 1552
    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_18a

    .line 1551
    :pswitch_17e
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18a

    .line 1550
    :pswitch_184
    goto :goto_18a

    .line 1549
    :pswitch_185
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    :goto_18a
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_424

    .line 1559
    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1ab

    .line 1557
    :pswitch_19a
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ab

    .line 1558
    :pswitch_1a0
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ab

    .line 1556
    :pswitch_1a6
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    :goto_1ab
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_42e

    .line 1570
    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1e9

    .line 1569
    :pswitch_1bf
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e9

    .line 1568
    :pswitch_1c5
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e9

    .line 1567
    :pswitch_1cb
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e9

    .line 1566
    :pswitch_1d1
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e9

    .line 1565
    :pswitch_1d7
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e9

    .line 1564
    :pswitch_1dd
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e9

    .line 1563
    :pswitch_1e3
    goto :goto_1e9

    .line 1562
    :pswitch_1e4
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    :goto_1e9
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_442

    .line 1576
    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_209

    .line 1575
    :sswitch_1fd
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_209

    .line 1574
    :sswitch_203
    goto :goto_209

    .line 1573
    :sswitch_204
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    :goto_209
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_450

    .line 1583
    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_230

    .line 1582
    :pswitch_219
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    .line 1581
    :pswitch_21f
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    .line 1580
    :pswitch_225
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    .line 1579
    :pswitch_22b
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    :goto_230
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_45c

    .line 1590
    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_257

    .line 1589
    :pswitch_240
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_257

    .line 1588
    :pswitch_246
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_257

    .line 1587
    :pswitch_24c
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_257

    .line 1586
    :pswitch_252
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    :goto_257
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v3, "/"

    const-string v4, "/h"

    const-string v5, "/v"

    const-string v6, "/?"

    packed-switch v1, :pswitch_data_468

    .line 1597
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_27e

    .line 1596
    :pswitch_26d
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27e

    .line 1595
    :pswitch_273
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27e

    .line 1594
    :pswitch_277
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27e

    .line 1593
    :pswitch_27b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    :goto_27e
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_474

    .line 1603
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_297

    .line 1602
    :pswitch_28c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_297

    .line 1601
    :pswitch_290
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_297

    .line 1600
    :pswitch_294
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    :goto_297
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_47e

    .line 1611
    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2c4

    .line 1610
    :pswitch_2a7
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c4

    .line 1609
    :pswitch_2ad
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c4

    .line 1608
    :pswitch_2b3
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c4

    .line 1607
    :pswitch_2b9
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c4

    .line 1606
    :pswitch_2bf
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    :goto_2c4
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_48c

    .line 1617
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2dd

    .line 1616
    :pswitch_2d2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2dd

    .line 1615
    :pswitch_2d6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2dd

    .line 1614
    :pswitch_2da
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    :goto_2dd
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1620
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_2f6

    .line 1621
    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1623
    :cond_2f6
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_305

    .line 1624
    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1626
    :cond_305
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_317

    .line 1627
    const-string v1, " fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_31c

    .line 1630
    :cond_317
    const-string v1, " ?fontWeightAdjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    :goto_31c
    const-string v1, " ff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    iget v1, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1638
    const-string v1, " bf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    iget v1, p0, Landroid/content/res/Configuration;->boldFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1642
    const-string v1, " bts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    iget v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1646
    const-string v1, " cst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    iget v1, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1652
    const-string v1, " nightDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    iget v1, p0, Landroid/content/res/Configuration;->nightDim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1665
    iget v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    packed-switch v1, :pswitch_data_496

    goto :goto_365

    .line 1668
    :pswitch_354
    const-string v1, " desktop/e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_365

    .line 1667
    :pswitch_35a
    const-string v1, " desktop/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_365

    .line 1666
    :pswitch_360
    const-string v1, " desktop/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    :goto_365
    iget v1, p0, Landroid/content/res/Configuration;->dexMode:I

    packed-switch v1, :pswitch_data_4a0

    goto :goto_38e

    .line 1677
    :pswitch_36b
    const-string v1, " dm/extension"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38e

    .line 1676
    :pswitch_371
    const-string v1, " dm/nextgen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38e

    .line 1675
    :pswitch_377
    const-string v1, " dm/dual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38e

    .line 1674
    :pswitch_37d
    const-string v1, " dm/stand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38e

    .line 1673
    :pswitch_383
    const-string v1, " dm/n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38e

    .line 1672
    :pswitch_389
    const-string v1, " dm/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    :goto_38e
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    packed-switch v1, :pswitch_data_4b0

    goto :goto_3a5

    .line 1685
    :pswitch_394
    const-string v1, " dc/e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a5

    .line 1684
    :pswitch_39a
    const-string v1, " dc/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a5

    .line 1683
    :pswitch_3a0
    const-string v1, " ?dc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    :goto_3a5
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    packed-switch v1, :pswitch_data_4ba

    goto :goto_3c2

    .line 1692
    :pswitch_3ab
    const-string v1, " dcui/f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c2

    .line 1691
    :pswitch_3b1
    const-string v1, " dcui/c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c2

    .line 1690
    :pswitch_3b7
    const-string v1, " dcui/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c2

    .line 1689
    :pswitch_3bd
    const-string v1, " ?dcui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    :goto_3c2
    const-string v1, " themeSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    iget v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1704
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_3d6
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6d
        :pswitch_67
        :pswitch_61
    .end packed-switch

    :sswitch_data_3e2
    .sparse-switch
        0x0 -> :sswitch_96
        0x40 -> :sswitch_90
        0x80 -> :sswitch_8a
    .end sparse-switch

    :pswitch_data_3f0
    .packed-switch 0x0
        :pswitch_125
        :pswitch_11f
        :pswitch_119
        :pswitch_113
        :pswitch_10d
    .end packed-switch

    :sswitch_data_3fe
    .sparse-switch
        0x0 -> :sswitch_145
        0x10 -> :sswitch_144
        0x20 -> :sswitch_13e
    .end sparse-switch

    :sswitch_data_40c
    .sparse-switch
        0x0 -> :sswitch_165
        0x4 -> :sswitch_164
        0x8 -> :sswitch_15e
    .end sparse-switch

    :pswitch_data_41a
    .packed-switch 0x0
        :pswitch_185
        :pswitch_184
        :pswitch_17e
    .end packed-switch

    :pswitch_data_424
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_1a0
        :pswitch_19a
    .end packed-switch

    :pswitch_data_42e
    .packed-switch 0x0
        :pswitch_1e4
        :pswitch_1e3
        :pswitch_1dd
        :pswitch_1d7
        :pswitch_1d1
        :pswitch_1cb
        :pswitch_1c5
        :pswitch_1bf
    .end packed-switch

    :sswitch_data_442
    .sparse-switch
        0x0 -> :sswitch_204
        0x10 -> :sswitch_203
        0x20 -> :sswitch_1fd
    .end sparse-switch

    :pswitch_data_450
    .packed-switch 0x0
        :pswitch_22b
        :pswitch_225
        :pswitch_21f
        :pswitch_219
    .end packed-switch

    :pswitch_data_45c
    .packed-switch 0x0
        :pswitch_252
        :pswitch_24c
        :pswitch_246
        :pswitch_240
    .end packed-switch

    :pswitch_data_468
    .packed-switch 0x0
        :pswitch_27b
        :pswitch_277
        :pswitch_273
        :pswitch_26d
    .end packed-switch

    :pswitch_data_474
    .packed-switch 0x0
        :pswitch_294
        :pswitch_290
        :pswitch_28c
    .end packed-switch

    :pswitch_data_47e
    .packed-switch 0x0
        :pswitch_2bf
        :pswitch_2b9
        :pswitch_2b3
        :pswitch_2ad
        :pswitch_2a7
    .end packed-switch

    :pswitch_data_48c
    .packed-switch 0x0
        :pswitch_2da
        :pswitch_2d6
        :pswitch_2d2
    .end packed-switch

    :pswitch_data_496
    .packed-switch -0x1
        :pswitch_360
        :pswitch_35a
        :pswitch_354
    .end packed-switch

    :pswitch_data_4a0
    .packed-switch -0x1
        :pswitch_389
        :pswitch_383
        :pswitch_37d
        :pswitch_377
        :pswitch_371
        :pswitch_36b
    .end packed-switch

    :pswitch_data_4b0
    .packed-switch 0x0
        :pswitch_3a0
        :pswitch_39a
        :pswitch_394
    .end packed-switch

    :pswitch_data_4ba
    .packed-switch 0x0
        :pswitch_3bd
        :pswitch_3b7
        :pswitch_3b1
        :pswitch_3ab
    .end packed-switch
.end method

.method public unset()V
    .registers 2

    .line 2061
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2062
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2063
    return-void
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .registers 10
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 2079
    const/4 v0, 0x0

    .line 2080
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_13

    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_13

    .line 2081
    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v0, v3

    .line 2082
    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2084
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1f

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    if-eq v3, v1, :cond_1f

    .line 2085
    or-int/lit8 v0, v0, 0x1

    .line 2086
    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2088
    :cond_1f
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2b

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    if-eq v3, v1, :cond_2b

    .line 2089
    or-int/lit8 v0, v0, 0x2

    .line 2090
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2092
    :cond_2b
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2093
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2094
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 2095
    or-int/lit8 v0, v0, 0x4

    .line 2096
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2098
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 2099
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2101
    or-int/lit16 v0, v0, 0x2000

    .line 2104
    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2107
    :cond_62
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 2108
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_75

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v3, 0xc0

    if-eq v1, v4, :cond_75

    .line 2110
    and-int/lit16 v3, v3, -0xc1

    or-int/2addr v3, v1

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2111
    or-int/lit16 v0, v0, 0x2000

    .line 2113
    :cond_75
    iget-boolean v3, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_86

    iget-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_81

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_86

    .line 2115
    :cond_81
    or-int/lit8 v0, v0, 0x4

    .line 2116
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2118
    :cond_86
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_92

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v3, :cond_92

    .line 2120
    or-int/lit8 v0, v0, 0x8

    .line 2121
    iput v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2123
    :cond_92
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_9e

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v3, :cond_9e

    .line 2125
    or-int/lit8 v0, v0, 0x10

    .line 2126
    iput v3, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2128
    :cond_9e
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_aa

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v3, :cond_aa

    .line 2130
    or-int/lit8 v0, v0, 0x20

    .line 2131
    iput v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2133
    :cond_aa
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_b6

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v4, v3, :cond_b6

    .line 2135
    or-int/lit8 v0, v0, 0x20

    .line 2136
    iput v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2138
    :cond_b6
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_c2

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v3, :cond_c2

    .line 2140
    or-int/lit8 v0, v0, 0x40

    .line 2141
    iput v3, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2143
    :cond_c2
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_ce

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v3, :cond_ce

    .line 2145
    or-int/lit8 v0, v0, 0x20

    .line 2146
    iput v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2148
    :cond_ce
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_da

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v3, :cond_da

    .line 2150
    or-int/lit16 v0, v0, 0x80

    .line 2151
    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2153
    :cond_da
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v3, 0xf

    if-eqz v4, :cond_f1

    and-int/lit8 v4, v3, 0xf

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v5, 0xf

    if-eq v4, v6, :cond_f1

    .line 2156
    or-int/lit16 v0, v0, 0x100

    .line 2157
    and-int/lit8 v4, v5, -0x10

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2160
    :cond_f1
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v3, 0x30

    if-eqz v4, :cond_108

    and-int/lit8 v4, v3, 0x30

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v5, 0x30

    if-eq v4, v6, :cond_108

    .line 2163
    or-int/lit16 v0, v0, 0x100

    .line 2164
    and-int/lit8 v4, v5, -0x31

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2167
    :cond_108
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v3, 0x300

    if-eqz v4, :cond_11f

    and-int/lit16 v4, v3, 0x300

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v5, 0x300

    if-eq v4, v6, :cond_11f

    .line 2170
    or-int/lit16 v0, v0, 0x100

    .line 2171
    and-int/lit16 v4, v5, -0x301

    and-int/lit16 v3, v3, 0x300

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2174
    :cond_11f
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v4, 0x10000000

    and-int v5, v3, v4

    iget v6, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int v7, v6, v4

    if-eq v5, v7, :cond_137

    if-eqz v3, :cond_137

    .line 2177
    or-int/lit16 v0, v0, 0x100

    .line 2178
    const v5, -0x10000001

    and-int/2addr v5, v6

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2182
    :cond_137
    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v3, 0x3

    if-eqz v5, :cond_14e

    and-int/lit8 v5, v3, 0x3

    iget v6, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v6, 0x3

    if-eq v5, v7, :cond_14e

    .line 2186
    or-int/lit16 v0, v0, 0x4000

    .line 2187
    and-int/lit8 v5, v6, -0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2191
    :cond_14e
    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v3, 0xc

    if-eqz v5, :cond_165

    and-int/lit8 v5, v3, 0xc

    iget v6, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v6, 0xc

    if-eq v5, v7, :cond_165

    .line 2194
    or-int/lit16 v0, v0, 0x4000

    .line 2195
    and-int/lit8 v5, v6, -0xd

    and-int/lit8 v3, v3, 0xc

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2199
    :cond_165
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v3, :cond_189

    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    if-eq v5, v3, :cond_189

    .line 2201
    or-int/lit16 v0, v0, 0x200

    .line 2202
    and-int/lit8 v6, v3, 0xf

    if-eqz v6, :cond_17a

    .line 2203
    and-int/lit8 v5, v5, -0x10

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2206
    :cond_17a
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v3, 0x30

    if-eqz v5, :cond_189

    .line 2207
    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, -0x31

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2211
    :cond_189
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_195

    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v5, v3, :cond_195

    .line 2213
    or-int/lit16 v0, v0, 0x400

    .line 2214
    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2216
    :cond_195
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_1a1

    iget v5, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v5, v3, :cond_1a1

    .line 2218
    or-int/lit16 v0, v0, 0x400

    .line 2219
    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2221
    :cond_1a1
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_1ad

    iget v5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v5, v3, :cond_1ad

    .line 2223
    or-int/lit16 v0, v0, 0x800

    .line 2224
    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2226
    :cond_1ad
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_1b9

    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v3, :cond_1b9

    .line 2228
    or-int/lit16 v0, v0, 0x1000

    .line 2229
    iput v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2231
    :cond_1b9
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v3, :cond_1bf

    .line 2232
    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2234
    :cond_1bf
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v3, :cond_1c5

    .line 2235
    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2237
    :cond_1c5
    iget v3, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v3, :cond_1cb

    .line 2238
    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2240
    :cond_1cb
    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v3, :cond_1d8

    iget v5, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v3, v5, :cond_1d8

    .line 2241
    const/high16 v5, -0x80000000

    or-int/2addr v0, v5

    .line 2242
    iput v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2244
    :cond_1d8
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_1de

    .line 2245
    iput v3, p0, Landroid/content/res/Configuration;->seq:I

    .line 2247
    :cond_1de
    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v3

    if-eqz v3, :cond_1eb

    .line 2248
    const/high16 v3, 0x20000000

    or-int/2addr v0, v3

    .line 2251
    :cond_1eb
    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_1f9

    iget v5, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v3, v5, :cond_1f9

    .line 2253
    or-int/2addr v0, v4

    .line 2254
    iput v3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2256
    :cond_1f9
    iget v3, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v5, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v3, v5, :cond_205

    .line 2257
    const v5, 0x8000

    or-int/2addr v0, v5

    .line 2258
    iput v3, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2262
    :cond_205
    iget v3, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v3, :cond_210

    iget v5, p0, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v5, v3, :cond_210

    .line 2263
    or-int/2addr v0, v4

    .line 2264
    iput v3, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 2268
    :cond_210
    iget v3, p1, Landroid/content/res/Configuration;->boldFont:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21e

    iget v5, p0, Landroid/content/res/Configuration;->boldFont:I

    if-eq v5, v3, :cond_21e

    .line 2269
    const/high16 v5, 0x1000000

    or-int/2addr v0, v5

    .line 2270
    iput v3, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 2274
    :cond_21e
    iget v3, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v3, v4, :cond_22b

    iget v5, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v5, v3, :cond_22b

    .line 2276
    const/high16 v5, 0x200000

    or-int/2addr v0, v5

    .line 2277
    iput v3, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 2281
    :cond_22b
    iget v3, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_23c

    iget v2, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_23c

    .line 2283
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 2284
    iput v3, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    .line 2290
    :cond_23c
    iget v2, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v2, v4, :cond_249

    iget v3, p0, Landroid/content/res/Configuration;->nightDim:I

    if-eq v3, v2, :cond_249

    .line 2291
    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    .line 2292
    iput v2, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 2303
    :cond_249
    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v2, v4, :cond_253

    iget v3, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v3, v2, :cond_253

    .line 2305
    iput v2, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2307
    :cond_253
    iget v2, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v2, v4, :cond_260

    iget v3, p0, Landroid/content/res/Configuration;->dexMode:I

    if-eq v3, v2, :cond_260

    .line 2308
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 2309
    iput v2, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 2313
    :cond_260
    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eqz v2, :cond_26a

    iget v3, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v3, v2, :cond_26a

    .line 2315
    iput v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 2317
    :cond_26a
    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eqz v2, :cond_274

    iget v3, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v3, v2, :cond_274

    .line 2319
    iput v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 2326
    :cond_274
    iget v2, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-lez v2, :cond_281

    iget v3, p0, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v3, v2, :cond_281

    .line 2327
    const/high16 v3, 0x10000

    or-int/2addr v0, v3

    .line 2328
    iput v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 2332
    :cond_281
    return v0
.end method

.method public updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I
    .registers 5
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 3931
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;->updateFromScreenConfiguration(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3933
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eqz v1, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v2, v1, :cond_e

    .line 3935
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 3937
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eqz v1, :cond_18

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v2, v1, :cond_18

    .line 3939
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 3942
    :cond_18
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v1

    if-eqz v1, :cond_25

    .line 3943
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 3945
    :cond_25
    return v0
.end method

.method public writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .registers 12
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1939
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_b

    .line 1940
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1941
    .local v0, "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "height":I
    goto :goto_f

    .line 1944
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_b
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1946
    .restart local v0    # "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1949
    .restart local v1    # "height":I
    :goto_f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1950
    .local v2, "token":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1951
    const-wide v4, 0x10d00000002L

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1952
    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1953
    const-wide v4, 0x10d00000004L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1954
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1955
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2707
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2708
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2709
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2711
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2712
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2716
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget-boolean v1, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2726
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_2e

    .line 2727
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 2729
    :cond_2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2731
    :goto_31
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2733
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2734
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2739
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2740
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2741
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2742
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2743
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2744
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2747
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2748
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/app/WindowConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2749
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2750
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    iget v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2758
    iget v0, p0, Landroid/content/res/Configuration;->boldFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2761
    iget v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2764
    iget v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2769
    iget v0, p0, Landroid/content/res/Configuration;->nightDim:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2775
    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2776
    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    iget v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2780
    iget v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    iget v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2789
    return-void
.end method
