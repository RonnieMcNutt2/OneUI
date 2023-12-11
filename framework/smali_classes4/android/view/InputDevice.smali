.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;,
        Landroid/view/InputDevice$Builder;,
        Landroid/view/InputDevice$InputSourceClass;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field private static final MAX_RANGES:I = 0x3e8

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEM_SOURCE_CAR_KNOB:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_BLUETOOTH_STYLUS:I = 0xc002

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_NONE:I = 0x0

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_GAMEPAD:I = 0x401

.field public static final SOURCE_HDMI:I = 0x2000001

.field public static final SOURCE_JOYSTICK:I = 0x1000010

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_MOUSE_RELATIVE:I = 0x20004

.field public static final SOURCE_ROTARY_ENCODER:I = 0x400000

.field public static final SOURCE_SENSOR:I = 0x4000000

.field public static final SOURCE_STYLUS:I = 0x4002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I = 0x0

.field private static final VIBRATOR_ID_ALL:I = -0x1


# instance fields
.field private final mAssociatedDisplayId:I

.field private final mControllerNumber:I

.field private final mDescriptor:Ljava/lang/String;

.field private final mGeneration:I

.field private final mHasBattery:Z

.field private final mHasButtonUnderPad:Z

.field private final mHasMicrophone:Z

.field private final mHasSensor:Z

.field private final mHasVibrator:Z

.field private final mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field private final mId:I

.field private final mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final mIsExternal:Z

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mKeyboardLanguageTag:Ljava/lang/String;

.field private final mKeyboardLayoutType:Ljava/lang/String;

.field private final mKeyboardType:I

.field private mLightsManager:Landroid/hardware/lights/LightsManager;

.field private final mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSources:I

