.class public Landroid/hardware/display/AmbientDisplayConfiguration;
.super Ljava/lang/Object;
.source "AmbientDisplayConfiguration.java"


# static fields
.field private static final DOZE_SETTINGS:[Ljava/lang/String;

.field private static final NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AmbientDisplayConfig"


# instance fields
.field private final mAlwaysOnByDefault:Z

.field private final mContext:Landroid/content/Context;

.field private final mPickupGestureEnabledByDefault:Z

.field final mUsersInitialValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 46
    const-string v0, "doze_enabled"

    const-string v1, "doze_always_on"

    const-string v2, "doze_pulse_on_pick_up"

    const-string v3, "doze_pulse_on_long_press"

    const-string v4, "doze_pulse_on_double_tap"

    const-string v5, "doze_wake_screen_gesture"

    const-string v6, "doze_wake_display_gesture"

    const-string v7, "doze_tap_gesture"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    .line 58
    const-string v0, "doze_quick_pickup_gesture"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    .line 67
    iput-object p1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mAlwaysOnByDefault:Z

    .line 69
    nop

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mPickupGestureEnabledByDefault:Z

    .line 71
    return-void
.end method

.method private alwaysOnDisplayAvailable()Z
    .registers 3

    .line 276
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private alwaysOnDisplayDebuggingEnabled()Z
    .registers 3

    .line 280
    const-string v0, "debug.doze.aod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private boolSetting(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I
    .param p3, "def"    # I

    .line 292
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private boolSettingDefaultOff(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private boolSettingDefaultOn(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 336
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pulseOnLongPressAvailable()Z
    .registers 2

    .line 216
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 340
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 341
    return-void
.end method


# virtual methods
.method public accessibilityInversionEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 262
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public alwaysOnAvailable()Z
    .registers 2

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public alwaysOnAvailableForUser(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 252
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public alwaysOnEnabled(I)Z
    .registers 4
    .param p1, "user"    # I

    .line 226
    iget-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mAlwaysOnByDefault:Z

    const-string v1, "doze_always_on"

    invoke-direct {p0, v1, p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 227
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 226
    :goto_19
    return v0
.end method

.method public ambientDisplayAvailable()Z
    .registers 2

    .line 267
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ambientDisplayComponent()Ljava/lang/String;
    .registers 3

    .line 257
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public disableDozeSettings(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(ZI)V

    .line 299
    return-void
.end method

.method public disableDozeSettings(ZI)V
    .registers 11
    .param p1, "shouldDisableNonUserConfigurable"    # Z
    .param p2, "userId"    # I

    .line 304
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 305
    .local v0, "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_19

    .line 306
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Don\'t call #disableDozeSettings more than once,without first calling #restoreDozeSettings"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_19
    :goto_19
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 310
    sget-object v1, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    const-string v5, "0"

    if-ge v4, v2, :cond_37

    aget-object v6, v1, v4

    .line 311
    .local v6, "name":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-direct {p0, v6, v5, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 314
    :cond_37
    if-eqz p1, :cond_4d

    .line 315
    sget-object v1, Landroid/hardware/display/AmbientDisplayConfiguration;->NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v1

    :goto_3c
    if-ge v3, v2, :cond_4d

    aget-object v4, v1, v3

    .line 316
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-direct {p0, v4, v5, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 320
    :cond_4d
    iget-object v1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method public doubleTapGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 129
    const-string v0, "doze_pulse_on_double_tap"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 130
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 129
    :goto_11
    return v0
.end method

.method public doubleTapSensorAvailable()Z
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public doubleTapSensorType()Ljava/lang/String;
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dozePickupSensorAvailable()Z
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public dozeSuppressed(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 272
    const-string v0, "suppress_doze"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 75
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 76
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnLongPressEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 77
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 78
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeLockScreenGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 79
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeDisplayGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 80
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 81
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 82
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 83
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 84
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->screenOffUdfpsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v0, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v0, 0x1

    .line 75
    :goto_40
    return v0
.end method

.method public getWakeLockScreenDebounce()J
    .registers 3

    .line 172
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public longPressSensorType()Ljava/lang/String;
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pickupGestureEnabled(I)Z
    .registers 4
    .param p1, "user"    # I

    .line 101
    nop

    .line 102
    iget-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mPickupGestureEnabledByDefault:Z

    .line 101
    const-string v1, "doze_pulse_on_pick_up"

    invoke-direct {p0, v1, p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 103
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 101
    :goto_14
    return v0
.end method

.method public pulseOnLongPressEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 211
    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnLongPressAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "doze_pulse_on_long_press"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public pulseOnNotificationAvailable()Z
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 96
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 95
    :goto_18
    return v0
.end method

.method public pulseOnNotificationEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 89
    const-string v0, "doze_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 90
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 89
    :goto_11
    return v0
.end method

.method public quickPickupSensorEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 140
    const-string v0, "doze_quick_pickup_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 141
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 142
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 143
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 140
    :goto_21
    return v0
.end method

.method public quickPickupSensorType()Ljava/lang/String;
    .registers 3

    .line 206
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040366

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreDozeSettings(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 326
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 327
    .local v0, "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 328
    sget-object v1, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 329
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 331
    :cond_24
    iget-object v1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 333
    :cond_29
    return-void
.end method

.method public screenOffUdfpsEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 148
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->udfpsLongPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 149
    const-string v0, "screen_off_udfps_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 148
    :goto_15
    return v0
.end method

.method public tapGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 113
    const-string v0, "doze_tap_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 114
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 113
    :goto_11
    return v0
.end method

.method public tapSensorAvailable()Z
    .registers 7

    .line 119
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorTypeMapping()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 120
    .local v4, "tapType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 121
    const/4 v0, 0x1

    return v0

    .line 119
    .end local v4    # "tapType":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 124
    :cond_16
    return v2
.end method

.method public tapSensorTypeMapping()[Ljava/lang/String;
    .registers 4

    .line 184
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "postureMapping":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 187
    iget-object v1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 187
    return-object v1

    .line 191
    :cond_25
    return-object v0
.end method

.method public udfpsLongPressSensorType()Ljava/lang/String;
    .registers 3

    .line 201
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040329

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wakeDisplayGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 166
    const-string v0, "doze_wake_display_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 167
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 166
    :goto_11
    return v0
.end method

.method public wakeLockScreenGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 160
    const-string v0, "doze_wake_screen_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 161
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 160
    :goto_11
    return v0
.end method

.method public wakeScreenGestureAvailable()Z
    .registers 3

    .line 154
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    const v1, 0x1110135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 154
    return v0
.end method
