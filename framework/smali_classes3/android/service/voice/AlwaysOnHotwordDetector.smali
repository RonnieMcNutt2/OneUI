.class public Landroid/service/voice/AlwaysOnHotwordDetector;
.super Landroid/service/voice/AbstractDetector;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;,
        Landroid/service/voice/AlwaysOnHotwordDetector$Callback;,
        Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParams;,
        Landroid/service/voice/AlwaysOnHotwordDetector$AudioCapabilities;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionModes;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionFlags;
    }
.end annotation


# static fields
.field public static final AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field static final DBG:Z = false

.field public static final MODEL_PARAM_THRESHOLD_FACTOR:I = 0x0

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final MSG_DETECTION_ERROR:I = 0x3

.field private static final MSG_DETECTION_HOTWORD_DETECTION_SERVICE_FAILURE:I = 0x9

.field private static final MSG_DETECTION_PAUSE:I = 0x4

.field private static final MSG_DETECTION_RESUME:I = 0x5

.field private static final MSG_DETECTION_SOUND_TRIGGER_FAILURE:I = 0xa

.field private static final MSG_DETECTION_UNKNOWN_FAILURE:I = 0xb

.field private static final MSG_HOTWORD_DETECTED:I = 0x2

.field private static final MSG_HOTWORD_REJECTED:I = 0x6

.field private static final MSG_HOTWORD_STATUS_REPORTED:I = 0x7

.field private static final MSG_PROCESS_RESTARTED:I = 0x8

.field public static final RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final RECOGNITION_FLAG_ENABLE_AUDIO_ECHO_CANCELLATION:I = 0x4

.field public static final RECOGNITION_FLAG_ENABLE_AUDIO_NOISE_SUPPRESSION:I = 0x8

.field public static final RECOGNITION_FLAG_NONE:I = 0x0

.field public static final RECOGNITION_FLAG_RUN_IN_BATTERY_SAVER:I = 0x10

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field static final SEND_ON_FAILURE_FOR_ASYNC_EXCEPTIONS:J = 0x10b7a7d9L

.field public static final STATE_ERROR:I = 0x3

.field public static final STATE_HARDWARE_UNAVAILABLE:I = -0x2

.field private static final STATE_INVALID:I = -0x3

.field public static final STATE_KEYPHRASE_ENROLLED:I = 0x2

.field public static final STATE_KEYPHRASE_UNENROLLED:I = 0x1

.field public static final STATE_KEYPHRASE_UNSUPPORTED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final STATE_NOT_READY:I = 0x0

.field private static final STATUS_ERROR:I = -0x80000000

.field private static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "AlwaysOnHotwordDetector"

.field static final THROW_ON_INITIALIZE_IF_NO_DSP:J = 0x100b2394L


# instance fields
.field private mAvailability:I

.field private final mBinder:Landroid/os/IBinder;

.field private final mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

.field private final mExternalExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

.field private mIsAvailabilityOverriddenByTestApi:Z

.field private final mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private final mLocale:Ljava/util/Locale;

.field private final mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

.field private final mSupportSandboxedDetectionService:Z

