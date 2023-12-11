.class public Lcom/samsung/android/media/SemSoundAssistantManager;
.super Ljava/lang/Object;
.source "SemSoundAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;,
        Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;,
        Lcom/samsung/android/media/SemSoundAssistantManager$MicInputControlMode;,
        Lcom/samsung/android/media/SemSoundAssistantManager$EventType;
    }
.end annotation


# static fields
.field public static final ACTION_SOUND_EVENT_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.SOUND_EVENT"

.field public static final ADJUST_MEDIA_ONLY:Ljava/lang/String; = "adjust_media_volume_only"

.field public static final BOOT_COMPLETED:I = 0x3eb

.field public static final BRAND_SOUND_VERSION:Ljava/lang/String; = "brand_sound_version"

.field public static final CARLIFE_FOCUS_GRANT_INDEX:I = 0x1

.field public static final CARLIFE_FOCUS_LOSS_INDEX:I = 0x2

.field private static final DEFAULT_MEDIA_SESSION_CALLBACK_FGS_ALLOWLIST_DURATION_MS:J = 0x2710L

.field public static final DEVICE_BLUETOOTH:I = 0x2

.field public static final DEVICE_DEFAULT:I = 0x0

.field public static final DEVICE_HEADSET:I = 0x3

.field public static final DEVICE_SPEAKER_OR_HEADSET:I = 0x1

.field public static final ENABLE_FLOATING_BUTTON:Ljava/lang/String; = "enable_floating_button"

.field public static final EXECUTE_FLOATING_BUTTON:I = 0x0

.field public static final GET_APP_VOLUME_LIST:Ljava/lang/String; = "get_app_volume_list"

.field public static final GET_MODE_OWNER_UIDS:Ljava/lang/String; = "get_mode_owner_uids"

.field public static final HEADSET_ONLY_ALARM:I = 0x10

.field public static final HEADSET_ONLY_ALL:I = 0x4

.field public static final HEADSET_ONLY_NOTIFICATION:I = 0x20

.field public static final HEADSET_ONLY_RINGTONE:I = 0x1

.field public static final IGNORE_AUDIO_FOCUS:Ljava/lang/String; = "ignore_audio_focus"

.field public static final MEDIA_BUTTON_PACKAGE:Ljava/lang/String; = "media_button_package"

.field public static final MEDIA_VOLUME_MULTI_STEP:Ljava/lang/String; = "sec_volume_steps"

.field public static final MEDIA_VOLUME_STEP_DEFAULT:I = 0xa

.field public static final MEDIA_VOLUME_STEP_INDEX:Ljava/lang/String; = "media_volume_step_index"

.field public static final MEDIA_VOLUME_STEP_MAX:I = 0xa

.field public static final MEDIA_VOLUME_STEP_MIN:I = 0x1

.field public static final MIC_INPUT_CONTROL_MODE_DEFAULT:I = 0x64

.field public static final MIC_INPUT_CONTROL_MODE_FOCUS_ON_ALL_SOUNDS:I = 0x2

.field public static final MIC_INPUT_CONTROL_MODE_FOCUS_ON_ALL_SOUNDS_FOR_VIDEO_CALL_ON_2MIC:I = 0x7

.field public static final MIC_INPUT_CONTROL_MODE_FOCUS_ON_ALL_SOUNDS_FOR_VOICE_CALL_ON_2MIC:I = 0x4

.field public static final MIC_INPUT_CONTROL_MODE_FOCUS_ON_VOICE:I = 0x1

.field public static final MIC_INPUT_CONTROL_MODE_FOCUS_ON_VOICE_FOR_VIDEO_CALL_ON_2MIC:I = 0x6

.field public static final MIC_INPUT_CONTROL_MODE_FOCUS_ON_VOICE_FOR_VOICE_CALL_ON_2MIC:I = 0x3

.field public static final MIC_INPUT_CONTROL_MODE_STANDARD:I = 0x0

