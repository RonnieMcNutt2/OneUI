.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
.super Ljava/lang/Object;
.source "SemDisplaySolutionManager.java"


# static fields
.field private static RETURN_ERROR:J = 0x0L

.field private static RETURN_ERROR_F:F = 0.0f

.field private static RETURN_ERROR_I:I = 0x0

.field public static final SUPPORT_CHANGABLE_NORMAL_AUTO_BRIGHTNESS:I = 0x2

.field public static final SUPPORT_CHANGABLE_NUMBER_AUTO_BRIGHTNESS:I = 0x1

.field public static final SUPPORT_ONLY_MANUAL_BRIGHTNESS:I = 0x0

.field public static final SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL:I = 0x3

.field public static final SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V3:I = 0x4

.field public static final SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V4:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemDisplaySolutionManager"


# instance fields
.field final mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR:J

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_c

    .line 65
    const-string v0, "SemDisplaySolutionManager"

    const-string v1, "In Constructor Stub-Service(ISemDisplaySolutionManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_c
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .line 67
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 513
    const-string v0, "SemDisplaySolutionManager"

    const-string v1, "Error SemDisplaySolutionManager"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    return-void
.end method


# virtual methods
.method public getAlphaMaskLevel(FFF)F
    .registers 6
    .param p1, "CurrentPlatformBrightnessValue"    # F
    .param p2, "FingerPrintPlatformValue"    # F
    .param p3, "br_ctrl"    # F

    .line 193
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v0, :cond_7

    .line 194
    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v0

    .line 198
    :cond_7
    :try_start_7
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAlphaMaskLevel(FFF)F

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 199
    :catch_c
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1
.end method

.method public getAutoCurrentLimitOffModeEnabled()Z
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 134
    return v1

    .line 138
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 139
    :catch_b
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getCameraModeEnable()Z
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 104
    return v1

    .line 108
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getCameraModeEnable()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 109
    :catch_b
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getDouAppModeEnable()Z
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 119
    return v1

    .line 123
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getDouAppModeEnable()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 124
    :catch_b
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getFingerPrintBacklightValue(I)F
    .registers 4
    .param p1, "brightnessNits"    # I

    .line 178
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v0, :cond_7

    .line 179
    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v0

    .line 183
    :cond_7
    :try_start_7
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 184
    :catch_c
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1
.end method

.method public getGalleryModeEnable()Z
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 89
    return v1

    .line 93
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getGalleryModeEnable()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 94
    :catch_b
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getOnPixelRatioValueForPMS()Ljava/lang/String;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 149
    return-object v1

    .line 153
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 154
    :catch_c
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getVideoEnhancerSettingState(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v0, :cond_7

    .line 164
    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return v0

    .line 168
    :cond_7
    :try_start_7
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 169
    :catch_c
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return v1
.end method

.method public getVideoModeEnable()Z
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 74
    return v1

    .line 78
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoModeEnable()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 79
    :catch_b
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isBlueLightFilterScheduledTime()Z
    .registers 2

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_9

    .line 493
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->isBlueLightFilterScheduledTime()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 496
    :cond_9
    goto :goto_e

    .line 494
    :catch_a
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 210
    return v1

    .line 214
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 215
    :catch_b
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public onAutoCurrentLimitOffMode(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 274
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 277
    :cond_7
    goto :goto_c

    .line 275
    :catch_8
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public onAutoCurrentLimitStateChanged(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 238
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 241
    :cond_7
    goto :goto_c

    .line 239
    :catch_8
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public onAutoCurrentLimitStateChangedInt(I)V
    .registers 3
    .param p1, "value"    # I

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 262
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 265
    :cond_7
    goto :goto_c

    .line 263
    :catch_8
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 250
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChangedWithBrightness(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 253
    :cond_7
    goto :goto_c

    .line 251
    :catch_8
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 254
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public onBurnInPreventionDisabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 288
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onBurnInPreventionDisabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 291
    :cond_7
    goto :goto_c

    .line 289
    :catch_8
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public onDetailVeiwStateChanged(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 226
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onDetailVeiwStateChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 229
    :cond_7
    goto :goto_c

    .line 227
    :catch_8
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setAutoCurrentLimitOffModeEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 372
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 375
    :cond_7
    goto :goto_c

    .line 373
    :catch_8
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setBlfEnableTimeBySchedule(ZI)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "index"    # I

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 481
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setBlfEnableTimeBySchedule(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 484
    :cond_7
    goto :goto_c

    .line 482
    :catch_8
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setCameraModeEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 348
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setCameraModeEnable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 351
    :cond_7
    goto :goto_c

    .line 349
    :catch_8
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setDouAppModeEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 360
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setDouAppModeEnable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 363
    :cond_7
    goto :goto_c

    .line 361
    :catch_8
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 364
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setEadIndexOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 506
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setEadIndexOffset(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 509
    :cond_7
    goto :goto_c

    .line 507
    :catch_8
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 510
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setEyeComfortWeightingFactor(F)V
    .registers 3
    .param p1, "scaleValue"    # F

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 445
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 448
    :cond_7
    goto :goto_c

    .line 446
    :catch_8
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setGalleryModeEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 336
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setGalleryModeEnable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 339
    :cond_7
    goto :goto_c

    .line 337
    :catch_8
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setHighDynamicRangeMode(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 300
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setHighDynamicRangeMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 303
    :cond_7
    goto :goto_c

    .line 301
    :catch_8
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setIRCompensationMode(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 312
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setIRCompensationMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 315
    :cond_7
    goto :goto_c

    .line 313
    :catch_8
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 384
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 387
    :cond_7
    goto :goto_c

    .line 385
    :catch_8
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 409
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 412
    :cond_7
    goto :goto_c

    .line 410
    :catch_8
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setMultipleScreenBrightnessValueForHDR(F)V
    .registers 3
    .param p1, "scalefactorValueHDR"    # F

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 433
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightnessValueForHDR(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 436
    :cond_7
    goto :goto_c

    .line 434
    :catch_8
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 421
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 424
    :cond_7
    goto :goto_c

    .line 422
    :catch_8
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setScreenBrightnessForPreview(I)V
    .registers 3
    .param p1, "settingValue"    # I

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 397
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 400
    :cond_7
    goto :goto_c

    .line 398
    :catch_8
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 401
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setSleepPatternBLF(Ljava/lang/String;JJF)V
    .registers 14
    .param p1, "mWeekType"    # Ljava/lang/String;
    .param p2, "mBedtime"    # J
    .param p4, "mWakeupTime"    # J
    .param p6, "mConfidence"    # F

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_b

    .line 469
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setSleepPatternBLF(Ljava/lang/String;JJF)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 472
    :cond_b
    goto :goto_10

    .line 470
    :catch_c
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 473
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 457
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 460
    :cond_7
    goto :goto_c

    .line 458
    :catch_8
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 461
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public setVideoModeEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 324
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoModeEnable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 327
    :cond_7
    goto :goto_c

    .line 325
    :catch_8
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method
