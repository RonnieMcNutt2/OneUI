.class public final Lcom/android/internal/app/SkinColorController;
.super Ljava/lang/Object;
.source "SkinColorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SkinColorController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SkinColorController"


# instance fields
.field private mCallback:Lcom/android/internal/app/SkinColorController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$monSettingChanged(Lcom/android/internal/app/SkinColorController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/SkinColorController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/SkinColorController;-><init>(Landroid/content/Context;I)V

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

    iput-object v0, p0, Lcom/android/internal/app/SkinColorController;->mContext:Landroid/content/Context;

    .line 71
    iput p2, p0, Lcom/android/internal/app/SkinColorController;->mUserId:I

    .line 73
    new-instance v0, Lcom/android/internal/app/SkinColorController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/SkinColorController$1;-><init>(Lcom/android/internal/app/SkinColorController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/SkinColorController;->mContentObserver:Landroid/database/ContentObserver;

    .line 84
    return-void
.end method

.method private getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 200
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SkinColorController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 202
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "setting"    # Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSettingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinColorController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mCallback:Lcom/android/internal/app/SkinColorController$Callback;

    if-eqz v0, :cond_54

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    :cond_24
    goto :goto_3b

    :sswitch_25
    const-string/jumbo v0, "skin_color_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_3c

    :sswitch_30
    const-string/jumbo v0, "skin_color_display_color_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_3c

    :goto_3b
    const/4 v0, -0x1

    :goto_3c
    packed-switch v0, :pswitch_data_60

    goto :goto_54

    .line 170
    :pswitch_40
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mCallback:Lcom/android/internal/app/SkinColorController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/SkinColorController;->getSkinColorLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/SkinColorController$Callback;->onLevelChanged(I)V

    goto :goto_54

    .line 167
    :pswitch_4a
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mCallback:Lcom/android/internal/app/SkinColorController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/SkinColorController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/SkinColorController$Callback;->onActivated(Z)V

    .line 168
    nop

    .line 174
    :cond_54
    :goto_54
    return-void

    nop

    :sswitch_data_56
    .sparse-switch
        -0x7cdceb73 -> :sswitch_30
        0x5606fbf6 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public getDefaultSkinColorLevel()I
    .registers 2

    .line 155
    const/16 v0, 0x74

    return v0
.end method

.method public getMaximumSkinColorLevel()I
    .registers 2

    .line 147
    const/16 v0, 0xff

    return v0
.end method

.method public getMinimumSkinColorLevel()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getSkinColorLevel()I
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/SkinColorController;->mUserId:I

    const-string/jumbo v2, "skin_color_display_color_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 113
    .local v0, "colorLevel":I
    if-ne v0, v3, :cond_1d

    .line 115
    const-string v1, "SkinColorController"

    const-string v2, "Using default value for setting: skin_color_display_color_level"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/SkinColorController;->getDefaultSkinColorLevel()I

    move-result v0

    .line 121
    :cond_1d
    return v0
.end method

.method public isActivated()Z
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/SkinColorController;->mUserId:I

    const-string/jumbo v2, "skin_color_display_activated"

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
    if-nez p1, :cond_9

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/app/SkinColorController;->getDefaultSkinColorLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SkinColorController;->setSkinColorLevel(I)Z

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/android/internal/app/SkinColorController;->mUserId:I

    .line 103
    const-string/jumbo v2, "skin_color_display_activated"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/internal/app/SkinColorController$Callback;)V
    .registers 8
    .param p1, "callback"    # Lcom/android/internal/app/SkinColorController$Callback;

    .line 180
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mCallback:Lcom/android/internal/app/SkinColorController$Callback;

    .line 181
    .local v0, "oldCallback":Lcom/android/internal/app/SkinColorController$Callback;
    if-eq v0, p1, :cond_39

    .line 182
    iput-object p1, p0, Lcom/android/internal/app/SkinColorController;->mCallback:Lcom/android/internal/app/SkinColorController$Callback;

    .line 184
    if-nez p1, :cond_14

    .line 186
    iget-object v1, p0, Lcom/android/internal/app/SkinColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/SkinColorController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_39

    .line 187
    :cond_14
    if-nez v0, :cond_39

    .line 189
    iget-object v1, p0, Lcom/android/internal/app/SkinColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "skin_color_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/SkinColorController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/SkinColorController;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    const-string/jumbo v2, "skin_color_display_color_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/SkinColorController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/SkinColorController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_39
    :goto_39
    return-void
.end method

.method public setSkinColorLevel(I)Z
    .registers 5
    .param p1, "level"    # I

    .line 131
    iget-object v0, p0, Lcom/android/internal/app/SkinColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "skin_color_display_color_level"

    iget v2, p0, Lcom/android/internal/app/SkinColorController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