.field private final mVendorId:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method static bridge synthetic -$$Nest$maddMotionRange(Landroid/view/InputDevice;IIFFFFF)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 470
    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIII)V
    .registers 38
    .param p1, "id"    # I
    .param p2, "generation"    # I
    .param p3, "controllerNumber"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vendorId"    # I
    .param p6, "productId"    # I
    .param p7, "descriptor"    # Ljava/lang/String;
    .param p8, "isExternal"    # Z
    .param p9, "sources"    # I
    .param p10, "keyboardType"    # I
    .param p11, "keyCharacterMap"    # Landroid/view/KeyCharacterMap;
    .param p12, "keyboardLanguageTag"    # Ljava/lang/String;
    .param p13, "keyboardLayoutType"    # Ljava/lang/String;
    .param p14, "hasVibrator"    # Z
    .param p15, "hasMicrophone"    # Z
    .param p16, "hasButtonUnderPad"    # Z
    .param p17, "hasSensor"    # Z
    .param p18, "hasBattery"    # Z
    .param p19, "usiVersionMajor"    # I
    .param p20, "usiVersionMinor"    # I
    .param p21, "associatedDisplayId"    # I

    .line 488
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 489
    move/from16 v4, p1

    iput v4, v0, Landroid/view/InputDevice;->mId:I

    .line 490
    move/from16 v5, p2

    iput v5, v0, Landroid/view/InputDevice;->mGeneration:I

    .line 491
    move/from16 v6, p3

    iput v6, v0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 492
    move-object/from16 v7, p4

    iput-object v7, v0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 493
    iput v1, v0, Landroid/view/InputDevice;->mVendorId:I

    .line 494
    iput v2, v0, Landroid/view/InputDevice;->mProductId:I

    .line 495
    iput-object v3, v0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 496
    move/from16 v8, p8

    iput-boolean v8, v0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 497
    move/from16 v9, p9

    iput v9, v0, Landroid/view/InputDevice;->mSources:I

    .line 498
    move/from16 v10, p10

    iput v10, v0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 499
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 500
    if-eqz p12, :cond_4a

    .line 501
    nop

    .line 502
    invoke-static/range {p12 .. p12}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v12

    invoke-static {v12}, Landroid/icu/util/ULocale;->createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v12

    .line 503
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    goto :goto_4d

    .line 505
    :cond_4a
    const/4 v12, 0x0

    iput-object v12, v0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    .line 507
    :goto_4d
    move-object/from16 v12, p13

    iput-object v12, v0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    .line 508
    move/from16 v13, p14

    iput-boolean v13, v0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 509
    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 510
    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 511
    move/from16 v4, p17

    iput-boolean v4, v0, Landroid/view/InputDevice;->mHasSensor:Z

    .line 512
    move/from16 v4, p18

    iput-boolean v4, v0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 513
    new-instance v4, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v4, v3, v1, v2}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v4, v0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 514
    new-instance v4, Landroid/hardware/input/HostUsiVersion;

    move/from16 v1, p19

    move/from16 v2, p20

    invoke-direct {v4, v1, v2}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    iput-object v4, v0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 515
    move/from16 v4, p21

    iput v4, v0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    .line 516
    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIIILandroid/view/InputDevice-IA;)V
    .registers 23

    invoke-direct/range {p0 .. p21}, Landroid/view/InputDevice;-><init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 519
    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyCharacterMap;

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/InputDevice;->mProductId:I

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_48

    move v3, v5

    goto :goto_49

    :cond_48
    move v3, v4

    :goto_49
    iput-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/InputDevice;->mSources:I

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6b

    move v3, v5

    goto :goto_6c

    :cond_6b
    move v3, v4

    :goto_6c
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_76

    move v3, v5

    goto :goto_77

    :cond_76
    move v3, v4

    :goto_77
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_81

    move v3, v5

    goto :goto_82

    :cond_81
    move v3, v4

    :goto_82
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8c

    move v3, v5

    goto :goto_8d

    :cond_8c
    move v3, v4

    :goto_8d
    iput-boolean v3, p0, Landroid/view/InputDevice;->mHasSensor:Z

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_96

    move v4, v5

    :cond_96
    iput-boolean v4, p0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 537
    sget-object v3, Landroid/hardware/input/HostUsiVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/HostUsiVersion;

    iput-object v3, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    .line 539
    new-instance v3, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v3, v2, v0, v1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v3, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 542
    .local v0, "numRanges":I
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_b9

    .line 543
    const/16 v0, 0x3e8

    .line 546
    :cond_b9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ba
    if-ge v1, v0, :cond_df

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 547
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    .line 550
    .end local v1    # "i":I
    :cond_df
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/InputDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addMotionRange(IIFFFFF)V
    .registers 20
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .line 1112
    move-object v0, p0

    iget-object v1, v0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v11, Landroid/view/InputDevice$MotionRange;

    const/4 v10, 0x0

    move-object v2, v11

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$MotionRange-IA;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .registers 5
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "source"    # I
    .param p3, "sourceName"    # Ljava/lang/String;

    .line 1586
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_d

    .line 1587
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    :cond_d
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .registers 2
    .param p0, "id"    # I

    .line 759
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIds()[I
    .registers 1

    .line 767
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method private hidden_setPointerType(I)V
    .registers 2
    .param p1, "pointerType"    # I

    .line 1307
    invoke-virtual {p0, p1}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 1308
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1511
    const/4 v0, 0x0

    return v0
.end method

.method public disable()V
    .registers 3

    .line 1263
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->disableInputDevice(I)V

    .line 1264
    return-void
.end method

.method public enable()V
    .registers 3

    .line 1252
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->enableInputDevice(I)V

    .line 1253
    return-void
.end method

.method public getAssociatedDisplayId()I
    .registers 2

    .line 1357
    iget v0, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    return v0
.end method

.method public getBatteryState()Landroid/hardware/BatteryState;
    .registers 4

    .line 1191
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    iget-boolean v2, p0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 1192
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBatteryState(IZ)Landroid/hardware/BatteryState;

    move-result-object v0

    .line 1191
    return-object v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .registers 3

    .line 1129
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    .line 1130
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1129
    return-object v0
.end method

.method public getControllerNumber()I
    .registers 2

    .line 802
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneration()I
    .registers 2

    .line 829
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    return v0
.end method

.method public getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .registers 2

    .line 1352
    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0}, Landroid/hardware/input/HostUsiVersion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 783
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .registers 2

    .line 816
    iget-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-object v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .line 964
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public getKeyCodeForKeyLocation(I)I
    .registers 4
    .param p1, "locationKeyCode"    # I

    .line 1044
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    .line 1045
    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getKeyCodeForKeyLocation(II)I

    move-result v0

    .line 1044
    return v0
.end method

.method public getKeyboardLanguageTag()Ljava/lang/String;
    .registers 2

    .line 976
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardLayoutType()Ljava/lang/String;
    .registers 2

    .line 986
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardType()I
    .registers 2

    .line 956
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public getLightsManager()Landroid/hardware/lights/LightsManager;
    .registers 4

    .line 1205
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1206
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    if-nez v1, :cond_13

    .line 1207
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1208
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 1210
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1211
    iget-object v0, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    return-object v0

    .line 1210
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .registers 6
    .param p1, "axis"    # I

    .line 1063
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1064
    .local v0, "numRanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1065
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 1066
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_18

    .line 1067
    return-object v2

    .line 1064
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1070
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .registers 7
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .line 1088
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1089
    .local v0, "numRanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 1090
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 1091
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_1e

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_1e

    .line 1092
    return-object v2

    .line 1089
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1095
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMotionRanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 928
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    .line 856
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    return v0
.end method

