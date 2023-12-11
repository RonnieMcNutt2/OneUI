.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;,
        Landroid/os/PowerManagerInternal$UserActivityStateListener;
    }
.end annotation


# static fields
.field public static final BOOST_DISPLAY_UPDATE_IMMINENT:I = 0x1

.field public static final BOOST_INTERACTION:I = 0x0

.field public static final MODE_DEVICE_IDLE:I = 0x8

.field public static final MODE_DISPLAY_INACTIVE:I = 0x9

.field public static final MODE_DOUBLE_TAP_TO_WAKE:I = 0x0

.field public static final MODE_EXPENSIVE_RENDERING:I = 0x6

.field public static final MODE_FIXED_PERFORMANCE:I = 0x3

.field public static final MODE_INTERACTIVE:I = 0x7

.field public static final MODE_LAUNCH:I = 0x5

.field public static final MODE_LOW_POWER:I = 0x1

.field public static final MODE_SUSTAINED_PERFORMANCE:I = 0x2

.field public static final MODE_VR:I = 0x4

.field public static final USER_ACTIVITY_STATE_ACTIVE:I = 0x1

.field public static final USER_ACTIVITY_STATE_INACTIVE:I = 0x0

.field public static final USER_ACTIVITY_STATE_TIMEOUT:I = 0xbb8

.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x1

.field public static final WAKEFULNESS_DOZING:I = 0x3

.field public static final WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteractive(I)Z
    .registers 3
    .param p0, "wakefulness"    # I

    .line 103
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

.method public static wakefulnessToProtoEnum(I)I
    .registers 2
    .param p0, "wakefulness"    # I

    .line 84
    packed-switch p0, :pswitch_data_c

    .line 94
    return p0

    .line 92
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 90
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 88
    :pswitch_8
    const/4 v0, 0x1

    return v0

    .line 86
    :pswitch_a
    const/4 v0, 0x0

    return v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static wakefulnessToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "wakefulness"    # I

    .line 66
    packed-switch p0, :pswitch_data_14

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_8
    const-string v0, "Dozing"

    return-object v0

    .line 72
    :pswitch_b
    const-string v0, "Dreaming"

    return-object v0

    .line 70
    :pswitch_e
    const-string v0, "Awake"

    return-object v0

    .line 68
    :pswitch_11
    const-string v0, "Asleep"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public abstract finishUidChanges()V
.end method

.method public abstract getLastGoToSleep()Landroid/os/PowerManager$SleepData;
.end method

.method public abstract getLastUserActivityState()I
.end method

.method public abstract getLastWakeup()Landroid/os/PowerManager$WakeData;
.end method

.method public abstract getLowPowerState(I)Landroid/os/PowerSaveState;
.end method

.method public abstract interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
.end method

.method public abstract isAmbientDisplaySuppressed()Z
.end method

.method public abstract isInternalDisplayOff()Z
.end method

.method public abstract isProximityPositive()Z
.end method

.method public abstract nap(JZ)V
.end method

.method public registerLowPowerModeObserver(ILjava/util/function/Consumer;)V
    .registers 4
    .param p1, "serviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/os/PowerSaveState;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/PowerSaveState;>;"
    new-instance v0, Landroid/os/PowerManagerInternal$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManagerInternal$1;-><init>(Landroid/os/PowerManagerInternal;ILjava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 209
    return-void
.end method

.method public abstract registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract registerUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
.end method

.method public abstract setDeviceIdleMode(Z)Z
.end method

.method public abstract setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract setDeviceIdleWhitelist([I)V
.end method

.method public abstract setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract setDozeOverrideFromDreamManager(IIIZ)V
.end method

.method public abstract setDrawWakeLockOverrideFromSidekick(Z)V
.end method

.method public abstract setGoToSleepPrevention(Z)V
.end method

.method public abstract setHbmBlock(Z)V
.end method

.method public abstract setLightDeviceIdleMode(Z)Z
.end method

.method public abstract setLowPowerStandbyActive(Z)V
.end method

.method public abstract setLowPowerStandbyAllowlist([I)V
.end method

.method public abstract setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
.end method

.method public abstract setMaximumScreenOffTimeoutFromKnox(IJ)V
.end method

.method public abstract setPowerBoost(II)V
.end method

.method public abstract setPowerMode(IZ)V
.end method

.method public abstract setScreenBrightnessOverrideFromWindowManager(F)V
.end method

.method public abstract setScreenDimDurationOverrideFromSqd(Z)V
.end method

.method public abstract setScreenDimDurationOverrideFromWindowManager(J)V
.end method

.method public abstract setUserActivityTimeoutForDexOverrideFromWindowManager(J)V
.end method

.method public abstract setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract setUserInactiveOverrideFromWindowManager()V
.end method

.method public abstract setWakeLockBlackListEnableDisable(IZ)V
.end method

.method public abstract setWakeLockEnableDisable(IZ)I
.end method

.method public abstract startUidChanges()V
.end method

.method public abstract uidActive(I)V
.end method

.method public abstract uidGone(I)V
.end method

.method public abstract uidIdle(I)V
.end method

.method public abstract unregisterUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
.end method

.method public abstract updateProfileActivityTimeFromKnox(IJ)V
.end method

.method public abstract updateUidProcState(II)V
.end method

.method public abstract wasDeviceIdleFor(J)Z
.end method