.field private final mText:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAvailability(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .registers 1

    iget p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExternalExecutor(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocale(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModelManagementService(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundTriggerSession(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmText(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/hardware/soundtrigger/KeyphraseMetadata;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-void
.end method

.method static bridge synthetic -$$Nest$msendUnknownFailure(Landroid/service/voice/AlwaysOnHotwordDetector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendUnknownFailure(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAndNotifyStateChangedLocked(Landroid/service/voice/AlwaysOnHotwordDetector;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZ)V
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .param p5, "keyphraseEnrollmentInfo"    # Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .param p6, "modelManagementService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p7, "targetSdkVersion"    # I
    .param p8, "supportSandboxedDetectionService"    # Z

    .line 857
    invoke-direct {p0, p6, p3, p4}, Landroid/service/voice/AbstractDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    .line 325
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mBinder:Landroid/os/IBinder;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 330
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 859
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    .line 860
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    .line 861
    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    .line 862
    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 863
    iput-object p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 864
    if-eqz p3, :cond_26

    move-object v1, p3

    goto :goto_34

    :cond_26
    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 865
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_34
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalExecutor:Ljava/util/concurrent/Executor;

    .line 866
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-direct {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    .line 867
    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 868
    iput-boolean p8, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    .line 869
    return-void
.end method

.method private detachSessionLocked()V
    .registers 2

    .line 1372
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    if-eqz v0, :cond_7

    .line 1373
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->detach()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1377
    :cond_7
    goto :goto_c

    .line 1375
    :catch_8
    move-exception v0

    .line 1376
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1378
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private getManageIntentLocked(I)Landroid/content/Intent;
    .registers 5
    .param p1, "action"    # I

    .line 1341
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 1347
    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_17

    .line 1349
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Managing the given keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1342
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getManageIntent called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getParameterLocked(I)I
    .registers 4
    .param p1, "modelParam"    # I

    .line 1543
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getParameter(II)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1544
    :catch_d
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getSupportedAudioCapabilitiesLocked()I
    .registers 3

    .line 1062
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    .line 1063
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    .line 1064
    .local v0, "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    if-eqz v0, :cond_d

    .line 1065
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_f

    return v1

    .line 1068
    :cond_d
    const/4 v1, 0x0

    return v1

    .line 1069
    .end local v0    # "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_f
    move-exception v0

    .line 1070
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getSupportedRecognitionModesLocked()I
    .registers 3

    .line 1026
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    .line 1032
    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-eqz v0, :cond_14

    .line 1037
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v0

    return v0

    .line 1033
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Getting supported recognition modes for the keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getSupportedRecognitionModes called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$initialize$0(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .registers 3
    .param p0, "prop"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 889
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    .line 890
    const-string/jumbo v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 889
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyStateChangedLocked()V
    .registers 3

    .line 1585
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1586
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1587
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1588
    return-void
.end method

.method private queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .registers 4
    .param p1, "modelParam"    # I

    .line 1553
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1554
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0

    .line 1556
    .local v0, "modelParamRange":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    if-nez v0, :cond_10

    .line 1557
    const/4 v1, 0x0

    return-object v1

    .line 1560
    :cond_10
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    invoke-direct {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 1561
    .end local v0    # "modelParamRange":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    :catch_16
    move-exception v0

    .line 1562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .registers 4
    .param p1, "soundTriggerFailure"    # Landroid/service/voice/SoundTriggerFailure;

    .line 1598
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1600
    return-void
.end method

.method private sendUnknownFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "failureMessage"    # Ljava/lang/String;

    .line 1593
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAvailabilityLocked(I)V

    .line 1594
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1595
    return-void
.end method

.method private setParameterLocked(II)I
    .registers 7
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 1527
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result v0

    .line 1530
    .local v0, "code":I
    if-eqz v0, :cond_27

    .line 1531
    const-string v1, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParameter failed with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    .line 1534
    :cond_27
    return v0

    .line 1535
    .end local v0    # "code":I
    :catch_28
    move-exception v0

    .line 1536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private startRecognitionLocked(I[B)I
    .registers 19
    .param p1, "recognitionFlags"    # I
    .param p2, "data"    # [B

    .line 1462
    move-object/from16 v1, p0

    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v0, v2, :cond_94

    const/4 v2, 0x3

    if-eq v0, v2, :cond_94

    .line 1468
    const/4 v2, 0x2

    if-ne v0, v2, :cond_8c

    .line 1473
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1475
    .local v8, "recognitionExtra":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v3, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v3

    iget-object v4, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1476
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v4

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    aput-object v2, v8, v5

    .line 1477
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2c

    move v3, v0

    goto :goto_2d

    :cond_2c
    move v3, v5

    .line 1479
    .local v3, "captureTriggerAudio":Z
    :goto_2d
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v5

    .line 1481
    .local v4, "allowMultipleTriggers":Z
    :goto_34
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_3a

    move v14, v0

    goto :goto_3b

    :cond_3a
    move v14, v5

    .line 1483
    .local v14, "runInBatterySaver":Z
    :goto_3b
    const/4 v0, 0x0

    .line 1484
    .local v0, "audioCapabilities":I
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_42

    .line 1485
    or-int/lit8 v0, v0, 0x1

    .line 1487
    :cond_42
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_4a

    .line 1488
    or-int/lit8 v0, v0, 0x2

    move v15, v0

    goto :goto_4b

    .line 1487
    :cond_4a
    move v15, v0

    .line 1493
    .end local v0    # "audioCapabilities":I
    .local v15, "audioCapabilities":I
    :goto_4b
    :try_start_4b
    iget-object v9, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1494
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v10

    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    new-instance v13, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-object v2, v13

    move-object v5, v8

    move-object/from16 v6, p2

    move v7, v15

    invoke-direct/range {v2 .. v7}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    .line 1493
    invoke-interface/range {v9 .. v14}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_69} :catch_86

    .line 1500
    .local v0, "code":I
    nop

    .line 1502
    if-eqz v0, :cond_85

    .line 1503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecognition() failed with error code "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AlwaysOnHotwordDetector"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_85
    return v0

    .line 1498
    .end local v0    # "code":I
    :catch_86
    move-exception v0

    .line 1499
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1469
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "captureTriggerAudio":Z
    .end local v4    # "allowMultipleTriggers":Z
    .end local v8    # "recognitionExtra":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .end local v14    # "runInBatterySaver":Z
    .end local v15    # "audioCapabilities":I
    :cond_8c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "startRecognition called on an invalid detector or error state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stopRecognitionLocked()I
    .registers 4

    .line 1512
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_2b

    .line 1516
    .local v0, "code":I
    nop

    .line 1518
    if-eqz v0, :cond_2a

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecognition() failed with error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlwaysOnHotwordDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_2a
    return v0

    .line 1514
    .end local v0    # "code":I
    :catch_2b
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private updateAndNotifyStateChangedLocked(I)V
    .registers 2
    .param p1, "availability"    # I

    .line 1568
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAvailabilityLocked(I)V

    .line 1569
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 1570
    return-void
.end method

.method private updateAvailabilityLocked(I)V
    .registers 3
    .param p1, "availability"    # I

    .line 1578
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    if-nez v0, :cond_6

    .line 1579
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 1581
    :cond_6
    return-void
.end method


# virtual methods
.method public createEnrollIntent()Landroid/content/Intent;
    .registers 3

    .line 1290
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1292
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public createReEnrollIntent()Landroid/content/Intent;
    .registers 3

    .line 1334
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1336
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public createUnEnrollIntent()Landroid/content/Intent;
    .registers 3

    .line 1312
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    const/4 v1, 0x2

    :try_start_4
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1314
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public destroy()V
    .registers 3

    .line 1359
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_3
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->detachSessionLocked()V

    .line 1362
    const/4 v1, -0x3

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 1363
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 1364
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 1365
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    .line 1366
    invoke-super {p0}, Landroid/service/voice/AbstractDetector;->destroy()V

    .line 1367
    return-void

    .line 1365
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1870
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1871
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Text="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Locale="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1873
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Availability="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1874
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KeyphraseMetadata="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1875
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "EnrollmentInfo="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1876
    monitor-exit v0

    .line 1877
    return-void

    .line 1876
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1851
    const-wide/32 v0, 0xb847d3f

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1852
    instance-of v0, p1, Landroid/service/voice/AlwaysOnHotwordDetector;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1853
    return v1

    .line 1855
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 1856
    .local v0, "other":Landroid/service/voice/AlwaysOnHotwordDetector;
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1

    .line 1859
    .end local v0    # "other":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getParameter(I)I
    .registers 5
    .param p1, "modelParam"    # I

    .line 1232
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    .line 1238
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getParameterLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1234
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "getParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    throw v1

    .line 1239
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getSupportedAudioCapabilities()I
    .registers 3

    .line 1054
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_3
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedAudioCapabilitiesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1056
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getSupportedRecognitionModes()I
    .registers 3

    .line 1019
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedRecognitionModesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1021
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public hashCode()I
    .registers 3

    .line 1864
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 3
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 874
    return-void
.end method

.method initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    .registers 7
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "moduleProperties"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 878
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    if-eqz v0, :cond_a

    .line 879
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    .line 883
    :cond_a
    :try_start_a
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 884
    .local v0, "identity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 885
    if-nez p3, :cond_4a

    .line 886
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 887
    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v1

    .line 888
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/service/voice/AlwaysOnHotwordDetector$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/voice/AlwaysOnHotwordDetector$$ExternalSyntheticLambda0;-><init>()V

    .line 889
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 891
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 892
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-object p3, v1

    .line 893
    const-wide/32 v1, 0x100b2394

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_4a

    if-eqz p3, :cond_42

    goto :goto_4a

    .line 895
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No DSP module available to attach to"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p3    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    throw v1

    .line 898
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p3    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :cond_4a
    :goto_4a
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mBinder:Landroid/os/IBinder;

    .line 899
    invoke-interface {v1, v0, v2, p3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_54} :catch_61

    .line 903
    .end local v0    # "identity":Landroid/media/permission/Identity;
    nop

    .line 904
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 905
    return-void

    .line 901
    :catch_61
    move-exception v0

    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUsingSandboxedDetectionService()Z
    .registers 2

    .line 1385
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    return v0
.end method

.method onDetectorRemoteException()V
    .registers 5

    .line 1708
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const/4 v2, 0x7

    const-string v3, "Detector remote exception occurs"

    invoke-direct {v1, v2, v3}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1711
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1712
    return-void
.end method

.method onSoundModelsChanged()V
    .registers 8

    .line 1395
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_8e

    const/4 v2, -0x2

    if-eq v1, v2, :cond_8e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    goto/16 :goto_8e

    .line 1407
    :cond_10
    iget-boolean v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    if-eqz v3, :cond_1d

    .line 1408
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Suppressing system availability update. Availability is overridden by test API."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_97

    return-void

    .line 1417
    :cond_1d
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_82

    .line 1425
    :try_start_21
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    .line 1426
    .local v1, "result":I
    if-nez v1, :cond_33

    .line 1427
    new-instance v3, Landroid/service/voice/SoundTriggerFailure;

    const-string/jumbo v5, "stopped recognition because of enrollment update"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 1433
    :cond_33
    const-string v3, "AlwaysOnHotwordDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop recognition after enrollment update: code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4b} :catch_4c
    .catchall {:try_start_21 .. :try_end_4b} :catchall_97

    .line 1446
    .end local v1    # "result":I
    goto :goto_82

    .line 1435
    :catch_4c
    move-exception v1

    .line 1436
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4d
    const-string v3, "AlwaysOnHotwordDetector"

    const-string v5, "Failed to stop recognition after enrollment update"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    const-wide/32 v5, 0x10b7a7d9

    invoke-static {v5, v6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1438
    new-instance v3, Landroid/service/voice/SoundTriggerFailure;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop recognition after enrollment update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1440
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;I)V

    .line 1438
    invoke-direct {p0, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    goto :goto_80

    .line 1443
    :cond_7d
    invoke-direct {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    .line 1445
    :goto_80
    monitor-exit v0

    return-void

    .line 1450
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_82
    :goto_82
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1451
    monitor-exit v0

    .line 1452
    return-void

    .line 1399
    :cond_8e
    :goto_8e
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Received onSoundModelsChanged for an unsupported keyphrase/config or in the error state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    monitor-exit v0

    return-void

    .line 1451
    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_4d .. :try_end_99} :catchall_97

    throw v1
.end method

.method public overrideAvailability(I)V
    .registers 7
    .param p1, "availability"    # I

    .line 942
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_3
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 944
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 947
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-nez v2, :cond_22

    const/4 v2, 0x2

    if-ne p1, v2, :cond_22

    .line 948
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 949
    .local v2, "fakeSupportedLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v3, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2, v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Ljava/util/Set;I)V

    iput-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 953
    .end local v2    # "fakeSupportedLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_22
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 954
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public queryParameter(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .registers 5
    .param p1, "modelParam"    # I

    .line 1262
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    .line 1268
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1264
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "queryParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    throw v1

    .line 1269
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public resetAvailability()V
    .registers 3

    .line 965
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 967
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 969
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 970
    return-void

    .line 967
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setParameter(II)I
    .registers 6
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 1200
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1201
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    .line 1206
    invoke-direct {p0, p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->setParameterLocked(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1202
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    .end local p2    # "value":I
    throw v1

    .line 1207
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    .restart local p2    # "value":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public startRecognition()Z
    .registers 2

    .line 1135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognition(I)Z

    move-result v0

    return v0
.end method

.method public startRecognition(I)Z
    .registers 4
    .param p1, "recognitionFlags"    # I

    .line 1122
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I[B)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    .line 1124
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public startRecognition(I[B)Z
    .registers 5
    .param p1, "recognitionFlags"    # I
    .param p2, "data"    # [B

    .line 1096
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I[B)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1099
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public bridge synthetic startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .registers 4

    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/service/voice/AbstractDetector;->startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z

    move-result p1

    return p1
.end method

.method public stopRecognition()Z
    .registers 4

    .line 1158
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_21

    const/4 v2, 0x3

    if-eq v1, v2, :cond_21

    .line 1165
    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 1170
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    monitor-exit v0

    return v1

    .line 1166
    :cond_19
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v1

    .line 1160
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stopRecognition called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v1

    .line 1171
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public triggerHardwareRecognitionEventForTest(IIJZIIIZLandroid/media/AudioFormat;[BLjava/util/List;)V
    .registers 31
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "halEventReceivedMillis"    # J
    .param p5, "captureAvailable"    # Z
    .param p6, "captureSession"    # I
    .param p7, "captureDelayMs"    # I
    .param p8, "capturePreambleMs"    # I
    .param p9, "triggerInData"    # Z
    .param p10, "captureFormat"    # Landroid/media/AudioFormat;
    .param p11, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZIIIZ",
            "Landroid/media/AudioFormat;",
            "[B",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    .line 984
    .local p12, "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    move-object/from16 v1, p0

    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v2, "triggerHardwareRecognitionEventForTest()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v2, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 986
    :try_start_d
    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_5d

    const/4 v3, -0x3

    if-eq v0, v3, :cond_54

    const/4 v3, 0x3

    if-eq v0, v3, :cond_54

    .line 991
    :try_start_15
    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v14, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 994
    move-object/from16 v15, p12

    invoke-interface {v15, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    new-instance v16, Landroid/os/Binder;

    invoke-direct/range {v16 .. v16}, Landroid/os/Binder;-><init>()V

    move-object v3, v14

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v17, v14

    move-wide/from16 v14, p3

    invoke-direct/range {v3 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;JLandroid/os/IBinder;)V

    iget-object v3, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    .line 991
    move-object/from16 v4, v17

    invoke-interface {v0, v4, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4b} :catch_4e
    .catchall {:try_start_15 .. :try_end_4b} :catchall_5d

    .line 1000
    nop

    .line 1001
    :try_start_4c
    monitor-exit v2

    .line 1002
    return-void

    .line 998
    :catch_4e
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "status":I
    .end local p2    # "soundModelHandle":I
    .end local p3    # "halEventReceivedMillis":J
    .end local p5    # "captureAvailable":Z
    .end local p6    # "captureSession":I
    .end local p7    # "captureDelayMs":I
    .end local p8    # "capturePreambleMs":I
    .end local p9    # "triggerInData":Z
    .end local p10    # "captureFormat":Landroid/media/AudioFormat;
    .end local p11    # "data":[B
    .end local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    throw v3

    .line 987
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "status":I
    .restart local p2    # "soundModelHandle":I
    .restart local p3    # "halEventReceivedMillis":J
    .restart local p5    # "captureAvailable":Z
    .restart local p6    # "captureSession":I
    .restart local p7    # "captureDelayMs":I
    .restart local p8    # "capturePreambleMs":I
    .restart local p9    # "triggerInData":Z
    .restart local p10    # "captureFormat":Landroid/media/AudioFormat;
    .restart local p11    # "data":[B
    .restart local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "triggerHardwareRecognitionEventForTest called on an invalid detector or error state"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "status":I
    .end local p2    # "soundModelHandle":I
    .end local p3    # "halEventReceivedMillis":J
    .end local p5    # "captureAvailable":Z
    .end local p6    # "captureSession":I
    .end local p7    # "captureDelayMs":I
    .end local p8    # "capturePreambleMs":I
    .end local p9    # "triggerInData":Z
    .end local p10    # "captureFormat":Landroid/media/AudioFormat;
    .end local p11    # "data":[B
    .end local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    throw v0

    .line 1001
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "status":I
    .restart local p2    # "soundModelHandle":I
    .restart local p3    # "halEventReceivedMillis":J
    .restart local p5    # "captureAvailable":Z
    .restart local p6    # "captureSession":I
    .restart local p7    # "captureDelayMs":I
    .restart local p8    # "capturePreambleMs":I
    .restart local p9    # "triggerInData":Z
    .restart local p10    # "captureFormat":Landroid/media/AudioFormat;
    .restart local p11    # "data":[B
    .restart local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    :catchall_5d
    move-exception v0

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public final updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 6
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 917
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_3
    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    if-eqz v1, :cond_1d

    .line 922
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_14

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 926
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_26

    .line 928
    invoke-super {p0, p1, p2}, Landroid/service/voice/AbstractDetector;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 929
    return-void

    .line 923
    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw v1

    .line 919
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called, but it doesn\'t support hotword detection service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw v1

    .line 926
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v1
.end method