.method public getSensorManager()Landroid/hardware/SensorManager;
    .registers 4

    .line 1227
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1228
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_13

    .line 1229
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1230
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1232
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1233
    iget-object v0, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0

    .line 1232
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getSources()I
    .registers 2

    .line 936
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    .line 842
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    return v0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1148
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1149
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1f

    .line 1150
    iget-boolean v1, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v1, :cond_19

    .line 1151
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1152
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceVibrator(II)Landroid/os/Vibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    goto :goto_1f

    .line 1155
    :cond_19
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 1158
    :cond_1f
    :goto_1f
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    .line 1159
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getVibratorManager()Landroid/os/VibratorManager;
    .registers 4

    .line 1172
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1173
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_13

    .line 1174
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1175
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    .line 1177
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1178
    iget-object v0, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    return-object v0

    .line 1177
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public hasBattery()Z
    .registers 2

    .line 1338
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    return v0
.end method

.method public hasButtonUnderPad()Z
    .registers 2

    .line 1280
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    return v0
.end method

.method public varargs hasKeys([I)[Z
    .registers 4
    .param p1, "keys"    # [I

    .line 997
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public hasMicrophone()Z
    .registers 2

    .line 1271
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    return v0
.end method

.method public hasSensor()Z
    .registers 2

    .line 1289
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .line 1241
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->isInputDeviceEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isExternal()Z
    .registers 2

    .line 908
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    return v0
.end method

.method public isFullKeyboard()Z
    .registers 3

    .line 919
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    const/16 v1, 0x101

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isVirtual()Z
    .registers 2

    .line 898
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public semSetPointerType(I)V
    .registers 2
    .param p1, "pointerType"    # I

    .line 1319
    invoke-virtual {p0, p1}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 1320
    return-void
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 3
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 1329
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 1330
    return-void
.end method

.method public setPointerType(I)V
    .registers 3
    .param p1, "pointerType"    # I

    .line 1298
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->setPointerIconType(I)V

    .line 1299
    return-void
.end method

.method public supportsSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 948
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1517
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string v1, "Input Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const-string v1, "  Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    const-string v1, "  Generation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    const-string v1, "  Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    if-eqz v3, :cond_4d

    const-string v3, "external"

    goto :goto_4f

    :cond_4d
    const-string v3, "built-in"

    :goto_4f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    const-string v1, "  Keyboard Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v1, :pswitch_data_1d4

    goto :goto_75

    .line 1532
    :pswitch_61
    const-string v1, "alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 1529
    :pswitch_67
    const-string/jumbo v1, "non-alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    goto :goto_75

    .line 1526
    :pswitch_6e
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    nop

    .line 1535
    :goto_75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    const-string v1, "  Has Vibrator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    const-string v1, "  Has Sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    const-string v1, "  Has battery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    const-string v1, "  Has mic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    const-string v1, "  USI Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    iget-object v1, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    if-eqz v1, :cond_d8

    .line 1548
    const-string v1, " Keyboard language tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :cond_d8
    iget-object v1, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    if-eqz v1, :cond_eb

    .line 1553
    const-string v1, " Keyboard layout type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :cond_eb
    const-string v1, "  Sources: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/InputDevice;->mSources:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    const/16 v1, 0x101

    const-string v3, "keyboard"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1558
    const/16 v1, 0x201

    const-string v3, "dpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1559
    const/16 v1, 0x1002

    const-string/jumbo v3, "touchscreen"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1560
    const/16 v1, 0x2002

    const-string/jumbo v3, "mouse"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1561
    const/16 v1, 0x4002

    const-string/jumbo v3, "stylus"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1562
    const v1, 0x10004

    const-string/jumbo v3, "trackball"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1563
    const v1, 0x20004

    const-string/jumbo v3, "mouse_relative"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1564
    const v1, 0x100008

    const-string/jumbo v3, "touchpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1565
    const v1, 0x1000010

    const-string v3, "joystick"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1566
    const/16 v1, 0x401

    const-string v3, "gamepad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1567
    const-string v1, " )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1570
    .local v1, "numAxes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15c
    if-ge v3, v1, :cond_1cf

    .line 1571
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 1572
    .local v4, "range":Landroid/view/InputDevice$MotionRange;
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v5, ": source=0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const-string v5, " min="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1575
    const-string v5, " max="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1576
    const-string v5, " flat="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1577
    const-string v5, " fuzz="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1578
    const-string v5, " resolution="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    .end local v4    # "range":Landroid/view/InputDevice$MotionRange;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15c

    .line 1581
    .end local v3    # "i":I
    :cond_1cf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_67
        :pswitch_61
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1473
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v0, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1474
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1478
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1481
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1484
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1486
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/HostUsiVersion;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1492
    iget v0, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1495
    .local v0, "numRanges":I
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v0

    :goto_70
    move v0, v1

    .line 1496
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_75
    if-ge v1, v0, :cond_b3

    .line 1498
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 1499
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1501
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1502
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1503
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1504
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1505
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1497
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 1507
    .end local v1    # "i":I
    :cond_b3
    return-void
.end method
