.class public Landroid/speech/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$InternalRecognitionListener;,
        Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;,
        Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;,
        Landroid/speech/SpeechRecognizer$InternalSupportCallback;,
        Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;,
        Landroid/speech/SpeechRecognizer$RecognitionError;,
        Landroid/speech/SpeechRecognizer$LanguageSwitchResult;,
        Landroid/speech/SpeechRecognizer$LanguageDetectionConfidenceLevel;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_SCORES:Ljava/lang/String; = "confidence_scores"

.field private static final DBG:Z = false

.field public static final DETECTED_LANGUAGE:Ljava/lang/String; = "detected_language"

.field public static final ERROR_AUDIO:I = 0x3

.field public static final ERROR_CANNOT_CHECK_SUPPORT:I = 0xe

.field public static final ERROR_CANNOT_LISTEN_TO_DOWNLOAD_EVENTS:I = 0xf

.field public static final ERROR_CLIENT:I = 0x5

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final ERROR_LANGUAGE_NOT_SUPPORTED:I = 0xc

.field public static final ERROR_LANGUAGE_UNAVAILABLE:I = 0xd

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final ERROR_NO_MATCH:I = 0x7

.field public static final ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final ERROR_SERVER:I = 0x4

.field public static final ERROR_SERVER_DISCONNECTED:I = 0xb

.field public static final ERROR_SPEECH_TIMEOUT:I = 0x6

.field public static final ERROR_TOO_MANY_REQUESTS:I = 0xa

.field public static final LANGUAGE_DETECTION_CONFIDENCE_LEVEL:Ljava/lang/String; = "language_detection_confidence_level"

.field public static final LANGUAGE_DETECTION_CONFIDENCE_LEVEL_CONFIDENT:I = 0x2

.field public static final LANGUAGE_DETECTION_CONFIDENCE_LEVEL_HIGHLY_CONFIDENT:I = 0x3

.field public static final LANGUAGE_DETECTION_CONFIDENCE_LEVEL_NOT_CONFIDENT:I = 0x1

.field public static final LANGUAGE_DETECTION_CONFIDENCE_LEVEL_UNKNOWN:I = 0x0

.field public static final LANGUAGE_SWITCH_RESULT:Ljava/lang/String; = "language_switch_result"

.field public static final LANGUAGE_SWITCH_RESULT_FAILED:I = 0x2

.field public static final LANGUAGE_SWITCH_RESULT_NOT_ATTEMPTED:I = 0x0

.field public static final LANGUAGE_SWITCH_RESULT_SKIPPED_NO_MODEL:I = 0x3

.field public static final LANGUAGE_SWITCH_RESULT_SUCCEEDED:I = 0x1

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_CHANGE_LISTENER:I = 0x4

.field private static final MSG_CHECK_RECOGNITION_SUPPORT:I = 0x6

.field private static final MSG_SET_TEMPORARY_ON_DEVICE_COMPONENT:I = 0x5

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x7

.field public static final RECOGNITION_PARTS:Ljava/lang/String; = "recognition_parts"

.field public static final RESULTS_ALTERNATIVES:Ljava/lang/String; = "results_alternatives"

.field public static final RESULTS_RECOGNITION:Ljava/lang/String; = "results_recognition"

.field private static final TAG:Ljava/lang/String; = "SpeechRecognizer"

.field public static final TOP_LOCALE_ALTERNATIVES:Ljava/lang/String; = "top_locale_alternatives"


# instance fields
.field private final mClientToken:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

.field private mManagerService:Landroid/speech/IRecognitionServiceManager;

.field private final mOnDevice:Z

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/speech/IRecognitionService;

