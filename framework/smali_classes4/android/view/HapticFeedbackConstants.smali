.class public Landroid/view/HapticFeedbackConstants;
.super Ljava/lang/Object;
.source "HapticFeedbackConstants.java"


# static fields
.field public static final ASSISTANT_BUTTON:I = 0x2712

.field public static final CALENDAR_DATE:I = 0x5

.field public static final CLOCK_TICK:I = 0x4

.field public static final CONFIRM:I = 0x10

.field public static final CONTEXT_CLICK:I = 0x6

.field public static final DRAG_CROSSING:I = 0xb

.field public static final DRAG_START:I = 0x19

.field public static final EDGE_RELEASE:I = 0xf

.field public static final EDGE_SQUEEZE:I = 0xe

.field public static final ENTRY_BUMP:I = 0xa

.field public static final FLAG_IGNORE_GLOBAL_SETTING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_IGNORE_VIEW_SETTING:I = 0x1

.field public static final GESTURE_END:I = 0xd

.field public static final GESTURE_START:I = 0xc

.field public static final GESTURE_THRESHOLD_ACTIVATE:I = 0x17

.field public static final GESTURE_THRESHOLD_DEACTIVATE:I = 0x18

.field public static final GRAB:I = 0xc3d4

.field public static final KEYBOARD_PRESS:I = 0x3

.field public static final KEYBOARD_RELEASE:I = 0x7

.field public static final KEYBOARD_TAP:I = 0x3

.field public static final LONG_PRESS:I = 0x0

.field public static final LONG_PRESS_POWER_BUTTON:I = 0x2713

.field public static final NO_HAPTICS:I = -0x1

.field public static final REJECT:I = 0x11

.field public static final ROTARY_SCROLL_ITEM_FOCUS:I = 0x13

.field public static final ROTARY_SCROLL_LIMIT:I = 0x14

.field public static final ROTARY_SCROLL_TICK:I = 0x12

.field public static final SAFE_MODE_ENABLED:I = 0x2711

.field public static final SEGMENT_FREQUENT_TICK:I = 0x1b

.field public static final SEGMENT_TICK:I = 0x1a

.field public static final TEXT_HANDLE_MOVE:I = 0x9

.field public static final TOGGLE_OFF:I = 0x16

.field public static final TOGGLE_ON:I = 0x15

.field public static final VIRTUAL_KEY:I = 0x1

.field public static final VIRTUAL_KEY_RELEASE:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hidden_semGetVibrationIndex(I)I
    .registers 2
    .param p0, "index"    # I

    .line 282
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    return v0
.end method

.method public static semGetVibrationIndex(I)I
    .registers 2
    .param p0, "auiHapticPatternIndex"    # I

    .line 273
    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    return v0
.end method
