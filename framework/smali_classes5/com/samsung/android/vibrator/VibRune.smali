.class public Lcom/samsung/android/vibrator/VibRune;
.super Ljava/lang/Object;
.source "VibRune.java"


# static fields
.field public static final DND_EXCEPTION_PACKAGES:Ljava/lang/String;

.field public static final IGNORE_BLOCKED_NOTIFICATION:Z = true

.field public static final SUPPORT_4D_VIBRATION:Z = true

.field public static final SUPPORT_ACH:Z

.field public static final SUPPORT_ALWAYS_VIBRATE:Z

.field public static final SUPPORT_AMPLITUDE_LIST_FROM_HAL:Z = true

.field public static final SUPPORT_CUSTOMIZATION:Z = true

.field public static final SUPPORT_CUSTOM_LOG:Z = true

.field public static final SUPPORT_CUSTOM_PATTERN:Z

.field public static final SUPPORT_FIXED_INTENSITY_LEVEL:Z = true

.field public static final SUPPORT_FIXUP_VIBRATION_USAGES:Z = true

.field public static final SUPPORT_FOLD_STATE:Z = true

.field public static final SUPPORT_GOOD_CATCH:Z = true

.field public static final SUPPORT_HAL_WRAPPER:Z = true

.field public static final SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

.field public static final SUPPORT_HQM_BIG_DATA:Z = true

.field public static final SUPPORT_INDIVIDUAL_SYSTEM_VIBRATION:Z = true

.field public static final SUPPORT_IS_VIBRATING:Z = true

.field public static final SUPPORT_KEEP_SCREEN_OFF:Z = true

.field public static final SUPPORT_LOW_POWER_MODE:Z = true

.field public static final SUPPORT_PREBAKED_PATTERN:Z

.field public static final SUPPORT_SEC_CONCEPT:Z = true

.field public static final SUPPORT_SEC_PLAY_PPRIORITY:Z = true

.field public static final SUPPORT_SEC_VIBRATION_PICKER:Z

.field public static final SUPPORT_SERVICE_RECOVERY:Z = true

.field public static final SUPPORT_SKIP_CANCEL_VIBRATION_WHEN_SCREEN_OFF:Z = true

.field public static final SUPPORT_VIBRATION_FROM_BACKGROUND_PROCESS:Z = true

.field public static final SUPPORT_VIBRATION_TAG:Z = true

.field public static final SUPPORT_VIRTUAL_VIBRATION_SOUND:Z

.field public static final TO_DO:Z

.field private static mIsHapticEngineIndexSupported:Z

.field private static mIsHybridHapticSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/vibrator/VibRune;->mIsHapticEngineIndexSupported:Z

    .line 37
    sput-boolean v0, Lcom/samsung/android/vibrator/VibRune;->mIsHybridHapticSupported:Z

    .line 44
    const-string v1, "ACH"

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 52
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CountryISO"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "JP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    .line 54
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_SystemUI_ConfigDndExceptionPackage"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/vibrator/VibRune;->DND_EXCEPTION_PACKAGES:Ljava/lang/String;

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v2, 0x1

    const v3, 0x1d524

    if-lt v1, v3, :cond_43

    move v1, v2

    goto :goto_44

    :cond_43
    move v1, v0

    :goto_44
    sput-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-lt v1, v3, :cond_4c

    move v1, v2

    goto :goto_4d

    :cond_4c
    move v1, v0

    :goto_4d
    sput-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CUSTOM_PATTERN:Z

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-lt v1, v3, :cond_54

    move v0, v2

    :cond_54
    sput-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_PREBAKED_PATTERN:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SET_CIRRUS_HAPTIC(Z)V
    .registers 1
    .param p0, "supportCirrus"    # Z

    .line 104
    sput-boolean p0, Lcom/samsung/android/vibrator/VibRune;->mIsHapticEngineIndexSupported:Z

    .line 105
    return-void
.end method

.method public static SET_HYBRID_HAPTIC(Z)V
    .registers 1
    .param p0, "supportHybridPattern"    # Z

    .line 112
    sput-boolean p0, Lcom/samsung/android/vibrator/VibRune;->mIsHybridHapticSupported:Z

    .line 113
    return-void
.end method

.method public static SUPPORT_CIRRUS_HAPTIC()Z
    .registers 1

    .line 108
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->mIsHapticEngineIndexSupported:Z

    return v0
.end method

.method public static SUPPORT_HYBRID_HAPTIC()Z
    .registers 1

    .line 116
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->mIsHybridHapticSupported:Z

    return v0
.end method
