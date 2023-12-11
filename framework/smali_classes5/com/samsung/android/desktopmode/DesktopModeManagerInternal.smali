.class public abstract Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
.super Ljava/lang/Object;
.source "DesktopModeManagerInternal.java"


# static fields
.field public static final MODETOMODE_DUAL_TO_STANDALONE:I = 0x1

.field public static final MODETOMODE_NONE:I = -0x1

.field public static final MODETOMODE_STANDALONE_TO_DUAL:I = 0x2

.field public static final TOUCHPAD_FEATURE_BIT:I = 0x1

.field public static final TOUCHPAD_FEATURE_NONE:I = 0x0

.field public static final TOUCHPAD_FEATURE_SPEN_BIT:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentUiMode()I
.end method

.method public abstract getDesktopModeKillPolicy()Landroid/os/Bundle;
.end method

.method public abstract getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
.end method

.method public abstract getDexHDMIAutoEnterState()I
.end method

.method public abstract getModeToModeChangeType()I
.end method

.method public abstract getTouchpadSupportedFeatures()I
.end method

.method public abstract isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
.end method

.method public abstract isDesktopModeAvailableEx(ZZ)Z
.end method

.method public abstract isDesktopModeEnablingOrEnabled()Z
.end method

.method public abstract isDesktopModeForPreparing()Z
.end method

.method public abstract isDesktopModeForPreparing(I)Z
.end method

.method public abstract isExternalDisplayConnected()Z
.end method

.method public abstract isForcedInternalScreenModeEnabled()Z
.end method

.method public abstract isLockTaskModeEnabledAndSecured()Z
.end method

.method public abstract isModeChangePending()Z
.end method

.method public abstract isModeChangePending(I)Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDesktopDisplayConfigured(Z)V
.end method

.method public abstract onSecuredAppLaunched(ILjava/lang/String;)V
.end method

.method public abstract scheduleUpdateDesktopMode(Z)V
.end method

.method public abstract sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setDexHDMIAutoEnterState(I)I
.end method

.method public abstract startHome()V
.end method
