.class public final Lcom/android/internal/app/RgbGainController;
.super Ljava/lang/Object;
.source "RgbGainController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/RgbGainController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "RgbGainController"


# instance fields
.field private mCallback:Lcom/android/internal/app/RgbGainController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$monSettingChanged(Lcom/android/internal/app/RgbGainController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/RgbGainController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RgbGainController;-><init>(Landroid/content/Context;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    .line 71
    iput p2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    .line 73
    new-instance v0, Lcom/android/internal/app/RgbGainController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/RgbGainController$1;-><init>(Lcom/android/internal/app/RgbGainController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    .line 84
    return-void
.end method

.method private getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 269
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/RgbGainController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 271
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "setting"    # Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSettingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RgbGainController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    if-eqz v0, :cond_7e

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_80

    :cond_24
    goto :goto_51

    :sswitch_25
    const-string/jumbo v0, "rgb_gain_display_blue_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    goto :goto_52

    :sswitch_30
    const-string/jumbo v0, "rgb_gain_display_red_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_52

    :sswitch_3b
    const-string/jumbo v0, "rgb_gain_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_52

    :sswitch_46
    const-string/jumbo v0, "rgb_gain_display_green_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    goto :goto_52

    :goto_51
    const/4 v0, -0x1

    :goto_52
    packed-switch v0, :pswitch_data_92

    goto :goto_7e

    .line 235
    :pswitch_56
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getRgbGainBlueLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onRgbGainBlueLevelChanged(I)V

    goto :goto_7e

    .line 232
    :pswitch_60
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getRgbGainGreenLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onRgbGainGreenLevelChanged(I)V

    .line 233
    goto :goto_7e

    .line 229
    :pswitch_6a
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getRgbGainRedLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onRgbGainRedLevelChanged(I)V

    .line 230
    goto :goto_7e

    .line 226
    :pswitch_74
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onActivated(Z)V

    .line 227
    nop

    .line 239
    :cond_7e
    :goto_7e
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0x5d6ece43 -> :sswitch_46
        0xe99d586 -> :sswitch_3b
        0x56e8520b -> :sswitch_30
        0x5cef6e4a -> :sswitch_25
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
    .end packed-switch
.end method


# virtual methods
.method public getDefaultRgbGainLevel()I
    .registers 2

    .line 214
    const/16 v0, 0x7f

    return v0
.end method

.method public getMaximumRgbGainLevel()I
    .registers 2

    .line 206
    const/16 v0, 0xff

    return v0
.end method

.method public getMinimumRgbGainLevel()I
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getRgbGainBlueLevel()I
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_blue_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 150
    .local v0, "level":I
    if-ne v0, v3, :cond_1d

    .line 152
    const-string v1, "RgbGainController"

    const-string v2, "Using default value for setting: rgb_gain_display_blue_level"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    .line 158
    :cond_1d
    return v0
.end method

.method public getRgbGainGreenLevel()I
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_green_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 133
    .local v0, "level":I
    if-ne v0, v3, :cond_1d

    .line 135
    const-string v1, "RgbGainController"

    const-string v2, "Using default value for setting: rgb_gain_display_green_level"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    .line 141
    :cond_1d
    return v0
.end method

.method public getRgbGainRedLevel()I
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_red_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 116
    .local v0, "level":I
    if-ne v0, v3, :cond_1d

    .line 118
    const-string v1, "RgbGainController"

    const-string v2, "Using default value for setting: rgb_gain_display_red_level"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    .line 124
    :cond_1d
    return v0
.end method

.method public isActivated()Z
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_activated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v3, v1

    :cond_14
    return v3
.end method

.method public setActivated(Z)Z
    .registers 5
    .param p1, "activated"    # Z

    .line 101
    if-nez p1, :cond_17

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RgbGainController;->setRgbGainRedLevel(I)Z

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RgbGainController;->setRgbGainGreenLevel(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RgbGainController;->setRgbGainBlueLevel(I)Z

    .line 106
    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    .line 106
    const-string/jumbo v2, "rgb_gain_display_activated"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/internal/app/RgbGainController$Callback;)V
    .registers 8
    .param p1, "callback"    # Lcom/android/internal/app/RgbGainController$Callback;

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    .line 246
    .local v0, "oldCallback":Lcom/android/internal/app/RgbGainController$Callback;
    if-eq v0, p1, :cond_55

    .line 247
    iput-object p1, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    .line 249
    if-nez p1, :cond_14

    .line 251
    iget-object v1, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_55

    .line 252
    :cond_14
    if-nez v0, :cond_55

    .line 254
    iget-object v1, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 255
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "rgb_gain_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 257
    const-string/jumbo v2, "rgb_gain_display_red_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 259
    const-string/jumbo v2, "rgb_gain_display_green_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 261
    const-string/jumbo v2, "rgb_gain_display_blue_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 265
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_55
    :goto_55
    return-void
.end method

.method public setRgbGainBlueLevel(I)Z
    .registers 5
    .param p1, "level"    # I

    .line 190
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rgb_gain_display_blue_level"

    iget v2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setRgbGainGreenLevel(I)Z
    .registers 5
    .param p1, "level"    # I

    .line 179
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rgb_gain_display_green_level"

    iget v2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setRgbGainRedLevel(I)Z
    .registers 5
    .param p1, "level"    # I

    .line 168
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rgb_gain_display_red_level"

    iget v2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
