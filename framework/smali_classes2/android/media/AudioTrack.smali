.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$TunerConfiguration;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnCodecFormatChangedListener;,
        Landroid/media/AudioTrack$StreamEventCbInfo;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$StreamEventHandler;,
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$DualMonoMode;,
        Landroid/media/AudioTrack$SupplementaryAudioPlacement;,
        Landroid/media/AudioTrack$EncapsulationMetadataType;,
        Landroid/media/AudioTrack$EncapsulationMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field private static final CHANNEL_PAIR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUAL_MONO_MODE_LL:I = 0x2

.field public static final DUAL_MONO_MODE_LR:I = 0x1

.field public static final DUAL_MONO_MODE_OFF:I = 0x0

.field public static final DUAL_MONO_MODE_RR:I = 0x3

.field public static final ENCAPSULATION_METADATA_TYPE_DVB_AD_DESCRIPTOR:I = 0x2

.field public static final ENCAPSULATION_METADATA_TYPE_FRAMEWORK_TUNER:I = 0x1

.field public static final ENCAPSULATION_METADATA_TYPE_NONE:I = 0x0

.field public static final ENCAPSULATION_METADATA_TYPE_SUPPLEMENTARY_AUDIO_PLACEMENT:I = 0x3

.field public static final ENCAPSULATION_MODE_ELEMENTARY_STREAM:I = 0x1

.field public static final ENCAPSULATION_MODE_HANDLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENCAPSULATION_MODE_NONE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field private static final HEADER_V2_SIZE_BYTES:F = 20.0f

.field private static final MAX_AUDIO_DESCRIPTION_MIX_LEVEL:F = 48.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_CAN_WRITE_MORE_DATA:I = 0x9

.field private static final NATIVE_EVENT_CODEC_FORMAT_CHANGE:I = 0x64

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_IAUDIOTRACK:I = 0x6

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field private static final NATIVE_EVENT_STREAM_END:I = 0x7

.field public static final PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final PERFORMANCE_MODE_NONE:I = 0x0

.field public static final PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PAUSED_STOPPING:I = 0x5

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final PLAYSTATE_STOPPING:I = 0x4

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final SUPPLEMENTARY_AUDIO_PLACEMENT_LEFT:I = 0x1

.field public static final SUPPLEMENTARY_AUDIO_PLACEMENT_NORMAL:I = 0x0

.field public static final SUPPLEMENTARY_AUDIO_PLACEMENT_RIGHT:I = 0x2

.field private static final SUPPORTED_OUT_CHANNELS:I = 0xffffffc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private final mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/Utils$ListenerList<",
            "Landroid/media/AudioMetadataReadMap;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

.field private mDataLoadMode:I

.field private mEnableSelfRoutingMonitor:Z

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mOffloadDelayFrames:I

.field private mOffloadEosPending:Z

.field private mOffloadPaddingFrames:I

.field private mOffloaded:Z

.field private mOffset:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamEventCbInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AudioTrack$StreamEventCbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStreamEventCbLock:Ljava/lang/Object;

.field private volatile mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

.field private mStreamEventHandlerThread:Landroid/os/HandlerThread;

.field private mStreamType:I