.field private final mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer$InternalRecognitionListener;
    .registers 1

    iget-object p0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizer;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleCancelMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizer;->handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizer;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleSetTemporaryComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleStartListening(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizer;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleStopMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizer;->handleTriggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    .line 357
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    .line 360
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;-><init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener-IA;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    .line 362
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mClientToken:Landroid/os/IBinder;

    .line 369
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 370
    iput-object p2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    .line 372
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onDevice"    # Z

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    .line 357
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    .line 360
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;-><init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener-IA;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    .line 362
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mClientToken:Landroid/os/IBinder;

    .line 379
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 380
    iput-object v1, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    .line 381
    iput-boolean p2, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    .line 382
    return-void
.end method

.method private static checkIsCalledFromMainThread()V
    .registers 2

    .line 739
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 743
    return-void

    .line 740
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOpenConnection()Z
    .registers 3

    .line 864
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_6

    .line 865
    const/4 v0, 0x1

    return v0

    .line 867
    :cond_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 868
    const-string v0, "SpeechRecognizer"

    const-string/jumbo v1, "not connected to the recognition service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method private connectToSystemService()V
    .registers 6

    .line 895
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 896
    return-void

    .line 899
    :cond_7
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->getSpeechRecognizerComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 901
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-boolean v1, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    .line 902
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 903
    return-void

    .line 907
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mClientToken:Landroid/os/IBinder;

    new-instance v4, Landroid/speech/SpeechRecognizer$2;

    invoke-direct {v4, p0}, Landroid/speech/SpeechRecognizer$2;-><init>(Landroid/speech/SpeechRecognizer;)V

    invoke-interface {v2, v0, v3, v1, v4}, Landroid/speech/IRecognitionServiceManager;->createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_25

    .line 932
    goto :goto_29

    .line 930
    :catch_25
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 933
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public static createOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 497
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isOnDeviceRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 500
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0

    .line 498
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "On-device recognition is not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createOnDeviceTestingSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 514
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 437
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .line 475
    if-eqz p0, :cond_b

    .line 478
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 479
    new-instance v0, Landroid/speech/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Landroid/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-object v0

    .line 476
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSpeechRecognizerComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 971
    iget-boolean v0, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 972
    return-object v1

    .line 975
    :cond_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    .line 976
    return-object v0

    .line 979
    :cond_b
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "voice_recognition_service"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "serviceComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 983
    const-string v2, "SpeechRecognizer"

    const-string/jumbo v3, "no selected voice recognition service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 985
    return-object v1

    .line 988
    :cond_2d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private handleCancelMessage()V
    .registers 4

    .line 783
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 784
    return-void

    .line 787
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    .line 792
    goto :goto_1e

    .line 789
    :catch_10
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private handleChangeListener(Landroid/speech/RecognitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 875
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    .line 876
    return-void
.end method

.method private handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 8
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "recognitionSupportCallback"    # Landroid/speech/RecognitionSupportCallback;

    .line 815
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_30

    .line 819
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 821
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Landroid/speech/SpeechRecognizer$InternalSupportCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizer$InternalSupportCallback-IA;)V

    .line 819
    invoke-interface {v0, p1, v1, v2}, Landroid/speech/IRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_1f

    .line 827
    goto :goto_2f

    .line 824
    :catch_1f
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "checkRecognitionSupport() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    new-instance v1, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda1;-><init>(Landroid/speech/RecognitionSupportCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 828
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void

    .line 816
    :cond_30
    :goto_30
    return-void
.end method

.method private handleSetTemporaryComponent(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 800
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 801
    return-void

    .line 805
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionServiceManager;->setTemporaryComponent(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 808
    goto :goto_11

    .line 806
    :catch_d
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 809
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method private handleStartListening(Landroid/content/Intent;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 755
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 756
    return-void

    .line 759
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    .line 764
    goto :goto_24

    .line 761
    :catch_15
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "startListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method private handleStopMessage()V
    .registers 4

    .line 769
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 770
    return-void

    .line 773
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-interface {v0, v1}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 778
    goto :goto_1e

    .line 775
    :catch_f
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "stopListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 779
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private handleTriggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 9
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "modelDownloadListener"    # Landroid/speech/ModelDownloadListener;

    .line 834
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4d

    .line 839
    :cond_d
    const/4 v0, 0x0

    const-string v1, "SpeechRecognizer"

    if-nez p3, :cond_2c

    .line 841
    :try_start_12
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 842
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 841
    invoke-interface {v2, p1, v3, v0}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_2b

    .line 844
    :catch_1e
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "triggerModelDownload() without a listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 847
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    goto :goto_4c

    .line 852
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 853
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    new-instance v4, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;

    invoke-direct {v4, p2, p3, v0}, Landroid/speech/SpeechRecognizer$InternalModelDownloadListener;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizer$InternalModelDownloadListener-IA;)V

    .line 852
    invoke-interface {v2, p1, v3, v4}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3c} :catch_3d

    .line 859
    goto :goto_4c

    .line 856
    :catch_3d
    move-exception v0

    .line 857
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "triggerModelDownload() with a listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    new-instance v1, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda0;-><init>(Landroid/speech/ModelDownloadListener;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 861
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void

    .line 835
    :cond_4d
    :goto_4d
    return-void
.end method

.method public static isOnDeviceRecognitionAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 409
    nop

    .line 411
    const v0, 0x1040306

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 412
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 396
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2
.end method

.method static synthetic lambda$handleCheckRecognitionSupport$0(Landroid/speech/RecognitionSupportCallback;)V
    .registers 2
    .param p0, "recognitionSupportCallback"    # Landroid/speech/RecognitionSupportCallback;

    .line 826
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/speech/RecognitionSupportCallback;->onError(I)V

    return-void
.end method

.method static synthetic lambda$handleTriggerModelDownload$1(Landroid/speech/ModelDownloadListener;)V
    .registers 2
    .param p0, "modelDownloadListener"    # Landroid/speech/ModelDownloadListener;

    .line 858
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/speech/ModelDownloadListener;->onError(I)V

    return-void
.end method

.method private static lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 521
    if-eqz p0, :cond_c

    .line 524
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 525
    new-instance v0, Landroid/speech/SpeechRecognizer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Z)V

    return-object v0

    .line 522
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized maybeInitializeManagerService()Z
    .registers 5

    monitor-enter p0

    .line 939
    :try_start_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 940
    monitor-exit p0

    return v1

    .line 943
    :cond_8
    :try_start_8
    const-string/jumbo v0, "speech_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 944
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_21

    iget-boolean v2, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    if-eqz v2, :cond_21

    .line 945
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "speech_recognition"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    move-object v0, v2

    .line 947
    .end local p0    # "this":Landroid/speech/SpeechRecognizer;
    :cond_21
    invoke-static {v0}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    move-result-object v2

    iput-object v2, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    .line 949
    if-nez v2, :cond_34

    .line 950
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    if-eqz v1, :cond_31

    .line 951
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_36

    .line 953
    :cond_31
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 955
    :cond_34
    monitor-exit p0

    return v1

    .line 938
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private putMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 746
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_a

    .line 747
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_f

    .line 749
    :cond_a
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 751
    :goto_f
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 612
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 613
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 614
    return-void
.end method

.method public checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 7
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "supportListener"    # Landroid/speech/RecognitionSupportCallback;

    .line 629
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_13

    .line 641
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->connectToSystemService()V

    .line 643
    :cond_13
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs-IA;)V

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 645
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 880
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_c

    .line 882
    :try_start_4
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 885
    goto :goto_c

    .line 883
    :catch_b
    move-exception v0

    .line 888
    :cond_c
    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    .line 889
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 890
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v1, v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    .line 891
    return-void
.end method

.method public setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 538
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 539
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 540
    return-void
.end method

.method public setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 734
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    .line 735
    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 734
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .registers 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 553
    if-eqz p1, :cond_17

    .line 556
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 565
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_c

    .line 567
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->connectToSystemService()V

    .line 569
    :cond_c
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 570
    return-void

    .line 554
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopListening()V
    .registers 3

    .line 593
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 602
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 603
    return-void
.end method

.method public triggerModelDownload(Landroid/content/Intent;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 656
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_d

    .line 665
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->connectToSystemService()V

    .line 667
    :cond_d
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2, v2}, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs-IA;)V

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 670
    return-void
.end method

.method public triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 7
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/speech/ModelDownloadListener;

    .line 705
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_d

    .line 714
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->connectToSystemService()V

    .line 716
    :cond_d
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizer$ModelDownloadListenerArgs-IA;)V

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 719
    return-void
.end method