.field public static final MIC_INPUT_CONTROL_MODE_STANDARD_FOR_VIDEO_CALL_ON_2MIC:I = 0x5

.field public static final MODE_ADJUST_MEDIA_VOLUME_ONLY:I = 0x1

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_MUTE_MEDIA_BY_VIBRATE_OR_SILENT_MODE:I = 0x2

.field public static final MONO_SOUND:Ljava/lang/String; = "mono_sound"

.field public static final MULTI_AUDIO_FOCUS:Ljava/lang/String; = "multi_audio_focus"

.field public static final MUTE_MEDIA_BY_VIBRATE_OR_SILENT_MODE:Ljava/lang/String; = "mute_media_by_vibrate_or_silent_mode"

.field public static final NO_FADEOUT_FROM_AUDIOFOCUS:Ljava/lang/String; = "NO_FADEOUT_FROM_AUDIOFOCUS"

.field public static final NO_MUTE_IN_CALL:Ljava/lang/String; = "NO_MUTE_IN_CALL"

.field public static final PARAMETER_PREFIX:Ljava/lang/String; = "sound_assistant"

.field public static final REMOVE_APP_VOLUME:Ljava/lang/String; = "remove_app_volume"

.field public static final SETTING_RINGTONE_THROUGH_HEADSET_ONLY:Ljava/lang/String; = "ring_through_headset"

.field public static final SETTING_SOUND_LR_SWITCH:Ljava/lang/String; = "sound_lr_switch"

.field public static final SOUNDSETTING_EVENT_A2DP_CONNECTION_CHANGED:I = 0x8

.field public static final SOUNDSETTING_EVENT_CARLIFE_RECEIVER:I = 0x200

.field public static final SOUNDSETTING_EVENT_HEADSET_CONNECTION_CHANGED:I = 0x4

.field public static final SOUNDSETTING_EVENT_MEDIA_KEY_RECEIVER:I = 0x40

.field public static final SOUNDSETTING_EVENT_MEDIA_MUTE_CHANGED:I = 0x2

.field public static final SOUNDSETTING_EVENT_MEDIA_VOLUME_CHANGED:I = 0x100

.field public static final SOUNDSETTING_EVENT_NONE:I = 0x0

.field public static final SOUNDSETTING_EVENT_PLAYBACK_STATE_CHANGED:I = 0x10

.field public static final SOUNDSETTING_EVENT_RECORDING_STARTED_RECEIVER:I = 0x80

.field public static final SOUNDSETTING_EVENT_RINGERMODE_CHANGED:I = 0x1

.field public static final SOUNDSETTING_EVENT_VOLUMEKEY_LONGPRESS:I = 0x20

.field public static final SOUNDSETTING_EXTRA_EVENT_CALLING_PACKAGE:Ljava/lang/String; = "package"

.field public static final SOUNDSETTING_EXTRA_EVENT_TYPE:Ljava/lang/String; = "type"

.field public static final SOUNDSETTING_EXTRA_EVENT_VALUE:Ljava/lang/String; = "value"

.field public static final SOUND_BALANCE:Ljava/lang/String; = "sound_balance"

.field private static final TAG:Ljava/lang/String; = "SemSoundAssistant"

.field public static final UID_FOR_SOUNDASSISTANT:Ljava/lang/String; = "uid_for_soundassistant"

.field public static final USING_AUDIO_UIDS:Ljava/lang/String; = "using_audio_uids"

.field public static final VERSION:Ljava/lang/String; = "version"