# direct methods
.method public static synthetic $r8$lambda$J-qjYj62yEgPtw02E7_Z8olLzLE(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmInitializationLooper(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffloadEosPending(Landroid/media/AudioTrack;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayState(Landroid/media/AudioTrack;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioTrack;->mPlayState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayStateLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamEventCbInfoList(Landroid/media/AudioTrack;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamEventCbLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAvSyncBytesRemaining(Landroid/media/AudioTrack;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAvSyncHeader(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOffloadEosPending(Landroid/media/AudioTrack;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlayState(Landroid/media/AudioTrack;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioTrack;->mPlayState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mnative_start(Landroid/media/AudioTrack;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartImpl(Landroid/media/AudioTrack;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioTrack;Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smshouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 18

    .line 1935
    const-string v0, "front"

    .line 1936
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "back"

    .line 1938
    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "front of center"

    .line 1940
    const/16 v5, 0x300

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "side"

    .line 1942
    const/16 v7, 0x1800

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "top front"

    .line 1943
    const v9, 0x14000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "top back"

    .line 1945
    const/high16 v11, 0xa0000

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "top side"

    .line 1947
    const/high16 v13, 0x300000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "bottom front"

    .line 1949
    const/high16 v15, 0x1400000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "front wide"

    .line 1951
    const/high16 v17, 0xc000000

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1935
    invoke-static/range {v0 .. v17}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 696
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 698
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 755
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 756
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 759
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 760
    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 761
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 755
    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 765
    const-string v0, "AudioTrack"

    const-string v1, "AudioTrack()"

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method constructor <init>(J)V
    .registers 8
    .param p1, "nativeTrackInJavaObj"    # J

    .line 924
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 517
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 524
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 529
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 535
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 536
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 553
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 557
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 566
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 572
    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 578
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 582
    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 597
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 601
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 605
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 609
    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 613
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 617
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 621
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 627
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3743
    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3845
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3966
    new-instance v1, Landroid/media/Utils$ListenerList;

    invoke-direct {v1}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4146
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4147
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 927
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 928
    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 932
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v3

    .local v4, "looper":Landroid/os/Looper;
    if-nez v3, :cond_6f

    .line 933
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 935
    :cond_6f
    iput-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 938
    cmp-long v1, p1, v1

    if-eqz v1, :cond_7c

    .line 939
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 940
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_7e

    .line 942
    :cond_7c
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 944
    :goto_7e
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V
    .registers 41
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/media/AudioAttributes;
    .param p3, "format"    # Landroid/media/AudioFormat;
    .param p4, "bufferSizeInBytes"    # I
    .param p5, "mode"    # I
    .param p6, "sessionId"    # I
    .param p7, "offload"    # Z
    .param p8, "encapsulationMode"    # I
    .param p9, "tunerConfiguration"    # Landroid/media/AudioTrack$TunerConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 809
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v11, p4

    move/from16 v10, p6

    const/4 v0, 0x1

    invoke-direct {v15, v12, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 512
    const/4 v9, 0x0

    iput v9, v15, Landroid/media/AudioTrack;->mState:I

    .line 517
    iput v0, v15, Landroid/media/AudioTrack;->mPlayState:I

    .line 524
    iput-boolean v9, v15, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 529
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 535
    iput v9, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 536
    iput v9, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 553
    iput v0, v15, Landroid/media/AudioTrack;->mChannelCount:I

    .line 557
    const/4 v1, 0x4

    iput v1, v15, Landroid/media/AudioTrack;->mChannelMask:I

    .line 566
    const/4 v2, 0x3

    iput v2, v15, Landroid/media/AudioTrack;->mStreamType:I

    .line 572
    iput v0, v15, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 578
    iput v1, v15, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 582
    iput v9, v15, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 597
    iput v9, v15, Landroid/media/AudioTrack;->mSessionId:I

    .line 601
    const/4 v2, 0x0

    iput-object v2, v15, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 605
    iput v9, v15, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 609
    iput v9, v15, Landroid/media/AudioTrack;->mOffset:I

    .line 613
    iput-boolean v9, v15, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 617
    iput v9, v15, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 621
    iput v9, v15, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 627
    sget-object v3, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v3, v15, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3743
    iput-object v2, v15, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3845
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3966
    new-instance v2, Landroid/media/Utils$ListenerList;

    invoke-direct {v2}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4146
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4147
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 812
    iput-object v12, v15, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    .line 814
    if-eqz v13, :cond_204

    .line 819
    iget-object v2, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v8, p5

    invoke-static {v2, v13, v11, v8}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 820
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    iget-object v3, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v3, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 821
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x200

    and-int/lit16 v3, v3, -0x101

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 824
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 829
    :cond_8a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .local v3, "looper":Landroid/os/Looper;
    if-nez v2, :cond_97

    .line 830
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v7, v3

    goto :goto_98

    .line 829
    :cond_97
    move-object v7, v3

    .line 833
    .end local v3    # "looper":Landroid/os/Looper;
    .local v7, "looper":Landroid/os/Looper;
    :goto_98
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    .line 834
    .local v2, "rate":I
    if-nez v2, :cond_a2

    .line 835
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_a4

    .line 834
    :cond_a2
    move/from16 v18, v2

    .line 838
    .end local v2    # "rate":I
    .local v18, "rate":I
    :goto_a4
    const/4 v2, 0x0

    .line 839
    .local v2, "channelIndexMask":I
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_b4

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    move/from16 v19, v2

    goto :goto_b6

    .line 839
    :cond_b4
    move/from16 v19, v2

    .line 843
    .end local v2    # "channelIndexMask":I
    .local v19, "channelIndexMask":I
    :goto_b6
    const/4 v2, 0x0

    .line 844
    .local v2, "channelMask":I
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_c5

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    move/from16 v20, v2

    goto :goto_ce

    .line 847
    :cond_c5
    if-nez v19, :cond_cc

    .line 848
    const/16 v2, 0xc

    move/from16 v20, v2

    goto :goto_ce

    .line 847
    :cond_cc
    move/from16 v20, v2

    .line 851
    .end local v2    # "channelMask":I
    .local v20, "channelMask":I
    :goto_ce
    const/4 v1, 0x1

    .line 852
    .local v1, "encoding":I
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_dd

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    move/from16 v21, v1

    goto :goto_df

    .line 852
    :cond_dd
    move/from16 v21, v1

    .line 855
    .end local v1    # "encoding":I
    .local v21, "encoding":I
    :goto_df
    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v19

    move/from16 v5, v21

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 856
    move/from16 v6, p7

    iput-boolean v6, v15, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 857
    const/4 v1, -0x1

    iput v1, v15, Landroid/media/AudioTrack;->mStreamType:I

    .line 859
    invoke-direct {v15, v11}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 861
    iput-object v7, v15, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 863
    if-ltz v10, :cond_1e9

    .line 867
    iget v1, v15, Landroid/media/AudioTrack;->mSampleRate:I

    filled-new-array {v1}, [I

    move-result-object v1

    move-object/from16 v22, v1

    .line 868
    .local v22, "sampleRate":[I
    new-array v5, v0, [I

    .line 869
    .local v5, "session":[I
    invoke-static {v14, v10}, Landroid/media/AudioTrack;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result v1

    aput v1, v5, v9

    .line 871
    if-nez v14, :cond_113

    .line 872
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_117

    :cond_113
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    :goto_117
    move-object/from16 v23, v1

    .line 875
    .local v23, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v24

    .line 876
    .local v24, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_11d
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v4, v15, Landroid/media/AudioTrack;->mChannelMask:I

    iget v1, v15, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v9, v15, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v0, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v10, v15, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 879
    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v17

    const-wide/16 v25, 0x0

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v27
    :try_end_138
    .catchall {:try_start_11d .. :try_end_138} :catchall_1d6

    .line 876
    move/from16 v28, v1

    move-object/from16 v1, p0

    move/from16 v29, v4

    move-object/from16 v4, v22

    move-object/from16 v30, v5

    .end local v5    # "session":[I
    .local v30, "session":[I
    move/from16 v5, v29

    move/from16 v6, v28

    move-object/from16 v28, v7

    .end local v7    # "looper":Landroid/os/Looper;
    .local v28, "looper":Landroid/os/Looper;
    move v7, v9

    move v8, v0

    const/4 v0, 0x0

    move v9, v10

    move-object/from16 v10, v30

    move-object/from16 v11, v17

    move-wide/from16 v12, v25

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, v27

    :try_start_15a
    invoke-direct/range {v1 .. v17}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 881
    .local v1, "initResult":I
    if-eqz v1, :cond_182

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_17c
    .catchall {:try_start_15a .. :try_end_17c} :catchall_1d1

    .line 885
    if-eqz v24, :cond_181

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 883
    :cond_181
    return-void

    .line 885
    .end local v1    # "initResult":I
    :cond_182
    if-eqz v24, :cond_187

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 887
    .end local v24    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_187
    aget v1, v22, v0

    move-object/from16 v2, p0

    iput v1, v2, Landroid/media/AudioTrack;->mSampleRate:I

    .line 888
    aget v0, v30, v0

    iput v0, v2, Landroid/media/AudioTrack;->mSessionId:I

    .line 892
    iget-object v0, v2, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1bb

    .line 894
    iget v0, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 895
    iget v0, v2, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    .local v0, "frameSizeInBytes":I
    goto :goto_1ae

    .line 897
    .end local v0    # "frameSizeInBytes":I
    :cond_1ad
    const/4 v0, 0x1

    .line 899
    .restart local v0    # "frameSizeInBytes":I
    :goto_1ae
    const/high16 v1, 0x41a00000    # 20.0f

    int-to-float v3, v0

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    mul-int/2addr v1, v0

    iput v1, v2, Landroid/media/AudioTrack;->mOffset:I

    .line 902
    .end local v0    # "frameSizeInBytes":I
    :cond_1bb
    iget v0, v2, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_1c3

    .line 903
    const/4 v0, 0x2

    iput v0, v2, Landroid/media/AudioTrack;->mState:I

    goto :goto_1c6

    .line 905
    :cond_1c3
    const/4 v0, 0x1

    iput v0, v2, Landroid/media/AudioTrack;->mState:I

    .line 908
    :goto_1c6
    iget v0, v2, Landroid/media/AudioTrack;->mSessionId:I

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 909
    iget v0, v2, Landroid/media/AudioTrack;->mPlayerIId:I

    invoke-direct {v2, v0}, Landroid/media/AudioTrack;->native_setPlayerIId(I)V

    .line 910
    return-void

    .line 875
    .restart local v24    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_1d1
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    goto :goto_1dd

    .end local v28    # "looper":Landroid/os/Looper;
    .end local v30    # "session":[I
    .restart local v5    # "session":[I
    .restart local v7    # "looper":Landroid/os/Looper;
    :catchall_1d6
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v28, v7

    move-object v2, v15

    move-object v1, v0

    .end local v5    # "session":[I
    .end local v7    # "looper":Landroid/os/Looper;
    .restart local v28    # "looper":Landroid/os/Looper;
    .restart local v30    # "session":[I
    :goto_1dd
    if-eqz v24, :cond_1e8

    :try_start_1df
    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1e2
    .catchall {:try_start_1df .. :try_end_1e2} :catchall_1e3

    goto :goto_1e8

    :catchall_1e3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e8
    :goto_1e8
    throw v1

    .line 864
    .end local v22    # "sampleRate":[I
    .end local v23    # "attributionSource":Landroid/content/AttributionSource;
    .end local v24    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    .end local v28    # "looper":Landroid/os/Looper;
    .end local v30    # "session":[I
    .restart local v7    # "looper":Landroid/os/Looper;
    :cond_1e9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    .end local v7    # "looper":Landroid/os/Looper;
    .end local v18    # "rate":I
    .end local v19    # "channelIndexMask":I
    .end local v20    # "channelMask":I
    .end local v21    # "encoding":I
    :cond_204
    move v3, v10

    move-object v2, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;Landroid/media/AudioTrack-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .registers 16
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 801
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    .line 803
    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .registers 5
    .param p1, "audioBufferSize"    # I

    .line 2012
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2013
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    .local v0, "frameSizeInBytes":I
    goto :goto_13

    .line 2015
    .end local v0    # "frameSizeInBytes":I
    :cond_12
    const/4 v0, 0x1

    .line 2017
    .restart local v0    # "frameSizeInBytes":I
    :goto_13
    rem-int v1, p1, v0

    if-nez v1, :cond_21

    const/4 v1, 0x1

    if-lt p1, v1, :cond_21

    .line 2021
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 2022
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 2023
    return-void

    .line 2018
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private audioParamCheck(IIIII)V
    .registers 13
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .line 1849
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_8

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_a

    :cond_8
    if-nez p1, :cond_102

    .line 1855
    :cond_a
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1857
    const/16 v0, 0xd

    const/16 v1, 0xc

    if-ne p4, v0, :cond_3a

    if-eq p2, v1, :cond_3a

    .line 1859
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3a

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENCODING_IEC61937 is configured with channel mask as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", which is not 2 or 8 channels"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_3a
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 1868
    const/4 v0, 0x0

    const-string v2, " for encoding "

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_11c

    .line 1881
    if-nez p2, :cond_56

    if-eqz p3, :cond_56

    .line 1882
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1883
    goto :goto_64

    .line 1877
    :sswitch_4a
    const/4 v4, 0x2

    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1878
    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1879
    goto :goto_64

    .line 1872
    :sswitch_50
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1873
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1874
    goto :goto_64

    .line 1885
    :cond_56
    invoke-static {p2, p4}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1890
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1891
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1894
    :goto_64
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1895
    if-eqz p3, :cond_b6

    .line 1897
    const v1, 0xffffff

    .line 1898
    .local v1, "fullIndexMask":I
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 1899
    .local v4, "channelIndexCount":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    if-nez v5, :cond_80

    .line 1900
    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v5

    if-eqz v5, :cond_7e

    sget v5, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    if-gt v4, v5, :cond_80

    :cond_7e
    move v0, v3

    goto :goto_81

    :cond_80
    nop

    .line 1902
    .local v0, "accepted":Z
    :goto_81
    if-eqz v0, :cond_95

    .line 1907
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_8a

    .line 1908
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_b6

    .line 1909
    :cond_8a
    if-ne v2, v4, :cond_8d

    goto :goto_b6

    .line 1910
    :cond_8d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1903
    :cond_95
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported channel index mask configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1916
    .end local v0    # "accepted":Z
    .end local v1    # "fullIndexMask":I
    .end local v4    # "channelIndexCount":I
    :cond_b6
    :goto_b6
    if-ne p4, v3, :cond_b9

    .line 1917
    const/4 p4, 0x2

    .line 1920
    :cond_b9
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1923
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1927
    if-eq p5, v3, :cond_c5

    if-nez p5, :cond_ce

    :cond_c5
    if-eq p5, v3, :cond_d6

    .line 1928
    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    goto :goto_d6

    .line 1929
    :cond_ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1931
    :cond_d6
    :goto_d6
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 1932
    return-void

    .line 1921
    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported audio encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1886
    :cond_e1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel mask configuration "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1852
    :cond_102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_50
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_50
        0xc -> :sswitch_4a
    .end sparse-switch
.end method

.method private beginStreamEventHandling()V
    .registers 3

    .line 4244
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    .line 4245
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.media.AudioTrack.StreamEvent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4246
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4247
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4248
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1f

    .line 4249
    new-instance v1, Landroid/media/AudioTrack$StreamEventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$StreamEventHandler;-><init>(Landroid/media/AudioTrack;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4252
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1f
    return-void
.end method

.method private blockUntilOffloadDrain(I)Z
    .registers 6
    .param p1, "writeMode"    # I

    .line 3666
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3667
    :goto_3
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_f

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    goto :goto_f

    .line 3676
    :cond_d
    monitor-exit v0

    return v3

    .line 3668
    :cond_f
    :goto_f
    if-ne p1, v3, :cond_14

    .line 3669
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    const/4 v0, 0x0

    return v0

    .line 3672
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1a
    .catchall {:try_start_14 .. :try_end_19} :catchall_1c

    goto :goto_1b

    .line 3673
    :catch_1a
    move-exception v1

    .line 3674
    :goto_1b
    goto :goto_3

    .line 3677
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private broadcastRoutingChange()V
    .registers 4

    .line 3950
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3951
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseUpdateDeviceId(Landroid/media/AudioDeviceInfo;)V

    .line 3952
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3953
    :try_start_d
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3954
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 3955
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_17

    .line 3956
    :cond_27
    monitor-exit v0

    .line 3957
    return-void

    .line 3956
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static clampGainOrLevel(F)F
    .registers 2
    .param p0, "gainOrLevel"    # F

    .line 2680
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2683
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_d

    .line 2684
    const/4 p0, 0x0

    goto :goto_15

    .line 2685
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_15

    .line 2686
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2688
    :cond_15
    :goto_15
    return p0

    .line 2681
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private endStreamEventHandling()V
    .registers 2

    .line 4256
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_a

    .line 4257
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 4258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4260
    :cond_a
    return-void
.end method

.method public static getMaxVolume()F
    .registers 1

    .line 2083
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .registers 7
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .line 2484
    const/4 v0, 0x0

    .line 2485
    .local v0, "channelCount":I
    const/4 v1, -0x2

    sparse-switch p1, :sswitch_data_5a

    .line 2495
    invoke-static {p1, p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2496
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2497
    return v1

    .line 2492
    :sswitch_11
    const/4 v0, 0x2

    .line 2493
    goto :goto_19

    .line 2488
    :sswitch_13
    const/4 v0, 0x1

    .line 2489
    goto :goto_19

    .line 2499
    :cond_15
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 2503
    :goto_19
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2504
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2505
    return v1

    .line 2510
    :cond_25
    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p0, v2, :cond_3c

    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p0, v2, :cond_2e

    goto :goto_3c

    .line 2516
    :cond_2e
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 2517
    .local v1, "size":I
    if-gtz v1, :cond_3b

    .line 2518
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2519
    const/4 v2, -0x1

    return v2

    .line 2522
    :cond_3b
    return v1

    .line 2512
    .end local v1    # "size":I
    :cond_3c
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2513
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        0x2 -> :sswitch_13
        0x3 -> :sswitch_11
        0x4 -> :sswitch_13
        0xc -> :sswitch_11
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .registers 1

    .line 2071
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 2457
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method public static isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .registers 9
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1604
    if-eqz p0, :cond_2d

    .line 1607
    if-eqz p1, :cond_25

    .line 1610
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 1611
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 1612
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v6

    .line 1610
    invoke-static/range {v0 .. v6}, Landroid/media/AudioTrack;->native_is_direct_output_supported(IIIIIII)Z

    move-result v0

    return v0

    .line 1608
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1605
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isMultichannelConfigSupported(II)Z
    .registers 10
    .param p0, "channelConfig"    # I
    .param p1, "encoding"    # I

    .line 1961
    const v0, 0xffffffc

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_d

    .line 1962
    const-string v0, "Channel configuration features unsupported channels"

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1963
    return v1

    .line 1965
    :cond_d
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 1968
    .local v0, "channelCount":I
    :try_start_11
    invoke-static {p1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1969
    sget v2, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_19} :catch_ad

    goto :goto_1c

    .line 1970
    :cond_1a
    const/16 v2, 0x18

    :goto_1c
    nop

    .line 1974
    .local v2, "channelCountLimit":I
    nop

    .line 1975
    if-le v0, v2, :cond_51

    .line 1976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel configuration contains too many channels for encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1978
    return v1

    .line 1983
    :cond_51
    const/16 v3, 0xc

    .line 1985
    .local v3, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_5f

    .line 1986
    const-string v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1987
    return v1

    .line 1990
    :cond_5f
    sget-object v4, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1991
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1992
    .local v6, "positionPair":I
    and-int v7, p0, v6

    if-eqz v7, :cond_aa

    and-int v7, p0, v6

    if-eq v7, v6, :cond_aa

    .line 1994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel pair ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") cannot be used independently"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1995
    return v1

    .line 1997
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "positionPair":I
    :cond_aa
    goto :goto_69

    .line 1998
    :cond_ab
    const/4 v1, 0x1

    return v1

    .line 1971
    .end local v2    # "channelCountLimit":I
    .end local v3    # "frontPair":I
    :catch_ad
    move-exception v2

    .line 1972
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1973
    return v1
.end method

.method private static isValidAudioDescriptionMixLevel(F)Z
    .registers 2
    .param p0, "level"    # F

    .line 1630
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_e

    const/high16 v0, 0x42400000    # 48.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isValidDualMonoMode(I)Z
    .registers 2
    .param p0, "dualMonoMode"    # I

    .line 1687
    packed-switch p0, :pswitch_data_8

    .line 1694
    const/4 v0, 0x0

    return v0

    .line 1692
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;
    .param p2, "eventCode"    # I
    .param p3, "readMap"    # Landroid/media/AudioMetadataReadMap;

    .line 4003
    invoke-interface {p1, p0, p3}, Landroid/media/AudioTrack$OnCodecFormatChangedListener;->onCodecFormatChanged(Landroid/media/AudioTrack;Landroid/media/AudioMetadataReadMap;)V

    .line 4004
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4550
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4554
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    return-void
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native native_getPortId()I
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getStartThresholdInFrames()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private native native_get_audio_description_mix_level_db([F)I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private native native_get_dual_mono_mode([I)I
.end method

.method private final native native_get_flags()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private static native native_is_direct_output_supported(IIIIIII)Z
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private native native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private native native_setPlayerIId(I)V
.end method

.method private final native native_setPresentation(II)I
.end method

.method private native native_setStartThresholdInFrames(I)I
.end method

.method private final native native_setVolume(FF)V
.end method

.method private native native_set_audio_description_mix_level_db(F)I
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private native native_set_delay_padding(II)V
.end method

.method private native native_set_dual_mono_mode(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 10
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 4376
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 4377
    .local v0, "track":Landroid/media/AudioTrack;
    if-nez v0, :cond_c

    .line 4378
    return-void

    .line 4381
    :cond_c
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_14

    .line 4382
    invoke-direct {v0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 4383
    return-void

    .line 4386
    :cond_14
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3a

    .line 4387
    move-object v1, p4

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 4388
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4389
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4390
    invoke-static {v1}, Landroid/media/AudioMetadata;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;

    move-result-object v2

    .line 4391
    .local v2, "audioMetaData":Landroid/media/AudioMetadataReadMap;
    if-nez v2, :cond_33

    .line 4392
    const-string v3, "android.media.AudioTrack"

    const-string v4, "Unable to get audio metadata from byte buffer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    return-void

    .line 4395
    :cond_33
    iget-object v3, v0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/media/Utils$ListenerList;->notify(ILjava/lang/Object;)V

    .line 4396
    return-void

    .line 4399
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "audioMetaData":Landroid/media/AudioMetadataReadMap;
    :cond_3a
    const/16 v1, 0x9

    if-eq p1, v1, :cond_57

    const/4 v1, 0x6

    if-eq p1, v1, :cond_57

    const/4 v1, 0x7

    if-ne p1, v1, :cond_45

    goto :goto_57

    .line 4406
    :cond_45
    iget-object v1, v0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 4407
    .local v1, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v1, :cond_56

    .line 4408
    invoke-virtual {v1}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 4409
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_56

    .line 4410
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4411
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4414
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    :cond_56
    return-void

    .line 4402
    .end local v1    # "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    :cond_57
    :goto_57
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->handleStreamEventFromNative(II)V

    .line 4403
    return-void
.end method

.method private static shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 14
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "mode"    # I

    .line 1791
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x318

    .line 1795
    .local v0, "flags":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_27

    if-nez v0, :cond_26

    .line 1797
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-ne v3, v1, :cond_26

    .line 1798
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eqz v3, :cond_27

    .line 1799
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    .line 1800
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_27

    .line 1801
    :cond_26
    return v2

    .line 1805
    :cond_27
    if-eqz p1, :cond_76

    .line 1806
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    if-eqz v3, :cond_76

    .line 1807
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1808
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1809
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    if-ge v3, v1, :cond_4a

    goto :goto_76

    .line 1814
    :cond_4a
    if-eq p3, v1, :cond_4d

    .line 1815
    return v2

    .line 1820
    :cond_4d
    if-eqz p2, :cond_75

    .line 1821
    const-wide/16 v3, 0x64

    .line 1822
    .local v3, "BUFFER_TARGET_MODE_STREAM_MS":J
    const/16 v5, 0x3e8

    .line 1823
    .local v5, "MILLIS_PER_SECOND":I
    nop

    .line 1825
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    .line 1826
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v8

    invoke-static {v8}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    .line 1827
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1829
    .local v6, "bufferTargetSize":J
    int-to-long v8, p2

    cmp-long v8, v8, v6

    if-gez v8, :cond_75

    .line 1830
    return v2

    .line 1834
    .end local v3    # "BUFFER_TARGET_MODE_STREAM_MS":J
    .end local v5    # "MILLIS_PER_SECOND":I
    .end local v6    # "bufferTargetSize":J
    :cond_75
    return v1

    .line 1810
    :cond_76
    :goto_76
    return v2
.end method

.method private startImpl()V
    .registers 5

    .line 3014
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3015
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v1, :cond_d

    .line 3016
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3018
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2b

    .line 3019
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3020
    const/4 v0, 0x0

    :try_start_12
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseStart(I)V

    .line 3021
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 3024
    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_21

    .line 3025
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_26

    .line 3027
    :cond_21
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3028
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 3030
    :goto_26
    monitor-exit v1

    .line 3031
    return-void

    .line 3030
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v0

    .line 3018
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 3827
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_11

    .line 3829
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_10

    .line 3833
    goto :goto_11

    .line 3830
    :catch_10
    move-exception v0

    .line 3835
    :cond_11
    :goto_11
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()Z
    .registers 4

    .line 3809
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_20

    .line 3811
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_11

    .line 3812
    const/4 v0, 0x1

    return v0

    .line 3813
    :catch_11
    move-exception v0

    .line 3814
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x3

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3815
    const-string v1, "testEnableNativeRoutingCallbacks failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3819
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private tryToDisableNativeRoutingCallback()V
    .registers 3

    .line 3795
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3796
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_d

    .line 3797
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3798
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3800
    :cond_d
    monitor-exit v0

    .line 3801
    return-void

    .line 3800
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2
    .param p1, "audioPolicy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 1471
    iput-object p1, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1472
    return-void
.end method


# virtual methods
.method public addOnCodecFormatChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    .line 3998
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    new-instance v1, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V

    invoke-virtual {v0, p2, p1, v1}, Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    .line 4006
    return-void
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3864
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3865
    if-eqz p1, :cond_28

    :try_start_5
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3866
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3867
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3869
    if-eqz p2, :cond_1b

    move-object v3, p2

    goto :goto_22

    :cond_1b
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_22
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3867
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3871
    :cond_28
    monitor-exit v0

    .line 3872
    return-void

    .line 3871
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3931
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3932
    return-void
.end method

.method public attachAuxEffect(I)I
    .registers 3
    .param p1, "effectId"    # I

    .line 3702
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3703
    const/4 v0, -0x3

    return v0

    .line 3705
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 2759
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method deferred_connect(J)V
    .registers 25
    .param p1, "nativeTrackInJavaObj"    # J

    .line 951
    move-object/from16 v15, p0

    iget v0, v15, Landroid/media/AudioTrack;->mState:I

    const/4 v14, 0x1

    if-eq v0, v14, :cond_89

    .line 954
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    move-object/from16 v18, v1

    .line 955
    .local v18, "session":[I
    filled-new-array {v0}, [I

    move-result-object v4

    .line 957
    .local v4, "rates":[I
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v19

    .line 958
    .local v19, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_1a
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 967
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const-string v21, ""
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_7a

    .line 958
    move-object/from16 v1, p0

    move-object/from16 v10, v18

    move-wide/from16 v12, p1

    move/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    :try_start_3f
    invoke-direct/range {v1 .. v17}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 973
    .local v1, "initResult":I
    if-eqz v1, :cond_67

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_3f .. :try_end_61} :catchall_76

    .line 977
    if-eqz v19, :cond_66

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 975
    :cond_66
    return-void

    .line 977
    .end local v1    # "initResult":I
    :cond_67
    if-eqz v19, :cond_6c

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 979
    .end local v19    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_6c
    aget v0, v18, v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioTrack;->mSessionId:I

    .line 981
    const/4 v0, 0x1

    iput v0, v1, Landroid/media/AudioTrack;->mState:I

    goto :goto_8a

    .line 956
    .restart local v19    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_76
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_7c

    :catchall_7a
    move-exception v0

    move-object v1, v15

    :goto_7c
    move-object v2, v0

    if-eqz v19, :cond_88

    :try_start_7f
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_88

    :catchall_83
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    throw v2

    .line 951
    .end local v4    # "rates":[I
    .end local v18    # "session":[I
    .end local v19    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_89
    move-object v1, v15

    .line 983
    :goto_8a
    return-void
.end method

.method protected finalize()V
    .registers 1

    .line 2056
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 2057
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 2058
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 2059
    return-void
.end method

.method public flush()V
    .registers 3

    .line 3106
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3108
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 3109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3110
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3113
    :cond_e
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3

    .line 2127
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_9

    .line 2130
    return-object v0

    .line 2128
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioDescriptionMixLeveldB()F
    .registers 6

    .line 1674
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v0, v1

    .line 1676
    .local v0, "level":[F
    :try_start_8
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_audio_description_mix_level_db([F)I

    move-result v3

    .line 1677
    .local v3, "status":I
    if-nez v3, :cond_1b

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1c

    if-eqz v4, :cond_17

    goto :goto_1b

    .line 1682
    .end local v3    # "status":I
    :cond_17
    nop

    .line 1683
    aget v1, v0, v1

    return v1

    .line 1678
    .restart local v3    # "status":I
    :cond_1b
    :goto_1b
    return v2

    .line 1680
    .end local v3    # "status":I
    :catch_1c
    move-exception v1

    .line 1681
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method

.method public getAudioFormat()I
    .registers 2

    .line 2138
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .line 2532
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .registers 2

    .line 2297
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .registers 2

    .line 2240
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .registers 2

    .line 2163
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .line 2188
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getDualMonoMode()I
    .registers 5

    .line 1737
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    .line 1739
    .local v1, "dualMonoMode":[I
    :try_start_5
    invoke-direct {p0, v1}, Landroid/media/AudioTrack;->native_get_dual_mono_mode([I)I

    move-result v2

    .line 1740
    .local v2, "status":I
    if-nez v2, :cond_18

    aget v3, v1, v0

    invoke-static {v3}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_19

    if-nez v3, :cond_14

    goto :goto_18

    .line 1745
    .end local v2    # "status":I
    :cond_14
    nop

    .line 1746
    aget v0, v1, v0

    return v0

    .line 1741
    .restart local v2    # "status":I
    :cond_18
    :goto_18
    return v0

    .line 1743
    .end local v2    # "status":I
    :catch_19
    move-exception v2

    .line 1744
    .local v2, "e":Ljava/lang/Exception;
    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .registers 3

    .line 2172
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 2173
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2174
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2175
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_18

    .line 2176
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 2178
    :cond_18
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1f

    .line 2179
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 2181
    :cond_1f
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .registers 2

    .line 2412
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 4289
    iget-object v0, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 2641
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2642
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method protected getNativeFrameCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2367
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .registers 2

    .line 2376
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getOffloadDelay()I
    .registers 3

    .line 1514
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1517
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1520
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    return v0

    .line 1518
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOffloadPadding()I
    .registers 3

    .line 1532
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1535
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1538
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    return v0

    .line 1536
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1533
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPerformanceMode()I
    .registers 3

    .line 2443
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    .line 2444
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    .line 2445
    const/4 v1, 0x1

    return v1

    .line 2446
    :cond_a
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_10

    .line 2447
    const/4 v1, 0x2

    return v1

    .line 2449
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public getPlayState()I
    .registers 3

    .line 2210
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2211
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    packed-switch v1, :pswitch_data_14

    .line 2217
    goto :goto_f

    .line 2215
    :pswitch_9
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    .line 2213
    :pswitch_c
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 2217
    :goto_f
    monitor-exit v0

    return v1

    .line 2219
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public getPlaybackHeadPosition()I
    .registers 2

    .line 2399
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .registers 2

    .line 2113
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .registers 2

    .line 2103
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .registers 2

    .line 2384
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 3775
    monitor-enter p0

    .line 3776
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 3777
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 3787
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 3788
    .local v0, "deviceId":I
    if-nez v0, :cond_8

    .line 3789
    const/4 v1, 0x0

    return-object v1

    .line 3791
    :cond_8
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method public getSampleRate()I
    .registers 2

    .line 2096
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getStartThresholdInFrames()I
    .registers 3

    .line 2350
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 2353
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_e

    .line 2356
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getStartThresholdInFrames()I

    move-result v0

    return v0

    .line 2354
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2351
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()I
    .registers 2

    .line 2200
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .registers 2

    .line 2150
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .registers 7
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 2577
    if-eqz p1, :cond_17

    .line 2581
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2582
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2583
    .local v1, "ret":I
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 2584
    return v2

    .line 2586
    :cond_d
    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2587
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2588
    return v2

    .line 2578
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .registers 6
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 2619
    if-eqz p1, :cond_14

    .line 2623
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2624
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2625
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2626
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2627
    return v1

    .line 2620
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getUnderrunCount()I
    .registers 2

    .line 2429
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method handleStreamEventFromNative(II)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # I

    .line 4163
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    if-nez v0, :cond_5

    .line 4164
    return-void

    .line 4166
    :cond_5
    packed-switch p1, :pswitch_data_38

    :pswitch_8
    goto :goto_37

    .line 4169
    :pswitch_9
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->removeMessages(I)V

    .line 4170
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4171
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4170
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4173
    goto :goto_37

    .line 4179
    :pswitch_1d
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4180
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4179
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37

    .line 4175
    :pswitch_2a
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4176
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4175
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4177
    nop

    .line 4183
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x6
        :pswitch_2a
        :pswitch_1d
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isOffloadedPlayback()Z
    .registers 2

    .line 1580
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3073
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3078
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3079
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 3080
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    .line 3081
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    .line 3082
    const/4 v1, 0x5

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_1a

    .line 3084
    :cond_17
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3086
    :goto_1a
    monitor-exit v0

    .line 3087
    return-void

    .line 3086
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v1

    .line 3074
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2985
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2989
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    .line 2990
    .local v0, "delay":I
    if-nez v0, :cond_f

    .line 2991
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_17

    .line 2993
    :cond_f
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    .line 3009
    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    .line 3011
    :goto_17
    return-void

    .line 2986
    .end local v0    # "delay":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 2748
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "id"    # I

    .line 2753
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method playerPause()V
    .registers 1

    .line 4360
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 4361
    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .registers 5
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 3735
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 3736
    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 3737
    .local v0, "err":I
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    return v1
.end method

.method playerSetVolume(ZFF)V
    .registers 6
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 2719
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    move v1, p2

    :goto_6
    invoke-static {v1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 2720
    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    move v0, p3

    :goto_e
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    .line 2722
    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 2723
    return-void
.end method

.method playerStart()V
    .registers 1

    .line 4355
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 4356
    return-void
.end method

.method playerStop()V
    .registers 1

    .line 4365
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 4366
    return-void
.end method

.method public registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 4082
    if-eqz p2, :cond_4c

    .line 4085
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_44

    .line 4089
    if-eqz p1, :cond_3c

    .line 4092
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4094
    :try_start_b
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4095
    .local v2, "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    iget-object v3, v2, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-eq v3, p2, :cond_22

    .line 4099
    .end local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    goto :goto_11

    .line 4096
    .restart local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    throw v1

    .line 4100
    .end local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    .restart local p0    # "this":Landroid/media/AudioTrack;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    :cond_2a
    invoke-direct {p0}, Landroid/media/AudioTrack;->beginStreamEventHandling()V

    .line 4101
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    new-instance v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioTrack$StreamEventCbInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4102
    monitor-exit v0

    .line 4103
    return-void

    .line 4102
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v1

    .line 4090
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4086
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4083
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 3

    .line 2030
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2031
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 2032
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2f

    .line 2036
    :try_start_7
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2039
    goto :goto_c

    .line 2037
    :catch_b
    move-exception v0

    .line 2040
    :goto_c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_16

    .line 2041
    invoke-static {v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 2042
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 2045
    :cond_16
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 2046
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 2047
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2048
    const/4 v0, 0x0

    :try_start_20
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2049
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2050
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2051
    monitor-exit v1

    .line 2052
    return-void

    .line 2051
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0

    .line 2032
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public reloadStaticData()I
    .registers 3

    .line 3655
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_a

    goto :goto_f

    .line 3658
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    .line 3656
    :cond_f
    :goto_f
    const/4 v0, -0x3

    return v0
.end method

.method public removeOnCodecFormatChangedListener(Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    .line 4017
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    invoke-virtual {v0, p1}, Landroid/media/Utils$ListenerList;->remove(Ljava/lang/Object;)V

    .line 4018
    return-void
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 3882
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3883
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3884
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3886
    :cond_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3887
    monitor-exit v0

    .line 3888
    return-void

    .line 3887
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3943
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 3944
    return-void
.end method

.method public setAudioDescriptionMixLeveldB(F)Z
    .registers 5
    .param p1, "level"    # F

    .line 1653
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidAudioDescriptionMixLevel(F)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1656
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_audio_description_mix_level_db(F)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1654
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuxEffectSendLevel(F)I
    .registers 3
    .param p1, "level"    # F

    .line 3727
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3728
    const/4 v0, -0x3

    return v0

    .line 3730
    :cond_6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .registers 3
    .param p1, "bufferSizeInFrames"    # I

    .line 2268
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_9

    goto :goto_12

    .line 2271
    :cond_9
    if-gez p1, :cond_d

    .line 2272
    const/4 v0, -0x2

    return v0

    .line 2274
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0

    .line 2269
    :cond_12
    :goto_12
    const/4 v0, -0x3

    return v0
.end method

.method public setDualMonoMode(I)Z
    .registers 5
    .param p1, "dualMonoMode"    # I

    .line 1718
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1722
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_dual_mono_mode(I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1719
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Dual Mono mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 4275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4276
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_11

    .line 4279
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    .line 4280
    .local v0, "stringId":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setLogSessionId(Ljava/lang/String;)V

    .line 4281
    iput-object p1, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 4282
    return-void

    .line 4277
    .end local v0    # "stringId":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLoopPoints(III)I
    .registers 6
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .line 2906
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_26

    .line 2907
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_26

    .line 2910
    :cond_11
    if-nez p3, :cond_14

    goto :goto_1f

    .line 2912
    :cond_14
    if-ltz p1, :cond_24

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_24

    if-ge p1, p2, :cond_24

    if-le p2, v0, :cond_1f

    goto :goto_24

    .line 2916
    :cond_1f
    :goto_1f
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 2914
    :cond_24
    :goto_24
    const/4 v0, -0x2

    return v0

    .line 2908
    :cond_26
    :goto_26
    const/4 v0, -0x3

    return v0
.end method

.method public setNotificationMarkerPosition(I)I
    .registers 3
    .param p1, "markerInFrames"    # I

    .line 2823
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2824
    const/4 v0, -0x3

    return v0

    .line 2826
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setOffloadDelayPadding(II)V
    .registers 5
    .param p1, "delayInFrames"    # I
    .param p2, "paddingInFrames"    # I

    .line 1488
    if-ltz p2, :cond_2c

    .line 1491
    if-ltz p1, :cond_24

    .line 1494
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_1c

    .line 1497
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_14

    .line 1500
    iput p1, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 1501
    iput p2, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 1502
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_set_delay_padding(II)V

    .line 1503
    return-void

    .line 1498
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1495
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal use of delay/padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative delay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative padding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOffloadEndOfStream()V
    .registers 4

    .line 1552
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_45

    .line 1555
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3d

    .line 1558
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 1561
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_10
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 1565
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_32

    .line 1567
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1568
    :try_start_1c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 1570
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1571
    monitor-exit v1

    .line 1572
    return-void

    .line 1571
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v0

    .line 1563
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "EOS not supported without StreamEventCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    throw v1

    .line 1565
    .restart local p0    # "this":Landroid/media/AudioTrack;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v1

    .line 1559
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported if not playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaybackHeadPosition(I)I
    .registers 4
    .param p1, "positionInFrames"    # I

    .line 2863
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_1f

    .line 2864
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_1f

    .line 2867
    :cond_11
    if-ltz p1, :cond_1d

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_18

    goto :goto_1d

    .line 2870
    :cond_18
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0

    .line 2868
    :cond_1d
    :goto_1d
    const/4 v0, -0x2

    return v0

    .line 2865
    :cond_1f
    :goto_1f
    const/4 v0, -0x3

    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 4
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 2806
    if-eqz p1, :cond_6

    .line 2809
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 2810
    return-void

    .line 2807
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 2658
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 2659
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2671
    if-eqz p1, :cond_a

    .line 2672
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_d

    .line 2674
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 2676
    :goto_d
    return-void
.end method

.method public setPlaybackRate(I)I
    .registers 4
    .param p1, "sampleRateInHz"    # I

    .line 2781
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 2782
    const/4 v0, -0x3

    return v0

    .line 2784
    :cond_7
    if-gtz p1, :cond_b

    .line 2785
    const/4 v0, -0x2

    return v0

    .line 2787
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .registers 3
    .param p1, "periodInFrames"    # I

    .line 2837
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2838
    const/4 v0, -0x3

    return v0

    .line 2840
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 3756
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3757
    return v0

    .line 3759
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 3760
    .local v0, "preferredDeviceId":I
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 3761
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 3762
    monitor-enter p0

    .line 3763
    :try_start_18
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3764
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v2

    .line 3766
    :cond_1f
    :goto_1f
    return v1
.end method

.method public setPresentation(Landroid/media/AudioPresentation;)I
    .registers 4
    .param p1, "presentation"    # Landroid/media/AudioPresentation;

    .line 2932
    if-eqz p1, :cond_f

    .line 2935
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    .line 2936
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    .line 2935
    invoke-direct {p0, v0, v1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result v0

    return v0

    .line 2933
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartThresholdInFrames(I)I
    .registers 5
    .param p1, "startThresholdInFrames"    # I

    .line 2318
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 2321
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_2f

    .line 2324
    if-lt p1, v1, :cond_10

    .line 2328
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setStartThresholdInFrames(I)I

    move-result v0

    return v0

    .line 2325
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startThresholdInFrames "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2322
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2319
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2948
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2949
    return-void
.end method

.method public setStereoVolume(FF)I
    .registers 4
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2709
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2710
    const/4 v0, -0x3

    return v0

    .line 2713
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 2714
    const/4 v0, 0x0

    return v0
.end method

.method public setVolume(F)I
    .registers 3
    .param p1, "gain"    # F

    .line 2741
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3043
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 3048
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3049
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 3050
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 3051
    iget-boolean v2, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1b

    .line 3052
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_2a

    .line 3054
    :cond_1b
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3055
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 3056
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3057
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3058
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3060
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2f

    .line 3061
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 3062
    return-void

    .line 3060
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 3044
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 7
    .param p1, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 4111
    if-eqz p1, :cond_46

    .line 4114
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_3e

    .line 4117
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4118
    const/4 v1, 0x0

    .line 4119
    .local v1, "seciToRemove":Landroid/media/AudioTrack$StreamEventCbInfo;
    :try_start_a
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4120
    .local v3, "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    iget-object v4, v3, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-ne v4, p1, :cond_32

    .line 4122
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4123
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_30

    .line 4124
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 4126
    :cond_30
    monitor-exit v0

    return-void

    .line 4128
    .end local v3    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    :cond_32
    goto :goto_10

    .line 4129
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback was not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    .end local p1    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    throw v2

    .line 4130
    .end local v1    # "seciToRemove":Landroid/media/AudioTrack$StreamEventCbInfo;
    .restart local p0    # "this":Landroid/media/AudioTrack;
    .restart local p1    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3b

    throw v1

    .line 4115
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4112
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .registers 14
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .line 3485
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const-string v1, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3486
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    const/4 v0, -0x3

    return v0

    .line 3490
    :cond_d
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v2, :cond_19

    .line 3491
    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    return v0

    .line 3495
    :cond_19
    if-eqz p1, :cond_79

    if-ltz p2, :cond_79

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le p2, v3, :cond_24

    goto :goto_79

    .line 3500
    :cond_24
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    .line 3501
    return v1

    .line 3504
    :cond_2c
    const/4 v0, 0x0

    .line 3505
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 3506
    nop

    .line 3507
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_3e

    move v9, v2

    goto :goto_3f

    :cond_3e
    move v9, v1

    .line 3506
    :goto_3f
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I

    move-result v0

    goto :goto_61

    .line 3510
    :cond_47
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 3511
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5a

    move v8, v2

    goto :goto_5b

    :cond_5a
    move v8, v1

    .line 3510
    :goto_5b
    move-object v3, p0

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 3516
    :goto_61
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_6e

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6e

    if-lez v0, :cond_6e

    .line 3520
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 3523
    :cond_6e
    if-lez v0, :cond_78

    .line 3524
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3527
    :cond_78
    return v0

    .line 3496
    .end local v0    # "ret":I
    :cond_79
    :goto_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .registers 12
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .line 3563
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3564
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    return v1

    .line 3568
    :cond_d
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v3, :cond_19

    .line 3569
    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    return v0

    .line 3573
    :cond_19
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v3, :cond_23

    .line 3574
    const-string v0, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    return v1

    .line 3578
    :cond_23
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-nez v1, :cond_38

    .line 3579
    const-string v0, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 3583
    :cond_38
    if-eqz p1, :cond_ce

    if-ltz p2, :cond_ce

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_44

    goto/16 :goto_ce

    .line 3588
    :cond_44
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    .line 3589
    return v1

    .line 3593
    :cond_4c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_65

    .line 3594
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3595
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3596
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550002

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3599
    :cond_65
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v0, :cond_84

    .line 3600
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3601
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 3602
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v4, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3603
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3604
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3608
    :cond_84
    const/4 v0, 0x0

    .line 3609
    .local v0, "ret":I
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b2

    .line 3610
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v3, v5, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 3611
    if-gez v0, :cond_a4

    .line 3612
    const-string v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3614
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3615
    return v0

    .line 3617
    :cond_a4
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_b2

    .line 3618
    const-string v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    return v1

    .line 3624
    :cond_b2
    iget v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3625
    .local v3, "sizeToWrite":I
    invoke-virtual {p0, p1, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 3626
    if-gez v0, :cond_c8

    .line 3627
    const-string v5, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3629
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3630
    return v0

    .line 3633
    :cond_c8
    iget v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3635
    return v0

    .line 3584
    .end local v0    # "ret":I
    .end local v3    # "sizeToWrite":I
    :cond_ce
    :goto_ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") value"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    return v0
.end method

.method public write([BII)I
    .registers 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 3151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .registers 14
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .line 3199
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_4e

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    goto :goto_4e

    .line 3203
    :cond_a
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_18

    if-eq p4, v1, :cond_18

    .line 3204
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    return v0

    .line 3208
    :cond_18
    if-eqz p1, :cond_4d

    if-ltz p2, :cond_4d

    if-ltz p3, :cond_4d

    add-int v2, p2, p3

    if-ltz v2, :cond_4d

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_28

    goto :goto_4d

    .line 3214
    :cond_28
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_30

    .line 3215
    return v2

    .line 3218
    :cond_30
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_36

    move v8, v1

    goto :goto_37

    :cond_36
    move v8, v2

    :goto_37
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 3221
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_4c

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    if-lez v0, :cond_4c

    .line 3225
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 3228
    :cond_4c
    return v0

    .line 3211
    .end local v0    # "ret":I
    :cond_4d
    :goto_4d
    return v0

    .line 3200
    :cond_4e
    :goto_4e
    const/4 v0, -0x3

    return v0
.end method

.method public write([FIII)I
    .registers 14
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .line 3400
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3401
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    return v1

    .line 3405
    :cond_d
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_18

    .line 3406
    const-string v0, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    return v1

    .line 3410
    :cond_18
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_24

    if-eq p4, v1, :cond_24

    .line 3411
    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    return v0

    .line 3415
    :cond_24
    if-eqz p1, :cond_59

    if-ltz p2, :cond_59

    if-ltz p3, :cond_59

    add-int v3, p2, p3

    if-ltz v3, :cond_59

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_34

    goto :goto_59

    .line 3422
    :cond_34
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    .line 3423
    return v2

    .line 3426
    :cond_3c
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_42

    move v8, v1

    goto :goto_43

    :cond_42
    move v8, v2

    :goto_43
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v0

    .line 3429
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_58

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_58

    if-lez v0, :cond_58

    .line 3433
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 3436
    :cond_58
    return v0

    .line 3418
    .end local v0    # "ret":I
    :cond_59
    :goto_59
    const-string v1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    return v0
.end method

.method public write([SII)I
    .registers 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 3266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .registers 14
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .line 3312
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_52

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_52

    const/16 v1, 0x14

    if-le v0, v1, :cond_e

    goto :goto_52

    .line 3319
    :cond_e
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1c

    if-eq p4, v1, :cond_1c

    .line 3320
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    return v0

    .line 3324
    :cond_1c
    if-eqz p1, :cond_51

    if-ltz p2, :cond_51

    if-ltz p3, :cond_51

    add-int v2, p2, p3

    if-ltz v2, :cond_51

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2c

    goto :goto_51

    .line 3330
    :cond_2c
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_34

    .line 3331
    return v2

    .line 3334
    :cond_34
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3a

    move v8, v1

    goto :goto_3b

    :cond_3a
    move v8, v2

    :goto_3b
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v0

    .line 3337
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_50

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_50

    if-lez v0, :cond_50

    .line 3341
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 3344
    :cond_50
    return v0

    .line 3327
    .end local v0    # "ret":I
    :cond_51
    :goto_51
    return v0

    .line 3316
    :cond_52
    :goto_52
    const/4 v0, -0x3

    return v0
.end method
