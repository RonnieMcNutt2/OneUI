.class public Lcom/samsung/android/camera/mic/SemMultiMicManager;
.super Ljava/lang/Object;
.source "SemMultiMicManager.java"


# static fields
.field private static final AUDIO_PARAMETER_SEC_LOCAL_MULTI_MIC_KEY:Ljava/lang/String; = "l_multi_mic_key"

.field private static final AUDIO_PARAMETER_STREAM_CAM_BACK:Ljava/lang/String; = "cam_back"

.field private static final AUDIO_PARAMETER_STREAM_CAM_COORDINATE:Ljava/lang/String; = "cam_coordinate"

.field private static final AUDIO_PARAMETER_STREAM_CAM_ORIENTATION:Ljava/lang/String; = "cam_orientation"

.field private static final AUDIO_PARAMETER_STREAM_ENABLE:Ljava/lang/String; = "cam_enable"

.field private static final AUDIO_PARAMETER_STREAM_ZOOM_MAX:Ljava/lang/String; = "cam_zoom_max"

.field private static final AUDIO_PARAMETER_STREAM_ZOOM_MIN:Ljava/lang/String; = "cam_zoom_min"

.field private static final AUDIO_PARAMETER_STREAM_ZOOM_STEP:Ljava/lang/String; = "cam_zoom"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_AUDIO_FOCUS_ENABLE:Ljava/lang/String; = "audio_focus_enable"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_CAMERA_DIRECTION:Ljava/lang/String; = "camera_direction"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_FOCUS_COORDINATE:Ljava/lang/String; = "focus_coordinate"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_MODE:Ljava/lang/String; = "mode"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_PHONE_ORIENTATION:Ljava/lang/String; = "phone_orientation"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_SENSITIVITY_LEVEL:Ljava/lang/String; = "sensitivity_level"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_ZOOM_LEVEL:Ljava/lang/String; = "zoom_level"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_ZOOM_MAX:Ljava/lang/String; = "zoom_max"

.field private static final AUDIO_PARAMETER_SUBKEY_MULTI_MIC_ZOOM_MIN:Ljava/lang/String; = "zoom_min"

.field public static final CAMERA_FACING_BACK:I = 0x1

.field public static final CAMERA_FACING_FRONT:I = 0x0

.field private static final DEFAULT_COORDINATE:I = -0x15b38

.field private static final DEFAULT_SENSITIVITY_LEVEL:I = -0x15b38

.field private static final DEFAULT_ZOOM:F = 0.0f

.field public static final MODE_ADJUSTING_SENSITIVITY:I = 0x1

.field public static final MODE_ADJUSTING_SENSITIVITY_BY_BLUETOOTH_AND_BUILTIN_MIC:I = 0x2

.field public static final MODE_ADJUSTING_SENSITIVITY_BY_BLUETOOTH_MIC:I = 0x2

.field public static final MODE_ADJUSTING_ZOOM_LEVEL:I = 0x0

.field public static final SURFACE_ROTATION_0:I = 0x0

.field public static final SURFACE_ROTATION_180:I = 0xb4

.field public static final SURFACE_ROTATION_270:I = 0x10e

.field public static final SURFACE_ROTATION_90:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "SemMultiMicManager"

.field private static sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mCameraZoomLevel:F

.field private mCoordinate:I

.field private mEnable:Z

.field private mMaxZoom:F

.field private mMinZoom:F

.field private mMode:I

.field private mOrientation:I

.field private mSensitivityLevel:I

