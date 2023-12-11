.class public final Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;
.super Ljava/lang/Object;
.source "AccessibilityStatsLogUtils.java"


# static fields
.field public static ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

.field public static ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

.field public static ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

.field private static final UNKNOWN_STATUS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

    .line 60
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToLoggingMagnificationMode(I)I
    .registers 2
    .param p0, "mode"    # I

    .line 247
    packed-switch p0, :pswitch_data_c

    .line 256
    const/4 v0, 0x0

    return v0

    .line 253
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 251
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 249
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static convertToLoggingMagnificationScale(F)I
    .registers 2
    .param p0, "scale"    # F

    .line 265
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static convertToLoggingServiceStatus(Z)I
    .registers 2
    .param p0, "enabled"    # Z

    .line 242
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 243
    :cond_4
    const/4 v0, 0x2

    .line 242
    :goto_5
    return v0
.end method

.method private static convertToLoggingShortcutType(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I

    .line 226
    packed-switch p1, :pswitch_data_1a

    .line 238
    const/4 v0, 0x0

    return v0

    .line 236
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 228
    :pswitch_7
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 229
    const/4 v0, 0x5

    return v0

    .line 230
    :cond_f
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 231
    const/4 v0, 0x6

    return v0

    .line 233
    :cond_17
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private static isAccessibilityGestureEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V
    .registers 5
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 140
    nop

    .line 141
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 140
    const/16 v1, 0x10a

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 144
    return-void
.end method

.method public static logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shortcutType"    # I

    .line 82
    nop

    .line 83
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    .line 82
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    .line 84
    return-void
.end method

.method public static logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shortcutType"    # I
    .param p3, "serviceEnabled"    # Z

    .line 99
    nop

    .line 100
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    .line 101
    invoke-static {p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    .line 99
    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    .line 102
    return-void
.end method

.method private static logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V
    .registers 5
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "loggingShortcutType"    # I
    .param p2, "loggingServiceStatus"    # I

    .line 118
    nop

    .line 119
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 118
    const/16 v1, 0x10a

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 120
    return-void
.end method

.method public static logMagnificationFollowTypingFocusSession(J)V
    .registers 3
    .param p0, "duration"    # J

    .line 178
    const/16 v0, 0x1c5

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 181
    return-void
.end method

.method public static logMagnificationModeWithImeOn(I)V
    .registers 3
    .param p0, "mode"    # I

    .line 168
    nop

    .line 169
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    .line 168
    const/16 v1, 0x15a

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 170
    return-void
.end method

.method public static logMagnificationTripleTap(Z)V
    .registers 5
    .param p0, "enabled"    # Z

    .line 127
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 128
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    .line 127
    const/16 v2, 0x10a

    const/4 v3, 0x3

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 131
    return-void
.end method

.method public static logMagnificationTripleTapAndHoldSession(J)V
    .registers 3
    .param p0, "duration"    # J

    .line 190
    const/16 v0, 0x1c4

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 193
    return-void
.end method

.method public static logMagnificationUsageState(IJF)V
    .registers 7
    .param p0, "mode"    # I
    .param p1, "duration"    # J
    .param p3, "scale"    # F

    .line 155
    nop

    .line 156
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    .line 158
    invoke-static {p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationScale(F)I

    move-result v1

    .line 155
    const/16 v2, 0x159

    invoke-static {v2, v0, p1, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    .line 159
    return-void
.end method

.method public static logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "durationMillis"    # J

    .line 208
    const/16 v0, 0x180

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IJ)V

    .line 210
    return-void
.end method