.field protected static final VOLUME_MODE_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final VOLUME_MODE_KEY:[Ljava/lang/String;

.field public static final VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

.field public static final VOLUME_STAR_DISABLE:I = 0x65

.field public static final VOLUME_STAR_ENABLE:I = 0x64

.field public static final VOLUME_STAR_ENABLE_PARAM:Ljava/lang/String; = "volumestar_enable"

.field private static final mLock:Ljava/lang/Object;

.field private static sIsRunning:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sMediaKeySessionChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

.field static final sMicModeParamTable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFloatingButton:Z

.field private mOriginalContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfputsIsRunning(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smsleep(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->sleep(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 302
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_ALL:Ljava/util/Set;

    .line 304
    const-string v3, "adjust_media_volume_only"

    const-string/jumbo v4, "mute_media_by_vibrate_or_silent_mode"

    const-string v5, ""

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    .line 306
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    .line 1337
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    .line 1338
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sLock:Ljava/lang/Object;

    .line 1400
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    .line 1403
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    .line 1405
    new-instance v3, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    .line 1494
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    .line 1496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "l_mic_input_control_mode=0"

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    const-string/jumbo v2, "l_mic_input_control_mode=1"

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const-string/jumbo v0, "l_mic_input_control_mode=2"

    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "l_call_nc_booster_enable=1"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "l_call_nc_booster_enable=2"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "l_mic_input_control_mode_2mic=0"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "l_mic_input_control_mode_2mic=1"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "l_mic_input_control_mode_2mic=2"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "l_mic_input_control_mode=100"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    .line 407
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 420
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    .line 422
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 423
    return-object v0

    .line 425
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "strUids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 577
    return-object v1

    .line 580
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v0, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .local v2, "token":Ljava/util/StringTokenizer;
    :goto_14
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 583
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "strUid":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_25

    .line 585
    goto :goto_14

    .line 589
    :cond_25
    :try_start_25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 591
    goto :goto_2e

    .line 590
    :catch_2d
    move-exception v4

    .line 592
    .end local v3    # "strUid":Ljava/lang/String;
    :goto_2e
    goto :goto_14

    .line 593
    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_36

    .line 594
    return-object v1

    .line 596
    :cond_36
    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    .line 429
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_5

    .line 430
    return-object v0

    .line 432
    :cond_5
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    .line 434
    return-object v1
.end method

.method private getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isSeparateStreamForHeadsetOnly()Z
    .registers 6

    .line 1295
    const/4 v0, 0x0

    .line 1297
    .local v0, "separateStream":Z
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    .line 1298
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1297
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1299
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_24

    .line 1300
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "separate_stream"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move v0, v2

    goto :goto_24

    .line 1302
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_23
    move-exception v1

    :cond_24
    :goto_24
    nop

    .line 1304
    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1406
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1407
    :try_start_3
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    .line 1408
    .local v2, "callback":Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    .line 1409
    .end local v2    # "callback":Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;
    goto :goto_9

    .line 1410
    :cond_19
    monitor-exit v0

    .line 1411
    return-void

    .line 1410
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    .line 411
    if-eqz v0, :cond_c

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_e

    .line 414
    :cond_c
    iput-object p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    .line 416
    :goto_e
    return-void
.end method

.method private setSoundAssistantParam(Ljava/lang/String;)V
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 1287
    return-void
.end method

.method private static sleep(J)V
    .registers 3
    .param p0, "millis"    # J

    .line 1396
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 1397
    :goto_5
    return-void
.end method


# virtual methods
.method public activateFloatingButton(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 484
    iput-boolean p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mFloatingButton:Z

    .line 485
    return-void
.end method

.method public addOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    .line 1442
    const-string/jumbo v0, "listener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1443
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_9
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1445
    const-string v1, "SemSoundAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already added : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    monitor-exit v0

    return-void

    .line 1449
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_61

    .line 1452
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .local v3, "looper":Landroid/os/Looper;
    if-nez v2, :cond_3d

    .line 1453
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .line 1455
    :cond_3d
    if-eqz v3, :cond_4a

    .line 1456
    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .local v2, "executor":Ljava/util/concurrent/Executor;
    goto :goto_4e

    .line 1458
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :cond_4a
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 1461
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    :goto_4e
    nop

    .line 1462
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "media_session"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSessionManager;

    .line 1463
    .local v4, "manager":Landroid/media/session/MediaSessionManager;
    sget-object v5, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v4, v2, v5}, Landroid/media/session/MediaSessionManager;->addOnMediaKeyEventSessionChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 1466
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v4    # "manager":Landroid/media/session/MediaSessionManager;
    :cond_61
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    monitor-exit v0

    .line 1468
    return-void

    .line 1467
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public addToMultiSoundSupportedList(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 892
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 895
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->addPackage(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 898
    goto :goto_11

    .line 896
    :catch_9
    move-exception v1

    .line 897
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling addPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public adjustSoundBalance(I)V
    .registers 4
    .param p1, "balance"    # I

    .line 457
    if-ltz p1, :cond_1e

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1e

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 462
    return-void

    .line 458
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad ratio value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableSelfieStickMode()Z
    .registers 2

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public forceMonoSound(Z)V
    .registers 4
    .param p1, "on"    # Z

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mono_sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public getApplicationUidListUsingAudio()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 647
    const-string/jumbo v0, "using_audio_uids"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getApplicationVolume(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 672
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getAppVolume(I)I

    move-result v0

    return v0
.end method

.method public getAudioFrameworkVersion()I
    .registers 4

    .line 769
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 772
    .local v1, "version":I
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_10} :catch_12

    move v1, v2

    .line 774
    goto :goto_13

    .line 773
    :catch_12
    move-exception v2

    .line 775
    :goto_13
    return v1
.end method

.method public getDeviceForStream(I)I
    .registers 9
    .param p1, "stream"    # I

    .line 1243
    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    if-eq p1, v0, :cond_10

    const/4 v2, 0x4

    if-eq p1, v2, :cond_10

    .line 1246
    const-string v2, "SemSoundAssistant"

    const-string v3, "Invalid parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_10
    const-string/jumbo v2, "ring_through_headset"

    invoke-direct {p0, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1250
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1252
    .local v3, "prevStreams":I
    :try_start_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_20} :catch_22

    move v3, v4

    goto :goto_23

    .line 1253
    :catch_22
    move-exception v4

    :goto_23
    nop

    .line 1255
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSeparateStreamForHeadsetOnly()Z

    move-result v4

    .line 1256
    .local v4, "separateStream":Z
    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_3d

    .line 1257
    if-ne p1, v1, :cond_30

    .line 1258
    const/4 p1, 0x1

    goto :goto_37

    .line 1259
    :cond_30
    if-ne p1, v0, :cond_35

    .line 1260
    const/16 p1, 0x20

    goto :goto_37

    .line 1262
    :cond_35
    const/16 p1, 0x10

    .line 1265
    :goto_37
    and-int v0, v3, p1

    if-eqz v0, :cond_3c

    .line 1266
    return v5

    .line 1268
    :cond_3c
    return v6

    .line 1271
    :cond_3d
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_42

    .line 1272
    return v5

    .line 1274
    :cond_42
    return v6
.end method

.method public getMediaVolumeInterval()I
    .registers 4

    .line 1079
    const-string/jumbo v0, "media_volume_step_index"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1082
    .local v1, "index":I
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_10} :catch_12

    move v1, v2

    .line 1084
    goto :goto_13

    .line 1083
    :catch_12
    move-exception v2

    .line 1085
    :goto_13
    return v1
.end method

.method public getMediaVolumeSteps()[I
    .registers 3

    .line 1122
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1125
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getMediaVolumeSteps()[I

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 1126
    :catch_9
    move-exception v1

    .line 1127
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1129
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMultiSoundDevice()I
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    return v0
.end method

.method public getMultiSoundDeviceVolume(I)I
    .registers 4
    .param p1, "streamType"    # I

    .line 965
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_f

    .line 966
    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v0, -0x1

    return v0

    .line 969
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result v0

    return v0
.end method

.method public getRecommandedPackagesForSoundAssistant()[Ljava/lang/String;
    .registers 5

    .line 566
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 568
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 569
    :catch_9
    move-exception v1

    .line 570
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRecommendedPackagesForSoundAssistant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemSoundAssistant"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUidIgnoredAudioFocus()I
    .registers 4

    .line 549
    const-string/jumbo v0, "ignore_audio_focus"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 552
    .local v1, "uid":I
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_10} :catch_12

    move v1, v2

    .line 554
    goto :goto_13

    .line 553
    :catch_12
    move-exception v2

    .line 555
    :goto_13
    return v1
.end method

.method public getVolumeKeyMode()I
    .registers 4

    .line 629
    const-string v0, "adjust_media_volume_only"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 632
    .local v1, "mode":I
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_f} :catch_11

    move v1, v2

    .line 634
    goto :goto_12

    .line 633
    :catch_11
    move-exception v2

    .line 635
    :goto_12
    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public getVolumeMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .line 725
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 726
    const-string v0, "SemSoundAssistant"

    const-string v2, "Invalid mode."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v1

    .line 730
    :cond_11
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 733
    .local v2, "res":I
    :try_start_1a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1e} :catch_20

    move v2, v3

    .line 735
    goto :goto_21

    .line 734
    :catch_20
    move-exception v3

    .line 737
    :goto_21
    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    move v1, v3

    :cond_25
    return v1
.end method

.method public ignoreAudioFocusForApp(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "on"    # Z

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ignore_audio_focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_11

    const-string v1, "1"

    goto :goto_13

    :cond_11
    const-string v1, "0"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uid_for_soundassistant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public initApplicationVolume(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove_app_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public isApplicationMute(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 696
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isAppMute(I)Z

    move-result v0

    return v0
.end method

.method public isFloatingButtonActivated()Z
    .registers 2

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mFloatingButton:Z

    return v0
.end method

.method public isMultiSoundOn()Z
    .registers 2

    .line 808
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v0

    return v0
.end method

.method public isMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 926
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 929
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 930
    :catch_9
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling isAlreadyInDB"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    const/4 v2, 0x0

    return v2
.end method

.method public isPredefinedMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 946
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 949
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 950
    :catch_9
    move-exception v1

    .line 951
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling isInAllowedList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    const/4 v2, 0x0

    return v2
.end method

.method public isSelfieStickModeEnabled()Z
    .registers 2

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public removeFromMultiSoundSupportedList(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 910
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 913
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->removePackageForName(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 916
    goto :goto_10

    .line 914
    :catch_8
    move-exception v1

    .line 915
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling removePackageForName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public removeOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    .line 1478
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_3
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1480
    const-string v1, "SemSoundAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid listener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    monitor-exit v0

    return-void

    .line 1484
    :cond_25
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1485
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_41

    .line 1486
    nop

    .line 1487
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 1488
    .local v1, "manager":Landroid/media/session/MediaSessionManager;
    sget-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 1490
    .end local v1    # "manager":Landroid/media/session/MediaSessionManager;
    :cond_41
    monitor-exit v0

    .line 1491
    return-void

    .line 1490
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public sendMediaKeyEvent(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1587
    const-string/jumbo v0, "packageName shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1588
    const-string/jumbo v0, "keyEvent shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1592
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1593
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1597
    .local v1, "options":Landroid/app/BroadcastOptions;
    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    const/16 v7, 0x139

    const-string v8, ""

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1600
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 1602
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1603
    return-void
.end method

.method public setApplicationMute(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "shouldMute"    # Z

    .line 686
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppMute(IZ)V

    .line 687
    return-void
.end method

.method public setApplicationVolume(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .line 662
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppVolume(II)V

    .line 663
    return-void
.end method

.method public setDefaultSoundOutputDevice(I)Z
    .registers 18
    .param p1, "deviceCategory"    # I

    .line 998
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_c

    if-eq v1, v2, :cond_c

    .line 1000
    return v3

    .line 1002
    :cond_c
    iget-object v5, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1003
    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v5

    .line 1002
    invoke-static {v5}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v5

    .line 1005
    .local v5, "curDevice":I
    iget-object v6, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v6

    .line 1007
    .local v6, "outDevicesInfo":[Landroid/media/AudioDeviceInfo;
    move v7, v5

    .line 1008
    .local v7, "forceDevice":I
    const-string v8, ""

    .line 1010
    .local v8, "forceAddr":Ljava/lang/String;
    if-ne v1, v4, :cond_68

    .line 1012
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_98

    .line 1025
    .local v2, "priorityDeviceOrder":[I
    array-length v9, v2

    move v10, v3

    :goto_2a
    if-ge v10, v9, :cond_66

    aget v11, v2, v10

    .line 1026
    .local v11, "order":I
    const/4 v12, 0x0

    .line 1027
    .local v12, "found":Z
    array-length v13, v6

    move v14, v3

    :goto_31
    if-ge v14, v13, :cond_5e

    aget-object v15, v6, v14

    .line 1028
    .local v15, "connectedDevice":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v3, 0x19

    if-ne v4, v3, :cond_4a

    .line 1029
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1030
    goto :goto_59

    .line 1032
    :cond_4a
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v3

    if-ne v3, v11, :cond_59

    .line 1033
    move v3, v11

    .line 1034
    .end local v7    # "forceDevice":I
    .local v3, "forceDevice":I
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1035
    .end local v8    # "forceAddr":Ljava/lang/String;
    .local v4, "forceAddr":Ljava/lang/String;
    const/4 v12, 0x1

    .line 1036
    move v7, v3

    move-object v8, v4

    goto :goto_5e

    .line 1027
    .end local v3    # "forceDevice":I
    .end local v4    # "forceAddr":Ljava/lang/String;
    .end local v15    # "connectedDevice":Landroid/media/AudioDeviceInfo;
    .restart local v7    # "forceDevice":I
    .restart local v8    # "forceAddr":Ljava/lang/String;
    :cond_59
    :goto_59
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_31

    .line 1039
    :cond_5e
    :goto_5e
    if-eqz v12, :cond_61

    goto :goto_66

    .line 1025
    .end local v11    # "order":I
    .end local v12    # "found":Z
    :cond_61
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_2a

    .line 1041
    .end local v2    # "priorityDeviceOrder":[I
    :cond_66
    :goto_66
    const/4 v3, 0x0

    goto :goto_8d

    :cond_68
    if-ne v1, v2, :cond_8c

    .line 1042
    const/4 v2, 0x0

    .line 1043
    .local v2, "found":Z
    array-length v3, v6

    const/4 v4, 0x0

    :goto_6d
    if-ge v4, v3, :cond_86

    aget-object v9, v6, v4

    .line 1044
    .local v9, "connectedDevice":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v10

    const/16 v11, 0x80

    if-ne v10, v11, :cond_83

    .line 1045
    const/16 v3, 0x80

    .line 1046
    .end local v7    # "forceDevice":I
    .restart local v3    # "forceDevice":I
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1047
    .end local v8    # "forceAddr":Ljava/lang/String;
    .restart local v4    # "forceAddr":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1048
    move v7, v3

    move-object v8, v4

    goto :goto_86

    .line 1043
    .end local v3    # "forceDevice":I
    .end local v4    # "forceAddr":Ljava/lang/String;
    .end local v9    # "connectedDevice":Landroid/media/AudioDeviceInfo;
    .restart local v7    # "forceDevice":I
    .restart local v8    # "forceAddr":Ljava/lang/String;
    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    .line 1051
    :cond_86
    :goto_86
    if-nez v2, :cond_8a

    const/4 v3, 0x0

    return v3

    :cond_8a
    const/4 v3, 0x0

    goto :goto_8d

    .line 1041
    .end local v2    # "found":Z
    :cond_8c
    const/4 v3, 0x0

    .line 1053
    :goto_8d
    iget-object v2, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7, v8, v3}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_96

    const/4 v3, 0x1

    :cond_96
    return v3

    nop

    :array_98
    .array-data 4
        0x8000
        0x8
        0x4
        0x4000000
        0x2000
        0x4000
        0x1000
        0x400
        0x800
        0x2
    .end array-data
.end method

.method public setDeviceForStream(II)V
    .registers 10
    .param p1, "stream"    # I
    .param p2, "device"    # I

    .line 1186
    const-string v0, "Invalid parameter"

    const-string v1, "SemSoundAssistant"

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_11

    if-eq p1, v2, :cond_11

    const/4 v4, 0x4

    if-eq p1, v4, :cond_11

    .line 1189
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return-void

    .line 1193
    :cond_11
    const/4 v4, 0x3

    if-eqz p2, :cond_1a

    if-eq p2, v4, :cond_1a

    .line 1194
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void

    .line 1198
    :cond_1a
    const-string/jumbo v0, "ring_through_headset"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1201
    .local v1, "prevStreams":I
    :try_start_22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2a} :catch_2c

    move v1, v5

    goto :goto_2d

    .line 1202
    :catch_2c
    move-exception v5

    :goto_2d
    nop

    .line 1204
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSeparateStreamForHeadsetOnly()Z

    move-result v5

    .line 1207
    .local v5, "separateStream":Z
    if-eqz v5, :cond_42

    .line 1208
    and-int/lit8 v1, v1, -0x5

    .line 1209
    if-ne p1, v3, :cond_3a

    .line 1210
    const/4 v2, 0x1

    .local v2, "currentStream":I
    goto :goto_44

    .line 1211
    .end local v2    # "currentStream":I
    :cond_3a
    if-ne p1, v2, :cond_3f

    .line 1212
    const/16 v2, 0x20

    .restart local v2    # "currentStream":I
    goto :goto_44

    .line 1214
    .end local v2    # "currentStream":I
    :cond_3f
    const/16 v2, 0x10

    .restart local v2    # "currentStream":I
    goto :goto_44

    .line 1217
    .end local v2    # "currentStream":I
    :cond_42
    const/16 v2, 0x31

    .line 1223
    .restart local v2    # "currentStream":I
    :goto_44
    if-ne p2, v4, :cond_49

    .line 1224
    or-int v3, v1, v2

    .local v3, "newStreams":I
    goto :goto_4b

    .line 1226
    .end local v3    # "newStreams":I
    :cond_49
    not-int v3, v2

    and-int/2addr v3, v1

    .line 1229
    .restart local v3    # "newStreams":I
    :goto_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ring_through_headset="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1230
    .local v4, "param":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public setFastAudioOpenMode()V
    .registers 2

    .line 1315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setFastAudioOpenMode(Z)V

    .line 1316
    return-void
.end method

.method public setFastAudioOpenMode(Z)V
    .registers 6
    .param p1, "longOpen"    # Z

    .line 1326
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1327
    :try_start_3
    sget-boolean v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    if-eqz v1, :cond_9

    .line 1328
    monitor-exit v0

    return-void

    .line 1330
    :cond_9
    const-string v1, "SemSoundAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFastAudioOpenMode: play sound for quick audio path opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    .line 1333
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;

    invoke-direct {v2, p1}, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;-><init>(Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1334
    monitor-exit v0

    .line 1335
    return-void

    .line 1334
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public setForceDeviceForAppSoundOutput(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .line 513
    if-ltz p2, :cond_13

    const/4 v0, 0x2

    if-gt p2, v0, :cond_13

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "output":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    .line 519
    const/4 v1, 0x2

    goto :goto_f

    .line 520
    :cond_b
    if-ne p2, v0, :cond_f

    .line 521
    const/16 v1, 0x8

    .line 524
    :cond_f
    :goto_f
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setMultiSoundTargetDevice(II)V

    .line 525
    return-void

    .line 514
    .end local v1    # "output":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMediaVolumeInterval(I)V
    .registers 4
    .param p1, "volumeInterval"    # I

    .line 1064
    const/4 v0, 0x1

    if-lt p1, v0, :cond_20

    const/16 v0, 0xa

    if-le p1, v0, :cond_8

    goto :goto_20

    .line 1069
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media_volume_step_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 1071
    return-void

    .line 1065
    .end local v0    # "param":Ljava/lang/String;
    :cond_20
    :goto_20
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-void
.end method

.method public setMediaVolumeSteps([I)Z
    .registers 4
    .param p1, "volumeStep"    # [I

    .line 1105
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1108
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMediaVolumeSteps([I)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1109
    :catch_9
    move-exception v1

    .line 1110
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1112
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setMicInputControlMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .line 1540
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SemSoundAssistant"

    if-nez v1, :cond_14

    .line 1541
    const-string v0, "attempt to call setMicInputControlMode() invalid mode."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    return-void

    .line 1545
    :cond_14
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1546
    .local v1, "caller":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMicInputControlMode mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    if-eqz p1, :cond_53

    .line 1549
    const-string/jumbo v2, "l_mic_input_control_mode=0"

    .line 1553
    .local v2, "standardParam":Ljava/lang/String;
    const/4 v3, 0x3

    if-eq p1, v3, :cond_48

    const/4 v3, 0x4

    if-ne p1, v3, :cond_4b

    .line 1557
    :cond_48
    const-string/jumbo v2, "l_call_nc_booster_enable=0"

    .line 1559
    :cond_4b
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    .end local v2    # "standardParam":Ljava/lang/String;
    :cond_53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 1563
    return-void
.end method

.method public setMultiSoundDevice(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "deviceCategory"    # I

    .line 838
    if-ltz p2, :cond_13

    const/4 v0, 0x2

    if-gt p2, v0, :cond_13

    .line 842
    const/4 v1, 0x0

    .line 843
    .local v1, "output":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    .line 844
    const/4 v1, 0x2

    goto :goto_f

    .line 845
    :cond_b
    if-ne p2, v0, :cond_f

    .line 846
    const/16 v1, 0x8

    .line 849
    :cond_f
    :goto_f
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setMultiSoundTargetDevice(II)V

    .line 850
    return-void

    .line 839
    .end local v1    # "output":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMultiSoundDeviceVolume(III)Z
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 982
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_f

    .line 983
    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x0

    return v0

    .line 986
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    .line 987
    const/4 v0, 0x1

    return v0
.end method

.method public setMultiSoundOn(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 817
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    .line 818
    return-void
.end method

.method public setMultiSoundTargetDevice(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .line 867
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setAppDevice(IIZ)V

    .line 868
    return-void
.end method

.method public setSoundAssistantProperty(Ljava/lang/String;)V
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    .registers 7
    .param p1, "eventType"    # I
    .param p2, "broadcastIntent"    # Landroid/app/PendingIntent;

    .line 1164
    if-eqz p2, :cond_13

    .line 1168
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1170
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_6
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1173
    goto :goto_12

    .line 1171
    :catch_a
    move-exception v1

    .line 1172
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Dead object in setAppDevice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void

    .line 1165
    .end local v0    # "service":Landroid/media/IAudioService;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVoipExtraVolumeMode(Z)V
    .registers 4
    .param p1, "onOff"    # Z

    .line 1574
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 1575
    const-string/jumbo v1, "l_call_voip_extra_volume_enable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 1577
    .local v0, "param":Lcom/samsung/android/media/AudioParameter;
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 1578
    return-void
.end method

.method public setVolumeKeyMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 609
    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 610
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 615
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjust_media_volume_only="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public setVolumeMode(IZ)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "onOff"    # Z

    .line 707
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 708
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void

    .line 712
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "param":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 714
    return-void
.end method