.field private mSoundLocation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    .line 296
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCameraZoomLevel:F

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 298
    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    .line 299
    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCoordinate:I

    .line 300
    iput-boolean v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mEnable:Z

    .line 301
    const v1, -0x15b38

    iput v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSensitivityLevel:I

    .line 302
    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    .line 137
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;
    .registers 1

    .line 146
    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_8

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_8
    sget-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-nez v0, :cond_13

    .line 151
    new-instance v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-direct {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    .line 154
    :cond_13
    sget-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    .line 503
    sget-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_5

    .line 504
    return-object v0

    .line 506
    :cond_5
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sService:Landroid/media/IAudioService;

    .line 508
    return-object v1
.end method

.method public static isSupported()Z
    .registers 2

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "version":I
    :try_start_1
    const-string v1, "07020"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 289
    goto :goto_a

    .line 288
    :catch_9
    move-exception v1

    .line 290
    :goto_a
    const/16 v1, 0x1f41

    if-ge v0, v1, :cond_19

    const/16 v1, 0x1b62

    if-lt v0, v1, :cond_17

    const/16 v1, 0x1f40

    if-ge v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method public static isSupported(I)Z
    .registers 7
    .param p0, "mode"    # I

    .line 464
    invoke-static {p0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isValidMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in isSupported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemMultiMicManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return v1

    .line 469
    :cond_26
    const/4 v0, 0x0

    .line 471
    .local v0, "version":I
    :try_start_27
    const-string v2, "07020"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2d} :catch_2f

    move v0, v2

    goto :goto_30

    .line 472
    :catch_2f
    move-exception v2

    :goto_30
    nop

    .line 474
    const/16 v2, 0x1f41

    const/4 v3, 0x1

    if-nez p0, :cond_3a

    .line 475
    if-lt v0, v2, :cond_39

    move v1, v3

    :cond_39
    return v1

    .line 476
    :cond_3a
    const/16 v4, 0x1f40

    if-ne p0, v3, :cond_4a

    .line 477
    const/16 v2, 0x1f4a

    if-ge v0, v2, :cond_48

    const/16 v2, 0x1b62

    if-lt v0, v2, :cond_49

    if-ge v0, v4, :cond_49

    :cond_48
    move v1, v3

    :cond_49
    return v1

    .line 478
    :cond_4a
    const/4 v5, 0x2

    if-ne p0, v5, :cond_59

    .line 479
    const/16 v2, 0x1f54

    if-ge v0, v2, :cond_57

    const/16 v2, 0x1b6c

    if-lt v0, v2, :cond_58

    if-ge v0, v4, :cond_58

    :cond_57
    move v1, v3

    :cond_58
    return v1

    .line 481
    :cond_59
    if-lt v0, v2, :cond_5c

    move v1, v3

    :cond_5c
    return v1
.end method

.method private static isValidMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .line 485
    if-ltz p0, :cond_8

    const/4 v0, 0x2

    if-le p0, v0, :cond_6

    goto :goto_8

    .line 488
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 486
    :cond_8
    :goto_8
    const/4 v0, 0x0

    return v0
.end method

.method private static setAudioServiceConfig(Ljava/lang/String;)V
    .registers 5
    .param p0, "keyValuePairs"    # Ljava/lang/String;

    .line 492
    const-string v0, "SemMultiMicManager"

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 494
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_6
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->setAudioServiceConfig(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_a

    .line 499
    :goto_9
    goto :goto_18

    .line 497
    :catch_a
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Not allowed to audio routing"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 495
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_11
    move-exception v2

    .line 496
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in setAudioServiceConfig"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 500
    :goto_18
    return-void
.end method

.method private writeToBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Bundle;

    .line 319
    const-string v0, "cam_zoom_max"

    iget v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 320
    const-string v0, "cam_zoom_min"

    iget v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 321
    const-string v0, "cam_zoom"

    iget v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCameraZoomLevel:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 322
    const-string v0, "cam_back"

    iget v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const-string v0, "cam_orientation"

    iget v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    const-string v0, "cam_coordinate"

    iget v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCoordinate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string v0, "cam_enable"

    iget-boolean v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    return-void
.end method


# virtual methods
.method public getMicSensitivity(I)I
    .registers 3
    .param p1, "channel"    # I

    .line 372
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSensitivityLevel:I

    return v0
.end method

.method public getMode()I
    .registers 2

    .line 418
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    return v0
.end method

.method public getSoundLocation()I
    .registers 2

    .line 453
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    return v0
.end method

.method public initialize(IIFF)V
    .registers 7
    .param p1, "soundLocation"    # I
    .param p2, "deviceOrientation"    # I
    .param p3, "maxZoom"    # F
    .param p4, "minZoom"    # F

    .line 170
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 172
    const-string/jumbo v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 173
    const-string v1, "camera_direction"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "phone_orientation"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "zoom_max"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "zoom_min"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 181
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 182
    iput p2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    .line 183
    iput p3, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    .line 184
    iput p4, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    .line 185
    return-void
.end method

.method public release()V
    .registers 6

    .line 193
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 195
    const-string/jumbo v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 196
    const-string v1, "camera_direction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "phone_orientation"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "zoom_max"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "zoom_min"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "sensitivity_level"

    const v4, -0x15b38

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 205
    iput v2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 206
    iput v2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    .line 207
    iput v3, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    .line 208
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    .line 210
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    .line 211
    return-void
.end method

.method public setAudioFocusCoordinate(I)V
    .registers 5
    .param p1, "coordinate"    # I

    .line 243
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 245
    const-string/jumbo v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 246
    const-string v1, "audio_focus_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 247
    const-string v1, "focus_coordinate"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "zoom_level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 253
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCoordinate:I

    .line 254
    return-void
.end method

.method public setAudioZoomLevel(F)V
    .registers 5
    .param p1, "cameraZoomLevel"    # F

    .line 266
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 268
    const-string/jumbo v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 269
    const-string v1, "audio_focus_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 270
    const-string v1, "focus_coordinate"

    const v2, -0x15b38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "zoom_level"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 276
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCameraZoomLevel:F

    .line 277
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 220
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 222
    const-string/jumbo v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 223
    const-string v1, "audio_focus_enable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 224
    const-string v1, "focus_coordinate"

    const v2, -0x15b38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "zoom_level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 230
    iput-boolean p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mEnable:Z

    .line 231
    return-void
.end method

.method public setMicSensitivity(II)Z
    .registers 8
    .param p1, "channel"    # I
    .param p2, "level"    # I

    .line 342
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SemMultiMicManager"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_11

    const/4 v4, 0x2

    if-eq v0, v4, :cond_11

    .line 344
    const-string v0, "Current mode is not MODE_ADJUSTING_SENSITIVITY"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v1

    .line 348
    :cond_11
    const/16 v0, -0xc

    if-lt p2, v0, :cond_3b

    const/16 v0, 0xc

    if-le p2, v0, :cond_1a

    goto :goto_3b

    .line 353
    :cond_1a
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 354
    const-string/jumbo v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 355
    const-string/jumbo v1, "sensitivity_level"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 360
    iput p2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSensitivityLevel:I

    .line 361
    return v3

    .line 349
    .end local v0    # "parameters":Ljava/lang/String;
    :cond_3b
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid level "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in setMicSensitivity"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v1
.end method

.method public setMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 395
    invoke-static {p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isValidMode(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in setMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMultiMicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_26
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 401
    const-string/jumbo v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 402
    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 403
    const-string v1, "audioParam"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 405
    .local v0, "builder":Lcom/samsung/android/media/AudioParameter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 407
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    .line 408
    const/4 v1, 0x1

    return v1
.end method

.method public setSoundLocation(I)Z
    .registers 5
    .param p1, "soundLocation"    # I

    .line 431
    if-ltz p1, :cond_26

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    goto :goto_26

    .line 436
    :cond_6
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 437
    const-string/jumbo v2, "l_multi_mic_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 438
    const-string v2, "camera_direction"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "parameters":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 443
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 444
    return v0

    .line 432
    .end local v1    # "parameters":Ljava/lang/String;
    :cond_26
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in setSoundLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMultiMicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x0

    return v0
.end method
